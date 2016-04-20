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
  cxGrid, cxCalc, Menus, AdvMenus;

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
    dsCotizacionDatosUpt: TDataSource;
    Panel7: TPanel;
    btnCancelar: TAdvGlowButton;
    bntAceptar: TAdvGlowButton;
    tvDatos: TcxGridDBTableView;
    gridPartidasLevel1: TcxGridLevel;
    gridPartidas: TcxGrid;
    Splitter1: TSplitter;
    ColhCodigoInsumo: TcxGridDBColumn;
    ColhNombreInsumo: TcxGridDBColumn;
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
    ColCosto: TcxGridDBColumn;
    cdMarca: TClientDataSet;
    cdPresentacion: TClientDataSet;
    cdExistenciasGenerales: TClientDataSet;
    pmPartidas: TAdvPopupMenu;
    EditarPartida1: TMenuItem;
    EliminarPartida1: TMenuItem;
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
  private
    TextoOriginal: String;
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

procedure TFrmCotizacion.btnBuscarClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmBuscarCotizacion, FrmBuscarCotizacion);
    FrmBuscarCotizacion.dsBuscarCotizacion.DataSet := cdBuscarCotizacion;
    if FrmBuscarCotizacion.ShowModal = mrOk then
    begin
      if Not CargarDatosFiltrados(cdCotizacionUpt, 'IdCotizacion', [cdBuscarCotizacion.FieldByName('IdCotizacion').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Cotizaciones', cdBuscarCotizacion.FieldByName('IdCotizacion').AsInteger, 'Id. Cotizacion']);

      if Not CargarDatosFiltrados(cdCotizacionDatosUpt, 'IdCotizacion', [cdBuscarCotizacion.FieldByName('IdCotizacion').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Partidas de Cotización', cdBuscarCotizacion.FieldByName('IdCotizacion').AsInteger, 'Id. Cotizacion']);

      if cdCotizacionUpt.Active then
        cdCotizacionUpt.Refresh
      else
        cdCotizacionUpt.Open;

      if cdCotizacionDatosUpt.Active then
        cdCotizacionDatosUpt.Refresh
      else
        cdCotizacionDatosUpt.Open;

      IdInsumo.SetFocus;
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

procedure TFrmCotizacion.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
begin
  EliminarConjunto([cdBuscarCotizacion, cdClientes, cdMarca, cdExistenciasGenerales, cdPresentacion, cdInsumo, cdElabora, cdAutoriza, cdCotizacionDatosUpt, cdCotizacionUpt]);

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

      IniciarTransaccion;
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

        if Not cdCotizacionDatosUpt.Locate('IdCotizacionDatos', IdRegistroMovimientoGeneralPartida, []) then
          raise InteligentException.CreateByCode(1, ['No existe el registro que aparentemente se acaba de dar de alta en el sistema.']);

        cdCotizacionDatosUpt.Edit;

        Application.CreateForm(TFrmEditarCotizacionPartida, FrmEditarCotizacionPartida);
        FrmEditarCotizacionPartida.dsCotizacionDatos.DataSet := cdCotizacionDatosUpt;
        FrmEditarCotizacionPartida.IdxColumn := 0;
        FrmEditarCotizacionPartida.dsInsumo.DataSet := cdInsumo;
        FrmEditarCotizacionPartida.dsCotizacionDatos.DataSet := cdCotizacionDatosUpt;
        FrmEditarCotizacionPartida.dsPresentacion.DataSet := cdPresentacion;
        FrmEditarCotizacionPartida.dsMarca.DataSet := cdMarca;
        FrmEditarCotizacionPartida.dsExistenciasGenerales.DataSet := cdExistenciasGenerales;
        FrmEditarCotizacionPartida.CodigoInsumo.Text := cdInsumo.FieldByName('CodigoInsumo').AsString;
        if FrmEditarCotizacionPartida.ShowModal = mrOk then
        begin
          cdCotizacionDatosUpt.Post;
          TClientDataSet(cdCotizacionDatosUpt).ApplyUpdates(-1);
          ConcretarTransaccion;
        end
        else
        begin
          cdCotizacionDatosUpt.Cancel;
          CancelarTransaccion;
          cdCotizacionDatosUpt.Refresh;
        end;
      except
        cdCotizacionDatosUpt.Cancel;
        CancelarTransaccion;
        cdCotizacionDatosUpt.Refresh;
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
  EditarPartida1.Enabled := cdCotizacionDatosUpt.RecordCount > 0;
  EliminarPartida1.Enabled := cdCotizacionDatosUpt.RecordCount > 0;
end;

procedure TFrmCotizacion.pnlFirmasResize(Sender: TObject);
begin
  pnlElabora.Width := pnlFirmas.Width div 2;
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

function TFrmCotizacion.AgregaPartida: LongInt;
var
  Resultado: LongInt;
begin
  Resultado := -9;

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
    cdCotizacionDatosUpt.Post;
    cdCotizacionDatosUpt.ApplyUpdates(-1);
  except
    cdCotizacionDatosUpt.Cancel;
    raise;
  end;

  Resultado := UltimoId;
  try
    // Tomar los datos como registro de Edición;
    if Not CargarDatosFiltrados(cdCotizacionDatosUpt, 'IdCotizacion', [cdCotizacionUpt.FieldByName('IdCotizacion').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Partidas de Cotización', cdCotizacionUpt.FieldByName('IdCotizacion').AsInteger, 'Id. Cotizacion']);
    cdCotizacionDatosUpt.Refresh;
  finally
    Result := Resultado;
  end;
end;

procedure TFrmCotizacion.EditarPartida(ItemIndex: Word);
var
  LocCursor: TCursor;
begin
  if cdCotizacionDatosUpt.RecordCount > 0 then
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      // Seleccionar la partida clicada y asignarla en el dataset del insumo
      if Not CargarDatosFiltrados(cdInsumo, 'IdInsumo', [cdCotizacionDatosUpt.FieldByName('IdInsumo').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Partidas de Cotización', cdCotizacionDatosUpt.FieldByName('IdInsumo').AsInteger, 'Id. Insumo']);
      if cdInsumo.Active then
        cdInsumo.Refresh
      else
        cdInsumo.Open;

      // Editar el registro seleccionado
      cdCotizacionDatosUpt.Edit;

      Application.CreateForm(TFrmEditarCotizacionPartida, FrmEditarCotizacionPartida);
      FrmEditarCotizacionPartida.dsCotizacionDatos.DataSet := cdCotizacionDatosUpt;
      FrmEditarCotizacionPartida.IdxColumn := ItemIndex;
      FrmEditarCotizacionPartida.dsInsumo.DataSet := cdInsumo;
      FrmEditarCotizacionPartida.dsCotizacionDatos.DataSet := cdCotizacionDatosUpt;
      FrmEditarCotizacionPartida.dsPresentacion.DataSet := cdPresentacion;
      FrmEditarCotizacionPartida.dsMarca.DataSet := cdMarca;
      FrmEditarCotizacionPartida.dsExistenciasGenerales.DataSet := cdExistenciasGenerales;
      FrmEditarCotizacionPartida.CodigoInsumo.Text := cdInsumo.FieldByName('CodigoInsumo').AsString;
    finally
      Screen.Cursor := LocCursor;
    end;

    if FrmEditarCotizacionPartida.ShowModal = mrOk then
    begin
      cdCotizacionDatosUpt.Post;
      TClientDataSet(cdCotizacionDatosUpt).ApplyUpdates(-1);
    end
    else
      cdCotizacionDatosUpt.Cancel;
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
                            cdCotizacionDatosUpt.FieldByName('CodigoInsumo').AsString + ' - ' + cdCotizacionDatosUpt.FieldByName('NombreInsumo').AsString + #10 +
                            'Cantidad: ' + cdCotizacionDatosUpt.FieldByName('Cantidad').AsString + #10 +
                            'Precio: ' + cdCotizacionDatosUpt.FieldByName('Precio').AsString + #10 +
                            'Costo: ' + cdCotizacionDatosUpt.FieldByName('CostoI').AsString + #10 +
                            'Utilidad (' + cdCotizacionDatosUpt.FieldByName('pUtilidad').AsString + '%): ' + cdCotizacionDatosUpt.FieldByName('Utilidad').AsString + #10 +
                            'Costo Final:' + cdCotizacionDatosUpt.FieldByName('Costo').AsString + #10 + #10 +
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
