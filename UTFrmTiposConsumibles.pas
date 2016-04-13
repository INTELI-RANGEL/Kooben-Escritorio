unit UTFrmTiposConsumibles;

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
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, DB, cxDBData, dxSkinsdxBarPainter, dxBar, dxRibbon, cxClasses,
  ImgList, dxSkinsForm, JvMemoryDataset, DBClient, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, AdvShapeButton, Spin, AdvProgressBar, ComCtrls, StdCtrls,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, ExtCtrls,
  cxButtons, Buttons, PngSpeedButton, JvExControls, JvLabel, cxGroupBox,
  UTFrmDatosCatalogo, UTFrmTiposRecetaDatos, ClientModuleUnit1;

type
  TFrmTiposConsumibles = class(TFrmCatalogo)
    JvLabel1: TJvLabel;
    srCodigo: TEdit;
    JvLabel2: TJvLabel;
    srNombre: TEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure BtnSearchClick(Sender: TObject);
  private
    function createPopUp: TFrmDatosCatalogo; override;
    procedure Inicializar;
  end;

var
  FrmTiposConsumibles: TFrmTiposConsumibles;

implementation

{$R *.dfm}

procedure TFrmTiposConsumibles.BtnSearchClick(Sender: TObject);
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

function TFrmTiposConsumibles.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmTiposRecetaDatos.Create(Self);
end;

procedure TFrmTiposConsumibles.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'TIPO CONSUMIBLES';
  inherited;
end;

procedure TFrmTiposConsumibles.FormShow(Sender: TObject);
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

procedure TFrmTiposConsumibles.Inicializar;
begin
  keyField := 'IdTipoReceta';
  entityName := 'cmt_tiporeceta';
  codeField := 'CodigoTipoReceta';
end;

end.
