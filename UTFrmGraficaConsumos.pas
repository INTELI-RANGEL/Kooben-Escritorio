unit UTFrmGraficaConsumos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  AdvGlowButton, ExtCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  StdCtrls, JvExControls, JvLabel, frxClass, DB, DBClient, frxDBSet,
  ClientModuleUnit1, UInteliDialog;

type
  TFrmGraficaConsumos = class(TForm)
    JvLabel3: TJvLabel;
    NombreEmbarcacion: TComboBox;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    Desde: TcxDateEdit;
    Hasta: TcxDateEdit;
    Panel1: TPanel;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    NombreIngrediente: TComboBox;
    JvLabel4: TJvLabel;
    dsEmbarcacion: TDataSource;
    frxDSGraficaConsumo: TfrxDBDataset;
    cdReporte: TClientDataSet;
    frxReporte: TfrxReport;
    cdInsumo: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGraficaConsumos: TFrmGraficaConsumos;

implementation

{$R *.dfm}

procedure TFrmGraficaConsumos.btnAceptarClick(Sender: TObject);
var
  LocCursor: TCursor;
  pCorte: Integer;
begin
  Try
    LocCursor := Screen.Cursor;;
    Try
      Screen.Cursor := crAppStart;

      dsEmbarcacion.DataSet.RecNo := NombreEmbarcacion.ItemIndex +1;
      cdInsumo.RecNo := NombreIngrediente.ItemIndex +1;

      if Not CargarDatosFiltrados(cdReporte, 'FechaI,FechaF,IdEmbarcacion,IdInsumo', [ClientModule1.DateToStrSQL(Desde.Date), ClientModule1.DateToStrSQL(Hasta.Date), dsEmbarcacion.DataSet.FieldByName('IdEmbarcacion').AsInteger, cdInsumo.FieldByName('IdInsumo').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Recetas por Periodo', ClientModule1.DateToStrSQL(Desde.Date) + '/' + ClientModule1.DateToStrSQL(Hasta.Date), 'Fecha Inicial/Fecha Final']);

      if cdReporte.Active then
        cdReporte.Refresh
      else
        cdReporte.Open;

      if cdReporte.RecordCOunt = 0 then
        raise InteligentException.CreateByCode(30, ['Consumo de Ingredientes']);
    Finally
      Screen.Cursor := LocCursor;
    End;

    ClientModule1.ImprimeReporte('GraficaConsumoInsumo.fr3', frxReporte);

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

procedure TFrmGraficaConsumos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EliminarConjunto([cdInsumo, cdReporte]);
end;

procedure TFrmGraficaConsumos.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  Try
    Try
      Screen.Cursor := crAppStart;

      VerificaPermisos('cmt_registroconsumo', [vpLeer, vpImprimir], EADError);
      VerificaPermisos('cmt_insumo', [vpLeer, vpImprimir], EADError);

      if Not CrearCOnjunto(cdInsumo, 'cmt_insumo', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Ingredientes']);

      if Not CrearCOnjunto(cdReporte, 'cmt_insumo_consumo', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Consumo de Ingredientes']);

      VerificaDataSetEmbarcacion;
      cdInsumo.Open;

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

      Try
        cdInsumo.First;
        while Not cdInsumo.Eof do
        begin
          NombreIngrediente.Items.Add(cdInsumo.FieldByName('NombreInsumo').AsString);

          cdInsumo.Next;
        end;
      Finally
        cdInsumo.First;
        if cdInsumo.RecordCount > 0 then
          NombreIngrediente.ItemIndex := 0;
      End;

      Desde.Date := Now - 7;
      Hasta.Date := Now;
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

end.
