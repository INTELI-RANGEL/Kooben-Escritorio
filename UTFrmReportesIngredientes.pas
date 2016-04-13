unit UTFrmReportesIngredientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvLabel, StdCtrls, Mask, JvExMask, JvToolEdit,
  JvDBControls, frxClass, AdvGlowButton, ExtCtrls, ClientModuleUnit1,
  UInteliDialog, DB, DBClient, frxDBSet, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils,
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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  DBCtrls, cxCheckComboBox, cxDBCheckComboBox, CheckLst, cxDBEdit;

type
  TFrmReportesIngredientes = class(TForm)
    frxReporte: TfrxReport;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    Panel1: TPanel;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    cdReporte: TClientDataSet;
    frxDSREporte: TfrxDBDataset;
    Desde: TcxDateEdit;
    Hasta: TcxDateEdit;
    JvLabel3: TJvLabel;
    dsEmbarcacion: TDataSource;
    NombreEmbarcacion: TComboBox;
    Corte: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure frxReporteGetValue(const VarName: string; var Value: Variant);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    ModoReporte: Byte;
  end;

var
  FrmReportesIngredientes: TFrmReportesIngredientes;

implementation

{$R *.dfm}

procedure TFrmReportesIngredientes.btnAceptarClick(Sender: TObject);
var
  LocCursor: TCursor;
  pCorte: Integer;
begin
  Try
    LocCursor := Screen.Cursor;;
    Try
      Screen.Cursor := crAppStart;

      dsEmbarcacion.DataSet.RecNo := NombreEmbarcacion.ItemIndex +1;

      if Corte.Checked then
        pCorte := -1
      else
        pCorte := 0;

      if Not CargarDatosFiltrados(cdReporte, 'FechaI,FechaF,IdEmbarcacion,Corte', [ClientModule1.DateToStrSQL(Desde.Date), ClientModule1.DateToStrSQL(Hasta.Date), dsEmbarcacion.DataSet.FieldByName('IdEmbarcacion').AsInteger, pCorte]) then
        raise InteligentException.CreateByCode(6, ['Recetas por Periodo', ClientModule1.DateToStrSQL(Desde.Date) + '/' + ClientModule1.DateToStrSQL(Hasta.Date), 'Fecha Inicial/Fecha Final']);

      if cdReporte.Active then
        cdReporte.Refresh
      else
        cdReporte.Open;
      if cdReporte.RecordCOunt = 0 then
        raise InteligentException.CreateByCode(30, ['Recetas por Periodo']);
    Finally
      Screen.Cursor := LocCursor;
    End;

    case ModoReporte of
      0: ClientModule1.ImprimeReporte('InsumosxPeriodo.fr3', frxReporte);
      1: ClientModule1.ImprimeReporte('TipoInsumosxPeriodo.fr3', frxReporte);
      2: ClientModule1.ImprimeReporte('RecetasxPeriodo.fr3', frxReporte);
      3: ClientModule1.ImprimeReporte('TipoRecetasxPeriodo.fr3', frxReporte);
    end;

    close;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      Desde.SetFocus;
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      close;
    end;
  End;
end;

procedure TFrmReportesIngredientes.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFrmReportesIngredientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EliminarConjunto(cdReporte);
end;

procedure TFrmReportesIngredientes.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  Try
    Try
      Screen.Cursor := crAppStart;

      case ModoReporte of
        0: VerificaPermisos('cmt_insumo', [vpLeer, vpImprimir], EADError);
        1: VerificaPermisos('cmt_tipoinsumo', [vpLeer, vpImprimir], EADError);
        2: VerificaPermisos('cmt_receta', [vpLeer, vpImprimir], EADError);
        3: VerificaPermisos('cmt_tiporeceta', [vpLeer, vpImprimir], EADError);
      end;

      case ModoReporte of
        0: if Not CrearCOnjunto(cdReporte, 'cmt_insumo_periodo', ccCatalog) then
             raise InteligentException.CreateByCode(5, ['Ingredientes por Periodo']);

        1: if Not CrearCOnjunto(cdReporte, 'cmt_tipoinsumo_periodo', ccCatalog) then
             raise InteligentException.CreateByCode(5, ['Tipos de Ingrediente por Periodo']);

        2: if Not CrearCOnjunto(cdReporte, 'cmt_receta_periodo', ccCatalog) then
             raise InteligentException.CreateByCode(5, ['Recetas por Periodo']);

        3: if Not CrearCOnjunto(cdReporte, 'cmt_tiporeceta_periodo', ccCatalog) then
             raise InteligentException.CreateByCode(5, ['Tipos de Receta por Periodo']);
      end;

      VerificaDataSetEmbarcacion;

      Try
        dsEmbarcacion.DataSet.First;
        while Not dsEmbarcacion.DataSet.Eof do
        begin
          NombreEmbarcacion.Items.Add(dsEmbarcacion.DataSet.FieldByName('NombreEmbarcacion').AsString);

          dsEmbarcacion.DataSet.Next;
        end;
      Finally
        dsEmbarcacion.DataSet.First;
        if dsEmbarcacion.DataSet.RecordCount > 0 then
          NombreEmbarcacion.ItemIndex := 0;
      End;

      Desde.Date := Now - 7;
      Hasta.Date := Now;
      Corte.Enabled := ModoReporte in [0, 2];
      Corte.Checked := True;
    Finally
      Screen.Cursor := Cursor;
    End;
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
  End;
end;

procedure TFrmReportesIngredientes.frxReporteGetValue(const VarName: string;
  var Value: Variant);
begin
  Value := '';

  if AnsiCompareText(VarName, 'Desde') = 0 then
    Value := DateToStr(Desde.Date);

  if AnsiCompareText(VarName, 'Hasta') = 0 then
    Value := DateToStr(Hasta.Date);
end;

end.
