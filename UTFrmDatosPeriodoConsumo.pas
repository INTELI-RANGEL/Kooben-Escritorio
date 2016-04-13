unit UTFrmDatosPeriodoConsumo;

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
  StdCtrls, Mask, DBCtrls, JvExControls, JvLabel, AppEvnts, ExtCtrls, DB,
  DBClient, cxButtons, cxGroupBox, ComCtrls, JvExComCtrls, JvDateTimePicker,
  JvDBDateTimePicker;

type
  TFrmDatosPeriodoConsumo = class(TFrmDatosCatalogo)
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    edTituloPeriodoConsumo: TDBEdit;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    dtpDesde: TJvDBDateTimePicker;
    dtpHasta: TJvDBDateTimePicker;
    DescripcionPeriodoConsumo: TDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosPeriodoConsumo: TFrmDatosPeriodoConsumo;

implementation

{$R *.dfm}

end.
