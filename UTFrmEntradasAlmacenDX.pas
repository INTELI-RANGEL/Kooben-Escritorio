unit UTFrmEntradasAlmacenDX;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, JvExControls, JvLabel, StdCtrls, Mask, DBCtrls, JvExMask,
  JvToolEdit, JvDBControls, ClientModuleUnit1, URegistro, UInteliDialog,
  AdvGlowButton, DB, DBClient, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Menus,
  AdvMenus, JvBaseEdits, frxClass, frxDBSet, ComCtrls, cxCalc, cxCurrencyEdit;

type
  TFrmEntradasAlmacenDX = class(TForm)
    pnlEncabezado: TPanel;
    Panel1: TPanel;
    JvLabel3: TJvLabel;
    IdRecibio: TDBLookupComboBox;
    JvLabel4: TJvLabel;
    IdAutorizo: TDBLookupComboBox;
    pnlCodigoExistencia: TPanel;
    JvLabel1: TJvLabel;
    CodigoRegistroMovimiento: TDBEdit;
    pnlEditCantidad: TPanel;
    JvLabel9: TJvLabel;
    edtCodigoInsumo: TDBText;
    JvLabel10: TJvLabel;
    edtNombreInsumo: TDBText;
    JvLabel11: TJvLabel;
    editCantidad: TJvDBCalcEdit;
    pnlPartidas: TPanel;
    gridExistenciaPartida: TcxGrid;
    tvExistenciaPartida: TcxGridDBTableView;
    NombreTipoInsumo: TcxGridDBColumn;
    NombreInsumo: TcxGridDBColumn;
    Registrado: TcxGridDBColumn;
    TituloPresentacion1: TcxGridDBColumn;
    gridExistenciaPartidaLevel1: TcxGridLevel;
    btnGrabar: TAdvGlowButton;
    btnCerrar: TAdvGlowButton;
    pnlBotonesPartidas: TPanel;
    Splitter1: TSplitter;
    pnlBotones: TPanel;
    btnEncabezadoGrabar: TAdvGlowButton;
    btnEncabezadoCancel: TAdvGlowButton;
    cdBuscarComisaria: TClientDataSet;
    dsBuscarComisaria: TDataSource;
    cdComisaria: TClientDataSet;
    dsComisaria: TDataSource;
    cdMovimientosComisaria: TClientDataSet;
    dsMovimientoComisaria: TDataSource;
    pnlComisaria: TPanel;
    gridComisariaPartida: TcxGrid;
    tvComisariaPartida: TcxGridDBTableView;
    cpNombreInsumo: TcxGridDBColumn;
    gridComisariaPartidaLevel1: TcxGridLevel;
    cdRegistroMovUpt: TClientDataSet;
    dsRegistroMovUpt: TDataSource;
    cdRegistroMovPdaUpt: TClientDataSet;
    dsRegistroMovPdaUpt: TDataSource;
    cdAutorizo: TClientDataSet;
    cdRecibio: TClientDataSet;
    dsRecibio: TDataSource;
    dsAutorizo: TDataSource;
    cpNombreTipoInsumo: TcxGridDBColumn;
    Panel3: TPanel;
    btnAgregar: TAdvGlowButton;
    btnPendientes: TAdvGlowButton;
    btnQuitar: TAdvGlowButton;
    btnNinguno: TAdvGlowButton;
    TituloPresentacion: TcxGridDBColumn;
    CantidadPresentacion: TcxGridDBColumn;
    Surtido: TcxGridDBColumn;
    Pendiente: TcxGridDBColumn;
    rgFiltroPartidas: TRadioGroup;
    cdRegistroMovimiento: TClientDataSet;
    dsRegistroMovimiento: TDataSource;
    cdRegistroMovimientoPartida: TClientDataSet;
    dsRegistroMovimientoPartida: TDataSource;
    pmPartidas: TAdvPopupMenu;
    EditarInsumo1: TMenuItem;
    QuitarInsumo1: TMenuItem;
    pnlEditar: TPanel;
    pnlBtnEdit: TPanel;
    btnAceptarEdit: TAdvGlowButton;
    btnCancelarEdit: TAdvGlowButton;
    EditCodigoInsumo: TDBEdit;
    JvLabel2: TJvLabel;
    JvLabel6: TJvLabel;
    EditNombreInsumo: TDBEdit;
    EditRegistrado: TJvDBCalcEdit;
    JvLabel7: TJvLabel;
    cdBuscarEntrada: TClientDataSet;
    Panel4: TPanel;
    btnImprimir: TAdvGlowButton;
    frxEntradas: TfrxReport;
    fdsRegistroMovimiento: TfrxDBDataset;
    fdsRegistroMovimientoPartida: TfrxDBDataset;
    btnTipoInsumo: TAdvGlowButton;
    IdInsumo: TcxGridDBColumn;
    btnQuitarTipo: TAdvGlowButton;
    PdaIdInsumo: TcxGridDBColumn;
    pnlProgress: TPanel;
    Panel6: TPanel;
    pbProcesando: TProgressBar;
    Referencia: TDBEdit;
    JvLabel8: TJvLabel;
    gbComisaria: TGroupBox;
    lblCodigoComisaria: TDBText;
    JvLabel12: TJvLabel;
    eReferencia: TJvLabel;
    lblReferencia: TDBText;
    JvLabel13: TJvLabel;
    lblCodigoMenu: TDBText;
    eDesde: TJvLabel;
    lblDesde: TDBText;
    eHasta: TJvLabel;
    lblHasta: TDBText;
    JvLabel14: TJvLabel;
    lblCodigoEmbarcacion: TDBText;
    eNombreEmbarcacion: TJvLabel;
    lblNombreEmbarcacion: TDBText;
    JvLabel15: TJvLabel;
    iIdEmpresa: TDBLookupComboBox;
    Aplicacion: TJvDBDateEdit;
    JvLabel5: TJvLabel;
    cdProveedor: TClientDataSet;
    dsProveedor: TDataSource;
    Panel2: TPanel;
    procedure FormShow(Sender: TObject);
    procedure FormaEditShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormaEditClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGrabarClick(Sender: TObject);
    procedure btnEncabezadoGrabarClick(Sender: TObject);
    procedure rgFiltroPartidasClick(Sender: TObject);
    procedure btnAgregarClick(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure EditarInsumo1Click(Sender: TObject);
    procedure btnAceptarEditClick(Sender: TObject);
    procedure btnCancelarEditClick(Sender: TObject);
    procedure tvExistenciaPartidaCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tvComisariaPartidaCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Panel1DblClick(Sender: TObject);
    procedure cdRegistroMovUptAfterEdit(DataSet: TDataSet);
    procedure btnEncabezadoCancelClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnTipoInsumoClick(Sender: TObject);
    procedure tvComisariaPartidaSelectionChanged(
      Sender: TcxCustomGridTableView);
    procedure btnPendientesClick(Sender: TObject);
    procedure btnQuitarClick(Sender: TObject);
    procedure btnQuitarTipoClick(Sender: TObject);
    procedure btnNingunoClick(Sender: TObject);
    procedure cdRegistroMovPdaUptAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdRegistroMovUptAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cdComisariaAfterOpen(DataSet: TDataSet);
    procedure cdComisariaAfterRefresh(DataSet: TDataSet);
  private
    IdRegistroMovimiento: Integer;
    FormaEditResult: TModalResult;
    CodigoOriginal: String;
    GenerarError: Boolean;
    NecesitaGrabar: Boolean;
    procedure BuscarComisaria;
    procedure EstadoEncabezado(Modo: Boolean);
    function BuscarReceta: Integer;
    procedure AgregarRegistro;
    procedure QuitarRegistro;
    procedure CalcularAncho;
    procedure OrdenarComisaria;
  public
    { Public declarations }
  end;

const
  Margen = 20;

var
  FrmEntradasAlmacenDX: TFrmEntradasAlmacenDX;

implementation

{$R *.dfm}

Uses
  UTFrmBuscarConsumo, Unit2, UTFrmBuscarMovimiento;

procedure TFrmEntradasAlmacenDX.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
  for i:= 0 to tvComisariaPartida.ColumnCount -1 do
    SetRegistry('\Ventanas', '\' + Self.Name + '\tvComisariaPartida\Col' + IntToStr(i), 'Width', IntToStr(tvComisariaPartida.Columns[i].Width));

  for i:= 0 to tvExistenciaPartida.ColumnCount -1 do
    SetRegistry('\Ventanas', '\' + self.Name + '\tvExistenciaPartida\Col' + IntToStr(i), 'Width', IntToStr(tvExistenciaPartida.Columns[i].Width));

  SetRegistry('\Ventanas', '\' + self.Name + '\pnlComisaria', 'Width', IntToStr(pnlComisaria.Width));

  CancelarTransaccion;
  EliminarConjunto([cdBuscarComisaria, cdComisaria, cdMovimientosComisaria, cdRegistroMovUpt, cdRegistroMovPdaUpt, cdRegistroMovimiento, cdRegistroMovimientoPartida, cdRecibio, cdAutorizo, cdBuscarEntrada, cdProveedor]);
  Action := caFree;
end;

procedure TFrmEntradasAlmacenDX.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  // Verificar si se necesita grabar antes de salir
  if (NecesitaGrabar) and (Form2.NuevaEntrada <> nesBorrar) then
  begin
    CanClose := True;
    case InteliDialog.ShowModal('Grabar modificaciones realizadas', '¿Desea grabar los cambios realizados antes de cerrar la ventana?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
      mrYes: btnGrabar.Click;
      mrNo: ;
      mrCancel: CanClose := False;
    end;
  end;
end;

procedure TFrmEntradasAlmacenDX.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
  Procesado: Integer;
  i: Integer;
begin
  for i:= 0 to tvComisariaPartida.ColumnCount -1 do
    try
      tvComisariaPartida.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + self.Name + '\tvComisariaPartida\Col' + IntToStr(i), 'Width'));
    except
      ;
    end;

  for i:= 0 to tvExistenciaPartida.ColumnCount -1 do
    try
      tvExistenciaPartida.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + self.Name + '\tvExistenciaPartida\Col' + IntToStr(i), 'Width'));
    except
      ;
    end;

  try
    pnlComisaria.Width := StrToInt(VarRegistry('\Ventanas', '\' + self.Name + '\pnlComisaria', 'Width'));
  except
    ;
  end;

  IniciarTransaccion;
  GenerarError := True;
  NecesitaGrabar := False;

  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      if Not CrearConjunto(cdBuscarComisaria, 'cmt_comisaria', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Solicitudes de Consumo']);

      if Not CrearConjunto(cdComisaria, 'cmt_comisaria', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Solicitudes de Consumo']);

      if Not CrearConjunto(cdMovimientosComisaria, 'cmt_movimientoscomisaria', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Partidas de Solicitudes de Consumo']);

      if Not CrearConjunto(cdRegistroMovUpt, 'cmt_registromovimiento', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Registro de Entradas']);

      if Not CrearConjunto(cdRegistroMovPdaUpt, 'cmt_registromovimientopartida', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Partidas del Registro de Entradas']);

      if Not CrearConjunto(cdRegistroMovimiento, 'cmt_registromovimiento', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Registro de Entradas']);

      if Not CrearConjunto(cdRegistroMovimientoPartida, 'cmt_registromovimientopartida', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Partidas de Registros de Entrada']);

      if Not CrearConjunto(cdRecibio, 'usuarios', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Usuario que Recibe']);

      if Not CrearConjunto(cdAutorizo, 'usuarios', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Usuario que Autoriza']);

      if Not CrearConjunto(cdProveedor, 'nuc_empresasxcomisaria', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Proveedores']);

      if Form2.NuevaEntrada = nesNueva then
      begin
        // Buscar las comisarias
        BuscarComisaria;

        if Not CargarDatosFiltrados(cdProveedor, 'IdComisaria', [cdBuscarComisaria.FieldByName('IdComisaria').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['Proveedores por Comisaria', cdBuscarComisaria.FieldByName('IdComisaria').AsInteger, 'Id. Comisaria']);

        cdProveedor.Open;
      end;

      if Not CargarDatosFiltrados(cdRegistroMovUpt, 'IdRegistroMovimiento', [-9]) then
        raise InteligentException.CreateByCode(16, ['Salidas de Almacén']);

      if Not CargarDatosFiltrados(cdRegistroMovPdaUpt, 'IdRegistroMovimiento', [-9]) then
        raise InteligentException.CreateByCode(16, ['Partidas de Salida de Almacén']);

      cdRecibio.Open;
      cdAutorizo.Open;
      cdRegistroMovPdaUpt.Open;

      // Verificar si se trata de una edición o una inserción
      if Form2.NuevaEntrada = nesNueva then
      begin
        cdRegistroMovUpt.Open;
        cdRegistroMovUpt.Append;

        cdRegistroMovUpt.FieldByName('IdRegistroMovimiento').AsInteger := 0;
        cdRegistroMovUpt.FieldByName('Aplicacion').AsDateTime := NOW;
        cdRegistroMovUpt.FieldByName('TipoMovimiento').AsString := 'ENTRADA';
        cdRegistroMovUpt.FieldByName('IdComisaria').AsInteger := cdComisaria.FieldByName('IdComisaria').AsInteger;
      end
      else
      begin
        // Mostrar la ventana de selección de Entrada
        BuscarReceta;

        if Not CargarDatosFiltrados(cdComisaria, 'IdComisaria', [cdBuscarEntrada.FieldByName('IdComisaria').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['Solicitudes de Consumo', cdBuscarEntrada.FieldByName('IdComisaria').AsInteger, 'Id. Comisaria']);

        cdComisaria.Open;

        Self.Caption := 'Entrada al Almacén ' + cdRegistroMovimiento.FieldByName('CodigoRegistroMovimiento').AsString;

        IdRegistroMovimiento := cdRegistroMovimiento.FieldByName('IdRegistroMovimiento').AsInteger;

        if Not CargarDatosFiltrados(cdRegistroMovUpt, 'IdRegistroMovimiento', [IdRegistroMovimiento]) then
          raise InteligentException.CreateByCode(6, ['Entradas al Almacén', IdRegistroMovimiento, 'Id. Entrada']);

        if Not CargarDatosFiltrados(cdRegistroMovimiento, 'IdRegistroMovimiento', [IdRegistroMovimiento]) then
          raise InteligentException.CreateByCode(6, ['Entradas al Almacén', IdRegistroMovimiento, 'Id. Entrada']);

        if Not CargarDatosFiltrados(cdRegistroMovimientoPartida, 'IdRegistroMovimiento', [IdRegistroMovimiento]) then
          raise InteligentException.CreateByCode(6, ['Partidas de Entrada al Almacén', IdRegistroMovimiento, 'Id. Entrada']);

        cdRegistroMovUpt.Open;
        cdRegistroMovimiento.Open;
        cdRegistroMovimientoPartida.Open;

        if Not CargarDatosFiltrados(cdMovimientosComisaria, 'IdComisaria,iIdEmpresa', [cdRegistroMovimiento.FieldByName('IdComisaria').AsInteger, cdRegistroMovimiento.FieldByName('iIdEmpresa').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['Partidas de Solicitudes de Consumo', cdRegistroMovUpt.FieldByName('IdComisaria').AsInteger, 'Id. Comisaria']);

        cdMovimientosComisaria.Open;

        if Not CargarDatosFiltrados(cdProveedor, 'IdComisaria', [cdRegistroMovimiento.FieldByName('IdComisaria').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['Proveedores', cdRegistroMovimiento.FieldByName('IdComisaria').AsInteger, 'Id. COmisaria']);

        cdProveedor.Open;
      end;

      EstadoEncabezado(Form2.NuevaEntrada = nesNueva);

      if Form2.NuevaEntrada = nesBorrar then
      begin
        try
          if InteliDialog.ShowModal('Eliminar Entrada al Almacén', 'Está a punto de eliminar el siguiente registro de entrada y todas sus partidas:' + #10 + #10 +
                                    'Código de Entrada: ' + cdRegistroMovimiento.FieldByName('CodigoRegistroMovimiento').AsString + #10 +
                                    'Referencia: ' + cdRegistroMovimiento.FieldByName('Referencia').AsString + #10 +
                                    'Aplicación: ' + cdRegistroMovimiento.FieldByName('Aplicacion').AsString + #10 + #10 +
                                    '¿Desea eliminarla en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin

            // Borrar primero las partidas
            if Not CargarDatosFiltrados(cdRegistroMovPdaUpt, 'IdRegistroMovimiento', [cdRegistroMovimiento.FieldByName('IdRegistroMovimiento').AsInteger]) then
              raise InteligentException.CreateByCode(6, ['Partidas del Registro de Salida', cdRegistroMovimiento.FieldByName('IdRegistroMovimiento').AsInteger, 'Id. Entrada al Almacén']);

            if cdRegistroMovPdaUpt.Active then
              cdRegistroMovPdaUpt.Refresh
            else
              cdRegistroMovPdaUpt.Open;

            Procesado := 0;
            while Not cdRegistroMovPdaUpt.Eof do
            begin
              cdRegistroMovPdaUpt.Delete;
              Inc(Procesado);
            end;

            if Procesado > 0 then
              cdRegistroMovPdaUpt.ApplyUpdates(-1);

            // Borrar la cabecera
            cdRegistroMovUpt.Delete;
            cdRegistroMovUpt.ApplyUpdates(-1);

            ConcretarTransaccion;

            InteliDialog.ShowModal('Eliminar Entrada al Almacén', 'El registro de Entrada al Almacén ha sido borrado correctamente.', mtInformation, [mbOk], 0);
          end;
        finally
          PostMessage(Self.Handle, WM_CLOSE, 0, 0);
        end;
      end;

      tvComisariaPartida.DataController.Groups.FullExpand;
      tvExistenciaPartida.DataController.Groups.FullExpand;
    finally
      Screen.Cursor := LocCursor;
    end;
  Except
    on e:InteligentException do
    begin
      if e.Message <> '*' then
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

procedure TFrmEntradasAlmacenDX.Panel1DblClick(Sender: TObject);
begin
  try
    // Verificar si se han capturado partidas al valde de entrada
    if cdRegistroMovimientoPartida.RecordCount > 0 then
      raise InteligentException.CreateByCode(24, ['No se puede editar la cabecera debido a que ya existen partidas capturadas en este Documento de Entrada']);

    if Not CargarDatosFiltrados(cdRegistroMovUpt, 'IdRegistroMovimiento', [cdRegistroMovimiento.FieldByName('IdRegistroMovimiento').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Registro de Entradas', cdRegistroMovimiento.FieldByName('IdRegistroMovimiento').AsInteger, 'Id. Registro Movimiento']);

    if cdRegistroMovUpt.Active then
      cdRegistroMovUpt.Refresh
    else
      cdRegistroMovUpt.Open;

    if cdRegistroMovUpt.RecordCount = 0 then
      raise InteligentException.CreateByCode(13, [cdRegistroMovimiento.FieldByName('CodigoRegistroMovimiento').AsString, 'Registro de Entrada']);

    cdRegistroMovUpt.Edit;

    EstadoEncabezado(pnlEncabezado.Font.Color = clGray);
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmEntradasAlmacenDX.rgFiltroPartidasClick(Sender: TObject);
begin
  // Filtrar los dato de acuerdo a lo seleccionado
  cdMovimientosComisaria.Filtered := False;
  case rgFiltroPartidas.ItemIndex of
    0: cdMovimientosComisaria.Filter := '';
    1: cdMovimientosComisaria.Filter := 'Pendiente > 0';
    2: cdMovimientosComisaria.Filter := 'Surtido = 0';
    3: cdMovimientosComisaria.Filter := 'Pendiente = 0';
  end;
  cdMovimientosComisaria.Filtered := True;

  tvComisariaPartida.DataController.Groups.FullExpand;
end;

procedure TFrmEntradasAlmacenDX.tvComisariaPartidaCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnAgregar.Click;
end;

procedure TFrmEntradasAlmacenDX.tvComisariaPartidaSelectionChanged(
  Sender: TcxCustomGridTableView);
begin
  btnTipoInsumo.Enabled := tvComisariaPartida.Controller.SelectedRowCount <= 1;
  btnPendientes.Enabled := tvComisariaPartida.Controller.SelectedRowCount <= 1;
end;

procedure TFrmEntradasAlmacenDX.tvExistenciaPartidaCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  EditarInsumo1.Click;
end;

procedure TFrmEntradasAlmacenDX.btnTipoInsumoClick(Sender: TObject);
var
  Ancho: Integer;
  Marca: TBookMark;
  myFiltro: String;
  locIdTipoInsumo: Integer;
begin
  try
    if InteliDialog.ShowModal('Mover todos los registros del mismo Tipo', 'Esta opción importará a la entrada al almacén todos los Insumos correspondientes al tipo: ' + cdMovimientosComisaria.FieldByName('NombreTipoInsumo').AsString + #10 + #10 + '¿Desea proceder ahora con la importación?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      raise InteligentWarning.Create('*');

    locIdTipoInsumo := cdMovimientosComisaria.FieldByName('IdTipoInsumo').AsInteger;

    // Mover todos los registros que falten y que correspondan a este mismo tipo de Insumo
    Marca := cdMovimientosComisaria.BookMark;
    cdMovimientosComisaria.DisableControls;
    try
      myFiltro := cdMovimientosComisaria.Filter;
      cdMovimientosComisaria.Filtered := False;
      if myFiltro = '' then
        cdMovimientosComisaria.Filter := 'IdTipoInsumo = ' + IntToStr(locIdTipoInsumo)
      else
        cdMovimientosComisaria.Filter := myFiltro + ' AND IdTipoInsumo = ' + IntToStr(locIdTipoInsumo);
      cdMovimientosComisaria.Filtered := True;
      cdMovimientosComisaria.First;

      CalcularAncho;
      pbProcesando.Position := 0;
      pbProcesando.Max := tvComisariaPartida.Controller.SelectedRowCount -1;
      try
        pnlProgress.Visible := True;
        GenerarError := False;
        while Not cdMovimientosComisaria.Eof do
        begin
          AgregarRegistro;
          cdMovimientosComisaria.Next;
        end;
      finally
        pnlProgress.Visible := False;
      end;
    finally
      GenerarError := True;

      cdMovimientosComisaria.Filtered := False;
      cdMovimientosComisaria.Filter := myFiltro;
      cdMovimientosComisaria.Filtered := True;

      cdMovimientosComisaria.GotoBookMark(Marca);

      if cdRegistroMovimientoPartida.Active then
        cdRegistroMovimientoPartida.Refresh
      else
        cdRegistroMovimientoPartida.Open;

      cdMovimientosComisaria.Refresh;

      cdMovimientosComisaria.EnableControls;
    end;
  except
    on e:InteligentWarning do
      ;

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmEntradasAlmacenDX.btnAceptarEditClick(Sender: TObject);
begin
  try
    cdRegistroMovPdaUpt.Post;
    cdRegistroMovPdaUpt.ApplyUpdates(-1);

    cdRegistroMovimientoPartida.Refresh;
    cdMovimientosComisaria.Refresh;

    tvExistenciaPartida.DataController.Groups.FullExpand;

    FormaEditResult := mrOk;
  finally
    TForm(TWinControl(Sender).Parent.Parent.Parent).Close;
  end;
end;

procedure TFrmEntradasAlmacenDX.btnAgregarClick(Sender: TObject);
var
  i: Integer;
  Ancho: Integer;
begin
  try
    if cdMovimientosComisaria.RecordCount = 0 then
      raise InteligentWarning.CreateByCode(26, ['Partidas de Comisaria']);

    if cdMovimientosComisaria.FieldByName('Pendiente').AsFloat <= 0 then
      raise InteligentWarning.CreateByCode(24, ['La partida solicitada no tiene cantidades pendientes por surtir']);

    GenerarError := tvComisariaPartida.Controller.SelectedRowCount = 1;
    CalcularAncho;
    pbProcesando.Position := 0;
    pbProcesando.Max := tvComisariaPartida.Controller.SelectedRowCount -1;
    try
      pnlProgress.Visible := True;
      for i := 0 to tvComisariaPartida.Controller.SelectedRowCount -1 do
      begin
        pbProcesando.Position := pbProcesando.Position +1;
        if cdMovimientosComisaria.Locate('IdInsumo', tvComisariaPartida.Controller.SelectedRows[i].Values[1], []) then
          AgregarRegistro;
      end;
    finally
      pnlProgress.Visible := False;
    end;

    if cdRegistroMovimientoPartida.Active then
      cdRegistroMovimientoPartida.Refresh
    else
      cdRegistroMovimientoPartida.Open;

    tvExistenciaPartida.DataController.Groups.FullExpand;

    if tvComisariaPartida.Controller.SelectedRowCount = 1 then
      cdMovimientosComisaria.Next;

    cdMovimientosComisaria.Refresh;
  except
    on e:InteligentWarning do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmEntradasAlmacenDX.btnCancelarEditClick(Sender: TObject);
begin
  TForm(TWinControl(Sender).Parent.Parent.Parent).Close;
end;

procedure TFrmEntradasAlmacenDX.btnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEntradasAlmacenDX.btnEncabezadoCancelClick(Sender: TObject);
begin
  try
    cdRegistroMovUpt.Cancel;

    if Not cdRegistroMovimiento.Active then
      Close;
  finally
    EstadoEncabezado(False);
  end;
end;

procedure TFrmEntradasAlmacenDX.btnEncabezadoGrabarClick(Sender: TObject);
var
  Obj: TWinControl;
  OrigState: TDataSetState;
begin
  try
    // Verificar si los datos se han capturado de manera correcta
    Obj := CodigoRegistroMovimiento;
    if Trim(CodigoRegistroMovimiento.Text) = '' then
      raise InteligentWarning.CreateByCode(18, ['Código Entrada']);

    // Si se trata de una edición se deberá verificar que no se duplique el código si es que este ha sido cambiado
    if (cdRegistroMovUpt.State = dsInsert) OR ((cdRegistroMovUpt.State = dsEdit) and (ANSICOMPARETEXT(CodigoRegistroMovimiento.Text, CodigoOriginal) <> 0)) then
    begin
      try
        if Not CargarDatosFiltrados(cdRegistroMovimiento, 'CodigoRegistroMovimiento,TipoMovimiento', [CodigoRegistroMovimiento.Text, 'ENTRADA']) then
          raise InteligentException.CreateByCode(16, ['Registros de Entradas']);
        if CuantosRegistros(cdRegistroMovimiento) > 0 then
        begin
          Obj := CodigoRegistroMovimiento;
          raise InteligentWarning.CreateByCode(17, ['Registro de Entradas', CodigoRegistroMovimiento.Text]);
        end;
      finally
        if Not CargarDatosFiltrados(cdRegistroMovimiento, 'IdRegistroMovimiento', [IdRegistroMovimiento]) then
          raise InteligentException.CreateByCode(16, ['Registros de Entradas']);
      end;
    end;

    Obj := Referencia;
    if Trim(Referencia.Text) = '' then
      raise InteligentWarning.CreateByCode(18, ['Referencia']);

    Obj := IdRecibio;
    if cdRegistroMovUpt.FieldByName('IdRecibio').IsNull then
      raise InteligentWarning.CreateByCode(18, ['Recibió']);

    Obj := IdAutorizo;
    if cdRegistroMovUpt.FieldByName('IdAutorizo').IsNull then
      raise InteligentWarning.CreateByCode(18, ['Autorizó']);

    OrigState := cdRegistroMovUpt.State;

    cdRegistroMovUpt.Post;
    cdRegistroMovUpt.ApplyUpdates(-1);
    IdRegistroMovimiento := UltimoId;

    if OrigState = dsInsert then
    begin
      if Not CargarDatosFiltrados(cdRegistroMovimiento, 'IdRegistroMovimiento', [IdRegistroMovimiento]) then
        raise InteligentException.CreateByCode(6, ['Registros de Entradas']);

      if Not CargarDatosFiltrados(cdRegistroMovimientoPartida, 'IdRegistroMovimiento', [IdRegistroMovimiento]) then
        raise InteligentException.CreateByCode(6, ['Partidas de Registro de Entradas']);

      if cdRegistroMovimientoPartida.Active then
        cdRegistroMovimientoPartida.Refresh
      else
        cdRegistroMovimientoPartida.Open;
    end;

    if cdRegistroMovimiento.Active then
      cdRegistroMovimiento.Refresh
    else
      cdRegistroMovimiento.Open;

    if Not CargarDatosFiltrados(cdMovimientosComisaria, 'IdComisaria,iIdEmpresa', [cdBuscarComisaria.FieldByName('IdComisaria').AsInteger, cdProveedor.FieldByName('iIdEmpresa').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Partidas de Solicitud de Consumo', cdBuscarComisaria.FieldByName('IdComisaria').AsInteger, 'Id. Comisaria']);

    if cdMovimientosComisaria.Active then
      cdMovimientosComisaria.Refresh
    else
      cdMovimientosComisaria.Open;

    tvComisariaPartida.DataController.Groups.FullExpand;

    EstadoEncabezado(False);
  except
    on e:InteligentWarning do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      Obj.SetFocus;
    end;

    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      Close;
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      Close;
    end;
  end;
end;

procedure TFrmEntradasAlmacenDX.btnGrabarClick(Sender: TObject);
begin
  try
    ConcretarTransaccion;

    InteliDialog.ShowModal('Datos grabados', 'Los datos han sido grabados correctamente.', mtInformation, [mbOk], 0);

    IniciarTransaccion;
    NecesitaGrabar := False;
  Except
    on e:Exception do
    begin
      CancelarTransaccion;
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      Close;
    end;
  end;
end;

procedure TFrmEntradasAlmacenDX.btnImprimirClick(Sender: TObject);
begin
  ClientModule1.ImprimeReporte('EntradasAlmacen.fr3', frxEntradas);
end;

procedure TFrmEntradasAlmacenDX.btnNingunoClick(Sender: TObject);
begin
  try
    if InteliDialog.ShowModal('Eliminar todos los registros del mismo Tipo', 'Esta opción eliminará de la entrada al almacén todos los Insumos correspondientes al tipo: ' + cdRegistroMovimientoPartida.FieldByName('NombreTipoInsumo').AsString + #10 + #10 + '¿Desea proceder ahora con la eliminación?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      raise InteligentConnection.Create('*');

    // Mover todos los registros que falten y que correspondan a este mismo tipo de Insumo
    cdRegistroMovimientoPartida.DisableControls;
    try
      GenerarError := False;
      while Not cdRegistroMovimientoPartida.Eof do
      begin
        QuitarRegistro;
        cdRegistroMovimientoPartida.Next;
      end;
    finally
      GenerarError := True;

      if cdRegistroMovimientoPartida.Active then
        cdRegistroMovimientoPartida.Refresh
      else
        cdRegistroMovimientoPartida.Open;

      cdMovimientosComisaria.Refresh;

      cdRegistroMovimientoPartida.EnableControls;
    end;
  except
    on e:InteligentConnection do
      ;

    on e:InteligentWarning do
      ;

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmEntradasAlmacenDX.btnPendientesClick(Sender: TObject);
var
  Marca: TBookMark;
  myFiltro: String;
  Ancho: Integer;
begin
  try
    if InteliDialog.ShowModal('Mover todos los registros con cantidad pendiente de recibir', 'Esta opción importará a la entrada al almacén todos los Insumos que tengan pendiente por ser recibido.' + #10 + #10 + '¿Desea proceder ahora con la importación?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      raise InteligentWarning.Create('*');

    // Mover todos los registros que falten y que tengan pendientes de recibir
    Marca := cdMovimientosComisaria.BookMark;
    cdMovimientosComisaria.DisableControls;
    try
      myFiltro := cdMovimientosComisaria.Filter;
      cdMovimientosComisaria.Filtered := False;
      cdMovimientosComisaria.Filter := 'Pendiente > 0';
      cdMovimientosComisaria.Filtered := True;
      cdMovimientosComisaria.First;

      CalcularAncho;
      pbProcesando.Position := 0;
      pbProcesando.Max := tvComisariaPartida.Controller.SelectedRowCount -1;
      try
        pnlProgress.Visible := True;
        GenerarError := False;
        while Not cdMovimientosComisaria.Eof do
        begin
          AgregarRegistro;
          cdMovimientosComisaria.Next;
        end;
      finally

      end;
    finally
      GenerarError := True;

      cdMovimientosComisaria.Filtered := False;
      cdMovimientosComisaria.Filter := myFiltro;
      cdMovimientosComisaria.Filtered := True;

      cdMovimientosComisaria.GotoBookMark(Marca);

      if cdRegistroMovimientoPartida.Active then
        cdRegistroMovimientoPartida.Refresh
      else
        cdRegistroMovimientoPartida.Open;

      cdMovimientosComisaria.Refresh;

      cdMovimientosComisaria.EnableControls;
    end;
  except
    on e:InteligentWarning do
      ;

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmEntradasAlmacenDX.BuscarComisaria;
var
  i, ii: Integer;
  YaAbierto: Boolean;
  LocForm: TForm;
  LocDataSet: TClientDataSet;
begin
  if Not CargarDatosFiltrados(cdBuscarComisaria, 'Cuenta,Estado,Pendiente', ['Si', 'AUTORIZADO', 'Si']) then
    raise InteligentException.CreateByCode(6, ['Solicitudes de Consumo', 'Si', 'Cuenta']);

  cdBuscarComisaria.Open;

  if cdBuscarComisaria.RecordCount = 0 then
    raise InteligentException.CreateByCode(24, ['No existe ningún Pedido pendiente por surtir que se encuentre Autorizado']);

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
    raise InteligentException.CreateByCode(24, ['La Solicitud de Consumo de ' + cdBuscarComisaria.FieldByName('NombreReceta').AsString + ' ya se encuentra abierta en el sistema, no es posible abrir dos veces la misma Solicitud de Consumo.']);
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

procedure TFrmEntradasAlmacenDX.cdComisariaAfterOpen(DataSet: TDataSet);
begin
  OrdenarComisaria;
end;

procedure TFrmEntradasAlmacenDX.cdComisariaAfterRefresh(DataSet: TDataSet);
begin
  OrdenarComisaria;
end;

procedure TFrmEntradasAlmacenDX.cdRegistroMovPdaUptAfterApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  NecesitaGrabar := True;
end;

procedure TFrmEntradasAlmacenDX.cdRegistroMovUptAfterApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  NecesitaGrabar := True;
end;

procedure TFrmEntradasAlmacenDX.cdRegistroMovUptAfterEdit(DataSet: TDataSet);
begin
  CodigoOriginal := cdRegistroMovUpt.FieldByName('CodigoRegistroMovimiento').AsString;
end;

procedure TFrmEntradasAlmacenDX.EditarInsumo1Click(Sender: TObject);
var
  FormaEdit: TForm;
begin
  if cdRegistroMovimientoPartida.RecordCount > 0 then
  begin
    if Not CargarDatosFiltrados(cdRegistroMovPdaUpt, 'IdRegistroMovimientoPartida', [cdRegistroMovimientoPartida.FieldByName('IdRegistroMovimientoPartida').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Partidas de Registro de Entrada', cdRegistroMovimientoPartida.FieldByName('IdRegistroMovimientoPartida').AsInteger, 'Id. Registro Movimiento Partida']);

    if cdRegistroMovPdaUpt.Active then
      cdRegistroMovPdaUpt.Refresh
    else
      cdRegistroMovPdaUpt.Open;

    if cdRegistroMovPdaUpt.RecordCount = 0 then
      raise InteligentException.CreateByCode(13, [cdRegistroMovimientoPartida.FieldByName('NombreInsumo').AsString, 'Partidas de Registro de Entrada']);

    cdRegistroMovPdaUpt.Edit;

    FormaEdit := TForm.Create(Self);
    try
      pnlEditar.Parent := FormaEdit;
      pnlEditar.Align := alClient;
      pnlEditar.Visible := True;
      FormaEdit.ShowModal;
    finally
      pnlEditar.Visible := False;
      pnlEditar.Align := alNone;
      pnlEditar.Parent := Self;
    end;
  end;
end;

procedure TFrmEntradasAlmacenDX.EstadoEncabezado(Modo: Boolean);
const
  ColorLetra: array[False..True] of TColor = (clGray, clBlack);

begin
  pnlBotones.Visible := Modo;
  pnlEncabezado.Font.Color := ColorLetra[Modo];
  CodigoRegistroMovimiento.ReadOnly := Not Modo;
  pnlPartidas.Enabled := Not Modo;
  Referencia.ReadOnly := Not Modo;
  Aplicacion.ReadOnly := Not Modo;
  IdRecibio.ReadOnly := Not Modo;
  IdAutorizo.ReadOnly := Not Modo;
  pnlPartidas.Visible := Not Modo;

  if Modo then
    CodigoRegistroMovimiento.SetFocus
  else
    gridComisariaPartida.SetFocus;
end;

procedure TFrmEntradasAlmacenDX.FormaEditShow(Sender: TObject);
begin
  FormaEditResult := mrCancel;
end;

procedure TFrmEntradasAlmacenDX.FormaEditClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TForm(Sender).ModalResult := FormaEditResult;
  Action := caFree;
end;

function TFrmEntradasAlmacenDX.BuscarReceta: Integer;
var
  i, ii: Integer;
  YaAbierto: Boolean;
  LocForm: TForm;
  LocDataSet: TClientDataSet;
begin
  if cdBuscarEntrada.ProviderName = '' then
  begin
    if Not CrearConjunto(cdBuscarEntrada, 'cmt_registromovimiento', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Registros de Entradas al Almacén']);

    if Not CargarDatosFiltrados(cdBuscarEntrada, 'TipoMovimiento', ['ENTRADA']) then
      raise InteligentException.CreateByCode(6, ['Registros de Entradas al Almacén', 'ENTRADA', 'Tipo Movimiento']);

    cdBuscarEntrada.Open;
  end;

  Application.CreateForm(TFrmBuscarMovimiento, FrmBuscarMovimiento);
  FrmBuscarMovimiento.dsMovimiento.DataSet := cdBuscarEntrada;
  FrmBuscarMovimiento.Caption := 'Seleccionar la Entrada al Almacén';
  FrmBuscarMovimiento.TsRecientes.Caption := 'Entradas recientes';
  FrmBuscarMovimiento.TsTodas.Caption := 'Todas las Entradas';

  {if Form2.IdReceta = -3 then
    FrmBuscarReceta.btnAbrir.Caption := '&Eliminar'
  else}
    FrmBuscarMovimiento.btnAbrir.Caption := '&Abrir';

  if FrmBuscarMovimiento.ShowModal = mrCancel then
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
        if LocForm.Components[ii].ClassNameIs('TClientDataSet') and (AnsiCompareText(LocForm.Components[ii].Name, 'cdRegistroMovimiento') = 0) then
        begin
          LocDataSet := TClientDataSet(LocForm.Components[ii]);
          YaAbierto := (LocDataSet.ProviderName <> '') and (LocDataSet.Active) and (LocDataSet.RecordCount > 0) and (LocDataSet.FieldByName('IdRegistroMovimiento').AsInteger = cdBuscarEntrada.FieldByName('IdRegistroMovimiento').AsInteger);
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
    raise InteligentWarning.CreateByCode(24, ['La Entrada de Almacén  ya se encuentra abierta en el sistema, no es posible abrir dos veces la misma Entrada.']);
  end
  else
  begin
    if Not CargarDatosFiltrados(cdRegistroMovimiento, 'IdRegistroMovimiento', [cdBuscarEntrada.FieldByName('IdRegistroMovimiento').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Registro de Entrada al Almacén', cdBuscarEntrada.FieldByName('IdRegistroMovimiento').AsInteger, 'Id. Entrada']);

    if cdRegistroMovimiento.Active then
      cdRegistroMovimiento.Refresh
    else
      cdRegistroMovimiento.Open;

    if cdRegistroMovimiento.RecordCount = 0 then
      raise InteligentException.CreateByCode(13, [cdBuscarEntrada.FieldByName('CodigoReceta').AsString, 'Registros de Entradas al Almacén']);
  end;
end;

procedure TFrmEntradasAlmacenDX.btnQuitarClick(Sender: TObject);
var
  i: Integer;
begin
  if cdRegistroMovimientoPartida.RecordCount > 0 then
  begin
    try
      GenerarError := tvExistenciaPartida.Controller.SelectedRowCount = 1;
      for i := 0 to tvExistenciaPartida.Controller.SelectedRowCount -1 do
      begin
        if cdRegistroMovimientoPartida.Locate('IdInsumo', tvExistenciaPartida.Controller.SelectedRows[i].Values[1], []) then
          QuitarRegistro;
      end;

      if cdRegistroMovimientoPartida.Active then
        cdRegistroMovimientoPartida.Refresh
      else
        cdRegistroMovimientoPartida.Open;

      if tvComisariaPartida.Controller.SelectedRowCount = 1 then
        cdMovimientosComisaria.Next;

      cdMovimientosComisaria.Refresh;
    except
      on e:InteligentWarning do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e:Exception do
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmEntradasAlmacenDX.btnQuitarTipoClick(Sender: TObject);
var
  locIdTipoInsumo: Integer;
begin
  try
    if InteliDialog.ShowModal('Eliminar todos los registros del mismo Tipo', 'Esta opción eliminará de la entrada al almacén todos los Insumos correspondientes al tipo: ' + cdRegistroMovimientoPartida.FieldByName('NombreTipoInsumo').AsString + #10 + #10 + '¿Desea proceder ahora con la eliminación?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      raise InteligentConnection.Create('*');

    locIdTipoInsumo := cdRegistroMovimientoPartida.FieldByName('IdTipoInsumo').AsInteger;

    // Mover todos los registros que falten y que correspondan a este mismo tipo de Insumo
    cdRegistroMovimientoPartida.DisableControls;
    try
      cdRegistroMovimientoPartida.Filtered := False;
      cdRegistroMovimientoPartida.Filter := 'IdTipoInsumo = ' + IntToStr(locIdTipoInsumo);
      cdRegistroMovimientoPartida.Filtered := True;
      cdRegistroMovimientoPartida.First;

      GenerarError := False;
      while Not cdRegistroMovimientoPartida.Eof do
      begin
        QuitarRegistro;
        cdRegistroMovimientoPartida.Next;
      end;
    finally
      GenerarError := True;

      cdRegistroMovimientoPartida.Filtered := False;
      cdRegistroMovimientoPartida.Filter := '';

      if cdRegistroMovimientoPartida.Active then
        cdRegistroMovimientoPartida.Refresh
      else
        cdRegistroMovimientoPartida.Open;

      cdMovimientosComisaria.Refresh;

      cdRegistroMovimientoPartida.EnableControls;
    end;
  except
    on e:InteligentConnection do
      ;

    on e:InteligentWarning do
      ;

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmEntradasAlmacenDX.AgregarRegistro;
begin
  try
    if cdRegistroMovimientoPartida.Locate('IdInsumo', cdMovimientosComisaria.FieldByName('IdInsumo').AsInteger, []) then
      raise InteligentException.CreateByCode(8, ['El Insumo que está tratando de agregar (' + cdMovimientosComisaria.FieldByName('NombreInsumo').AsString + ') ya se encuentra agregado al Vale de Entrada al Almacén.']);

    // Localizar el precio

    cdRegistroMovPdaUpt.Append;
    cdRegistroMovPdaUpt.FieldByName('IdRegistroMovimientoPartida').AsInteger := 0;
    cdRegistroMovPdaUpt.FieldByName('IdRegistroMovimiento').AsInteger := IdRegistroMovimiento;
    cdRegistroMovPdaUpt.FieldByName('IdInsumo').AsInteger := cdMovimientosComisaria.FieldByName('IdInsumo').AsInteger;
    cdRegistroMovPdaUpt.FieldByName('Solicitado').AsFloat := cdMovimientosComisaria.FieldByName('Pendiente').AsFloat;
    cdRegistroMovPdaUpt.FieldByName('Registrado').AsFloat := cdMovimientosComisaria.FieldByName('Pendiente').AsFloat;
    cdRegistroMovPdaUpt.FieldByName('Surtido').AsDateTime := cdRegistroMovimiento.FieldByName('Aplicacion').AsDateTime;
    //cdRegistroMovPdaUpt.FieldByName('iIdEmpresa').AsInteger := cdProveedor.FieldByName('iIdEmpresa').AsInteger;
    cdRegistroMovPdaUpt.FieldByName('Precio').AsFloat := 0;
    cdRegistroMovPdaUpt.Post;
    cdRegistroMovPdaUpt.ApplyUpdates(-1);
  except
    on e:InteligentException do
      if GenerarError then
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmEntradasAlmacenDX.QuitarRegistro;
begin
  try
    if Not CargarDatosFiltrados(cdRegistroMovPdaUpt, 'IdRegistroMovimientoPartida', [cdRegistroMovimientoPartida.FieldByName('IdRegistroMovimientoPartida').AsInteger]) then
      raise InteligentWarning.CreateByCode(6, ['Registro de Entrada al Almacén', cdRegistroMovimientoPartida.FieldByName('IdRegistroMovimentoPartida').AsInteger, 'Id. Entrada']);

    if cdRegistroMovPdaUpt.Active then
      cdRegistroMovPdaUpt.Refresh
    else
      cdRegistroMovPdaUpt.Open;

    if cdRegistroMovPdaUpt.RecordCount = 0 then
      raise InteligentWarning.CreateByCode(27, ['Registro de Entrada al Almacén', cdRegistroMovimientoPartida.FieldByName('NombreInsumo').AsString]);

    cdRegistroMovPdaUpt.Delete;
    cdRegistroMovPdaUpt.ApplyUpdates(-1);
  except
    on e:InteligentWarning do
      raise;

    on e:InteligentException do
      if GenerarError then
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmEntradasAlmacenDX.CalcularAncho;
begin
  pnlProgress.Width := Application.MainForm.Width - (Margen * 2);
  pnlProgress.Left := Margen;
end;

procedure TFrmEntradasAlmacenDX.OrdenarComisaria;
begin
  // Modicar la posición de los datos de la comisaria
  eReferencia.Left := lblCodigoComisaria.Left + lblCodigoComisaria.Width + 12;
  lblReferencia.Left := eReferencia.Left + eReferencia.Width + 6;

  eDesde.Left := lblCodigoMenu.Left + lblCodigoMenu.Width + 12;
  lblDesde.Left := eDesde.Left + eDesde.Width + 6;

  eHasta.Left := lblDesde.Left + lblDesde.Width + 6;
  lblHasta.Left := eHasta.Left + eHasta.Width + 6;

  eNombreEmbarcacion.Left := lblCodigoEmbarcacion.Left + lblCodigoEmbarcacion.Width + 4;
  lblNombreEmbarcacion.Left := eNombreEmbarcacion.Left + eNombreEmbarcacion.Width + 4;
end;

end.
