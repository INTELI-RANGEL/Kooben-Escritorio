unit UTFrmEntradasAlmacen;

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
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, AdvPicture, StdCtrls,
  dxBar, dxRibbon, JvMenus, Menus, AdvMenus, DBClient, ExtCtrls, JvExControls,
  JvLabel, DBCtrls, ClientModuleUnit1, UInteliDialog, URegistro, StrUtils,
  RxToolEdit, RxCurrEdit, RxDBCurrEdit, JvExMask, JvToolEdit, JvBaseEdits,
  JvDBControls, Mask, AdvGlowButton;

type
  TFrmEntradasAlmacen = class(TForm)
    pnlReceta: TPanel;
    NombreReceta: TDBText;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    DescripcionReceta: TDBText;
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel3: TPanel;
    CodigoReceta: TDBText;
    Panel4: TPanel;
    JvLabel1: TJvLabel;
    Panel5: TPanel;
    JvLabel4: TJvLabel;
    Consecutivo: TDBText;
    cdComisaria: TClientDataSet;
    cdComisariaInsumoLista: TClientDataSet;
    cdBuscarComisaria: TClientDataSet;
    cdComisariaInsumoUpt: TClientDataSet;
    cdComisariaUpt: TClientDataSet;
    dsComisaria: TDataSource;
    dsComisariaInsumoLista: TDataSource;
    dsComisariaInsumoUpt: TDataSource;
    cdEmbarcacion: TClientDataSet;
    cdBuscarMenu: TClientDataSet;
    AdvPopupMenu1: TAdvPopupMenu;
    Editar1: TMenuItem;
    cdUnidades: TClientDataSet;
    dsUnidades: TDataSource;
    popSolicitar: TJvPopupMenu;
    Reestablecervalororiginal1: TMenuItem;
    N3: TMenuItem;
    Redondeara1: TMenuItem;
    Redondeara2: TMenuItem;
    Redondeara3: TMenuItem;
    N1: TMenuItem;
    Ajustara1: TMenuItem;
    Ajustara2: TMenuItem;
    Ajustara3: TMenuItem;
    GroupBox1: TGroupBox;
    AdvPicture1: TAdvPicture;
    Panel2: TPanel;
    jvlbl1: TJvLabel;
    cxGrid1: TcxGrid;
    tvPartidas: TcxGridDBTableView;
    IdComisariaPartida: TcxGridDBColumn;
    NombreTipoInsumo: TcxGridDBColumn;
    CodigoInsumo: TcxGridDBColumn;
    NombreInsumo: TcxGridDBColumn;
    CantidadSolicitada: TcxGridDBColumn;
    sNombreComisaria: TcxGridDBColumn;
    glNivel1: TcxGridLevel;
    pnlEditarPartida: TPanel;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    JvLabel8: TJvLabel;
    Panel6: TPanel;
    btnEditarOk: TAdvGlowButton;
    btnEditarCancelar: TAdvGlowButton;
    EdtCodigoInsumo: TDBEdit;
    EdtNombreInsumo: TDBEdit;
    EdtCantidadSolicitada: TJvDBCalcEdit;
    EdtCantidadOriginal: TDBCurrencyEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    EdtsNombre: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure tvPartidasDblClick(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure btnEditarOkClick(Sender: TObject);
    procedure btnEditarCancelarClick(Sender: TObject);
    procedure FormaEditClose(Sender: TObject; var Action: TCloseAction);
  private
    IdComisaria: Integer;
    FormImage: TForm;
    OriginalPos: TPoint;
    FormaEdit: TForm;
    EditResultado: TModalResult;
    procedure VerificaDataSet(DataSet: TClientDataSet);
    function BuscarComisaria: Integer;
    procedure CrearPartidasInsumos;
    procedure VerificaBuscarMenu(Dataset: TClientDataSet);
    procedure FormImageClose(Sender: TObject;
      var Action: TCloseAction);
  public
    { Public declarations }
  end;

var
  FrmEntradasAlmacen: TFrmEntradasAlmacen;

implementation

{$R *.dfm}

Uses
  UTFrmBuscarConsumo;

procedure TFrmEntradasAlmacen.FormShow(Sender: TObject);
var
  i: Integer;
  LocCursor: TCursor;
begin
  for i:= 0 to tvPartidas.ColumnCount -1 do
    try
      tvPartidas.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + self.Name + '\tvPartidas', 'Column'+ IntToStr(i)));
    except
      ;
    end;

  Try
    // Crear los dataset necesarios
    VerificaDataSet(cdComisaria);

    BuscarComisaria;

    Self.Caption := 'Solicitud de Consumo: ' + cdComisaria.FieldByName('CodigoComisaria').AsString;

    CrearPartidasInsumos;

    IdComisaria := cdComisaria.FieldByName('IdComisaria').AsInteger;

    if Not CargarDatosFiltrados(cdComisariaInsumoLista, 'IdComisaria', [IdComisaria]) then
      raise InteligentException.CreateByCode(6, ['Ingredientes por Solicitud de Consumo', IdComisaria, 'Id. Comisaria']);

    cdComisariaInsumoLista.Open;
  Except
    on e:InteligentException do
    begin
      if e.Message <> '*' then
        InteliDialog.ShowModal(e.Title, e.Message, mtError, [mbOk], 0);

      if self.Showing then
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:InteligentWarning do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, mtWarning, [mbOk], 0);
      if self.Showing then
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmEntradasAlmacen.tvPartidasDblClick(Sender: TObject);
var
  LocCursor: TCursor;
  oHeight, OWidth: Integer;
  OriginalRound,
  OriginalTrunc,
  SolicitarRound,
  SolicitarTrunc,
  locOriginal: Real;

function Truncar(Valor: Real; Dec: Byte): Real;
var
  NumDec: Byte;
  sValor, Ceros: String;
begin
  sValor := FloatToStr(Valor);
  NumDec := Length(sValor) - Pos('.', sValor);
  if NumDec > Dec then
    sValor := LeftStr(sValor, Length(sValor) - (NumDec - Dec));
  Ceros := Copy(DupeString('0', Dec), 1, Dec - NumDec);
  sValor := sValor + Ceros;
  Result := StrToFloat(sValor);
end;

begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      if cdUnidades.ProviderName = '' then
      begin
        if not CrearConjunto(cdUnidades, 'nuc_unidades', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Unidades de Medida']);

        cdUnidades.Open;
      end;

      if tvPartidas.Controller.SelectedRowCount = 0 then
        raise InteligentException.CreateByCode(24, ['No ha seleccionado ninguna Partida de Insumo.']);

      // Editar la partida seleccionada
      if Not CargarDatosFiltrados(cdComisariaInsumoUpt, 'IdComisariaPartida', [tvPartidas.Controller.SelectedRecords[0].DisplayTexts[0]]) then
        raise InteligentException.CreateByCode(6, ['Partidas de Solicitud de Consumo', tvPartidas.Controller.SelectedRecords[0].DisplayTexts[0], 'Id. Partida de Solicitud de Consumo']);

      if cdComisariaInsumoUpt.Active then
        cdComisariaInsumoUpt.Refresh
      else
        cdComisariaInsumoUpt.Open;

      if cdComisariaInsumoUpt.RecordCount = 0 then
        raise InteligentException.CreateByCode(13, [tvPartidas.Controller.SelectedRecords[0].DisplayTexts[1], 'Partidas de Solicitud de Consumo']);

      cdComisariaInsumoUpt.Edit;
    finally
      Screen.Cursor := LocCursor;
    end;

    // Armar el formulario de edición
    FormaEdit := TForm.Create(Self);
    oHeight := pnlEditarPartida.Height;
    oWidth := pnlEditarPartida.Width;
    EditResultado := mrCancel;
    Try
      FormaEdit.Width := oWidth;
      FormaEdit.Height := oHeight;
      FormaEdit.OnClose := FormaEditClose;

      pnlEditarPartida.Parent := FormaEdit;
      pnlEditarPartida.Align := alClient;
      pnlEditarPartida.Visible := True;

      // Modificar el popup para que muestre los valores específicos para este registro
      LocOriginal := StrToFloat(cdComisariaInsumoLista.FieldByName('CantidadOriginal').AsString);

      OriginalRound := Round(LocOriginal * 10000) / 10000;
      OriginalTrunc := Truncar(LocOriginal, 4);
      SolicitarRound := Round(EdtCantidadSolicitada.Value * 10000) / 10000;
      SolicitarTrunc := Trunc(EdtCantidadSolicitada.Value * 10000) / 10000;

      Reestablecervalororiginal1.Caption := 'Valor original: ' + FloatToStrF(cdComisariaInsumoLista.FieldByName('CantidadOriginal').AsFloat, ffNumber, 16, 6);
      Redondeara1.Caption := 'Redondear a: ' + FloatToStrF(OriginalRound, ffNumber, 16, 4);
      Redondeara2.Caption := 'Redondear a: ' + FloatToStrF(Round(OriginalRound * 100) / 100, ffNumber, 16, 2);
      Redondeara3.Caption := 'Redondear a: ' + FloatToStrF(Round(OriginalRound), ffNumber, 16, 0);

      Ajustara1.Caption := 'Ajustar a: ' + FloatToStrF(OriginalTrunc, ffNumber, 16, 4);
      Ajustara2.Caption := 'Ajustar a: ' + FloatToStrF(Trunc(OriginalTrunc * 100) / 100, ffNumber, 16, 2);
      Ajustara3.Caption := 'Ajustar a: ' + FloatToStrF(Trunc(OriginalTrunc), ffNumber, 16, 0);

      //Redondeara1.Caption := 'Redondear a: ' + FloatToStrF(SolicitarRound, ffNumber, 16, 4);
      //Ajustara2.Caption := 'Ajustar a: ' + FloatToStrF(SolicitarTrunc, ffNumber, 16, 4);

      if FormaEdit.ShowModal <> mrOk then
        raise InteligentWarning.Create('*');

      LocCursor := Screen.Cursor;
      Try
        Screen.Cursor := crAppStart;
        cdComisariaInsumoLista.Refresh; // Actualizar los datos
      Finally
        Screen.Cursor := LocCursor;
      end;
    Finally
      pnlEditarPartida.Visible := False;
      pnlEditarPartida.Align := alNone;
      pnlEditarPartida.Parent := Self;

      FormaEdit.Destroy;
    End;
  Except
    on e:InteligentWarning do
      ;

    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmEntradasAlmacen.VerificaDataSet(DataSet: TClientDataSet);
begin
  if DataSet.ProviderName = '' then
    if Not CrearConjunto(DataSet, 'cmt_comisaria', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Solicitudes de Consumo']);
end;

function TFrmEntradasAlmacen.BuscarComisaria: Integer;
var
  i, ii: Integer;
  YaAbierto: Boolean;
  LocForm: TForm;
  LocDataSet: TClientDataSet;
begin
  VerificaDataSet(cdBuscarComisaria);

  if Not CargarDatosFiltrados(cdBuscarComisaria, 'Cuenta', ['Si']) then
    raise InteligentException.CreateByCode(6, ['Solicitudes de Consumo', 'Si', 'Cuenta']);

  cdBuscarComisaria.Open;

  Application.CreateForm(TFrmBuscarConsumo, FrmBuscarConsumo);
  FrmBuscarConsumo.dsComisaria.DataSet := cdBuscarComisaria;
  FrmBuscarConsumo.Caption := 'Buscar Pedido de Consumo';
  FrmBuscarConsumo.btnAbrir.Caption := '&Abrir';

  if FrmBuscarConsumo.ShowModal = mrCancel then
    raise InteligentException.Create('*');

  // Verificar si la receta ya está abierta
  i := 0;
  YaAbierto := False;
  while (i < Application.MainForm.MDIChildCount) and (Not YaAbierto) do
  begin
    if CompareText(Application.MainForm.MDIChildren[i].Name, Self.Name) <> 0 then
    begin
      // Buscar el dataset de la receta para ver que Id es el suyo
      LocForm := Application.MainForm.MDIChildren[i];
      ii := 0;
      while ii < LocForm.ComponentCount do
      begin
        if LocForm.Components[ii].ClassNameIs('TClientDataSet') and (AnsiCompareText(LocForm.Components[ii].Name, 'cdComisaria') = 0) then
        begin
          LocDataSet := TClientDataSet(LocForm.Components[ii]);
          YaAbierto := (LocDataSet.ProviderName <> '') and (LocDataSet.Active) and (LocDataSet.RecordCount > 0) and (LocDataSet.FieldByName('IdComisaria').AsInteger = cdBuscarComisaria.FieldByName('IdComisaria').AsInteger);
          ii := LocForm.ComponentCount;
        end;

        Inc(ii);
      end;
    end;

    if Not YaAbierto then
      Inc(i);
  end;

  if YaAbierto then
  begin
    if LocForm.WindowState = wsMinimized then
      LocForm.WindowState := wsNormal;

    LocForm.BringToFront;
    raise InteligentWarning.CreateByCode(24, ['La Solicitud de Consumo de ' + cdBuscarComisaria.FieldByName('NombreReceta').AsString + ' ya se encuentra abierta en el sistema, no es posible abrir dos veces la misma Solicitud de Consumo.']);
    //InteliDialog.ShowModal('La receta ya está abierta', 'La receta de ' + cdBuscarComisaria.FieldByName('NombreReceta').AsString + ' ya se encuentra abierta en el sistema, no es posible abrir dos veces la misma receta.', mtConfirmation, [mbOk], 0);
  end
  else
  begin
    if Not CargarDatosFiltrados(cdComisaria, 'IdComisaria', [cdBuscarComisaria.FieldByName('IdComisaria').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Solicitudes de Consumo', cdBuscarComisaria.FieldByName('IdComisaria').AsInteger, 'Id. Comisaria']);

    if cdComisaria.Active then
      cdComisaria.Refresh
    else
      cdComisaria.Open;

    if cdComisaria.RecordCount = 0 then
      raise InteligentException.CreateByCode(13, [cdBuscarComisaria.FieldByName('CodigoReceta').AsString, 'Solicitudes de Consumo']);
  end;
end;

procedure TFrmEntradasAlmacen.CrearPartidasInsumos;
begin
  {if cdExplosion.ProviderName = '' then
    if Not CrearConjunto(cdExplosion, 'cmt_explosion', ccSelect) then
      raise InteligentException.CreateByCode(5, ['Explosión de Insumos del Menú']);}

  if cdComisariaInsumoUpt.ProviderName = '' then
    if Not CrearConjunto(cdComisariaInsumoUpt, 'cmt_comisariapartida', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Partidas de Solicitud de Consumo']);

  if cdComisariaInsumoLista.ProviderName = '' then
    if Not CrearConjunto(cdComisariaInsumoLista, 'cmt_comisariapartida', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Partidas de Solicitud de Consumo']);
end;

procedure TFrmEntradasAlmacen.Editar1Click(Sender: TObject);
begin
  // Editar la partida seleccionada
end;

procedure TFrmEntradasAlmacen.VerificaBuscarMenu(Dataset: TClientDataSet);
begin
  if DataSet.ProviderName = '' then
    if Not CrearConjunto(DataSet, 'cmt_menu', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Menús periódicos']);
end;

procedure TFrmEntradasAlmacen.FormImageClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SetRegistry('\Ventanas', '\' + FormImage.Name, 'Top', IntToStr(FormImage.Top));
  SetRegistry('\Ventanas', '\' + FormImage.Name, 'Left', IntToStr(FormImage.Left));
end;

procedure TFrmEntradasAlmacen.btnEditarCancelarClick(Sender: TObject);
begin
  FormaEdit.Close;
end;

procedure TFrmEntradasAlmacen.btnEditarOkClick(Sender: TObject);
begin
  try
    cdComisariaInsumoUpt.Post;
    cdComisariaInsumoUpt.ApplyUpdates(-1);
    EditResultado := mrOk;
  Except
    cdComisariaInsumoUpt.Cancel;
    EditResultado := mrCancel;
  end;

  FormaEdit.Close;
end;

procedure TFrmEntradasAlmacen.FormaEditClose(Sender: TObject; var Action: TCloseAction);
begin
  cdComisariaInsumoUpt.Cancel;
  FormaEdit.ModalResult := EditResultado;
  Action := caFree;
end;

end.
