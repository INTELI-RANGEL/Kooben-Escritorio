unit UTFrmDatosContrato;

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
  DBCtrls, ClientModuleUnit1, JvExMask, JvToolEdit, JvDBControls, JvExControls,
  JvLabel, JvSpin, JvDBSpinEdit, AdvGlowButton;

type
  TFrmDatosContrato = class(TFrmDatosCatalogo)
    CodigoContrato: TDBEdit;
    dsEmbarcacion: TDataSource;
    Referencia: TDBEdit;
    FechaInicio: TJvDBDateEdit;
    FechaTermino: TJvDBDateEdit;
    Personal: TJvDBSpinEdit;
    PersonalMinimo: TJvDBSpinEdit;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    JvLabel8: TJvLabel;
    IdEmbarcacion: TDBLookupComboBox;
    Descripcion: TDBMemo;
    procedure BtnAddNewClick(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosContrato: TFrmDatosContrato;

implementation

{$R *.dfm}

procedure TFrmDatosContrato.BtnAddNewClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(CodigoContrato, 'Código') = False then
    exit;

  if dsDatos.DataSet.FieldByName('IdEmbarcacion').IsNull then
    exit;

  if ClientModule1.VerificaVacio(Personal, 'Ubicación') = False then
    exit;

  inherited;
end;

procedure TFrmDatosContrato.BtnRecClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(CodigoContrato, 'Código') = False then
    exit;

  if dsDatos.DataSet.FieldByName('IdEmbarcacion').IsNull then
    exit;

  if ClientModule1.VerificaVacio(Personal, 'Ubicación') = False then
    exit;

  inherited;
end;

procedure TFrmDatosContrato.FormShow(Sender: TObject);
begin
  inherited;
  if dsDatos.DataSet.State = dsInsert then
  begin
    dsDatos.DataSet.FieldByName('FechaInicio').AsDateTime := Now;
    dsDatos.DataSet.FieldByName('FechaTermino').AsDateTime := Now;
    dsDatos.DataSet.FieldByName('Personal').AsInteger := 50;
    dsDatos.DataSet.FieldByName('PersonalMinimo').AsInteger := 10;
  end;
end;

end.
