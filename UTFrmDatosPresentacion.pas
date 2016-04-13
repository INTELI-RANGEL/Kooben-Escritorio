unit UTFrmDatosPresentacion;

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
  AppEvnts, ExtCtrls, DB, DBClient, StdCtrls, cxButtons, cxGroupBox,
  JvExControls, JvLabel, Mask, DBCtrls, UInteliDialog, ClientModuleUnit1,
  AdvGlowButton, StrUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc,
  cxDBEdit, cxCheckBox;

type
  TFrmDatosPresentacion = class(TFrmDatosCatalogo)
    JvLabel2: TJvLabel;
    CodigoPresentacion: TDBEdit;
    PanelTitulo: TPanel;
    Panel5: TPanel;
    JvLabel1: TJvLabel;
    PanelCodigo: TPanel;
    TituloPresentacion: TDBEdit;
    pnlMedida: TPanel;
    Panel2: TPanel;
    JvLabel3: TJvLabel;
    iIdUnidad: TDBLookupComboBox;
    pnlCantidad: TPanel;
    JvLabel4: TJvLabel;
    Cantidad: TcxDBCalcEdit;
    dsUnidades: TDataSource;
    pnlFraccion: TPanel;
    Panel1: TPanel;
    Fraccion: TcxDBCheckBox;
    lblLeyendaFraccion: TJvLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FraccionPropertiesChange(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosPresentacion: TFrmDatosPresentacion;

implementation

{$R *.dfm}

procedure TFrmDatosPresentacion.BtnAddNewClick(Sender: TObject);
begin
  inherited;
  if dsDatos.DataSet.State = dsInsert then
    dsDatos.DataSet.FieldByName('Fraccion').AsString := 'No';
end;

procedure TFrmDatosPresentacion.FormCreate(Sender: TObject);
begin
  try
    inherited;
    VerificaDataSetUnidades;
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
  end;
end;

procedure TFrmDatosPresentacion.FormShow(Sender: TObject);
begin
  inherited;
  if dsDatos.DataSet.State = dsInsert then
    dsDatos.DataSet.FieldByName('Fraccion').AsString := 'No';
end;

procedure TFrmDatosPresentacion.FraccionPropertiesChange(Sender: TObject);
begin
  inherited;
  if Fraccion.Checked then
    lblLeyendaFraccion.Caption := 'Las cantidades para esta Presentación podrán ser divididas en fracciones'
  else
    lblLeyendaFraccion.Caption := 'Ajustar a Presentación completa';
end;

end.
