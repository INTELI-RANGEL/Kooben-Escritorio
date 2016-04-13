unit UTFrmTiposRecetaDatos;

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
  AppEvnts, ExtCtrls, DB, DBClient, StdCtrls, cxButtons, cxGroupBox, Mask,
  DBCtrls, JvExControls, JvLabel, JvExMask, JvSpin, JvDBSpinEdit, UInteliDialog,
  ClientModuleUnit1, AdvGlowButton;

type
  TFrmTiposRecetaDatos = class(TFrmDatosCatalogo)
    CodigoTipoReceta: TDBEdit;
    NombreTipoReceta: TDBEdit;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    Orden: TJvDBSpinEdit;
    procedure FormShow(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTiposRecetaDatos: TFrmTiposRecetaDatos;

implementation

{$R *.dfm}

Uses
  Unit2;

procedure TFrmTiposRecetaDatos.BtnRecClick(Sender: TObject);
begin
  Try
    if AnsiCompareText(Form2.CualTipoReceta, 'CONSUMIBLE') = 0 then
      dsDatos.DataSet.FieldByName('Cual').AsString := 'CONSUMIBLE'
    else
      dsDatos.DataSet.FieldByName('Cual').AsString := 'RECETA';

    if Orden.Value <= 0 then
      raise InteligentException.CreateByCode(8, ['El campo [Orden] debe contener un valor superior a cero, dicho valor determinará el orden en el cual se presentaran los datos en las consultas o reportes.']);

    inherited;
  Except
    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmTiposRecetaDatos.FormShow(Sender: TObject);
begin
  inherited;
  if AnsiCompareText(Form2.CualTipoReceta, 'CONSUMIBLE') = 0 then
    Caption := 'Tipo Paquete de Consumibles';
end;

end.
