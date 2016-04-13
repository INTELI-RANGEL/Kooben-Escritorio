unit UTFrmPeriodosConsumo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Menus,
  dxSkinsdxBarPainter, dxBar, cxClasses, JvMemoryDataset, DB, DBClient,
  AdvShapeButton, Spin, AdvProgressBar, ComCtrls, StdCtrls, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxDBGrid, ExtCtrls, cxButtons, Buttons,
  PngSpeedButton, JvExControls, JvLabel, cxGroupBox, ClientModuleUnit1,
  UTFrmDatosCatalogo, NxColumns, NxDBColumns, UTFrmDatosPeriodoConsumo,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, ImgList, dxSkinsForm, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxLabel,
  dxRibbon;

type
  TFrmPeriodosConsumo = class(TFrmCatalogo)
    srTituloPeriodoConsumo: TEdit;
    JvLabel1: TJvLabel;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    CxColumnTitulo: TcxGridDBColumn;
    CxColumnInicio: TcxGridDBColumn;
    CxColumnTermino: TcxGridDBColumn;
    CxColumnDescripcion: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
  private
    procedure Inicializar;
    function createPopUp: TFrmDatosCatalogo; override;
  public
    { Public declarations }
  end;

var
  FrmPeriodosConsumo: TFrmPeriodosConsumo;

implementation

{$R *.dfm}

procedure TFrmPeriodosConsumo.BtnSearchClick(Sender: TObject);
var
  vCodigo: String;
begin
  if srTituloPeriodoConsumo.Text = '' then
    vCodigo := '-1'
  else
    vCodigo := srTituloPeriodoConsumo.Text;

  CargarDatosFiltrados(cdDatos, 'CodigoInsumo', [vCodigo]);

  DxBarBtnActualizar.Click;
end;

procedure TFrmPeriodosConsumo.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'PERIODO CONSUMO';
  inherited;
end;

procedure TFrmPeriodosConsumo.FormShow(Sender: TObject);
begin
  Try
    inherited;
    if ModoSeleccion = True then
      BtnSelect.Visible := True;
    inicializar;
    abrir;
  Except
    ;
  End;
end;

function TFrmPeriodosConsumo.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosPeriodoConsumo.Create(Self);
end;

procedure TFrmPeriodosConsumo.Inicializar;
begin
  keyField := 'IdPeriodoConsumo';
  entityName := 'cmt_periodoconsumo';
  codeField := 'TituloPeriodoConsumo';
end;

end.
