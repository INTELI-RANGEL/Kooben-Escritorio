unit UTFrmDatosTiposImpuesto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, cxGraphics, cxControls, cxLookAndFeels,
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
  AppEvnts, ExtCtrls, DB, DBClient, StdCtrls, cxButtons, AdvGlowButton,
  cxGroupBox, ClientModuleUnit1, UInteliDialog, JvExControls, JvLabel, Mask,
  DBCtrls;

type
  TFrmDatosTiposImpuesto = class(TFrmDatosCatalogo)
    CodigoTipoImpuesto: TDBEdit;
    TituloTipoImpuesto: TDBEdit;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    procedure BtnAddNewClick(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosTiposImpuesto: TFrmDatosTiposImpuesto;

implementation

{$R *.dfm}

procedure TFrmDatosTiposImpuesto.BtnAddNewClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(CodigoTipoImpuesto, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(TituloTipoImpuesto, 'Título') = False then
    exit;

  inherited;
  CodigoTipoImpuesto.Text := '';
  TituloTipoImpuesto.Text := '';
end;

procedure TFrmDatosTiposImpuesto.BtnRecClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(CodigoTipoImpuesto, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(TituloTipoImpuesto, 'Título') = False then
    exit;

  inherited;
end;

procedure TFrmDatosTiposImpuesto.FormShow(Sender: TObject);
begin
  inherited;
  CodigoTipoImpuesto.SetFocus;
end;

end.
