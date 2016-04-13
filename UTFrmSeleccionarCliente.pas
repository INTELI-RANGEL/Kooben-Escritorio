unit UTFrmSeleccionarCliente;

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
  cxNavigator, DB, cxDBData, ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ClientModuleUnit1, URegistro, UInteliDialog, AdvGlowButton, StdCtrls,
  JvExControls, JvLabel;

type
  TFrmSeleccionarCliente = class(TForm)
    tvClientes: TcxGridDBTableView;
    GridClientesLevel1: TcxGridLevel;
    GridClientes: TcxGrid;
    Panel1: TPanel;
    ColsNombreCorto: TcxGridDBColumn;
    ColsRazonSocial: TcxGridDBColumn;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    Panel2: TPanel;
    lblEncabezado: TJvLabel;
    CheckBox1: TCheckBox;
    GridClientesLevel2: TcxGridLevel;
    tvClientes2: TcxGridDBTableView;
    ColTituloPais: TcxGridDBColumn;
    ColTituloEstado: TcxGridDBColumn;
    ColTituloCiudad: TcxGridDBColumn;
    ColsNombreCorto2: TcxGridDBColumn;
    ColsRazonSocial2: TcxGridDBColumn;
    procedure CheckBox1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tvClientesCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tvClientes2CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    pTexto: String;
  end;

var
  FrmSeleccionarCliente: TFrmSeleccionarCliente;

implementation

{$R *.dfm}

procedure TFrmSeleccionarCliente.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
    GridClientesLevel1.GridView:= tvClientes2
  else
    GridClientesLevel1.GridView:= tvClientes;

  tvClientes2.DataController.Groups.FullExpand;
end;

procedure TFrmSeleccionarCliente.FormShow(Sender: TObject);
begin
  lblEncabezado.Caption := 'Existen ' + IntToStr(tvClientes.DataController.DataSource.DataSet.RecordCount) + ' Clientes que coinsiden con el texto "' + pTexto + '"';
end;

procedure TFrmSeleccionarCliente.tvClientes2CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnAceptar.Click;
end;

procedure TFrmSeleccionarCliente.tvClientesCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnAceptar.Click;
end;

end.
