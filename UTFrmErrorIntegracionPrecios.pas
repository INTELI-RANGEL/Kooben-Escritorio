unit UTFrmErrorIntegracionPrecios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, StdCtrls, cxButtons, dxGDIPlusClasses, ExtCtrls,
  AdvGlowButton;

type
  TFrmErrorIntegracionPrecios = class(TForm)
    Panel9: TPanel;
    Label1: TLabel;
    Panel5: TPanel;
    Label2: TLabel;
    AdvGlowButton4: TAdvGlowButton;
    Panel6: TPanel;
    Memo1: TMemo;
    Panel1: TPanel;
    Image1: TImage;
    Label3: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Btn_Omitir: TcxButton;
    Btn_Reintentar: TcxButton;
    Btn_Abortar: TcxButton;
    Panel4: TPanel;
    cbRespuesta: TCheckBox;
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Btn_ReintentarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmErrorIntegracionPrecios: TFrmErrorIntegracionPrecios;

implementation

{$R *.dfm}

procedure TFrmErrorIntegracionPrecios.Btn_ReintentarClick(Sender: TObject);
begin
  cbRespuesta.Checked := False;
end;

procedure TFrmErrorIntegracionPrecios.Image1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(Self.Handle, WM_SYSCOMMAND, 61458, 0);
end;

end.
