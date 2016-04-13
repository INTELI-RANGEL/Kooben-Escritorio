unit UTFrmBuscarConsumo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExControls, JvLabel, ExtCtrls, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxButtons, AdvGlowButton, DBCtrls, ComCtrls,
  cxPC, dxSkinsdxBarPainter, DB, dxBar, cxClasses, dxSkinsForm, URegistro,
  cxListView, DBClient, ClientModuleUnit1, UInteliDialog;

type
  TFrmBuscarConsumo = class(TForm)
    Panel1: TPanel;
    JvLabel1: TJvLabel;
    cbVista: TComboBox;
    PcRecetas: TcxPageControl;
    TsTodas: TcxTabSheet;
    lvRecetas: TListView;
    Panel2: TPanel;
    pnlBuscar: TPanel;
    JvLabel2: TJvLabel;
    eBuscar: TEdit;
    Panel4: TPanel;
    btnAbajo: TAdvGlowButton;
    btnArriba: TAdvGlowButton;
    Panel3: TPanel;
    btnAbrir: TcxButton;
    btnCancelar: TcxButton;
    popVisualizacion: TPopupMenu;
    Iconos: TMenuItem;
    Lista: TMenuItem;
    Reporte: TMenuItem;
    IconosPequenos: TMenuItem;
    dxSkinController1: TdxSkinController;
    DxManager1: TdxBarManager;
    dsComisaria: TDataSource;
    JvLabel3: TJvLabel;
    IdEmbarcacion: TComboBox;
    NombreEmbarcacion: TDBText;
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
    procedure TsTodasShow(Sender: TObject);
    procedure TsRecientesShow(Sender: TObject);
    procedure IconosClick(Sender: TObject);
    procedure ListaClick(Sender: TObject);
    procedure ReporteClick(Sender: TObject);
    procedure IconosPequenosClick(Sender: TObject);
    procedure lvRecetasContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure IdEmbarcacionChange(Sender: TObject);
    procedure IdEmbarcacionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    Resultado: TModalResult;
    Recientes: TStringList;
    YaLeidas: Boolean;
    btnActual: TAdvGlowButton;
    function funcPregunta(Nodo: TAdvGlowButton): String;
    function LocalizaNodo(Key: Word; Shift: TShiftState; var Ind: Integer;
      Inicializa: Boolean): Boolean;
    procedure ProseguirBusqueda;
    procedure CargarListaRecetas(ListView: TListView); Overload;
    procedure CargarUbicaciones;
  public

  end;

const
  brMaxRec = 10;

var
  FrmBuscarConsumo: TFrmBuscarConsumo;

implementation

{$R *.dfm}

procedure TFrmBuscarConsumo.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
  SetRegistry('\Ventanas', '\' + Self.Name + '\cbVista', 'ItemIndex', IntToStr(cbVista.ItemIndex));

  for i := 0 to lvRecetas.Columns.Count -1 do
    SetRegistry('\Ventanas', '\' + Self.Name + '\lvRecetas\Col' + IntToStr(i), 'Width', IntToStr(lvRecetas.Column[i].Width));

  if Resultado = mrOk then
  begin
    Recientes.Insert(0, dsComisaria.DataSet.FieldByName('IdComisaria').AsString);
    if Recientes.Count > brMaxRec then
      Recientes.Delete(brMaxRec);

    // Si el resultado es afirmativo se deberá grabar en la lista de recientes
    SetRegistry('\Ventanas', '\' + Self.Name, 'Recientes', Recientes.CommaText);
  end;

  ModalResult := Resultado;
  Action := caFree;
end;

procedure TFrmBuscarConsumo.FormCreate(Sender: TObject);
begin
  Resultado := mrCancel;
end;

procedure TFrmBuscarConsumo.FormKeyDown(Sender: TObject; var Key: Word;
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
    dsComisaria.DataSet.Refresh;
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

procedure TFrmBuscarConsumo.FormShow(Sender: TObject);
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

  for i := 0 to lvRecetas.Columns.Count -1 do
    Try
      lvRecetas.Column[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\lvRecetas\Col' + IntToStr(i), 'Width'));
    Except
      ;
    End;

  try
    pcRecetas.Properties.TabIndex := 0;
    YaLeidas := False;

    VerificaDataSetEmbarcacion;

    if Not ClientModule1.cdEmbarcacion.Active then
      ClientModule1.cdEmbarcacion.Open;

    if ClientModule1.cdEmbarcacion.RecordCount = 0 then
      raise InteligentException.CreateByCode(22, ['Ubicaciones']);

    CargarUbicaciones;
    CargarListaRecetas(lvRecetas);

    cbVista.OnChange(nil);

    // Mostrar por default todas las recetas
    {pcRecetas.Properties.TabIndex := 1;
    if lvRecetas.CanFocus then
      lvRecetas.SetFocus;}
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmBuscarConsumo.IconosClick(Sender: TObject);
begin
  lvRecetas.ViewStyle := vsIcon;
  Iconos.Checked := True;
  Lista.Checked := False;
  Reporte.Checked := False;
  IconosPequenos.Checked := False;
end;

procedure TFrmBuscarConsumo.IconosPequenosClick(Sender: TObject);
begin
  lvRecetas.ViewStyle := vsSmallIcon;
  Iconos.Checked := False;
  Lista.Checked := False;
  Reporte.Checked := False;
  IconosPequenos.Checked := True;
end;

procedure TFrmBuscarConsumo.IdEmbarcacionChange(Sender: TObject);
var
  Id: Integer;
begin
  Id := Integer(IdEmbarcacion.Items.Objects[IdEmbarcacion.ItemIndex]);
  if Not ClientModule1.cdEmbarcacion.Locate('IdEmbarcacion', Id, []) then
  begin
    InteliDialog.ShowModal(IDTituloError, IDLabelError + 'La información del catálogo de Ubicaciones se ha corrompido.', mtError, [mbOk], 0);
    PostMessage(Self.Handle, WM_CLOSE, 0, 0);
  end;

  NombreEmbarcacion.Caption := ClientModule1.cdEmbarcacion.FieldByName('NombreEmbarcacion').AsString;


end;

procedure TFrmBuscarConsumo.IdEmbarcacionKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 56 then
    ClientModule1.cdEmbarcacion.Refresh;
end;

procedure TFrmBuscarConsumo.CargarListaRecetas(ListView: TListView);
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

    dsComisaria.DataSet.First;
    while not dsComisaria.DataSet.Eof do
    begin
      if (CompareText(ListView.Name, 'lvRecetas') = 0) or (Recientes.IndexOf(dsComisaria.DataSet.FieldByName('IdComisaria').AsString) >= 0) then
      begin
        IdGpo := Lista.IndexOf(dsComisaria.DataSet.FieldByName('Mes').AsString);
        if IdGpo < 0 then
        begin
          Grupo := ListView.Groups.Add;
          Grupo.Header := dsComisaria.DataSet.FieldByName('Mes').AsString;
          Grupo.Subtitle := dsComisaria.DataSet.FieldByName('NombreMes').AsString;
          Grupo.TitleImage := 1;

          if CompareText(ListView.Name, 'lvRecetas') = 0 then
            Grupo.Footer := 'Total de ' + LowerCase(dsComisaria.DataSet.FieldByName('NombreMes').AsString) + ': ' + dsComisaria.DataSet.FieldByName('CtaGrupo').AsString;

          IdGpo := Grupo.Index;

          Lista.AddObject(dsComisaria.DataSet.FieldByName('Mes').AsString, TObject(IdGpo));
        end
        else
          IdGpo := Integer(Lista.Objects[IdGpo]);

        Nodo := ListView.Items.Add;
        Nodo.Caption := dsComisaria.DataSet.FieldByName('CodigoComisaria').AsString;
        Nodo.ImageIndex := 11;
        Nodo.SubItems.Add(dsComisaria.DataSet.FieldByName('Referencia').AsString);
        Nodo.SubItems.Add(dsComisaria.DataSet.FieldByName('Fecha').AsString);
        Nodo.SubItems.Add(dsComisaria.DataSet.FieldByName('CodigoMenu').AsString);
        Nodo.SubItems.Add(dsComisaria.DataSet.FieldByName('Desde').AsString);
        Nodo.SubItems.Add(dsComisaria.DataSet.FieldByName('Hasta').AsString);
        Nodo.SubItems.Add(dsComisaria.DataSet.FieldByName('Porcentaje').AsString);
        Nodo.Data := TObject(dsComisaria.DataSet.FieldByName('IdComisaria').AsInteger);
        Nodo.GroupID := IdGpo;
      end;

      dsComisaria.DataSet.Next;
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

procedure TFrmBuscarConsumo.cbVistaChange(Sender: TObject);
begin
  // Cambiar la visualización del listview
  case cbVista.ItemIndex of
    0: lvRecetas.ViewStyle := vsIcon;
    1: lvRecetas.ViewStyle := vsList;
    2: lvRecetas.ViewStyle := vsReport;
  else
    lvRecetas.ViewStyle := vsSmallIcon;
  end;

  btnAbrir.Enabled := (lvRecetas.CanFocus and (lvRecetas.Items.Count > 0));
end;

procedure TFrmBuscarConsumo.btnAbajoClick(Sender: TObject);
begin
  btnActual := btnAbajo;    // Establecer por default la busqueda hacia abajo
  ProseguirBusqueda;
end;

procedure TFrmBuscarConsumo.btnAbrirClick(Sender: TObject);
begin
  Resultado := mrOk;
  Close;
end;

procedure TFrmBuscarConsumo.btnArribaClick(Sender: TObject);
begin
  btnActual := btnArriba;    // Establecer por default la busqueda hacia abajo
  ProseguirBusqueda;
end;

procedure TFrmBuscarConsumo.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmBuscarConsumo.eBuscarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 13) and (Shift = []) then
    ProseguirBusqueda;
end;

procedure TFrmBuscarConsumo.ProseguirBusqueda;
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

procedure TFrmBuscarConsumo.ReporteClick(Sender: TObject);
begin
  lvRecetas.ViewStyle := vsReport;
  Iconos.Checked := False;
  Lista.Checked := False;
  Reporte.Checked := True;
  IconosPequenos.Checked := False;
end;

procedure TFrmBuscarConsumo.TsRecientesShow(Sender: TObject);
begin
  btnAbrir.Enabled := (lvRecetas.CanFocus and (lvRecetas.Items.Count > 0));
end;

procedure TFrmBuscarConsumo.TsTodasShow(Sender: TObject);
begin
  if Not YaLeidas then
  begin
    try
      dsComisaria.DataSet.DisableControls;
      lvRecetas.OnChange := nil;

      YaLeidas := True;
      CargarListaRecetas(lvRecetas);
      btnAbrir.Enabled := (lvRecetas.CanFocus and (lvRecetas.Items.Count > 0));
    finally
      lvRecetas.OnChange := lvRecetasChange;
      dsComisaria.DataSet.EnableControls;
    end;
  end;
end;

procedure TFrmBuscarConsumo.ListaClick(Sender: TObject);
begin
  lvRecetas.ViewStyle := vsList;
  Iconos.Checked := False;
  Lista.Checked := True;
  Reporte.Checked := False;
  IconosPequenos.Checked := False;
end;

function TFrmBuscarConsumo.LocalizaNodo(Key: Word; Shift: TShiftState;
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

procedure TFrmBuscarConsumo.lvRecetasChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
  if sender is TListView then
    if Assigned(TListView(Sender).Selected) then
      dsComisaria.DataSet.Locate('IdComisaria', Integer(TListView(Sender).Selected.Data), []);

  if sender is TcxListView then
    if Assigned(TcxListView(Sender).Selected) then
      dsComisaria.DataSet.Locate('IdComisaria', Integer(TListView(Sender).Selected.Data), []);
end;

procedure TFrmBuscarConsumo.lvRecetasContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  GetCursorPos(MousePos);
  popVisualizacion.Popup(MousePos.X, MousePos.Y);
end;

procedure TFrmBuscarConsumo.lvRecetasDblClick(Sender: TObject);
begin
  if btnAbrir.Enabled then
    btnAbrir.Click;
end;

function TFrmBuscarConsumo.funcPregunta(Nodo: TAdvGlowButton): String;
begin
  if Nodo = btnAbajo then
    Result := '¿Desea continuar con la busqueda desde el inicio?'
  else
    Result := '¿Desea continuar con la busqueda desde el final?';
end;

procedure TFrmBuscarConsumo.CargarUbicaciones;
var
  Id: Integer;
begin
  IdEmbarcacion.Items.Clear;
  ClientModule1.cdEmbarcacion.First;
  while Not ClientModule1.cdEmbarcacion.Eof do
  begin
    Id := ClientModule1.cdEmbarcacion.FieldByName('IdEmbarcacion').AsInteger;
    IdEmbarcacion.Items.AddObject(ClientModule1.cdEmbarcacion.FieldByName('CodigoEmbarcacion').AsString, TObject(Id));

    ClientModule1.cdEmbarcacion.Next;
  end;

  IdEmbarcacion.ItemIndex := 0;
  IdEmbarcacion.OnChange(IdEmbarcacion);
end;

end.
