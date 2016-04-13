unit UTFrmTiposImpuesto;

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
  frxClass, frxDBSet, UInteliDialog, UtFrmDatosCatalogo, ClientModuleUnit1,
  UTFrmDatosTiposImpuesto;

type
  TFrmTiposImpuesto = class(TFrmCatalogo)
    frxTiposImpuesto: TfrxDBDataset;
    frxReporteTiposImpuesto: TfrxReport;
    FCodigoTipoImpuesto: TEdit;
    ColCodigoTipoImpuesto: TcxGridDBColumn;
    ColTituloTipoImpuesto: TcxGridDBColumn;
    procedure BtnPrintClick(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure FCodigoTipoImpuestoKeyPress(Sender: TObject; var Key: Char);
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
  FrmTiposImpuesto: TFrmTiposImpuesto;

implementation

{$R *.dfm}

procedure TFrmTiposImpuesto.BtnPrintClick(Sender: TObject);
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      Reporte := 'Ciudades.fr3';
      CompReporte := FrxReporteTiposImpuesto;
      CompDataSetReporte := FrxTiposImpuesto;

      inherited;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e:exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmTiposImpuesto.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

function TFrmTiposImpuesto.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosTiposImpuesto.Create(Self);
end;

procedure TFrmTiposImpuesto.FCodigoTipoImpuestoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmTiposImpuesto.Filtrar;
Var
  Cuantos: integer;
  Parametros: TParamFilter;
begin
  inherited;
  Parametros := TParamFilter.Create;

  if Trim(FCodigoTipoImpuesto.Text) <> '' then
    Parametros.Add('titulopais', Trim(FCodigoTipoImpuesto.Text) + '%');

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;
end;

procedure TFrmTiposImpuesto.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'TIPOS DE IMPUESTO';
  inherited;
end;

procedure TFrmTiposImpuesto.FormShow(Sender: TObject);
begin
  Try
    inherited;
    if ModoSeleccion = True then
      BtnSelect.Visible := True;
    inicializar;
    abrir;
  Except
    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmTiposImpuesto.inicializar;
begin
  keyField := 'IdTipoImpuesto';
  entityName := 'nuc_tipoimpuesto';
  codeField := 'CodigoTipoImpuesto';
end;

end.
