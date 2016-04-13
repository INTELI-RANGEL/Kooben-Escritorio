unit UTFrmTiposReceta;

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
  UTFrmDatosCatalogo, UTFrmTiposRecetaDatos, NxColumns, NxDBColumns, dxSkinsForm,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxLabel, ImgList,
  dxRibbon, UInteliDialog;

type
  TFrmTiposReceta = class(TFrmCatalogo)
    srCodigo: TEdit;
    srNombre: TEdit;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    ColCodigoTipoReceta: TcxGridDBColumn;
    ColNombreTipoReceta: TcxGridDBColumn;
    ColOrden: TcxGridDBColumn;
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
  FrmTiposReceta: TFrmTiposReceta;

implementation

{$R *.dfm}

Uses
  Unit2;

procedure TFrmTiposReceta.BtnSearchClick(Sender: TObject);
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

procedure TFrmTiposReceta.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'TIPOS RECETA';
  inherited;
end;

procedure TFrmTiposReceta.FormShow(Sender: TObject);
begin
  Try
    inherited;
    if ModoSeleccion = True then
      BtnSelect.Visible := True;

    inicializar;
    if abrir then
    begin
      if AnsiCompareText(Form2.CualTipoReceta, 'CONSUMIBLE') = 0 then
      begin
        Caption := 'Tipos de Paquetes de Consumibles';

        if Not CargarDatosFiltrados(cdDatos, 'Cual', ['CONSUMIBLE']) then
          raise InteligentException.CreateByCode(6, ['Tipos de Paquetes de Consumibles', 'Cual', 'CONSUMIBLE']);

        cdDatos.Refresh;
      end;
    end;
  Except
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
  End;
end;

function TFrmTiposReceta.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmTiposRecetaDatos.Create(Self);
end;

procedure TFrmTiposReceta.Inicializar;
begin
  keyField := 'IdTipoReceta';
  entityName := 'cmt_tiporeceta';
  codeField := 'CodigoTipoReceta';
end;

end.
