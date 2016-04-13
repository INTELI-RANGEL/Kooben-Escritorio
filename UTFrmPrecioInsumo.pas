unit UTFrmPrecioInsumo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, JvExControls, JvLabel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxTextEdit, cxCurrencyEdit, ExtCtrls, AdvGlowButton, DBClient,
  ClientModuleUnit1, UControlExcepciones, UInteliDialog, Mask, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TFrmPrecioInsumo = class(TForm)
    dsInsumo: TDataSource;
    gbDatosInsumo: TGroupBox;
    JvLabel3: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel1: TJvLabel;
    CodigoInsumo: TDBText;
    NombreInsumo: TDBText;
    NombreTipoInsumo: TDBText;
    pnlBotones: TPanel;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    cdInsumoPrecio: TClientDataSet;
    dsInsumoPrecio: TDataSource;
    cdAplicacion: TClientDataSet;
    dsMarcaxInsumo: TDataSource;
    dsPresentacionxInsumo: TDataSource;
    GroupBox1: TGroupBox;
    JvLabel10: TJvLabel;
    JvLabel8: TJvLabel;
    IdMarca: TDBLookupComboBox;
    JvLabel9: TJvLabel;
    IdPresentacion: TDBLookupComboBox;
    JvLabel4: TJvLabel;
    PrecioCompra: TcxDBCurrencyEdit;
    JvLabel5: TJvLabel;
    PrecioVenta: TcxDBCurrencyEdit;
    Aplicacion: TcxDBDateEdit;
    JvLabel6: TJvLabel;
    dsProveedorxInsumo: TDataSource;
    dsUnidades: TDataSource;
    dsPresentacionxUnidad: TDataSource;
    cdSKU: TClientDataSet;
    cdRegistroSKU: TClientDataSet;
    IdEmpresa: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FormResultado: TModalResult;
  public
    IdInsumoPrecio: Integer;
  end;

var
  FrmPrecioInsumo: TFrmPrecioInsumo;

implementation

{$R *.dfm}

function Alfanumerico(Valor: Integer): String;
const
  Alfa: Array[0..35] of String = ('0', '1', '2', '3', '4', '5', '6', '7', '8',
                                  '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H',
                                  'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q',
                                  'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
var
  Entero, Resto: Integer;
  Resultado: String;
begin
  Entero := Valor Div 36;
  Resto := Valor Mod 36;

  if Entero > 35 then
    Resultado := Alfanumerico(Entero)
  else
    Resultado := Alfa[Entero];

  Result := Resultado + Alfa[Resto];
end;

procedure TFrmPrecioInsumo.btnAceptarClick(Sender: TObject);
var
  Cursor: TCursor;
  Prefijo: String;
begin
  Try
    FormResultado := mrCancel;
    Cursor := Screen.Cursor;

    Try
      Screen.Cursor := crAppStart;

      if cdInsumoPrecio.FieldByName('iIdEmpresa').IsNull then
      begin
        IdEmpresa.SetFocus;
        raise InteligentWarning.CreateByCode(8, ['Debe seleccionar un Proveedor']);
      end;

      if cdInsumoPrecio.FieldByName('IdPresentacion').IsNull then
      begin
        IdPresentacion.SetFocus;
        raise InteligentWarning.CreateByCode(8, ['Debe seleccionar una Presentación']);
      end;

      if PrecioCompra.Value = 0 then
      begin
        PrecioCompra.SetFocus;
        raise InteligentWarning.CreateByCode(8, ['Debe introducir el precio de Compra']);
      end;

      if PrecioVenta.Value = 0 then
      begin
        PrecioVenta.SetFocus;
        raise InteligentWarning.CreateByCode(8, ['Debe introducir el precio de Venta']);
      end;

      if cdInsumoPrecio.State = dsInsert then
      begin
        // Verificar si el registro se estuviera duplicando
        if Not CargarDatosFiltrados(cdInsumoPrecio, 'IdInsumo,IdEmpresa,IdMarca,IdPresentacion,Aplicacion', [cdInsumoPrecio.FieldByName('IdInsumo').AsInteger, cdInsumoPrecio.FieldByName('iIdEmpresa').AsInteger, cdInsumoPrecio.FieldByName('IdMarca').AsInteger, cdInsumoPrecio.FieldByName('IdPresentacion').AsInteger, ClientModule1.DatetoStrSql(cdInsumoPrecio.FieldByName('Aplicacion').AsDateTime)]) then
          raise InteligentWarning.CreateByCode(16, ['Código SKU']);

        if CuantosRegistros(cdInsumoPrecio) > 0 then
        begin
          IdEmpresa.SetFocus;
          raise InteligentWarning.CreateByCode(29, [#10 + #10 + 'Ya se ha registrado un precio para:' + #10 +
                                                    'Insumo: ' + NombreInsumo.Caption + #10 +
                                                    'Proveedor: ' + IdEmpresa.Text + #10 +
                                                    'Marca: ' + IdMarca.Text + #10 +
                                                    'Presentación: ' + IdPresentacion.Text + #10 + #10 +
                                                    'Verifique esto e intente de nuevo.']);
        end;
      end;

      if cdRegistroSKU.ProviderName = '' then
      begin
        if Not CrearConjunto(cdRegistroSKU, 'cmt_insumosku', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Códigos SKU']);
      end;

      // Verificar si ya existe el registro que se está tratando de dar de alta
      if Not CargarDatosFiltrados(cdRegistroSKU, 'IdInsumo,IdEmpresa,IdMarca,IdPresentacion', [cdInsumoPrecio.FieldByName('IdInsumo').AsInteger, cdInsumoPrecio.FieldByName('iIdEmpresa').AsInteger, cdInsumoPrecio.FieldByName('IdMarca').AsInteger, cdInsumoPrecio.FieldByName('IdPresentacion').AsInteger]) then
        raise InteligentException.CreateByCode(16, ['Códigos SKU']);

      cdInsumoPrecio.Post;
      cdInsumoPrecio.ApplyUpdates(-1);

      // Obtener el último número consecutivo del SKU en base al IdEmpresa, IdMarca, IdPresentación e Insumo
      Prefijo := Alfanumerico(dsInsumo.DataSet.FieldByName('IdInsumo').AsInteger);
      Prefijo := StringOfChar('0', 5 - Length(Prefijo)) + Prefijo;

      if cdRegistroSKU.Active then
        cdRegistroSKU.Refresh
      else
        cdRegistroSKU.Open;

      // Solo registrar un nuevo codigo SKU si se trata de un registro nuevo, si se trata de una actualización de precio no es necesario
      if cdRegistroSKU.RecordCount = 0 then
      begin
        cdRegistroSKU.Append;
        cdRegistroSKU.FieldByName('IdInsumoSKU').AsInteger := 0;
        cdRegistroSKU.FieldByName('IdInsumo').AsInteger := cdInsumoPrecio.FieldByName('IdInsumo').AsInteger;
        cdRegistroSKU.FieldByName('IdEmpresa').AsInteger := cdInsumoPrecio.FieldByName('iIdEmpresa').AsInteger;
        cdRegistroSKU.FieldByName('IdMarca').AsInteger := cdInsumoPrecio.FieldByName('IdMarca').AsInteger;
        cdRegistroSKU.FieldByName('IdPresentacion').AsInteger := cdInsumoPrecio.FieldByName('IdPresentacion').AsInteger;

        if cdSKU.ProviderName = '' then
          if Not CrearConjunto(cdSKU, 'cmt_nuevosku', ccSelect) then
            raise InteligentException.CreateByCode(5, ['Generación de Código SKU']);

        if Not CargarDatosFiltrados(cdSKU, 'Prefijo', [Prefijo]) then
          raise InteligentException.CreateByCode(6, ['Generación de Código de SKU', 'Prefijo', Prefijo]);

        if cdSKU.Active then
          cdSKU.Refresh
        else
          cdSKU.Open;

        Prefijo := Prefijo + cdSKU.FieldByName('NuevoSKU').AsString;
        cdRegistroSKU.FieldByName('CodigoSKU').AsString := Prefijo;
        cdRegistroSKU.Post;
        cdRegistroSKU.ApplyUpdates(-1);
      end;
    Finally
      Screen.Cursor := Cursor;
    End;

    FormResultado := mrOk;
    Close;
  Except
    on e:InteligentWarning do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      Close;
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      Close;
    end;
  End;
end;

procedure TFrmPrecioInsumo.btnCancelarClick(Sender: TObject);
begin
  FormResultado := mrCancel;
  close;
end;

procedure TFrmPrecioInsumo.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Cursor: TCursor;
begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;
      cdInsumoPrecio.Cancel;

      if FormResultado = mrOk then
        ConcretarTransaccion
      else
        CancelarTransaccion;
    Finally
      EliminarConjunto([cdInsumoPrecio, cdSKU, cdRegistroSKU]);

      Screen.Cursor := Cursor;
      ModalResult := FormResultado;
    End;
  Except
    on e:Exception do
    begin
      CancelarTransaccion;
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  End;
end;

procedure TFrmPrecioInsumo.FormCreate(Sender: TObject);
begin
  Try
    if not CrearConjunto(cdInsumoPrecio, 'cmt_insumoprecio', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Precios de Insumos']);

    VerificaDataSetUnidades;
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

procedure TFrmPrecioInsumo.FormShow(Sender: TObject);
var
  locPxU: TClientDataSet;
begin
  FormResultado := mrCancel;

  IniciarTransaccion;
  Try
    // Seleccionar las presentaciones que le corresponden por unidad de medida
    locPxU := dsPresentacionxUnidad.DataSet as TClientDataSet;
    if Not CargarDatosFiltrados(locPxU, 'iIdUnidad', [dsInsumo.DataSet.FieldByName('iIdUnidad').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Presentaciones por Unidad de Medida', dsInsumo.DataSet.FieldByName('iIdUnidad').AsInteger, 'Id. Unidad de Medida']);

    if locPxU.Active then
      locPxU.Refresh
    else
      locPxU.Open;

    if Not CargarDatosFiltrados(cdInsumoPrecio, 'IdInsumoPrecio', [IdInsumoPrecio]) then
      raise InteligentException.CreateByCode(5, ['Precios de Insumos']);

    cdInsumoPrecio.Open;

    if IdInsumoPrecio = -9 then
    begin
      cdInsumoPrecio.Append;
      cdInsumoPrecio.FieldByName('IdInsumoPrecio').AsInteger := 0;
      cdInsumoPrecio.FieldByName('Aplicacion').AsDateTime := Now();
      cdInsumoPrecio.FieldByName('IdInsumo').AsInteger := dsInsumo.DataSet.FieldByName('IdInsumo').AsInteger;
    end
    else
    begin
      cdInsumoPrecio.Edit;
    end;

    // Poner valores por default para los combos cuando se trate de una inserción de precios
    if dsInsumoPrecio.DataSet.State = dsInsert then
    begin
      dsInsumoPrecio.DataSet.FieldByName('IdMarca').AsInteger := dsMarcaxInsumo.DataSet.FieldByName('IdMarca').AsInteger;
      //dsInsumoPrecio.DataSet.FieldByName('IdPresentacion').AsInteger := dsPresentacionxInsumo.DataSet.FieldByName('IdPresentacion').AsInteger;
    end;
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
