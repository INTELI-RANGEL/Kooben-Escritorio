unit UTFrmBuscarExistencia;

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
  TFrmBuscarExistencia = class(TForm)
    dsExistencia: TDataSource;
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
  public
    pIdExistencia: String;
  end;

const
  brMaxRec = 10;

var
  FrmBuscarExistencia: TFrmBuscarExistencia;

implementation

uses UInteliDialog;

{$R *.dfm}

procedure TFrmBuscarExistencia.btnAbrirClick(Sender: TObject);
begin
  Resultado := mrOk;
  Close;
end;

procedure TFrmBuscarExistencia.btnArribaClick(Sender: TObject);
begin
  btnActual := btnArriba;    // Establecer por default la busqueda hacia abajo
  ProseguirBusqueda;
end;

procedure TFrmBuscarExistencia.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmBuscarExistencia.btnAbajoClick(Sender: TObject);
begin
  btnActual := btnAbajo;    // Establecer por default la busqueda hacia abajo
  ProseguirBusqueda;
end;

procedure TFrmBuscarExistencia.cbVistaChange(Sender: TObject);
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

procedure TFrmBuscarExistencia.eBuscarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Ind: Integer;
begin
  if (Key = 13) and (Shift = []) then
    ProseguirBusqueda;
end;

procedure TFrmBuscarExistencia.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
begin
  SetRegistry('\Ventanas', '\' + Self.Name + '\cbVista', 'ItemIndex', IntToStr(cbVista.ItemIndex));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Width', IntToStr(Self.Width));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Height', IntToStr(Self.Height));

  // Registrar el ancho de las columnas de los listview
  for i := 0 to lvRecientes.Columns.Count -1 do
    SetRegistry('\Ventanas', '\' + Self.Name + '\lvRecientes\Col' + IntToStr(i), 'Width', IntToStr(lvRecientes.Column[i].Width));

  for i := 0 to lvRecetas.Columns.Count -1 do
    SetRegistry('\Ventanas', '\' + Self.Name + '\lvRecetas\Col' + IntToStr(i), 'Width', IntToStr(lvRecetas.Column[i].Width));

  if Resultado = mrOk then
  begin
    Recientes.Insert(0, dsExistencia.DataSet.FieldByName(pIdExistencia).AsString);
    if Recientes.Count > brMaxRec then
      Recientes.Delete(brMaxRec);

    // Si el resultado es afirmativo se deberá grabar en la lista de recientes
    SetRegistry('\Ventanas', '\' + Self.Name, 'Recientes', Recientes.CommaText);
  end;

  ModalResult := Resultado;
  Action := caFree;
end;

procedure TFrmBuscarExistencia.FormCreate(Sender: TObject);
begin
  Resultado := mrCancel;
end;

procedure TFrmBuscarExistencia.FormKeyDown(Sender: TObject; var Key: Word;
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
    dsExistencia.DataSet.Refresh;
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

procedure TFrmBuscarExistencia.FormShow(Sender: TObject);
var
  i: Integer;
begin
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

function TFrmBuscarExistencia.funcPregunta(Nodo: TAdvGlowButton): String;
begin
  if Nodo = btnAbajo then
    Result := '¿Desea continuar con la busqueda desde el inicio?'
  else
    Result := '¿Desea continuar con la busqueda desde el final?';
end;

procedure TFrmBuscarExistencia.IconosClick(Sender: TObject);
begin
  lvRecetas.ViewStyle := vsIcon;
  lvRecientes.ViewStyle := vsIcon;
  Iconos.Checked := True;
  Lista.Checked := False;
  Reporte.Checked := False;
  IconosPequenos.Checked := False;
end;

procedure TFrmBuscarExistencia.IconosPequenosClick(Sender: TObject);
begin
  lvRecetas.ViewStyle := vsSmallIcon;
  lvRecientes.ViewStyle := vsSmallIcon;
  Iconos.Checked := False;
  Lista.Checked := False;
  Reporte.Checked := False;
  IconosPequenos.Checked := True;
end;

procedure TFrmBuscarExistencia.ListaClick(Sender: TObject);
begin
  lvRecetas.ViewStyle := vsList;
  lvRecientes.ViewStyle := vsList;
  Iconos.Checked := False;
  Lista.Checked := True;
  Reporte.Checked := False;
  IconosPequenos.Checked := False;
end;

function TFrmBuscarExistencia.LocalizaNodo(Key: Word; Shift: TShiftState;
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

procedure TFrmBuscarExistencia.lvRecetasChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
  if sender is TListView then
    if Assigned(TListView(Sender).Selected) then
      dsExistencia.DataSet.Locate(pIdExistencia, Integer(TListView(Sender).Selected.Data), []);

  if sender is TcxListView then
    if Assigned(TcxListView(Sender).Selected) then
      dsExistencia.DataSet.Locate(pIdExistencia, Integer(TListView(Sender).Selected.Data), []);
end;

procedure TFrmBuscarExistencia.lvRecetasContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  GetCursorPos(MousePos);
  popVisualizacion.Popup(MousePos.X, MousePos.Y);
end;

procedure TFrmBuscarExistencia.lvRecetasDblClick(Sender: TObject);
begin
  if btnAbrir.Enabled then
    btnAbrir.Click;
end;

procedure TFrmBuscarExistencia.lvRecientesContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  GetCursorPos(MousePos);
  popVisualizacion.Popup(MousePos.X, MousePos.Y);
end;

procedure TFrmBuscarExistencia.PcRecetasChange(Sender: TObject);
begin
  {if PcRecetas.ActivePageIndex = 1 then
  begin

  end;}
end;

procedure TFrmBuscarExistencia.ProseguirBusqueda;
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

procedure TFrmBuscarExistencia.ReporteClick(Sender: TObject);
begin
  lvRecetas.ViewStyle := vsReport;
  lvRecientes.ViewStyle := vsReport;
  Iconos.Checked := False;
  Lista.Checked := False;
  Reporte.Checked := True;
  IconosPequenos.Checked := False;
end;

procedure TFrmBuscarExistencia.tsRecientesShow(Sender: TObject);
begin
  btnAbrir.Enabled := (lvRecetas.CanFocus and (lvRecetas.Items.Count > 0)) or (lvRecientes.CanFocus and (lvRecientes.Items.Count > 0));
end;

procedure TFrmBuscarExistencia.tsTodasShow(Sender: TObject);
begin
  if Not YaLeidas then
  begin
    try
      dsExistencia.DataSet.DisableControls;
      lvRecetas.OnChange := nil;

      YaLeidas := True;
      CargarListaRecetas(lvRecetas);
      btnAbrir.Enabled := (lvRecetas.CanFocus and (lvRecetas.Items.Count > 0)) or (lvRecientes.CanFocus and (lvRecientes.Items.Count > 0));
    finally
      lvRecetas.OnChange := lvRecetasChange;
      dsExistencia.DataSet.EnableControls;
    end;
  end;
end;

procedure TFrmBuscarExistencia.CargarListaRecetas(ListView: TListView);
var
  Nodo: TListItem;
  Lista: TStringList;
  Grupo: TListGroup;
  IdGpo, IdGpoR: Integer;
  lcNombre: String;
  Cursor: TCursor;
  pCodigo, pNombre: String;
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

    if pIdExistencia = 'IdExistencia' then
    begin
      pCodigo := 'CodigoEmbarcacion';
      pNombre := 'NombreEmbarcacion';
    end
    else
    begin
      pCodigo := 'CodigoAlmacen';
      pNombre := 'NombreAlmacen';
    end;

    dsExistencia.DataSet.First;
    while not dsExistencia.DataSet.Eof do
    begin
      if (CompareText(ListView.Name, 'lvRecetas') = 0) or (Recientes.IndexOf(dsExistencia.DataSet.FieldByName(pIdExistencia).AsString) >= 0) then
      begin
        IdGpo := Lista.IndexOf(dsExistencia.DataSet.FieldByName(pCodigo).AsString);
        if IdGpo < 0 then
        begin
          Grupo := ListView.Groups.Add;
          Grupo.Header := dsExistencia.DataSet.FieldByName(pCodigo).AsString;
          Grupo.Subtitle := dsExistencia.DataSet.FieldByName(pNombre).AsString;
          Grupo.TitleImage := 1;

{          if CompareText(ListView.Name, 'lvRecetas') = 0 then
            Grupo.Footer := 'Total de ' + LowerCase(dsExistencia.DataSet.FieldByName('NombreEmbarcacion').AsString) + ': ' + dsExistencia.DataSet.FieldByName('CtaGrupo').AsString;
}
          IdGpo := Grupo.Index;

          Lista.AddObject(dsExistencia.DataSet.FieldByName(pCodigo).AsString, TObject(IdGpo));
        end
        else
          IdGpo := Integer(Lista.Objects[IdGpo]);

        Nodo := ListView.Items.Add;
        Nodo.Caption := dsExistencia.DataSet.FieldByName('CodigoExistencia').AsString;
        Nodo.ImageIndex := 11;
        Nodo.SubItems.Add(dsExistencia.DataSet.FieldByName('Elaboracion').AsString);
        Nodo.SubItems.Add(dsExistencia.DataSet.FieldByName('Aplicacion').AsString);
        Nodo.SubItems.Add(dsExistencia.DataSet.FieldByName('NombreElaboro').AsString);
        Nodo.SubItems.Add(dsExistencia.DataSet.FieldByName('NombreAutorizo').AsString);
        Nodo.SubItems.Add(dsExistencia.DataSet.FieldByName('Estado').AsString);
        Nodo.SubItems.Add(dsExistencia.DataSet.FieldByName('Descripcion').AsString);
        Nodo.Data := TObject(dsExistencia.DataSet.FieldByName(pIdExistencia).AsInteger);
        Nodo.GroupID := IdGpo;
      end;

      dsExistencia.DataSet.Next;
    end;

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
