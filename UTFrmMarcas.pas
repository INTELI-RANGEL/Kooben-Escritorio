unit UTFrmMarcas;

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
  UTFrmDatosCatalogo, UTFrmDatosMarca, NxColumns, NxDBColumns, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, ImgList, dxSkinsForm, cxGridLevel, cxGridCustomView, cxGrid,
  cxLabel, dxRibbon;

type
  TFrmMarcas = class(TFrmCatalogo)
    srCodigo: TEdit;
    srTitulo: TEdit;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    CxColumnCodigo: TcxGridDBColumn;
    CxColumnmarca: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
  private
    function createPopUp: TFrmDatosCatalogo; override;
    procedure Inicializar;
  public
    { Public declarations }
  end;

var
  FrmMarcas: TFrmMarcas;

implementation

{$R *.dfm}

procedure TFrmMarcas.BtnSearchClick(Sender: TObject);
var
  vCodigo: String;
  vTitulo: String;
begin
  if srCodigo.Text = '' then
    vCodigo := '-1'
  else
    vCodigo := srCodigo.Text;

  if srTitulo.Text = '' then
    vTitulo := '-1'
  else
    vTitulo := srTitulo.Text;

  CargarDatosFiltrados(cdDatos, 'CodigoMarca,TituloMarca', [vCodigo, vTitulo]);

  DxBarBtnActualizar.Click;
end;

procedure TFrmMarcas.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'MARCAS';
  inherited;
end;

procedure TFrmMarcas.FormShow(Sender: TObject);
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

function TFrmMarcas.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosMarca.Create(Self);
end;

procedure TFrmMarcas.Inicializar;
begin
  keyField := 'IdMarca';
  entityName := 'cmt_marca';
  codeField := 'CodigoMarca';
end;

end.
