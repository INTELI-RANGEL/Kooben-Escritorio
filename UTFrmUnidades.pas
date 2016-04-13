unit UTFrmUnidades;

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
  PngSpeedButton, JvExControls, JvLabel, cxGroupBox, UTFrmDatosCatalogo,
  UTFrmDatosUnidades, ClientModuleUnit1, UControlExcepciones, UInteliDialog,
  NxColumns, NxDBColumns, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, ImgList, dxSkinsForm, cxGridLevel,
  cxGridCustomView, cxGrid, cxLabel, dxRibbon;

type
  TFrmUnidades = class(TFrmCatalogo)
    srCodigo: TEdit;
    srNombre: TEdit;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    CxColumnCodigo: TcxGridDBColumn;
    CxColumnNombre: TcxGridDBColumn;
    CxColumnSiglas: TcxGridDBColumn;
    procedure BtnSearchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure Inicializar;
    function createPopUp: TFrmDatosCatalogo; override;
  public
    { Public declarations }
  end;

var
  FrmUnidades: TFrmUnidades;

implementation

{$R *.dfm}

procedure TFrmUnidades.BtnSearchClick(Sender: TObject);
var
  vCodigo,
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

  CargarDatosFiltrados(cdDatos, 'sCodigo,sNombre', [vCodigo, vNombre]);

  DxBarBtnActualizar.Click;
end;

function TFrmUnidades.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosUnidades.Create(Self);
end;

procedure TFrmUnidades.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'UNIDADES';
  inherited;
end;

procedure TFrmUnidades.FormShow(Sender: TObject);
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

procedure TFrmUnidades.Inicializar;
begin
  keyField := 'iIdUnidad';
  entityName := 'nuc_unidades';
  codeField := 'sCodigo';
end;

end.
