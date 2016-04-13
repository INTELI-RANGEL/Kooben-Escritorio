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
  cxGrid;

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
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Splitter1: TSplitter;
    ColPartida: TcxGridDBColumn;
    tvDatosColumn2: TcxGridDBColumn;
    procedure btnBuscarClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure pnlFirmasResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCotizacion: TFrmCotizacion;

implementation

{$R *.dfm}

Uses
  UTFrmBuscarCotizacion, UTFrmCotizacionDatos;

procedure TFrmCotizacion.btnBuscarClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmBuscarCotizacion, FrmBuscarCotizacion);
    FrmBuscarCotizacion.dsBuscarCotizacion.DataSet := cdBuscarCotizacion;
    if FrmBuscarCotizacion.ShowModal = mrOk then
    begin
      if Not CargarDatosFiltrados(cdCotizacionDatosUpt, 'IdCotizacion', [cdBuscarCotizacion.FieldByName('IdCotizacion').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Cotizaciones', cdBuscarCotizacion.FieldByName('IdCotizacion').AsInteger, 'Id. Cotizacion']);

      if cdCotizacionDatosUpt.Active then
        cdCotizacionDatosUpt.Refresh
      else
        cdCotizacionDatosUpt.Open;
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
begin
  EliminarConjunto([cdBuscarCotizacion, cdClientes, cdElabora, cdAutoriza, cdCotizacionDatosUpt, cdCotizacionUpt]);
  Action := caFree;
end;

procedure TFrmCotizacion.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

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

procedure TFrmCotizacion.pnlFirmasResize(Sender: TObject);
begin
  pnlElabora.Width := pnlFirmas.Width div 2;
end;

end.
