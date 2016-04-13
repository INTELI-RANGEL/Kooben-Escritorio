unit UTFrmSelInsumo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, AdvGlowButton, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  StdCtrls, JvExControls, JvLabel, ExtCtrls;

type
  TFrmSelInsumo = class(TForm)
    pnlCabecera: TPanel;
    lblEncabezado: TJvLabel;
    CheckBox1: TCheckBox;
    GridClientes: TcxGrid;
    tvInsumos: TcxGridDBTableView;
    ColNombreTipoInsumo: TcxGridDBColumn;
    ColNombreInsumo: TcxGridDBColumn;
    tvInsumos2: TcxGridDBTableView;
    ColNombreTipoInsumo2: TcxGridDBColumn;
    ColNombreInsumo2: TcxGridDBColumn;
    GridClientesLevel1: TcxGridLevel;
    GridClientesLevel2: TcxGridLevel;
    pnlPies: TPanel;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    procedure CheckBox1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tvInsumosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tvInsumos2CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    pTexto: String;
  end;

var
  FrmSelInsumo: TFrmSelInsumo;

implementation

{$R *.dfm}

procedure TFrmSelInsumo.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
    GridClientesLevel1.GridView:= tvInsumos2
  else
    GridClientesLevel1.GridView:= tvInsumos;

  tvInsumos2.DataController.Groups.FullExpand;
end;

procedure TFrmSelInsumo.FormShow(Sender: TObject);
begin
  lblEncabezado.Caption := 'Existen ' + IntToStr(tvInsumos.DataController.DataSource.DataSet.RecordCount) + ' Insumos que coinsiden con el texto "' + pTexto + '"';
end;

procedure TFrmSelInsumo.tvInsumos2CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnAceptar.Click;
end;

procedure TFrmSelInsumo.tvInsumosCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnAceptar.Click;
end;

end.
