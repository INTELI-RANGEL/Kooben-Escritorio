unit UTFrmTiposInsumo;

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
  UControlExcepciones, UTFrmDatosCatalogo, UTFrmDatosTiposInsumo, NxColumns,
  NxDBColumns, dxSkinsForm, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, ImgList, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxLabel, dxRibbon;

type
  TFrmTiposInsumo = class(TFrmCatalogo)
    srCodigo: TEdit;
    CodigoTipoInsumo: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    CxColumncodigo: TcxGridDBColumn;
    CxColumnNombre: TcxGridDBColumn;
    CxColumndescripcion: TcxGridDBColumn;
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
  FrmTiposInsumo: TFrmTiposInsumo;

implementation

{$R *.dfm}

procedure TFrmTiposInsumo.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'TIPOS INSUMO';
  inherited;
end;

procedure TFrmTiposInsumo.FormShow(Sender: TObject);
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

procedure TFrmTiposInsumo.BtnSearchClick(Sender: TObject);
var
  vCodigo: String;
begin
  if srCodigo.Text = '' then
    vCodigo := '-1'
  else
    vCodigo := srCodigo.Text;

  CargarDatosFiltrados(cdDatos, 'CodigoInsumo', [vCodigo]);

  DxBarBtnActualizar.Click;
end;

function TFrmTiposInsumo.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosTiposInsumo.Create(Self);
end;

procedure TFrmTiposInsumo.Inicializar;
begin
  keyField := 'IdTipoInsumo';
  entityName := 'cmt_tipoinsumo';
  codeField := 'CodigoTipoInsumo';
end;

end.
