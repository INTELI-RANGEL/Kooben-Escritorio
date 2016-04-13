unit UTFrmIVA;

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
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, DB, cxDBData, dxSkinsdxBarPainter, dxBar, dxRibbon, cxClasses,
  ImgList, dxSkinsForm, JvMemoryDataset, DBClient, ComCtrls, StdCtrls,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, AdvShapeButton, Spin, AdvProgressBar,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, ExtCtrls,
  cxButtons, Buttons, PngSpeedButton, JvExControls, JvLabel, cxGroupBox,
  UTFrmDatosCatalogo, UInteliDialog, frxClass, frxDBSet, ClientModuleUnit1,
  cxCalc;

type
  TFrmIVA = class(TFrmCatalogo)
    frxIVA: TfrxDBDataset;
    frxReporteIVA: TfrxReport;
    FCodigoIVA: TEdit;
    JvLabel1: TJvLabel;
    ColAplicacion: TcxGridDBColumn;
    ColImporte: TcxGridDBColumn;
    ColImpuesto: TcxGridDBColumn;
    ColsNombre: TcxGridDBColumn;
    procedure BtnPrintClick(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure FCodigoIVAKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure inicializar;
    procedure Filtrar;
  public
    ModoSeleccion: Boolean;
  end;

var
  FrmIVA: TFrmIVA;

implementation

Uses
  UTFrmDatosIVA;

{$R *.dfm}

procedure TFrmIVA.BtnPrintClick(Sender: TObject);
var
  Cursor : TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      Reporte := 'Ciudades.fr3';
      CompReporte := FrxReporteIVA;
      CompDataSetReporte := FrxIVA;

      inherited;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e:exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmIVA.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

function TFrmIVA.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosIVA.Create(Self);
end;

procedure TFrmIVA.FCodigoIVAKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmIVA.Filtrar;
Var
  Cuantos: integer;
  Parametros: TParamFilter;
begin
  inherited;
  Parametros := TParamFilter.Create;

  if Trim(FCodigoIVA.Text) <> '' then
    Parametros.Add('CodigoIVA', Trim(FCodigoIVA.Text) + '%');

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;
end;

procedure TFrmIVA.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'IVA';
  inherited;
end;

procedure TFrmIVA.FormShow(Sender: TObject);
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

procedure TFrmIVA.inicializar;
begin
  keyField := 'IdImpuesto';
  entityName := 'nuc_impuesto';
  codeField := 'CodigoImpuesto';
end;

end.
