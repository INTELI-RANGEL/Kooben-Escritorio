unit UTFrmConversionDatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, URegistro, UInteliDialog, DBCtrls, ExtCtrls, AdvGlowButton,
  DBClient, NxEdit, JvExControls, JvLabel, StdCtrls, Mask, ClientModuleUnit1,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDBEdit, cxLabel;

type
  TEdicion = Class
    IdSource: LongInt;
    IdTarget: LongInt;
    IdInsumo: Variant;
  End;

  TFrmConversionDatos = class(TForm)
    dsUnidad: TDataSource;
    dsConversionUpt: TDataSource;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    cdUnidadLista: TClientDataSet;
    dsUnidadLista: TDataSource;
    Panel1: TPanel;
    DBEdit1: TDBEdit;
    JvLabel1: TJvLabel;
    DBEdit2: TDBEdit;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    DBEdit3: TDBEdit;
    Panel2: TPanel;
    JvLabel9: TJvLabel;
    Panel3: TPanel;
    JvLabel5: TJvLabel;
    Valor: TcxDBMaskEdit;
    JvLabel8: TJvLabel;
    JvLabel4: TJvLabel;
    sNombre: TDBEdit;
    sCodigo_t: TDBEdit;
    JvLabel3: TJvLabel;
    JvLabel2: TJvLabel;
    iIdUnidad_t: TDBLookupComboBox;
    Panel4: TPanel;
    Panel5: TPanel;
    cbExclusivo: TCheckBox;
    Panel6: TPanel;
    IdInsumo: TDBLookupComboBox;
    dsInsumo: TDataSource;
    cdConversiones: TClientDataSet;
    lblConversion: TMemo;
    cdUnidad: TClientDataSet;
    Operador: TDBComboBox;
    cdBuscar: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure OperadorChange(Sender: TObject);
    procedure cdUnidadListaAfterScroll(DataSet: TDataSet);
    procedure btnCancelarClick(Sender: TObject);
    procedure cbExclusivoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    Resultado: TModalResult;
    ValEdicion: TEdicion;
  public
    idUnidad : integer;
  end;

var
  FrmConversionDatos: TFrmConversionDatos;

implementation

{$R *.dfm}

procedure TFrmConversionDatos.btnAceptarClick(Sender: TObject);
var
  Cursor: TCursor;
  piIdUnidad_s, piIdUnidad_t: Integer;
  pIdInsumo: Variant;
  pOperador: String;
  pValor: Real;
  pCadena: String;
  pValores: Array of Variant;
  Cuenta: Integer;
  CadenaMensaje: String;
begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      if (dsConversionUpt.DataSet.State = dsInsert) or ((ValEdicion.IdSource <> dsConversionUpt.DataSet.FieldByName('iIdUnidad_s').AsInteger) or (ValEdicion.IdTarget <> dsConversionUpt.DataSet.FieldByName('iIdUnidad_t').AsInteger) or (ValEdicion.IdInsumo = dsConversionUpt.DataSet.FieldByName('iIdUnidad_s').AsVariant)) then
      begin
        // Verificar si existe la convinación indicada
        pCadena := 'iIdUnidad_s,iIdUnidad_t,IdInsumo';
        SetLength(pValores, 3);
        pValores[0] := dsConversionUpt.DataSet.FieldByName('iIdUnidad_s').AsInteger;
        pValores[1] := dsConversionUpt.DataSet.FieldByName('iIdUnidad_t').AsInteger;
        if (cbExclusivo.Checked) and (Not dsConversionUpt.DataSet.FieldByName('IdInsumo').IsNull) then
        begin
          pValores[2] := dsInsumo.DataSet.FieldByName('IdInsumo').AsInteger;
          CadenaMensaje := ' exclusivo para el ingrediente: ' + dsInsumo.DataSet.FieldByName('NombreInsumo').AsString + ',';
        end
        else
        begin
          pValores[2] := 'Nulo';
          CadenaMensaje := ' para todos los ingredientes,';
        end;

        if cdBuscar.ProviderName = '' then
          if Not CrearConjunto(cdBuscar, 'cmt_conversion', ccUpdate) then
            raise InteligentException.CreateByCode(5, ['Conversiones de Unidad de Medida']);

        if Not CargarDatosFiltrados(cdBuscar, pCadena, pValores) then
          raise InteligentException.CreateByCode(16, ['Conversion de Unidad de Medida']);

        if CuantosRegistros(cdBuscar) > 0 then
          raise InteligentException.CreateByCode(17, ['Conversion de Unidades de Medida', cdUnidad.FieldByName('sNombre').AsString + ' -> ' + cdUnidadLista.FieldByName('sNombre').AsString + CadenaMensaje]);
      end;

      if Not cbExclusivo.Checked then
        dsConversionUpt.DataSet.FieldByName('IdInsumo').Clear;

      dsConversionUpt.DataSet.Post;
      TClientDataSet(dsConversionUpt.DataSet).ApplyUpdates(-1);
    Finally
      Screen.Cursor := Cursor;
    End;

    Resultado := mrOk;
    Close;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      iIdUnidad_t.SetFocus;
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      dsConversionUpt.DataSet.Cancel;
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmConversionDatos.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmConversionDatos.cbExclusivoClick(Sender: TObject);
begin
  IdInsumo.Enabled := cbExclusivo.Checked;
end;

procedure TFrmConversionDatos.cdUnidadListaAfterScroll(DataSet: TDataSet);
begin
  OperadorChange(Self);
end;

procedure TFrmConversionDatos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsConversionUpt.DataSet.Cancel;

  EliminarConjunto([cdConversiones, cdUnidadLista, cdUnidad, cdBuscar]);

  Try
    SetRegistry('\Ventanas', '\' + self.Name, 'Width', IntToStr(Self.Width));
    SetRegistry('\Ventanas', '\' + self.Name, 'Height', IntToStr(Self.Height));
    SetRegistry('\Ventanas', '\' + self.Name, 'Top', IntToStr(Self.Top));
    SetRegistry('\Ventanas', '\' + self.Name, 'Left', IntToStr(Self.Left));
  Finally
    ModalResult := Resultado;
    Action := caFree;
  End;
end;

procedure TFrmConversionDatos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    27: if Shift = [] then
          Close;
  end;
end;

procedure TFrmConversionDatos.FormShow(Sender: TObject);
var
  Cursor: TCursor;
  filtrar_por : string;
begin
  Resultado := mrCancel;

  Cursor := Screen.Cursor;
  Try
    Screen.Cursor := crAppStart;
    Try

      //Mostrando el ingrediente que vamos a editar
      if Not CrearConjunto(cdUnidad, 'nuc_unidades', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Unidades de Medida']);

      if Not CargarDatosFiltrados(cdUnidad, 'iIdUnidad', [idUnidad]) then
        raise InteligentException.CreateByCode(16, ['Unidades de Medida']);

      if cdUnidad.Active then
        cdUnidad.Refresh
      else
        cdUnidad.Open;

      //Gustavo: Quitando del comboBox al ingrediente que va a tener sus conversiones.
      if Not CrearConjunto(cdUnidadLista, 'nuc_unidades', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Unidades de Medida']);

      //Buscando las conversiones que ya tiene este ingrediente para quitarlos del comboBox
      if Not CrearConjunto(cdConversiones, 'cmt_conversion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Conversiones de Unidad de Medida']);

      if Not CargarDatosFiltrados(cdConversiones, 'iIdUnidad_s', [idUnidad]) then
        raise InteligentException.CreateByCode(16, ['iIdUnidad_s']);

      if cdConversiones.Active then
        cdConversiones.Refresh
      else
        cdConversiones.Open;

      cdUnidadLista.Open;

      ValEdicion := TEdicion.Create;

      if dsConversionUpt.State = dsEdit then
      begin
        ValEdicion.IdSource := dsConversionUpt.DataSet.FieldByName('iIdUnidad_s').AsInteger;
        ValEdicion.IdTarget := dsConversionUpt.DataSet.FieldByName('iIdUnidad_t').AsInteger;
        ValEdicion.IdInsumo := dsConversionUpt.DataSet.FieldByName('IdInsumo').AsVariant;
      end
      else
        Operador.ItemIndex := 0;

      cbExclusivo.Checked := Not dsConversionUpt.DataSet.FieldByName('IdInsumo').IsNull;

      OperadorChange(Self);
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

procedure TFrmConversionDatos.OperadorChange(Sender: TObject);
var
  SubCad: String;
begin
  if (cdUnidad.Active) and (Assigned(dsUnidadLista.DataSet)) and (dsUnidadLista.DataSet.Active)then
  begin
    if Operador.ItemIndex = 0 then
      SubCad := 'Multiplicar la Unidad de Medida ' + cdUnidad.FieldByName('sNombre').AsString + ' por '
    else
      SubCad := 'Dividir la Unidad de Medida ' + cdUnidad.FieldByName('sNombre').AsString + ' entre ';

    lblConversion.Text := SubCad + Valor.Text + ' para obtener ' + cdUnidadLista.FieldByName('sNombre').AsString;
  end;
end;

end.
