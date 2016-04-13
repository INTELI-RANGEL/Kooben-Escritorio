unit UTFrmAlmacenes;

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
  UInteliDialog, frxClass, frxDBSet, UTFrmDatosCatalogo, UTFrmDatosAlmacen;

type
  TFrmAlmacenes = class(TFrmCatalogo)
    frxReporteAlmacenes: TfrxReport;
    frxAlmacenes: TfrxDBDataset;
    FCodigoAlmacen: TEdit;
    JvLabel1: TJvLabel;
    ColCodigoAlmacen: TcxGridDBColumn;
    ColNombreAlmacen: TcxGridDBColumn;
    ColTituloCiudad: TcxGridDBColumn;
    ColTituloEstado: TcxGridDBColumn;
    ColTituloPais: TcxGridDBColumn;
    cdCiudad: TClientDataSet;
    cdEstado: TClientDataSet;
    cdPais: TClientDataSet;
    procedure BtnPrintClick(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure FCodigoAlmacenKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
  private
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure inicializar;
    procedure Filtrar;
  public
    ModoSeleccion: Boolean;
  end;

var
  FrmAlmacenes: TFrmAlmacenes;

implementation

uses ClientModuleUnit1, Unit2;

{$R *.dfm}

procedure TFrmAlmacenes.BtnDeleteClick(Sender: TObject);
begin
  try
    EliminarRegistro(cdDatos, [cdDatos.FieldByName('IdAlmacen').AsInteger]);
    cdDatos.Refresh;
  except
    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmAlmacenes.BtnPrintClick(Sender: TObject);
var
  Cursor : TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      Reporte := 'Ciudades.fr3';
      CompReporte := FrxReporteAlmacenes;
      CompDataSetReporte := FrxAlmacenes;

      inherited;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e:exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmAlmacenes.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

function TFrmAlmacenes.createPopUp: TFrmDatosCatalogo;
var
  Paso: TFrmDatosCatalogo;
begin
  if cdPais.ProviderName = '' then
    if Not CrearConjunto(cdPais, 'nuc_pais', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Paises']);

  if cdEstado.ProviderName = '' then
    if Not CrearConjunto(cdEstado, 'nuc_estado', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Estados']);

  if cdCiudad.ProviderName = '' then
    if Not CrearConjunto(cdCiudad, 'nuc_ciudad', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Ciudades']);

  if Not cdPais.Active then
    cdpais.Open;

  Paso := TFrmDatosAlmacen.Create(Self);
  TFrmDatosAlmacen(Paso).dsPais.DataSet := cdPais;
  TFrmDatosAlmacen(Paso).dsEstado.DataSet := cdEstado;
  TFrmDatosAlmacen(Paso).dsCiudad.DataSet := cdCiudad;
  Result := Paso;
end;

procedure TFrmAlmacenes.FCodigoAlmacenKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmAlmacenes.Filtrar;
Var
  Cuantos: integer;
  Parametros: TParamFilter;
begin
  inherited;
  Parametros := TParamFilter.Create;

  if Trim(FCodigoAlmacen.Text) <> '' then
    Parametros.Add('CodigoAlmacen', Trim(FCodigoAlmacen.Text) + '%');

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;
end;

procedure TFrmAlmacenes.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'ALMACENES';
  inherited;
end;

procedure TFrmAlmacenes.FormShow(Sender: TObject);
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

procedure TFrmAlmacenes.inicializar;
begin
  keyField := 'IdAlmacen';
  entityName := 'cmt_almacen';
  codeField := 'CodigoAlmacen';
end;

end.
