unit UTFrmContratos;

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
  UTFrmDatosCatalogo, ClientModuleUnit1, URegistro, UInteliDialog, cxCalendar;

type
  TFrmContratos = class(TFrmCatalogo)
    edtFContrato: TEdit;
    JvLabel1: TJvLabel;
    NombreEmbarcacion: TcxGridDBColumn;
    CodigoContrato: TcxGridDBColumn;
    Referencia: TcxGridDBColumn;
    FechaInicio: TcxGridDBColumn;
    FechaTermino: TcxGridDBColumn;
    Personal: TcxGridDBColumn;
    PersonalMinimo: TcxGridDBColumn;
    procedure BtnSearchClick(Sender: TObject);
    procedure edtFContratoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    function createPopUp: TFrmDatosCatalogo; override;
    procedure Filtrar;
    procedure Inicializar;
  public
    { Public declarations }
  end;

var
  FrmContratos: TFrmContratos;

implementation

{$R *.dfm}

uses
  UTFrmDatosContrato;

procedure TFrmContratos.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

function TFrmContratos.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosContrato.Create(Self);
end;

procedure TFrmContratos.edtFContratoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    Filtrar;
end;

procedure TFrmContratos.Filtrar;
Var
  Cuantos: integer;
  Parametros: TParamFilter;
begin
  inherited;
  Parametros := TParamFilter.Create;

  Parametros.Add('Activo', 'Si');

  if Trim(edtFContrato.Text) <> '' then
    Parametros.Add('DescripcionContrato', Trim(edtFContrato.Text) + '%');

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;
end;

procedure TFrmContratos.FormClose(Sender: TObject; var Action: TCloseAction);
Var
  i: Integer;
begin
  for i:= 0 to cxDbGridDatos.ColumnCount -1 do
    SetRegistry('\Ventanas', '\' + self.Name + '\cxDbGridDatos', 'Column' + IntToStr(i), IntToStr(cxDbGridDatos.Columns[i].Width));

  inherited;
end;

procedure TFrmContratos.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'CONTRATOS';
  inherited;
end;

procedure TFrmContratos.FormShow(Sender: TObject);
var
  i: Integer;
begin
  Try
    inherited;
    for i:= 0 to CxDbGridDatos.ColumnCount -1 do
      try
        CxDbGridDatos.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + self.Name + '\CxDbGridDatos', 'Column'+ IntToStr(i)));
      except
        ;
      end;

    VerificaDataSetEmbarcacion;
    if ModoSeleccion = True then
      BtnSelect.Visible := True;
    inicializar;
    abrir;

    CxDbGridDatos.ViewData.Expand(True);
  Except
    ;
  End;
end;

procedure TFrmContratos.Inicializar;
begin
  keyField := 'IdContrato';
  entityName := 'cmt_contrato';
  codeField := 'CodigoContrato';
end;

end.
