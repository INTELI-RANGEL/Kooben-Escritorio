unit UTFrmBuscarReceta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, AdvListV, DB, ClientModuleUnit1, StdCtrls, ExtCtrls,
  JvExControls, JvLabel, AdvGlowButton, DBCtrls, AdvToolBar, frxDock, cxPC,
  dxDockControl, dxDockPanel, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxDockControlPainter, cxClasses, URegistro, Menus, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsdxBarPainter, dxBar, dxSkinsForm, cxButtons,
  cxContainer, cxEdit, cxListView;

type
  TFrmBuscarReceta = class(TForm)
    dsReceta: TDataSource;
    Panel1: TPanel;
    cbVista: TComboBox;
    JvLabel1: TJvLabel;
    Panel2: TPanel;
    pnlBuscar: TPanel;
    eBuscar: TEdit;
    JvLabel2: TJvLabel;
    Panel3: TPanel;
    btnAbrir: TcxButton;
    btnCancelar: TcxButton;
    Panel4: TPanel;
    btnAbajo: TAdvGlowButton;
    btnArriba: TAdvGlowButton;
    Splitter1: TSplitter;
    Panel5: TPanel;
    DescripcionReceta: TDBMemo;
    Ingredientes: TDBMemo;
    Splitter2: TSplitter;
    popVisualizacion: TPopupMenu;
    Iconos: TMenuItem;
    Lista: TMenuItem;
    Reporte: TMenuItem;
    IconosPequenos: TMenuItem;
    PcRecetas: TcxPageControl;
    TsRecientes: TcxTabSheet;
    TsTodas: TcxTabSheet;
    lvRecientes: TListView;
    lvRecetas: TListView;
    dxSkinController1: TdxSkinController;
    DxManager1: TdxBarManager;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbVistaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure eBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAbajoClick(Sender: TObject);
    procedure btnArribaClick(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
    procedure lvRecetasDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lvRecetasChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure tsTodasShow(Sender: TObject);
    procedure tsRecientesShow(Sender: TObject);
    procedure IconosClick(Sender: TObject);
    procedure lvRecientesContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ListaClick(Sender: TObject);
    procedure ReporteClick(Sender: TObject);
    procedure IconosPequenosClick(Sender: TObject);
    procedure lvRecetasContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure PcRecetasChange(Sender: TObject);
  private
    btnActual: TAdvGlowButton;
    Resultado: TModalResult;
    Recientes: TStringList;
    YaLeidas: Boolean;
    function funcPregunta(Nodo: TAdvGlowButton): String;
    function LocalizaNodo(Key: Word; Shift: TShiftState; var Ind: Integer;
      Inicializa: Boolean): Boolean;
    procedure ProseguirBusqueda;
    procedure CargarListaRecetas(ListView: TListView); Overload;
    procedure CargarListaRecetas(ListView: TcxListView); Overload;
  public
    { Public declarations }
  end;

const
  brMaxRec = 10;

var
  FrmBuscarReceta: TFrmBuscarReceta;

implementation

uses UInteliDialog;

{$R *.dfm}

procedure TFrmBuscarReceta.btnAbrirClick(Sender: TObject);
begin
  Resultado := mrOk;
  Close;
end;

procedure TFrmBuscarReceta.btnArribaClick(Sender: TObject);
begin
  btnActual := btnArriba;    // Establecer por default la busqueda hacia abajo
  ProseguirBusqueda;
end;

procedure TFrmBuscarReceta.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmBuscarReceta.CargarListaRecetas(ListView: TcxListView);
var
  Nodo: TListItem;
  Lista: TStringList;
  Grupo: TListGroup;
  IdGpo, IdGpoR: Integer;
  lcNombre: String;
begin
  ListView.Items.Clear;
  ListView.InnerListView.Groups.Clear;

  Lista := TStringList.Create;
  Lista.Clear;

  dsReceta.DataSet.First;
  while not dsReceta.DataSet.Eof do
  begin
    if (CompareText(ListView.Name, 'lvRecetas') = 0) or (Recientes.IndexOf(dsReceta.DataSet.FieldByName('IdReceta').AsString) >= 0) then
    begin
      IdGpo := Lista.IndexOf(dsReceta.DataSet.FieldByName('CodigoTipoReceta').AsString);
      if IdGpo < 0 then
      begin

        with ListView.InnerListView.Groups.Add do
        begin

          Header := dsReceta.DataSet.FieldByName('CodigoTipoReceta').AsString;
          Subtitle := dsReceta.DataSet.FieldByName('NombreTipoReceta').AsString;
          TitleImage := 1;

          if CompareText(ListView.Name, 'lvRecetas') = 0 then
            Footer := 'Total de ' + LowerCase(dsReceta.DataSet.FieldByName('NombreTipoReceta').AsString) + ': ' + dsReceta.DataSet.FieldByName('CtaGrupo').AsString;

          IdGpo := Index;
          GroupID := IdGpo;
        end;
        Lista.AddObject(dsReceta.DataSet.FieldByName('CodigoTipoReceta').AsString, TObject(IdGpo));
      end
      else
        IdGpo := Integer(Lista.Objects[IdGpo]);

      ListView.InnerListView.GroupView := true;

      with ListView.Items.Add do
      begin
        Caption := dsReceta.DataSet.FieldByName('NombreReceta').AsString;
        ImageIndex := 11;
        SubItems.Add(dsReceta.DataSet.FieldByName('CodigoReceta').AsString);
        SubItems.Add(dsReceta.DataSet.FieldByName('NombreReceta').AsString);
        SubItems.Add(dsReceta.DataSet.FieldByName('DescripcionReceta').AsString);
        Data := TObject(dsReceta.DataSet.FieldByName('IdReceta').AsInteger);
        GroupID := IdGpo;
      end;
    end;

    dsReceta.DataSet.Next;
  end;

  Panel5.Visible := ListView.Items.Count > 0;

  if ListView.Items.Count > 0 then
  begin
    ListView.Selected := ListView.Items[0];

    cbVista.OnChange(Nil);
  end;

  listview.Refresh;
end;

procedure TFrmBuscarReceta.btnAbajoClick(Sender: TObject);
begin
  btnActual := btnAbajo;    // Establecer por default la busqueda hacia abajo
  ProseguirBusqueda;
end;

procedure TFrmBuscarReceta.cbVistaChange(Sender: TObject);
begin
  // Cambiar la visualización del listview
  case cbVista.ItemIndex of
    0: begin lvRecetas.ViewStyle := vsIcon; lvRecientes.ViewStyle := vsIcon; end;
    1: begin lvRecetas.ViewStyle := vsList; lvRecientes.ViewStyle := vsList; end;
    2: begin lvRecetas.ViewStyle := vsReport; lvRecientes.ViewStyle := vsReport; end;
  else
    begin
      lvRecetas.ViewStyle := vsSmallIcon;
      lvRecientes.ViewStyle := vsSmallIcon;
    end;
  end;

  btnAbrir.Enabled := (lvRecetas.CanFocus and (lvRecetas.Items.Count > 0)) or (lvRecientes.CanFocus and (lvRecientes.Items.Count > 0));
end;

procedure TFrmBuscarReceta.eBuscarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Ind: Integer;
begin
  if (Key = 13) and (Shift = []) then
    ProseguirBusqueda;
end;

procedure TFrmBuscarReceta.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
begin
  SetRegistry('\Ventanas', '\' + Self.Name + '\DescripcionReceta', 'Width', IntToStr(DescripcionReceta.Width));
  SetRegistry('\Ventanas', '\' + Self.Name + '\Ingredientes', 'Height', IntToStr(Ingredientes.Height));
  SetRegistry('\Ventanas', '\' + Self.Name + '\cbVista', 'ItemIndex', IntToStr(cbVista.ItemIndex));

  // Registrar el ancho de las columnas de los listview
  for i := 0 to lvRecientes.Columns.Count -1 do
    SetRegistry('\Ventanas', '\' + Self.Name + '\lvRecientes\Col' + IntToStr(i), 'Width', IntToStr(lvRecientes.Column[i].Width));

  for i := 0 to lvRecetas.Columns.Count -1 do
    SetRegistry('\Ventanas', '\' + Self.Name + '\lvRecetas\Col' + IntToStr(i), 'Width', IntToStr(lvRecetas.Column[i].Width));

  if Resultado = mrOk then
  begin
    Recientes.Insert(0, dsReceta.DataSet.FieldByName('IdReceta').AsString);
    if Recientes.Count > brMaxRec then
      Recientes.Delete(brMaxRec);

    // Si el resultado es afirmativo se deberá grabar en la lista de recientes
    SetRegistry('\Ventanas', '\' + Self.Name, 'Recientes', Recientes.CommaText);
  end;

  ModalResult := Resultado;
  Action := caFree;
end;

procedure TFrmBuscarReceta.FormCreate(Sender: TObject);
begin
  Resultado := mrCancel;
end;

procedure TFrmBuscarReceta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // Tecla <ESC>
  if (Key = 27) and (Shift = []) then
    if pnlBuscar.Visible then
      pnlBuscar.Visible := False
    else
      Close;

  // Tecla <F3>   Repetir la busqueda
  if (Key = 114) and (Shift = []) then
  begin
    Key := 13;
    eBuscarKeyDown(Sender, Key, []);
  end;

  // Tecla <F5>   Refrescar los datos
  if (Key = 116) and (Shift = []) then
  begin
    dsReceta.DataSet.Refresh;
    CargarListaRecetas(lvRecetas);
  end;

  // Teclas <CTRL> + B
  if (Key = 66) and (ssCtrl in Shift) then
  begin
    pnlBuscar.Visible := True;
    eBuscar.SetFocus;
    if Not Assigned(btnActual) then
      btnActual := btnAbajo;
  end;
end;

procedure TFrmBuscarReceta.FormShow(Sender: TObject);
var
  i: Integer;
begin
  Try
    Self.Top := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Top'));
  Except
    ;
  End;

  Try
    Self.Left := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Left'));
  Except
    ;
  End;

  Try
    Self.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Width'));
  Except
    ;
  End;

  Try
    Self.Height := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Height'));
  Except
    ;
  End;

  Try
    DescripcionReceta.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\DescripcionReceta', 'Width'));
  Except
    ;
  End;

  Try
    Ingredientes.Height := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\Ingredientes', 'Height'));
  Except
    ;
  End;

  Try
    Recientes := TStringList.Create;
    Recientes.CommaText := VarRegistry('\Ventanas', '\' + Self.Name, 'Recientes');
  Except
    ;
  End;

  Try
    cbVista.ItemIndex := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\cbVista', 'ItemIndex'));
  Except
    ;
  End;

  for i := 0 to lvRecientes.Columns.Count -1 do
    Try
      lvRecientes.Column[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\lvRecientes\Col' + IntToStr(i), 'Width'));
    Except
      ;
    End;

  for i := 0 to lvRecetas.Columns.Count -1 do
    Try
      lvRecetas.Column[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\lvRecetas\Col' + IntToStr(i), 'Width'));
    Except
      ;
    End;

  pcRecetas.Properties.TabIndex := 0;
  YaLeidas := False;

  CargarListaRecetas(lvRecientes);

  if lvRecientes.Items.Count = 0 then
  begin
    // Mostrar por default todas las recetas
    pcRecetas.Properties.TabIndex := 1;
    if lvRecetas.CanFocus then
      lvRecetas.SetFocus;
  end
  else
    if lvRecientes.CanFocus then
      lvRecientes.SetFocus;
end;

function TFrmBuscarReceta.funcPregunta(Nodo: TAdvGlowButton): String;
begin
  if Nodo = btnAbajo then
    Result := '¿Desea continuar con la busqueda desde el inicio?'
  else
    Result := '¿Desea continuar con la busqueda desde el final?';
end;

procedure TFrmBuscarReceta.IconosClick(Sender: TObject);
begin
  lvRecetas.ViewStyle := vsIcon;
  lvRecientes.ViewStyle := vsIcon;
  Iconos.Checked := True;
  Lista.Checked := False;
  Reporte.Checked := False;
  IconosPequenos.Checked := False;
end;

procedure TFrmBuscarReceta.IconosPequenosClick(Sender: TObject);
begin
  lvRecetas.ViewStyle := vsSmallIcon;
  lvRecientes.ViewStyle := vsSmallIcon;
  Iconos.Checked := False;
  Lista.Checked := False;
  Reporte.Checked := False;
  IconosPequenos.Checked := True;
end;

procedure TFrmBuscarReceta.ListaClick(Sender: TObject);
begin
  lvRecetas.ViewStyle := vsList;
  lvRecientes.ViewStyle := vsList;
  Iconos.Checked := False;
  Lista.Checked := True;
  Reporte.Checked := False;
  IconosPequenos.Checked := False;
end;

function TFrmBuscarReceta.LocalizaNodo(Key: Word; Shift: TShiftState;
  var Ind: Integer; Inicializa: Boolean): Boolean;
var
  Nodo: TListItem;
  Encontrado: Boolean;
  Punto: TPoint;
begin
  // Realizar la busqueda con el criterio indicado
  // Seleccionar el nodo de inicio de busqueda
  if Inicializa then
  begin
    Nodo := lvRecetas.Items[Ind];    // Iniciar en el indicado por el programador
    Ind := Nodo.Index;
  end
  else
  begin
    if Assigned(lvRecetas.Selected) then
    begin
      Nodo := lvRecetas.Selected;  // Iniciar desde el nodo seleccionado

      if btnActual = btnAbajo then
        Ind := Nodo.Index +1
      else
        Ind := Nodo.Index -1;
    end
    else
    begin
      Nodo := lvRecetas.Items[0];  // Iniciar desde el primer nodo
      lvRecetas.Selected := Nodo;
      Ind := Nodo.Index;
    end;
  end;

  // Recorrer la lista
  Encontrado := False;
  while (Not Encontrado) and (Ind < lvRecetas.Items.Count) and (Ind >= 0) do
  begin
    Encontrado := POS(eBuscar.Text, lvRecetas.Items[Ind].Caption) > 0;

    if Not Encontrado then
    begin
      if btnActual = btnAbajo then
        Inc(Ind)
      else
        Dec(Ind);
    end;
  end;

  Result := Encontrado;
end;

procedure TFrmBuscarReceta.lvRecetasChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
  if sender is TListView then
    if Assigned(TListView(Sender).Selected) then
      dsReceta.DataSet.Locate('IdReceta', Integer(TListView(Sender).Selected.Data), []);

  if sender is TcxListView then
    if Assigned(TcxListView(Sender).Selected) then
      dsReceta.DataSet.Locate('IdReceta', Integer(TListView(Sender).Selected.Data), []);
end;

procedure TFrmBuscarReceta.lvRecetasContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  GetCursorPos(MousePos);
  popVisualizacion.Popup(MousePos.X, MousePos.Y);
end;

procedure TFrmBuscarReceta.lvRecetasDblClick(Sender: TObject);
begin
  if btnAbrir.Enabled then
    btnAbrir.Click;
end;

procedure TFrmBuscarReceta.lvRecientesContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  GetCursorPos(MousePos);
  popVisualizacion.Popup(MousePos.X, MousePos.Y);
end;

procedure TFrmBuscarReceta.PcRecetasChange(Sender: TObject);
begin
  {if PcRecetas.ActivePageIndex = 1 then
  begin

  end;}
end;

procedure TFrmBuscarReceta.ProseguirBusqueda;
var
  Ind: Integer;
begin
  // Verificar si se encontró el nodo
  if LocalizaNodo(13, [], Ind, False) then
    lvRecetas.Selected := lvRecetas.Items[Ind]
  else
  begin
    // Si ya se terminó la busqueda entonces se deberá informar al usuario y preguntarle que desea hacer
    {if InteliDialog.ShowModal('Recorrido finalizado', 'No se han encontrado más coinsidencias con el texto "' + eBuscar.Text + '".' + #10 + #10 +
                              funcPregunta(btnActual), mtConfirmation, [mbYes, mbNo], 0) = mrYes then}
    begin
      if btnActual = btnAbajo then
        Ind := 0
      else
        Ind := lvRecetas.Items.Count -1;

      if LocalizaNodo(13, [], Ind, True) then
        lvRecetas.Selected := lvRecetas.Items[Ind]
    end;
  end;

  if Assigned(lvRecetas.Selected) then
    lvRecetas.Selected.MakeVisible(True);
end;

procedure TFrmBuscarReceta.ReporteClick(Sender: TObject);
begin
  lvRecetas.ViewStyle := vsReport;
  lvRecientes.ViewStyle := vsReport;
  Iconos.Checked := False;
  Lista.Checked := False;
  Reporte.Checked := True;
  IconosPequenos.Checked := False;
end;

procedure TFrmBuscarReceta.tsRecientesShow(Sender: TObject);
begin
  btnAbrir.Enabled := (lvRecetas.CanFocus and (lvRecetas.Items.Count > 0)) or (lvRecientes.CanFocus and (lvRecientes.Items.Count > 0));
  Panel5.Visible := lvRecientes.SelCount > 0;
end;

procedure TFrmBuscarReceta.tsTodasShow(Sender: TObject);
begin
  if Not YaLeidas then
  begin
    try
      dsReceta.DataSet.DisableControls;
      lvRecetas.OnChange := nil;

      YaLeidas := True;
      CargarListaRecetas(lvRecetas);
      btnAbrir.Enabled := (lvRecetas.CanFocus and (lvRecetas.Items.Count > 0)) or (lvRecientes.CanFocus and (lvRecientes.Items.Count > 0));
    finally
      lvRecetas.OnChange := lvRecetasChange;
      dsReceta.DataSet.EnableControls;
    end;
  end;
end;

procedure TFrmBuscarReceta.CargarListaRecetas(ListView: TListView);
var
  Nodo: TListItem;
  Lista: TStringList;
  Grupo: TListGroup;
  IdGpo, IdGpoR: Integer;
  lcNombre: String;
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  try
    Screen.Cursor := CrAppStart;

    listView.DoubleBuffered := True;
    ListView.ReadOnly := True;
    ListView.Items.BeginUpdate;
    ListView.Items.Clear;
    ListView.Groups.Clear;

    Lista := TStringList.Create;
    Lista.Clear;

    dsReceta.DataSet.First;
    while not dsReceta.DataSet.Eof do
    begin
      if (CompareText(ListView.Name, 'lvRecetas') = 0) or (Recientes.IndexOf(dsReceta.DataSet.FieldByName('IdReceta').AsString) >= 0) then
      begin
        IdGpo := Lista.IndexOf(dsReceta.DataSet.FieldByName('CodigoTipoReceta').AsString);
        if IdGpo < 0 then
        begin
          Grupo := ListView.Groups.Add;
          Grupo.Header := dsReceta.DataSet.FieldByName('CodigoTipoReceta').AsString;
          Grupo.Subtitle := dsReceta.DataSet.FieldByName('NombreTipoReceta').AsString;
          Grupo.TitleImage := 1;

          if CompareText(ListView.Name, 'lvRecetas') = 0 then
            Grupo.Footer := 'Total de ' + LowerCase(dsReceta.DataSet.FieldByName('NombreTipoReceta').AsString) + ': ' + dsReceta.DataSet.FieldByName('CtaGrupo').AsString;

          IdGpo := Grupo.Index;

          Lista.AddObject(dsReceta.DataSet.FieldByName('CodigoTipoReceta').AsString, TObject(IdGpo));
        end
        else
          IdGpo := Integer(Lista.Objects[IdGpo]);

        Nodo := ListView.Items.Add;
        Nodo.Caption := dsReceta.DataSet.FieldByName('NombreReceta').AsString;
        Nodo.ImageIndex := 11;
        Nodo.SubItems.Add(dsReceta.DataSet.FieldByName('CodigoReceta').AsString);
        Nodo.SubItems.Add(dsReceta.DataSet.FieldByName('NombreReceta').AsString);
        Nodo.SubItems.Add(dsReceta.DataSet.FieldByName('DescripcionReceta').AsString);
        Nodo.Data := TObject(dsReceta.DataSet.FieldByName('IdReceta').AsInteger);
        Nodo.GroupID := IdGpo;
      end;

      dsReceta.DataSet.Next;
    end;

    Panel5.Visible := ListView.Items.Count > 0;

    if ListView.Items.Count > 0 then
    begin
      ListView.Selected := ListView.Items[0];

      cbVista.OnChange(Nil);
    end;
  finally
    listView.Items.EndUpdate;
    Screen.Cursor := Cursor;
  end;
end;

end.
