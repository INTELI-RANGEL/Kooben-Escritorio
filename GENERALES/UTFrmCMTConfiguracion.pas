unit UTFrmCMTConfiguracion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer,
  dxLayoutControl, cxPC, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxGroupBox, cxRadioGroup, Menus,
  StdCtrls, cxButtons, ExtCtrls, CLientModuleUnit1, UInteliDialog, DB, DBClient,
  cxListBox, dxSkinsdxBarPainter, dxBar, cxClasses, strUtils;

type
  TFrmCMTConfiguracion = class(TForm)
    CxPageConfig: TcxPageControl;
    cxPage1: TcxTabSheet;
    DxLayoutLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    rgDesde: TcxRadioGroup;
    dxlytmLayoutControl1Item1: TdxLayoutItem;
    rgHasta: TcxRadioGroup;
    dxlytmLayoutControl1Item11: TdxLayoutItem;
    cxCbbSemanas: TcxComboBox;
    dxlytmLayoutControl1Item12: TdxLayoutItem;
    pnl1: TPanel;
    cxbtnGuardar: TcxButton;
    cxbtnCancelar: TcxButton;
    cdConfiguracion: TClientDataSet;
    DxManager1: TdxBarManager;
    dxbrDxManager1Bar1: TdxBar;
    dxBtnNuevo: TdxBarLargeButton;
    dxBtnEditar: TdxBarLargeButton;
    dxBtnEliminar: TdxBarLargeButton;
    dxBtnSalir: TdxBarLargeButton;
    dxBtnGuardar: TdxBarLargeButton;
    procedure FormShow(Sender: TObject);
    procedure rgDesdePropertiesChange(Sender: TObject);
    procedure rgHastaPropertiesChange(Sender: TObject);
    procedure dxBtnSalirClick(Sender: TObject);
    procedure cxbtnCancelarClick(Sender: TObject);
    procedure dxBtnGuardarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    YaModificado: Boolean;
    AutoChange: Boolean;
    Procedure HabilitaComponentes(Estado: Boolean);
    Procedure creaConjuntoFechas(var DataSet: TClientDataset);
    Procedure LlenarLista(Dataset: TClientDataset; Lista: TcxListBox);
    Function VerificaItemIndex(Radio1, Radio2: TcxRadioGroup): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

const
  bModo:Array[False..True] of TdxBarItemVisible = (ivNever, ivAlways);

var
  FrmCMTConfiguracion: TFrmCMTConfiguracion;

implementation

uses
  Unit2;
{$R *.dfm}

procedure TFrmCMTConfiguracion.creaConjuntoFechas(var DataSet: TClientDataset);
begin
  if Dataset.ProviderName = '' then
    if not CrearConjunto(Dataset, 'cmt_configuracion', CCUpdate) then
      raise InteligentException.CreateByCode(5, ['Configuración']);

  if not CargarDatosFiltrados(Dataset,'TodasFechas', ['Si']) then
    raise inteligentException.CreateByCode(6, ['nuc_configuracion', 'Si', 'TodasFechas']);

  if Dataset.Active then
    Dataset.Refresh
  else
    Dataset.Open;
end;

procedure TFrmCMTConfiguracion.cxbtnCancelarClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmCMTConfiguracion.dxBtnGuardarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    if cdConfiguracion.Active and (cdConfiguracion.State in [dsEdit, dsInsert]) then
    try
      Screen.Cursor := CrAppStart;

      If VerificaItemIndex(rgDesde, rgHasta) then
        raise inteligentException.CreateByCode(24, ['Los dias seleccionados no pueden ser iguales.']);

      with cdConfiguracion do
      begin
        FieldByName('IdConfiguracion').AsInteger := 0;
        FieldByName('Desde').AsString := rgDesde.Properties.Items.Items[rgDesde.ItemIndex].Value;
        FieldByName('Hasta').AsString := rgHasta.Properties.Items.Items[rgHasta.ItemIndex].Value;
        FieldByName('Semanas').AsInteger := cxCbbSemanas.ItemIndex + 1;
        Post;
        ApplyUpdates(-1);

      end;
      FormShow(Self);

      if assigned(Form2) then
          Form2.dxalert.Show('Aviso', 'La configuración para el periodo de consumo se ha guardado correctamente.');

      //Close;
    finally
      Screen.cursor := CrAppStart;
    end;
  Except
    on e: inteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmCMTConfiguracion.dxBtnSalirClick(Sender: TObject);
begin
  close;
end;

procedure TFrmCMTConfiguracion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EliminarConjunto(cdConfiguracion);
end;

procedure TFrmCMTConfiguracion.FormShow(Sender: TObject);
var
  Cursor: TCursor;
  LocFechaActual, Source: String;
  cdFechas: TClientDataset;
begin
  cxCbbSemanas.ItemIndex := 0;
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := CrAppStart;

      VerificaPermisos('cmt_configuracion', [vpLeer], EADError);

      YaModificado := False;
      AutoChange := False;

      if not CrearConjunto(cdCOnfiguracion, 'cmt_configuracion', ccUpdate) then
        raise inteligentException.CreateByCode(5, ['Configuración']);

      cdConfiguracion.Open;

      cxPageConfig.Visible := cdConfiguracion.RecordCount > 0;
      if cdConfiguracion.RecordCount = 0 then
      begin
        CxPageConfig.Visible := True;
        HabilitaComponentes(True);
        cdConfiguracion.Append;
      end
      else
      begin
        HabilitaComponentes(True);
        cdConfiguracion.Edit;
      end;

      //Cargar los valores de la config
      if cdConfiguracion.RecordCount > 0 then
      begin
        Source := cdConfiguracion.FieldByName('Desde').AsString;
        rgDesde.ItemIndex := AnsiIndexStr(Source, ['1', '2', '3', '4', '5', '6', '7']);
        Source := cdConfiguracion.FieldByName('hasta').AsString;
        rgHasta.ItemIndex := AnsiIndexStr(Source, ['1', '2', '3', '4', '5', '6', '7']);
        Source := cdConfiguracion.FieldByName('Semanas').AsString;
        cxCbbSemanas.ItemIndex := AnsiIndexStr(Source, ['1', '2', '3', '4', '5'])
      end;
    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e:inteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmCMTConfiguracion.HabilitaComponentes(Estado: Boolean);
begin
  rgDesde.Enabled := Estado;
  rgHasta.Enabled := Estado;
  cxCbbSemanas.Enabled := Estado;
end;

procedure TFrmCMTConfiguracion.LlenarLista(Dataset: TClientDataset;
  Lista: TcxListBox);
begin
  if Dataset.Active and (Dataset.RecordCount > 0) then
  begin
    lista.Clear;
    Dataset.First;
    while not Dataset.Eof do
    begin
      lista.Items.Add(Dataset.FieldByName('Aplicacion').AsString);
      Dataset.Next;
    end;
  end;
end;

procedure TFrmCMTConfiguracion.rgDesdePropertiesChange(Sender: TObject);
var
  OldPosicion: Integer;
begin
  Try
    Try
      AutoChange := True;
      OldPosicion := 0;
      if Not YaModificado then
      begin
        OldPosicion := rgDesde.ItemIndex-1;
        if (rgDesde.ItemIndex + 6) <= (rgDesde.Properties.Items.Count -1) then
          RgHasta.ItemIndex := rgDesde.ItemIndex + 6
        else
          RgHasta.ItemIndex := rgDesde.ItemIndex-1;
      end;

      if VerificaItemIndex(rgDesde, rgHasta) then
      begin
        rgDesde.ItemIndex := OldPosicion;
        raise inteligentException.CreateByCode(24,['El dia seleccionado no puede ser el mismo.'])
      end;
    Finally
      AutoChange := False;
    End;
  Except
    on e: InteligentException do
    begin
      InteliDialog.ShowModal(E.Title, e.Message, e.msgtype, [mbOK] ,0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmCMTConfiguracion.rgHastaPropertiesChange(Sender: TObject);
var
  OldPosicion: integer;
begin
  Try
    if not AutoChange then
      YaModificado := True;

    OldPosicion := rgHasta.ItemIndex-1;
    if VerificaItemIndex(rgDesde, rgHasta) then
    begin
      rgHasta.ItemIndex := OldPosicion;
      raise inteligentException.CreateByCode(24,['El dia seleccionado no puede ser el mismo.'])
    end;
  Except
    on e: inteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  End;
end;

function TFrmCMTConfiguracion.VerificaItemIndex(Radio1,
  Radio2: TcxRadioGroup): Boolean;
begin
  Result := False;
  if Radio1.ItemIndex = Radio2.ItemIndex then
    Result := True;
end;

end.
