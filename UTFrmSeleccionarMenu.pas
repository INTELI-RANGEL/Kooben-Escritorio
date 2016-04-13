unit UTFrmSeleccionarMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsdxBarPainter, Menus,
  StdCtrls, cxButtons, AdvGlowButton, DB, dxBar, cxClasses, dxSkinsForm,
  DBCtrls, ExtCtrls, ComCtrls, cxPC, JvExControls, JvLabel, cxListView,
  DBClient, UInteliDialog, ClientModuleUnit1;

type
  TFrmSeleccionarMenu = class(TForm)
    Panel1: TPanel;
    JvLabel1: TJvLabel;
    cbVista: TComboBox;
    dxSkinController1: TdxSkinController;
    DxManager1: TdxBarManager;
    dsMenu: TDataSource;
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
    dsEmbarcacion: TDataSource;
    lvRecetas: TListView;
    JvLabel3: TJvLabel;
    cbFiltrar: TCheckBox;
    procedure eBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    function LocalizaNodo(Key: Word; Shift: TShiftState; var Ind: Integer;
      Inicializa: Boolean): Boolean;
    procedure btnAbajoClick(Sender: TObject);
    procedure btnArribaClick(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure lvRecetasChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure lvRecetasContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure lvRecetasDblClick(Sender: TObject);
    procedure lvRecientesContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure lvRecientesDblClick(Sender: TObject);
    procedure cbVistaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbFiltrarClick(Sender: TObject);
  private
    btnActual: TAdvGlowButton;
    Resultado: TModalResult;
    procedure ProseguirBusqueda;
    procedure CargarListaRecetas(ListView: TListView); Overload;
    procedure CargarEmbarcaciones;
  public
    { Public declarations }
  end;

var
  FrmSeleccionarMenu: TFrmSeleccionarMenu;

implementation

{$R *.dfm}

Uses
  URegistro;

procedure TFrmSeleccionarMenu.btnAbajoClick(Sender: TObject);
begin
  btnActual := btnAbajo;    // Establecer por default la busqueda hacia abajo
  ProseguirBusqueda;
end;

procedure TFrmSeleccionarMenu.btnAbrirClick(Sender: TObject);
begin
  // Verifiar si se seleccionó un Menú con Solicitud de Insumo
  if dsMenu.DataSet.FieldByName('IdInsumoPedido').IsNull then
  begin
    InteliDialog.ShowModal('No se puede seleccionar', 'El Menú seleccionado no cuenta con una Solicitud de Consumo, no es posible generar un Pedido de Consumo.', mtConfirmation, [mbOk], 0);
    lvRecetas.SetFocus;
  end
  else
  begin
    Resultado := mrOk;
    Close;
  end;
end;

procedure TFrmSeleccionarMenu.btnArribaClick(Sender: TObject);
begin
  btnActual := btnArriba;    // Establecer por default la busqueda hacia abajo
  ProseguirBusqueda;
end;

procedure TFrmSeleccionarMenu.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSeleccionarMenu.cbFiltrarClick(Sender: TObject);
begin
  CargarListaRecetas(lvRecetas);
end;

procedure TFrmSeleccionarMenu.cbVistaChange(Sender: TObject);
begin
  // Cambiar la visualización del listview
  case cbVista.ItemIndex of
    0: lvRecetas.ViewStyle := vsIcon;
    1: lvRecetas.ViewStyle := vsList;
    2: lvRecetas.ViewStyle := vsReport;
  else
    lvRecetas.ViewStyle := vsSmallIcon;
  end;

  btnAbrir.Enabled := lvRecetas.CanFocus and (lvRecetas.Items.Count > 0);
end;

procedure TFrmSeleccionarMenu.eBuscarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Ind: Integer;
begin
  if (Key = 13) and (Shift = []) then
    ProseguirBusqueda;
end;

procedure TFrmSeleccionarMenu.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
  cValor: String;
begin
  CancelarTransaccion;

  SetRegistry('\Ventanas', '\' + Self.Name + '\cbVista', 'ItemIndex', IntToStr(cbVista.ItemIndex));

  if cbFiltrar.Checked then
    cValor := 'Si'
  else
    cValor := 'No';
  SetRegistry('\Ventanas', '\' + Self.Name + '\cbFiltrar', 'Checked', cValor);

  // Registrar el ancho de las columnas de los listview
  for i := 0 to lvRecetas.Columns.Count -1 do
    SetRegistry('\Ventanas', '\' + Self.Name + '\lvRecetas\Col' + IntToStr(i), 'Width', IntToStr(lvRecetas.Column[i].Width));

  ModalResult := Resultado;
  Action := caFree;
end;

procedure TFrmSeleccionarMenu.FormCreate(Sender: TObject);
begin
  Resultado := mrCancel;
end;

procedure TFrmSeleccionarMenu.FormKeyDown(Sender: TObject; var Key: Word;
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
    dsMenu.DataSet.Refresh;
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

procedure TFrmSeleccionarMenu.FormShow(Sender: TObject);
var
  i: Integer;
  cValor: String;
begin
  Try
    Try
      cbVista.ItemIndex := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\cbVista', 'ItemIndex'));
    Except
      ;
    End;

    Try
      cValor := VarRegistry('\Ventanas', '\' + Self.Name + '\cbFiltrar', 'Checked');
    Except
      cValor := 'Si';
    End;
    cbFiltrar.Checked := cValor <> 'No';

    for i := 0 to lvRecetas.Columns.Count -1 do
      Try
        lvRecetas.Column[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\lvRecetas\Col' + IntToStr(i), 'Width'));
      Except
        ;
      End;

    CargarEmbarcaciones;

    if dsEmbarcacion.DataSet.RecordCount = 0 then
      raise InteligentException.CreateByCode(22, ['Ubicaciones']);

    try
      dsMenu.DataSet.DisableControls;
      lvRecetas.OnChange := nil;

      CargarListaRecetas(lvRecetas);
      btnAbrir.Enabled := lvRecetas.CanFocus and (lvRecetas.Items.Count > 0);
    finally
      lvRecetas.OnChange := lvRecetasChange;
      dsMenu.DataSet.EnableControls;
    end;
  Except
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
  End;
end;

procedure TFrmSeleccionarMenu.ProseguirBusqueda;
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

function TFrmSeleccionarMenu.LocalizaNodo(Key: Word; Shift: TShiftState;
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

procedure TFrmSeleccionarMenu.lvRecetasChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
  if sender is TListView then
    if Assigned(TListView(Sender).Selected) then
      dsMenu.DataSet.Locate('IdMenu', Integer(TListView(Sender).Selected.Data), []);

  if sender is TcxListView then
    if Assigned(TcxListView(Sender).Selected) then
      dsMenu.DataSet.Locate('IdMenu', Integer(TListView(Sender).Selected.Data), []);
end;

procedure TFrmSeleccionarMenu.lvRecetasContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  GetCursorPos(MousePos);
  popVisualizacion.Popup(MousePos.X, MousePos.Y);
end;

procedure TFrmSeleccionarMenu.lvRecetasDblClick(Sender: TObject);
begin
  if btnAbrir.Enabled then
    btnAbrir.Click;
end;

procedure TFrmSeleccionarMenu.lvRecientesContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  GetCursorPos(MousePos);
  popVisualizacion.Popup(MousePos.X, MousePos.Y);
end;

procedure TFrmSeleccionarMenu.lvRecientesDblClick(Sender: TObject);
begin
  if btnAbrir.Enabled then
    btnAbrir.Click;
end;

procedure TFrmSeleccionarMenu.CargarListaRecetas(ListView: TListView);
var
  Nodo: TListItem;
  Lista: TStringList;
  Grupo: TListGroup;
  IdGpo, IdGpoR: Integer;
  lcNombre: String;
  Cursor: TCursor;
begin
  if cbFiltrar.Checked then
  begin
    // Filtrar los Menus por aquellos que tengan Solicitu de Consumo
    dsMenu.DataSet.Filtered := False;
    dsMenu.DataSet.Filter := 'IdInsumoPedido <> Null';
    dsMenu.DataSet.Filtered := True;
  end
  else
    dsMenu.DataSet.Filtered := False;

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

    dsMenu.DataSet.First;
    while not dsMenu.DataSet.Eof do
    begin
      IdGpo := Lista.IndexOf(dsMenu.DataSet.FieldByName('CodigoEmbarcacion').AsString);
      if IdGpo < 0 then
      begin
        Grupo := ListView.Groups.Add;
        Grupo.Header := dsMenu.DataSet.FieldByName('CodigoEmbarcacion').AsString;
        Grupo.Subtitle := dsMenu.DataSet.FieldByName('NombreEmbarcacion').AsString;
        Grupo.TitleImage := 1;

        if CompareText(ListView.Name, 'lvRecetas') = 0 then
          Grupo.Footer := 'Total de ' + LowerCase(dsMenu.DataSet.FieldByName('NombreEmbarcacion').AsString) + ': ' + dsMenu.DataSet.FieldByName('CtaGrupo').AsString;

        IdGpo := Grupo.Index;

        Lista.AddObject(dsMenu.DataSet.FieldByName('CodigoEmbarcacion').AsString, TObject(IdGpo));
      end
      else
        IdGpo := Integer(Lista.Objects[IdGpo]);

      Nodo := ListView.Items.Add;
      Nodo.Caption := dsMenu.DataSet.FieldByName('CodigoMenu').AsString + ' DEL ' + dsMenu.DataSet.FieldByName('Desde').AsString + ' AL ' + dsMenu.DataSet.FieldByName('Hasta').AsString;
      if dsMenu.DataSet.FieldByName('IdInsumoPedido').IsNull then
        Nodo.ImageIndex := 9
      else
        Nodo.ImageIndex := 16;
      Nodo.SubItems.Add(dsMenu.DataSet.FieldByName('Desde').AsString);
      Nodo.SubItems.Add(dsMenu.DataSet.FieldByName('Hasta').AsString);
      Nodo.SubItems.Add(dsMenu.DataSet.FieldByName('Estado').AsString);
      Nodo.SubItems.Add(dsMenu.DataSet.FieldByName('Comentarios').AsString);
      Nodo.Data := TObject(dsMenu.DataSet.FieldByName('IdMenu').AsInteger);
      Nodo.GroupID := IdGpo;

      dsMenu.DataSet.Next;
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

procedure TFrmSeleccionarMenu.CargarEmbarcaciones;
var
  LocCursor: TCursor;
  Original: TBookMark;
begin
  LocCursor := Screen.Cursor;

  Try
    Screen.Cursor := crAppStart;

    // Verificar si las embarcaciones están disponibles
    if Not dsEmbarcacion.DataSet.Active then
      dsEmbarcacion.DataSet.Open;

    dsEmbarcacion.DataSet.DisableControls;
    Original := dsEmbarcacion.DataSet.Bookmark;
  Finally
    Screen.Cursor := LocCursor;
    if dsEmbarcacion.DataSet.BookmarkValid(Original) then
      dsEmbarcacion.DataSet.GotoBookMark(Original);
    dsEmbarcacion.DataSet.EnableControls;
  End;
end;

end.
