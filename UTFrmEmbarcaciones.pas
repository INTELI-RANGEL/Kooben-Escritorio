unit UTFrmEmbarcaciones;

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
  PngSpeedButton, JvExControls, JvLabel, cxGroupBox, UTFrmDatosEmbarcacion,
  UTFrmDatosCatalogo, NxColumns, NxDBColumns, ClientModuleUnit1, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, ImgList, dxSkinsForm, cxGridLevel, cxGridCustomView, cxGrid,
  dxRibbon;

type
  TFrmEmbarcaciones = class(TFrmCatalogo)
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    srCodigo: TEdit;
    srNombre: TEdit;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    CxColumnCodigo: TcxGridDBColumn;
    CxColumnNombre: TcxGridDBColumn;
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
  FrmEmbarcaciones: TFrmEmbarcaciones;

implementation

{$R *.dfm}

procedure TFrmEmbarcaciones.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'EMBARCACIONES';
  inherited;
end;

procedure TFrmEmbarcaciones.FormShow(Sender: TObject);
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

procedure TFrmEmbarcaciones.BtnSearchClick(Sender: TObject);
var
  vCodigo: String;
  vNombre: String;
begin
  if srCodigo.Text = '' then
    vCodigo := '-1'
  else
    vCodigo := srCodigo.Text;

  if srNombre.Text = '' then
    vNombre := '-1'
  else
    vNombre := srNombre.Text;

  CargarDatosFiltrados(cdDatos, 'CodigoInsumo,NombreInsumo', [vCodigo, vNombre]);

  DxBarBtnActualizar.Click;
end;

function TFrmEmbarcaciones.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosEmbarcacion.Create(Self);
end;

procedure TFrmEmbarcaciones.Inicializar;
begin
  keyField := 'IdEmbarcacion';
  entityName := 'cmt_embarcacion';
  codeField := 'CodigoEmbarcacion';
end;

end.
