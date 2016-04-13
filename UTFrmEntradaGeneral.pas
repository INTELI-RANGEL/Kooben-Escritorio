unit UTFrmEntradaGeneral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, StdCtrls, JvExControls, JvLabel, ExtCtrls, URegistro,
  UInteliDialog, ClientModuleUnit1, DB, DBClient, DBCtrls, cxGraphics,
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
  cxGrid, Menus, JvMenus;

type
  TFrmEntradaGeneral = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    JvLabel1: TJvLabel;
    CodigoCotizacion: TEdit;
    btnBuscar: TAdvGlowButton;
    btnNuevo: TAdvGlowButton;
    cdBuscarEntradaGeneral: TClientDataSet;
    cdEntradaGeneralDatosUpt: TClientDataSet;
    dsEntradaGeneralDatosUpt: TDataSource;
    dsEntradaGeneralUpt: TDataSource;
    cdEntradaGeneralUpt: TClientDataSet;
    cdRecibio: TClientDataSet;
    cdAutorizo: TClientDataSet;
    cdProveedores: TClientDataSet;
    Panel3: TPanel;
    JvLabel2: TJvLabel;
    NombreEmpresa: TDBText;
    Panel4: TPanel;
    Panel5: TPanel;
    DomicilioEmpresa: TDBMemo;
    Panel6: TPanel;
    JvLabel3: TJvLabel;
    Aplicacion: TDBText;
    pnlFirmas: TPanel;
    pnlElabora: TPanel;
    JvLabel4: TJvLabel;
    NombreAutorizo: TDBText;
    Panel9: TPanel;
    NombreRecibio: TDBText;
    JvLabel5: TJvLabel;
    Panel7: TPanel;
    btnCancelar: TAdvGlowButton;
    bntAceptar: TAdvGlowButton;
    tvPartidas: TcxGridDBTableView;
    gridPartidasLevel1: TcxGridLevel;
    gridPartidas: TcxGrid;
    tvPartidasColumn1: TcxGridDBColumn;
    tvPartidasColumn2: TcxGridDBColumn;
    tvPartidasColumn3: TcxGridDBColumn;
    pmPartidas: TJvPopupMenu;
    AgregarPartida1: TMenuItem;
    EditarPartida1: TMenuItem;
    EliminarPartida1: TMenuItem;
    cdInsumo: TClientDataSet;
    Panel8: TPanel;
    IdInsumo: TEdit;
    Panel10: TPanel;
    JvLabel6: TJvLabel;
    Panel11: TPanel;
    NombreInsumo: TDBText;
    CodigoInsumo: TDBText;
    lblGuion: TJvLabel;
    dsInsumo: TDataSource;
    procedure btnBuscarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure pnlFirmasResize(Sender: TObject);
    procedure AgregarPartida1Click(Sender: TObject);
    procedure IdInsumoEnter(Sender: TObject);
    procedure IdInsumoExit(Sender: TObject);
    procedure IdInsumoKeyPress(Sender: TObject; var Key: Char);
  private
    TextoOriginal: String;
    function AgregaPartida: LongInt;
  public
    { Public declarations }
  end;

var
  FrmEntradaGeneral: TFrmEntradaGeneral;

implementation

{$R *.dfm}

uses
  UTFrmBuscarEntradaGeneral, UTFrmEntradaGeneralDatos,
  UTFrmEntradaGeneralPartidaDatos, UTFrmSelInsumo;

procedure TFrmEntradaGeneral.AgregarPartida1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmEntradaGeneralPartidaDatos, FrmEntradaGeneralPartidaDatos);
  FrmEntradaGeneralPartidaDatos.dsEntradaGeneralDatosUpt.DataSet := cdEntradaGeneralDatosUpt;
  FrmEntradaGeneralPartidaDatos.dsInsumo.DataSet := cdInsumo;
  cdEntradaGeneralDatosUpt.Append;
  cdEntradaGeneralDatosUpt.FieldByName('IdRegistroMovimientoGeneralPartida').AsInteger := 0;
  cdEntradaGeneralDatosUpt.FieldByName('IdRegistroMovimientoGeneral').AsInteger := cdEntradaGeneralUpt.FieldByName('IdRegistroMovimientoGeneral').AsInteger;
  FrmEntradaGeneralPartidaDatos.ShowModal;
end;

procedure TFrmEntradaGeneral.btnBuscarClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmBuscarEntradaGeneral, FrmBuscarEntradaGeneral);
    FrmBuscarEntradaGeneral.dsBuscarEntradaGeneral.DataSet := cdBuscarEntradaGeneral;
    if FrmBuscarEntradaGeneral.ShowModal = mrOk then
    begin
      if Not CargarDatosFiltrados(cdEntradaGeneralUpt, 'IdRegistroMovimientoGeneral', [cdBuscarEntradaGeneral.FieldByName('IdRegistroMovimientoGeneral').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Entradas al Almacén General', cdBuscarEntradaGeneral.FieldByName('IdEntradaGeneral').AsInteger, 'Id. Entrada General']);

      if Not CargarDatosFiltrados(cdEntradaGeneralDatosUpt, 'IdRegistroMovimientoGeneral', [cdBuscarEntradaGeneral.FieldByName('IdRegistroMovimientoGeneral').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Partidas de Entradas al Almacén General', cdBuscarEntradaGeneral.FieldByName('IdEntradaGeneral').AsInteger, 'Id. Entrada General']);

      if cdEntradaGeneralUpt.Active then
        cdEntradaGeneralUpt.Refresh
      else
        cdEntradaGeneralUpt.Open;

      if cdEntradaGeneralDatosUpt.Active then
        cdEntradaGeneralDatosUpt.Refresh
      else
        cdEntradaGeneralDatosUpt.Open;

      IdInsumo.SetFocus;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmEntradaGeneral.btnNuevoClick(Sender: TObject);
var
  LocCursor: TCursor;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      // Crear una nueva Cotización
      if Not CargarDatosFiltrados(cdEntradaGeneralUpt, 'IdRegistroMovimientoGeneral', [-9]) then
        raise InteligentException.CreateByCode(16, ['*Entrada Almacén General']);

      if cdEntradaGeneralUpt.Active then
        cdEntradaGeneralUpt.Refresh
      else
        cdEntradaGeneralUpt.Open;

      cdEntradaGeneralUpt.Append;
      cdEntradaGeneralUpt.FieldByName('IdRegistroMovimientoGeneral').AsInteger := 0;
      cdEntradaGeneralUpt.FieldByName('Aplicacion').AsDateTime := Now;
      cdEntradaGeneralUpt.FieldByName('TipoMovimiento').AsString := 'ENTRADA';

      Application.CreateForm(TFrmEntradaGeneralDatos, FrmEntradaGeneralDatos);
      FrmEntradaGeneralDatos.dsEntradaGeneralUpt.DataSet := cdEntradaGeneralUpt;
      FrmEntradaGeneralDatos.dsProveedores.DataSet := cdProveedores;
      FrmEntradaGeneralDatos.dsRecibio.DataSet := cdRecibio;
      FrmEntradaGeneralDatos.dsAutorizo.DataSet := cdAutorizo;
      if FrmEntradaGeneralDatos.ShowModal = mrOk then
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

procedure TFrmEntradaGeneral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EliminarConjunto([cdBuscarEntradaGeneral, cdProveedores, cdInsumo, cdRecibio, cdAutorizo, cdEntradaGeneralDatosUpt, cdEntradaGeneralUpt]);
  Action := caFree;
end;

procedure TFrmEntradaGeneral.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      if Not CrearConjunto(cdProveedores, 'nuc_empresas_find', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Proveedores']);

      if Not CrearConjunto(cdRecibio, 'usuarios', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Usuarios (Elabora)']);

      if Not CrearConjunto(cdAutorizo, 'usuarios', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Usuarios (Autorizó)']);

      if Not CrearConjunto(cdEntradaGeneralUpt, 'cmt_registromovimientogeneral', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['*Entradas Almacén General']);

      if Not CrearConjunto(cdEntradaGeneralDatosUpt, 'cmt_registromovimientogeneralpartida', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Partidas de Entradas Generales']);

      if Not CrearConjunto(cdInsumo, 'cmt_insumo_find', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Insumos']);

      cdRecibio.Open;
      if cdRecibio.RecordCount = 0 then
        raise InteligentException.CreateByCode(22, ['Usuarios (Recibió)']);

      cdAutorizo.Open;
      if cdAutorizo.RecordCount = 0 then
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

procedure TFrmEntradaGeneral.IdInsumoEnter(Sender: TObject);
begin
  IdInsumo.Text := TextoOriginal;
end;

procedure TFrmEntradaGeneral.IdInsumoExit(Sender: TObject);
begin
  TextoOriginal := IdInsumo.Text;
  if dsInsumo.DataSet.Active and (dsInsumo.Dataset.RecordCount > 0) then
    IdInsumo.Text := dsInsumo.DataSet.FieldByName('sNombreCorto').AsString + ' - ' + dsInsumo.DataSet.FieldByName('sRazonSocial').AsString;
end;

procedure TFrmEntradaGeneral.IdInsumoKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmEntradaGeneral.pnlFirmasResize(Sender: TObject);
begin
  pnlElabora.Width := pnlFirmas.Width div 2;
end;

function TFrmEntradaGeneral.AgregaPartida: LongInt;
var
  Resultado: LongInt;
begin
  Resultado := -9;

  cdEntradaGeneralDatosUpt.Append;
  cdEntradaGeneralDatosUpt.FieldByName('IdRegistroMovimientoGeneralPartida').AsInteger := 0;
  cdEntradaGeneralDatosUpt.FieldByName('IdRegistroMovimientoGeneral').AsInteger := cdEntradaGeneralUpt.FieldByName('IdregistroMovimientoGeneral').AsInteger;
  cdEntradaGeneralDatosUpt.FieldByName('IdInsumo').AsInteger := cdInsumo.FieldByName('IdInsumo').AsInteger;
  cdEntradaGeneralDatosUpt.FieldByName('Solicitado').AsFloat := 0.00;
  cdEntradaGeneralDatosUpt.FieldByName('Registrado').AsFloat := 0.00;
  cdEntradaGeneralDatosUpt.FieldByName('Surtido').AsDateTime := Now;
  cdEntradaGeneralDatosUpt.FieldByName('Precio').AsFloat := 0.00;
  cdEntradaGeneralDatosUpt.Post;
  cdEntradaGeneralDatosUpt.ApplyUpdates(-1);

  Resultado := UltimoId;
  try
    // Tomar los datos como registro de Edición;
    if Not CargarDatosFiltrados(cdEntradaGeneralDatosUpt, 'IdRegistroMovimientoGeneralPartida', [Resultado]) then
      raise InteligentException.CreateByCode(6, ['Partidas de Entrada General', Resultado, 'IdRegistroMovimientoGeneralPartida']);
    cdEntradaGeneralDatosUpt.Refresh;
  finally
    Result := Resultado;
  end;
end;

end.
