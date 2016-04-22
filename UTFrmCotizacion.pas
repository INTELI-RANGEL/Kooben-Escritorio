unit UTFrmCotizacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, JvExControls, JvLabel, ClientModuleUnit1,
  URegistro, UInteliDialog, AdvGlowButton, DB, DBClient, DBCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxCalc, Menus, AdvMenus, frxClass, frxDBSet;

type
  TFrmCotizacion = class(TForm)
    Panel1: TPanel;
    JvLabel1: TJvLabel;
    CodigoCotizacion: TEdit;
    Panel2: TPanel;
    btnBuscar: TAdvGlowButton;
    pnlGenerales: TPanel;
    pnlPartidas: TPanel;
    cdBuscarCotizacion: TClientDataSet;
    btnNuevo: TAdvGlowButton;
    cdCotizacionUpt: TClientDataSet;
    cdClientes: TClientDataSet;
    cdElabora: TClientDataSet;
    cdAutoriza: TClientDataSet;
    dsCotizacionUpt: TDataSource;
    Panel3: TPanel;
    JvLabel2: TJvLabel;
    NombreCliente: TDBText;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    JvLabel3: TJvLabel;
    Fecha: TDBText;
    DomicilioCliente: TDBMemo;
    pnlFirmas: TPanel;
    pnlElabora: TPanel;
    JvLabel4: TJvLabel;
    NombreElabora: TDBText;
    Panel9: TPanel;
    NombreAutoriza: TDBText;
    JvLabel5: TJvLabel;
    cdCotizacionDatosUpt: TClientDataSet;
    dsCotizacionDatos: TDataSource;
    Panel7: TPanel;
    bntAceptar: TAdvGlowButton;
    tvDatos: TcxGridDBTableView;
    gridPartidasLevel1: TcxGridLevel;
    gridPartidas: TcxGrid;
    Splitter1: TSplitter;
    ColCodigoInsumo: TcxGridDBColumn;
    ColNombreInsumo: TcxGridDBColumn;
    Panel8: TPanel;
    IdInsumo: TEdit;
    Panel10: TPanel;
    JvLabel6: TJvLabel;
    Panel11: TPanel;
    NombreInsumo: TDBText;
    CodigoInsumo: TDBText;
    lblGuion: TJvLabel;
    dsInsumo: TDataSource;
    cdInsumo: TClientDataSet;
    ColCantidad: TcxGridDBColumn;
    ColPrecio: TcxGridDBColumn;
    ColCostoI: TcxGridDBColumn;
    cdMarca: TClientDataSet;
    cdPresentacion: TClientDataSet;
    cdExistenciasGenerales: TClientDataSet;
    pmPartidas: TAdvPopupMenu;
    EditarPartida1: TMenuItem;
    EliminarPartida1: TMenuItem;
    btnImprimir: TAdvGlowButton;
    ColTituloPresentacion: TcxGridDBColumn;
    ColpUtilidad: TcxGridDBColumn;
    ColUtilidad: TcxGridDBColumn;
    ColCosto: TcxGridDBColumn;
    repCotizacion: TfrxReport;
    frxCotizacionDatos: TfrxDBDataset;
    ColPrecioU: TcxGridDBColumn;
    cdImpuestosxCotizacion: TClientDataSet;
    frxImpuestos: TfrxDBDataset;
    cdCotizacionDatos: TClientDataSet;
    cdVerificaCotizacion: TClientDataSet;
    ColTituloMarca: TcxGridDBColumn;
    btnEncabezado: TAdvGlowButton;
    procedure btnBuscarClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure pnlFirmasResize(Sender: TObject);
    procedure IdInsumoEnter(Sender: TObject);
    procedure IdInsumoExit(Sender: TObject);
    procedure IdInsumoKeyPress(Sender: TObject; var Key: Char);
    procedure tvDatosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tvDatosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditarPartida1Click(Sender: TObject);
    procedure pmPartidasPopup(Sender: TObject);
    procedure EliminarPartida1Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure repCotizacionGetValue(const VarName: string; var Value: Variant);
    procedure cdCotizacionDatosAfterOpen(DataSet: TDataSet);
    procedure bntAceptarClick(Sender: TObject);
    procedure btnEncabezadoClick(Sender: TObject);
    procedure cdCotizacionUptAfterOpen(DataSet: TDataSet);
    procedure cdCotizacionUptAfterClose(DataSet: TDataSet);
  private
    TextoOriginal: String;
    CostoTotal: Extended;
    function AgregaPartida: LongInt;
    procedure EditarPartida(ItemIndex: Word);
    procedure EliminarPartida;
  public
    { Public declarations }
  end;

var
  FrmCotizacion: TFrmCotizacion;

implementation

{$R *.dfm}

Uses
  UTFrmBuscarCotizacion, UTFrmCotizacionDatos, UTFrmSelInsumo,
  UTFrmEditarCotizacionPartida;

procedure TFrmCotizacion.bntAceptarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCotizacion.btnBuscarClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmBuscarCotizacion, FrmBuscarCotizacion);
    FrmBuscarCotizacion.dsBuscarCotizacion.DataSet := cdBuscarCotizacion;
    if FrmBuscarCotizacion.ShowModal = mrOk then
    begin
      if Not CargarDatosFiltrados(cdCotizacionUpt, 'IdCotizacion', [cdBuscarCotizacion.FieldByName('IdCotizacion').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Cotizaciones', cdBuscarCotizacion.FieldByName('IdCotizacion').AsInteger, 'Id. Cotizacion']);

      if Not CargarDatosFiltrados(cdCotizacionDatos, 'IdCotizacion', [cdBuscarCotizacion.FieldByName('IdCotizacion').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Partidas de Cotización', cdBuscarCotizacion.FieldByName('IdCotizacion').AsInteger, 'Id. Cotizacion']);

      if cdCotizacionUpt.Active then
        cdCotizacionUpt.Refresh
      else
        cdCotizacionUpt.Open;

      if cdCotizacionDatos.Active then
        cdCotizacionDatos.Refresh
      else
        cdCotizacionDatos.Open;

      IdInsumo.SetFocus;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmCotizacion.btnEncabezadoClick(Sender: TObject);
var
  LocCursor: TCursor;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      if cdClientes.Active then
        cdClientes.Refresh
      else
        cdClientes.Open;

      // Editar la cabecera
      cdCotizacionUpt.Edit;

      Application.CreateForm(TFrmCotizacionDatos, FrmCotizacionDatos);
      FrmCotizacionDatos.dsCotizacionUpt.DataSet := cdCotizacionUpt;
      FrmCotizacionDatos.dsClientes.DataSet := cdClientes;
      FrmCotizacionDatos.dsElabora.DataSet := cdElabora;
      FrmCotizacionDatos.dsAutoriza.DataSet := cdAutoriza;
      if FrmCotizacionDatos.ShowModal = mrOk then
      begin

      end;
    finally
      Screen.Cursor := LocCursor;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmCotizacion.btnNuevoClick(Sender: TObject);
var
  LocCursor: TCursor;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      // Crear una nueva Cotización
      if Not CargarDatosFiltrados(cdCotizacionUpt, 'IdCotizacion', [-9]) then
        raise InteligentException.CreateByCode(16, ['*Cotización']);

      if cdCotizacionUpt.Active then
        cdCotizacionUpt.Refresh
      else
        cdCotizacionUpt.Open;

      cdCotizacionUpt.Append;
      cdCotizacionUpt.FieldByName('IdCotizacion').AsInteger := 0;
      cdCotizacionUpt.FieldByName('Fecha').AsDateTime := Now;

      Application.CreateForm(TFrmCotizacionDatos, FrmCotizacionDatos);
      FrmCotizacionDatos.dsCotizacionUpt.DataSet := cdCotizacionUpt;
      FrmCotizacionDatos.dsClientes.DataSet := cdClientes;
      FrmCotizacionDatos.dsElabora.DataSet := cdElabora;
      FrmCotizacionDatos.dsAutoriza.DataSet := cdAutoriza;
      if FrmCotizacionDatos.ShowModal = mrOk then
      begin

      end;
    finally
      Screen.Cursor := LocCursor;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmCotizacion.cdCotizacionDatosAfterOpen(DataSet: TDataSet);
begin
  // Abrir el catálogo de impuestos
  if Not CargarDatosFiltrados(cdImpuestosxCotizacion, 'IdCotizacion', [cdCotizacionDatos.FieldByName('IdCotizacion').AsInteger]) then
    raise InteligentException.CreateByCode(6, ['Impuestos por Cotización', cdCotizacionDatos.FieldByName('IdCotizacion').AsInteger, 'Id. Cotización']);
  if cdImpuestosxCotizacion.Active then
    cdImpuestosxCotizacion.Refresh
  else
    cdImpuestosxCotizacion.Open;
end;

procedure TFrmCotizacion.cdCotizacionUptAfterClose(DataSet: TDataSet);
begin
  btnEncabezado.Enabled := False;
end;

procedure TFrmCotizacion.cdCotizacionUptAfterOpen(DataSet: TDataSet);
begin
  btnEncabezado.Enabled := True;
end;

procedure TFrmCotizacion.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
begin
  EliminarConjunto([cdBuscarCotizacion, cdVerificaCotizacion, cdClientes, cdMarca, cdExistenciasGenerales, cdPresentacion, cdInsumo, cdElabora, cdAutoriza, cdCotizacionDatos, cdCotizacionDatosUpt, cdCotizacionUpt, cdImpuestosxCotizacion]);

  SetRegistry('\Ventanas', '\' + Self.Name, 'Left', IntToStr(Self.Left));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Top', IntToStr(Self.Top));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Width', IntToStr(Self.Width));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Height', IntToStr(Self.Height));
  try
    for i:= 0 to tvDatos.ColumnCount -1 do
      SetRegistry('\Ventanas', '\' + Self.Name + '\tvDatos', 'Column' + IntToStr(i), IntToStr(tvDatos.Columns[i].Width));
  finally
    Action := caFree;
  end;
end;

procedure TFrmCotizacion.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
  i: Integer;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      try
        Self.Top := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Top'));
      except
        ;
      end;

      try
        Self.Left := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Left'));
      except
        ;
      end;

      try
        Self.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Width'));
      except
        ;
      end;

      try
        Self.Height := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Height'));
      except
        ;
      end;

      for i:= 0 to tvDatos.ColumnCount -1 do
        try
          tvDatos.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\tvDatos', 'Column'+ IntToStr(i)));
        except
          ;
        end;

      if Not CrearConjunto(cdClientes, 'nuc_empresas_find', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Clientes']);

      if Not CrearConjunto(cdElabora, 'usuarios', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Usuarios (Elabora)']);

      if Not CrearConjunto(cdAutoriza, 'usuarios', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Usuarios (Autoriza)']);

      if Not CrearConjunto(cdCotizacionUpt, 'cmt_cotizacion', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['*Cotizaciones']);

      if Not CrearConjunto(cdCotizacionDatos, 'cmt_cotizaciondatos', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Partidas de Cotización']);

      if Not CrearConjunto(cdCotizacionDatosUpt, 'cmt_cotizaciondatos', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Partidas de Cotización']);

      if Not CrearConjunto(cdInsumo, 'cmt_insumo_find', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Insumos']);

      if Not CrearConjunto(cdMarca, 'cmt_marca', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Marcas']);

      if Not CrearConjunto(cdPresentacion, 'cmt_presentacion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Presentaciones']);

      if Not CrearConjunto(cdExistenciasGenerales, 'cmt_existenciasgenerales', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Existencias Generales']);

      if Not CrearConjunto(cdImpuestosxCotizacion, 'cmt_impuestosxcotizacion', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Impuestos por Cotización']);

      if Not CrearConjunto(cdVerificaCotizacion, 'cmt_cotizaciondatos', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Impuestos por Cotización']);

      cdElabora.Open;
      if cdElabora.RecordCount = 0 then
        raise InteligentException.CreateByCode(22, ['Usuarios (Elabora)']);

      cdAutoriza.Open;
      if cdAutoriza.RecordCount = 0 then
        raise InteligentException.CreateByCode(22, ['Usuarios (Autoriza)']);
    finally
      Screen.Cursor := LocCursor;
    end;
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

procedure TFrmCotizacion.IdInsumoEnter(Sender: TObject);
begin
  IdInsumo.Text := TextoOriginal;
end;

procedure TFrmCotizacion.IdInsumoExit(Sender: TObject);
begin
  TextoOriginal := IdInsumo.Text;
  if dsInsumo.DataSet.Active and (dsInsumo.Dataset.RecordCount > 0) then
    IdInsumo.Text := dsInsumo.DataSet.FieldByName('CodigoInsumo').AsString + ' - ' + dsInsumo.DataSet.FieldByName('NombreInsumo').AsString;
end;

procedure TFrmCotizacion.IdInsumoKeyPress(Sender: TObject; var Key: Char);
var
  Valor: String;
  IdRegistroMovimientoGeneralPartida: LongInt;
begin
  if Key = #13 then
  begin
    try
      // Verificar por código o parte del texto
      if Trim(IdInsumo.Text) = '' then
        Valor := '-1'
      else
        Valor := Trim(IdInsumo.Text);

      if Not CargarDatosFiltrados(TClientDataSet(dsInsumo.DataSet), 'Texto', [Valor]) then
        raise InteligentException.CreateByCode(6, ['Insumos', Valor, 'Texto']);
      if dsInsumo.DataSet.Active then
        dsInsumo.DataSet.Refresh
      else
        dsInsumo.DataSet.Open;

      try
        if (dsInsumo.DataSet.RecordCount > 1) or ((dsInsumo.DataSet.RecordCount = 1) and (dsInsumo.DataSet.FieldByName('Cta').AsInteger = 0)) then
        begin
          // Poner la ventana de selección de datos multiples
          Application.CreateForm(TFrmSelInsumo, FrmSelInsumo);
          try
            FrmSelInsumo.Caption := 'Seleccionar Insumo';
            FrmSelInsumo.tvInsumos.DataController.DataSource := dsInsumo;
            FrmSelInsumo.tvInsumos2.DataController.DataSource := dsInsumo;
            FrmSelInsumo.pTexto := IdInsumo.Text;
            if FrmSelInsumo.ShowModal = mrOk then
              IdRegistroMovimientoGeneralPartida := AgregaPartida
            else
              dsInsumo.DataSet.Close;
          finally
            FrmSelInsumo.Destroy;
          end;
        end;

        if (dsInsumo.DataSet.RecordCount = 1) and (dsInsumo.DataSet.FieldByName('Cta').AsInteger = 1) then
          IdRegistroMovimientoGeneralPartida := AgregaPartida;

        if Not cdMarca.Active then
          cdMarca.Open;

        if Not cdPresentacion.Active then
          cdPresentacion.Open;

        {if Not cdCotizacionDatosUpt.Locate('IdCotizacionDatos', IdRegistroMovimientoGeneralPartida, []) then
          raise InteligentException.CreateByCode(1, ['No existe el registro que aparentemente se acaba de dar de alta en el sistema.']);

        cdCotizacionDatosUpt.Edit;}

        Application.CreateForm(TFrmEditarCotizacionPartida, FrmEditarCotizacionPartida);
        FrmEditarCotizacionPartida.IdxColumn := 0;
        FrmEditarCotizacionPartida.dsInsumo.DataSet := cdInsumo;
        FrmEditarCotizacionPartida.dsCotizacionDatos.DataSet := cdCotizacionDatosUpt;
        FrmEditarCotizacionPartida.dsPresentacion.DataSet := cdPresentacion;
        FrmEditarCotizacionPartida.dsMarca.DataSet := cdMarca;
        FrmEditarCotizacionPartida.dsExistenciasGenerales.DataSet := cdExistenciasGenerales;
        FrmEditarCotizacionPartida.dsVerificaCotizacion.DataSet := cdVerificaCotizacion;
        FrmEditarCotizacionPartida.CodigoInsumo.Text := cdInsumo.FieldByName('CodigoInsumo').AsString;
        if FrmEditarCotizacionPartida.ShowModal = mrOk then
        begin
          cdCotizacionDatosUpt.Post;
          TClientDataSet(cdCotizacionDatosUpt).ApplyUpdates(-1);
          cdCotizacionDatos.Refresh;
        end
        else
          cdCotizacionDatosUpt.Cancel;

        cdCotizacionDatosUpt.Close;
      except
        cdCotizacionDatosUpt.Cancel;
        raise;
      end;
    except
      on e:InteligentException do
      begin
        dsInsumo.DataSet.Close;
        InteliDialog.ShowModal(e.Title, e.Message, mtError, [mbOk], 0);
      end;

      on e:Exception do
      begin
        dsInsumo.DataSet.Close;
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      end;
    end;
  end
  else
    dsInsumo.DataSet.Close;
end;

procedure TFrmCotizacion.pmPartidasPopup(Sender: TObject);
begin
  EditarPartida1.Enabled := cdCotizacionDatos.RecordCount > 0;
  EliminarPartida1.Enabled := cdCotizacionDatos.RecordCount > 0;
end;

procedure TFrmCotizacion.pnlFirmasResize(Sender: TObject);
begin
  pnlElabora.Width := pnlFirmas.Width div 2;
end;

procedure TFrmCotizacion.repCotizacionGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'NumeroALetras') = 0 then
    Value := xNumerosToLletres(CostoTotal);
end;

procedure TFrmCotizacion.tvDatosCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if AButton = mbLeft then
    EditarPartida(ACellViewInfo.Item.Index);
end;

procedure TFrmCotizacion.tvDatosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 46 then
    EliminarPartida;
end;

procedure TFrmCotizacion.btnImprimirClick(Sender: TObject);
var
  Posicion: TBookMark;
begin
  // Obtener los totales
  CostoTotal := 0;
  Posicion := cdCotizacionDatos.Bookmark;
  cdCotizacionDatos.DisableControls;
  try
    cdCotizacionDatos.First;
    while not cdCotizacionDatos.Eof do
    begin
      CostoTotal := CostoTotal + cdCotizacionDatos.FieldByName('Costo').AsFloat;
      cdCotizacionDatos.Next;
    end;
  finally
    cdCotizacionDatos.GotoBookMark(Posicion);
    cdCotizacionDatos.EnableControls;
  end;

  Posicion := cdImpuestosxCotizacion.Bookmark;
  cdImpuestosxCotizacion.DisableControls;
  try
    cdImpuestosxCotizacion.First;
    while Not cdImpuestosxCotizacion.Eof do
    begin
      CostoTotal := CostoTotal + cdImpuestosxCotizacion.FieldByName('Impuesto').AsFloat;
      cdImpuestosxCotizacion.Next;
    end;
  finally
    cdImpuestosxCotizacion.GotoBookMark(Posicion);
    cdImpuestosxCotizacion.EnableControls;
  end;

  ClientModule1.ImprimeReporte('Cotizacion.fr3', repCotizacion);
end;

function TFrmCotizacion.AgregaPartida: LongInt;
var
  Resultado: LongInt;
begin
  Resultado := -9;

  if Not CargarDatosFiltrados(cdCotizacionDatosUpt, 'IdCotizacionDatos', [-9]) then
    raise InteligentException.CreateByCode(16, ['Partidas de Cotizacion']);

  if cdCotizacionDatosUpt.Active then
    cdCotizacionDatosUpt.Refresh
  else
    cdCotizacionDatosUpt.Open;

  try
    cdCotizacionDatosUpt.Append;
    cdCotizacionDatosUpt.FieldByName('IdCotizacionDatos').AsInteger := 0;
    cdCotizacionDatosUpt.FieldByName('IdCotizacion').AsInteger := cdCotizacionUpt.FieldByName('IdCotizacion').AsInteger;
    cdCotizacionDatosUpt.FieldByName('IdInsumo').AsInteger := cdInsumo.FieldByName('IdInsumo').AsInteger;
    cdCotizacionDatosUpt.FieldByName('CodigoInsumo').AsString := cdInsumo.FieldByName('CodigoInsumo').AsString;
    cdCotizacionDatosUpt.FieldByName('NombreInsumo').AsString := cdInsumo.FieldByName('NombreInsumo').AsString;
    cdCotizacionDatosUpt.FieldByName('Cantidad').AsFloat := 0.00;
    cdCotizacionDatosUpt.FieldByName('Precio').AsFloat := 0.00;
    cdCotizacionDatosUpt.FieldByName('pUtilidad').AsFloat := 0;
    cdCotizacionDatosUpt.FieldByName('Utilidad').AsFloat := 0.00;
    cdCotizacionDatosUpt.FieldByName('CostoI').AsFloat := 0.00;
    cdCotizacionDatosUpt.FieldByName('Costo').AsFloat := 0.00;
    cdCotizacionDatosUpt.FieldByName('iIdUnidad').AsInteger := cdInsumo.FieldByName('iIdUnidad').AsInteger;
  except
    cdCotizacionDatosUpt.Cancel;
    raise;
  end;

  Resultado := UltimoId;
end;

procedure TFrmCotizacion.EditarPartida(ItemIndex: Word);
var
  LocCursor: TCursor;
begin
  if cdCotizacionDatos.RecordCount > 0 then
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      // Seleccionar la partida clicada y asignarla en el dataset del insumo
      if Not CargarDatosFiltrados(cdInsumo, 'IdInsumo', [cdCotizacionDatos.FieldByName('IdInsumo').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Partidas de Cotización', cdCotizacionDatos.FieldByName('IdInsumo').AsInteger, 'Id. Insumo']);
      if cdInsumo.Active then
        cdInsumo.Refresh
      else
        cdInsumo.Open;

      // Editar el registro seleccionado
      if Not CargarDatosFiltrados(cdCotizacionDatosUpt, 'IdCotizacionDatos', [cdCotizacionDatos.FieldByName('IdCotizacionDatos').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Partidas de Cotización', cdCotizacionDatos.FieldByName('IdCotizacionDatos').AsInteger, 'Id. Partida Cotización']);
    finally
      Screen.Cursor := LocCursor;
    end;

    try
      Screen.Cursor := crHourGlass;
      try
        if cdCotizacionDatosUpt.Active then
          cdCotizacionDatosUpt.Refresh
        else
          cdCotizacionDatosUpt.Open;

        if cdCotizacionDatosUpt.RecordCount = 0 then
          raise InteligentException.CreateByCode(13, [cdCotizacionDatos.FieldByName('CodigoInsumo').AsString, 'Partidas de Cotización']);

        cdCotizacionDatosUpt.Edit;

        Application.CreateForm(TFrmEditarCotizacionPartida, FrmEditarCotizacionPartida);
        FrmEditarCotizacionPartida.IdxColumn := ItemIndex;
        FrmEditarCotizacionPartida.dsInsumo.DataSet := cdInsumo;
        FrmEditarCotizacionPartida.dsCotizacionDatos.DataSet := cdCotizacionDatosUpt;
        FrmEditarCotizacionPartida.dsPresentacion.DataSet := cdPresentacion;
        FrmEditarCotizacionPartida.dsMarca.DataSet := cdMarca;
        FrmEditarCotizacionPartida.dsExistenciasGenerales.DataSet := cdExistenciasGenerales;
        FrmEditarCotizacionPartida.dsVerificaCotizacion.DataSet := cdVerificaCotizacion;
        FrmEditarCotizacionPartida.CodigoInsumo.Text := cdInsumo.FieldByName('CodigoInsumo').AsString;
      finally
        Screen.Cursor := LocCursor;
      end;

      if FrmEditarCotizacionPartida.ShowModal = mrOk then
      begin
        //cdCotizacionDatosUpt.FieldByName('IdPresentacion').AsInteger := 24;
        cdCotizacionDatosUpt.Post;
        cdCotizacionDatosUpt.ApplyUpdates(-1);
        cdCotizacionDatos.Refresh;
      end
      else
        cdCotizacionDatosUpt.Cancel;
    finally
      if cdCotizacionDatosUpt.Active then
        cdCotizacionDatosUpt.Close;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmCotizacion.EliminarPartida;
var
  LocCursor: TCursor;
begin
  if InteliDialog.ShowModal('Borrar registro', 'Está a punto de eliminar la partida de Cotizacion:' + #10 + #10 +
                            cdCotizacionDatos.FieldByName('CodigoInsumo').AsString + ' - ' + cdCotizacionDatos.FieldByName('NombreInsumo').AsString + #10 +
                            'Cantidad: ' + cdCotizacionDatos.FieldByName('Cantidad').AsString + #10 +
                            'Precio: ' + cdCotizacionDatos.FieldByName('Precio').AsString + #10 +
                            'Costo: ' + cdCotizacionDatos.FieldByName('CostoI').AsString + #10 +
                            'Utilidad (' + cdCotizacionDatos.FieldByName('pUtilidad').AsString + '%): ' + cdCotizacionDatos.FieldByName('Utilidad').AsString + #10 +
                            'Costo Final:' + cdCotizacionDatos.FieldByName('Costo').AsString + #10 + #10 +
                            '¿Está seguro que desea eliminarla en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      LocCursor := Screen.Cursor;
      try
        Screen.Cursor := crHourGlass;

        // Elimninar el regsitro
        cdCotizacionDatosUpt.Delete;
        cdCotizacionDatosUpt.ApplyUpdates(-1);
        cdCotizacionDatosUpt.Refresh;
      finally
        Screen.Cursor := LocCursor;
      end;
    except
      on e:Exception do
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmCotizacion.EliminarPartida1Click(Sender: TObject);
begin
  EliminarPartida;
end;

procedure TFrmCotizacion.EditarPartida1Click(Sender: TObject);
begin
  EditarPartida(2);
end;

end.
