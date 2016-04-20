unit UTFrmEditarCotizacionPartida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, ClientModuleUnit1, UInteliDialog, DBClient,
  JvExControls, JvLabel, Mask, JvExMask, JvToolEdit, JvBaseEdits, AdvGlowButton,
  ExtCtrls, RxToolEdit, RxCurrEdit, RXDBCtrl, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDBLookupComboBox, JvDBControls, CheckLst;

type
  TObjPrecio = class
    Idx: Integer;
    Precio: Real;
  end;

  TFrmEditarCotizacionPartida = class(TForm)
    CodigoInsumo: TEdit;
    dsInsumo: TDataSource;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    Panel1: TPanel;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    NombreInsumo: TDBText;
    dsCotizacionDatos: TDataSource;
    Cantidad: TRxDBCalcEdit;
    Precio: TRxDBCalcEdit;
    IdPresentacion: TDBLookupComboBox;
    IdMarca: TDBLookupComboBox;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    dsPresentacion: TDataSource;
    dsMarca: TDataSource;
    pnlCosto: TPanel;
    JvLabel5: TJvLabel;
    pUtilidad: TRxDBCalcEdit;
    Costo: TRxDBCalcEdit;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    Panel2: TPanel;
    CostoI: TJvDBCalcEdit;
    Utilidad: TJvDBCalcEdit;
    dsExistenciasGenerales: TDataSource;
    rgPrecios: TRadioGroup;
    procedure CodigoInsumoEnter(Sender: TObject);
    procedure CodigoInsumoExit(Sender: TObject);
    procedure CodigoInsumoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CantidadChange(Sender: TObject);
    procedure PrecioChange(Sender: TObject);
    procedure pUtilidadChange(Sender: TObject);
    procedure IdPresentacionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure IdMarcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure IdPresentacionCloseUp(Sender: TObject);
    procedure IdMarcaCloseUp(Sender: TObject);
    procedure rgPreciosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    TextoOriginal: String;
    procedure CambiaCosto;
    procedure CargarPrecios;
    procedure SeleccionarInsumo;
  public
    IdxColumn: Integer;
  end;

var
  FrmEditarCotizacionPartida: TFrmEditarCotizacionPartida;

implementation

{$R *.dfm}

Uses
  UTFrmSelInsumo;

procedure TFrmEditarCotizacionPartida.CantidadChange(Sender: TObject);
begin
  CambiaCosto;
end;

procedure TFrmEditarCotizacionPartida.CodigoInsumoEnter(Sender: TObject);
begin
  CodigoInsumo.Text := TextoOriginal;
end;

procedure TFrmEditarCotizacionPartida.CodigoInsumoExit(Sender: TObject);
begin
  TextoOriginal := CodigoInsumo.Text;
  if dsInsumo.DataSet.Active and (dsInsumo.Dataset.RecordCount > 0) then
    CodigoInsumo.Text := dsInsumo.DataSet.FieldByName('CodigoInsumo').AsString;
end;

procedure TFrmEditarCotizacionPartida.CodigoInsumoKeyPress(Sender: TObject;
  var Key: Char);
var
  Valor: String;
  IdRegistroMovimientoGeneralPartida: LongInt;
begin
  if Key = #13 then
  begin
    try
      // Verificar por código o parte del texto
      if Trim(CodigoInsumo.Text) = '' then
        Valor := '-1'
      else
        Valor := Trim(CodigoInsumo.Text);

      if Not CargarDatosFiltrados(TClientDataSet(dsInsumo.DataSet), 'Texto', [Valor]) then
        raise InteligentException.CreateByCode(6, ['Insumos', Valor, 'Texto']);
      if dsInsumo.DataSet.Active then
        dsInsumo.DataSet.Refresh
      else
        dsInsumo.DataSet.Open;

      if (dsInsumo.DataSet.RecordCount > 1) or ((dsInsumo.DataSet.RecordCount = 1) and (dsInsumo.DataSet.FieldByName('Cta').AsInteger = 0)) then
      begin
        // Poner la ventana de selección de datos multiples
        Application.CreateForm(TFrmSelInsumo, FrmSelInsumo);
        try
          FrmSelInsumo.Caption := 'Seleccionar Insumo';
          FrmSelInsumo.tvInsumos.DataController.DataSource := dsInsumo;
          FrmSelInsumo.tvInsumos2.DataController.DataSource := dsInsumo;
          FrmSelInsumo.pTexto := CodigoInsumo.Text;
          if FrmSelInsumo.ShowModal = mrOk then
            //lblNombreInsumo.Caption := dsInsumo.DataSet.FieldByName('NombreInsumo').AsString
          else
            dsInsumo.DataSet.Close;
        finally
          FrmSelInsumo.Destroy;
        end;
      end;

{      if (dsInsumo.DataSet.RecordCount = 1) and (dsInsumo.DataSet.FieldByName('Cta').AsInteger = 1) then
        IdRegistroMovimientoGeneralPartida := AgregaPartida;}
    except
      on e:InteligentException do
      begin
        dsInsumo.DataSet.Close;
        InteliDialog.ShowModal(e.Title, e.Message, mtError, [mbOk], 0);
      end;

      on e:Exception do
      begin
        dsInsumo.DataSet.Close;
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      end;
    end;
  end
  else
    dsInsumo.DataSet.Close;
end;

procedure TFrmEditarCotizacionPartida.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmEditarCotizacionPartida.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  Obj: TWinControl;
begin
  if ModalResult = mrOk then
  begin
    CanClose := False;
    try
      // Verificar la captura
      if Cantidad.Value <= 0 then
      begin
        Obj := Cantidad;
        raise InteligentException.CreateByCode(18, ['Cantidad']);
      end;

      if IdPresentacion.KeyValue = Null then
      begin
        Obj := IdPresentacion;
        raise InteligentException.CreateByCode(18, ['Presentación']);
      end;

      if IdMarca.KeyValue = Null then
      begin
        Obj := IdMarca;
        raise InteligentException.CreateByCode(18, ['Marca']);
      end;

      if Precio.Value <= 0 then
      begin
        Obj := Precio;
        raise InteligentException.CreateByCode(18, ['Precio']);
      end;

      if Utilidad.Value < 0 then
      begin
        Obj := Utilidad;
        raise InteligentException.CreateByCode(8, ['El campo Utilidad no puede ser menor que cero.']);
      end;

      if Costo.Value <= 0 then
      begin
        Obj := Costo;
        raise InteligentException.CreateByCode(18, ['Costo']);
      end;

      // Verificar que no se repita la misma partida en esta cotización
      if Not CargarDatosFiltrados(TClientDataSet(dsCotizacionDatos.DataSet), 'IdCotizacion,IdInsumo,IdPresentacion,IdMarca', [dsCotizacionDatos.DataSet.FieldByName('IdCotizacion').AsInteger, dsCotizacionDatos.DataSet.FieldByName('IdInsumo').AsInteger, dsPresentacion.DataSet.FieldByName('IdPresentacion').AsInteger, dsMarca.DataSet.FieldByName('IdMarca').AsInteger]) then
        raise InteligentException.CreateByCode(16, ['Partidas de Cotizacion']);

      try
        if CuantosRegistros(TClientDataSet(dsCotizacionDatos.DataSet)) > 0 then
          raise InteligentException.CreateByCode(17, ['Partidas de Cotizacion', dsCotizacionDatos.DataSet.FieldByName('hNombreInsumo').AsString + ', Marca: ' + dsMarca.DataSet.FieldByName('TituloMarca').AsString + ', Presentación: ' + dsPresentacion.DataSet.FieldByName('TituloPresentacion').AsString]);
      finally
        if Not CargarDatosFiltrados(TClientDataSet(dsCotizacionDatos.DataSet), 'IdCotizacion,IdInsumo,IdPresentacion,IdMarca', [dsCotizacionDatos.DataSet.FieldByName('IdCotizacion').AsInteger, dsCotizacionDatos.DataSet.FieldByName('IdInsumo').AsInteger, dsPresentacion.DataSet.FieldByName('IdPresentacion').AsInteger, dsMarca.DataSet.FieldByName('IdMarca').AsInteger]) then
          raise InteligentException.CreateByCode(16, ['Partidas de Cotizacion']);
      end;

      CanClose := True;
    except
      on e:InteligentException do
      begin
        if Assigned(Obj) and Obj.CanFocus then
          Obj.SetFocus;

        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      end;

      on e:Exception do
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmEditarCotizacionPartida.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      case IdxColumn of
        0, 1: CodigoInsumo.SetFocus;
        2: Cantidad.SetFocus;
        3, 4: Precio.SetFocus;
      end;

      if dsMarca.DataSet.Active then
        dsMarca.DataSet.Refresh
      else
        dsMarca.DataSet.Open;

      if dsPresentacion.DataSet.Active then
        dsPresentacion.DataSet.Refresh
      else
        dsPresentacion.DataSet.Open;

      CargarPrecios;
    finally
      Screen.Cursor := LocCursor;
    end;
  except
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
  end;
end;

procedure TFrmEditarCotizacionPartida.IdMarcaCloseUp(Sender: TObject);
begin
  CargarPrecios;
end;

procedure TFrmEditarCotizacionPartida.IdMarcaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 116 then
    dsMarca.DataSet.Refresh;
end;

procedure TFrmEditarCotizacionPartida.IdPresentacionCloseUp(Sender: TObject);
begin
  CargarPrecios;
end;

procedure TFrmEditarCotizacionPartida.IdPresentacionKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 116 then
    dsPresentacion.DataSet.Refresh;
end;

procedure TFrmEditarCotizacionPartida.PrecioChange(Sender: TObject);
begin
  CambiaCosto;
end;

procedure TFrmEditarCotizacionPartida.pUtilidadChange(Sender: TObject);
begin
  CambiaCosto;
end;

procedure TFrmEditarCotizacionPartida.rgPreciosClick(Sender: TObject);
begin
  if rgPrecios.ItemIndex = rgPrecios.Items.Count -1 then
  begin
    dsCotizacionDatos.DataSet.FieldByName('Precio').AsFloat := dsCotizacionDatos.DataSet.FieldByName('Precio').AsFloat;
    Precio.ReadOnly := False;
    Precio.SetFocus;
  end
  else
  begin
    dsCotizacionDatos.DataSet.FieldByName('Precio').AsFloat := TObjPrecio(rgPrecios.Items.Objects[rgPrecios.ItemIndex]).Precio;
    Precio.ReadOnly := True;
  end;

  CambiaCosto;
end;

procedure TFrmEditarCotizacionPartida.CambiaCosto;
begin
  CostoI.Value := Round(Cantidad.Value * Precio.Value * 100) / 100;
  Utilidad.Value := Round(CostoI.Value * pUtilidad.Value) / 100;
  Costo.Value := CostoI.Value + Utilidad.Value;
end;

procedure TFrmEditarCotizacionPartida.CargarPrecios;
var
  ObjPrecio: TObjPrecio;
begin
  if Assigned(dsExistenciasGenerales.DataSet) then
  begin
    rgPrecios.Items.Clear;

    SeleccionarInsumo;

    if dsExistenciasGenerales.DataSet.Active and (dsExistenciasGenerales.DataSet.FieldByName('PrecioMinimo').AsFloat > 0) then
    begin
      ObjPrecio := TObjPrecio.Create;
      ObjPrecio.Idx := 0;
      ObjPrecio.Precio := dsExistenciasGenerales.DataSet.FieldByName('PrecioMinimo').AsFloat;
      rgPrecios.Items.AddObject('Precio Mínimo: ' + FloatToStrF(dsExistenciasGenerales.DataSet.FieldByName('PrecioMinimo').AsFloat, ffCurrency, 16, 2), ObjPrecio);

      ObjPrecio := TObjPrecio.Create;
      ObjPrecio.Idx := 1;
      ObjPrecio.Precio := dsExistenciasGenerales.DataSet.FieldByName('PrecioPromedio').AsFloat;
      rgPrecios.Items.AddObject('Precio Promedio: ' + FloatToStrF(dsExistenciasGenerales.DataSet.FieldByName('PrecioPromedio').AsFloat, ffCurrency, 16, 2), ObjPrecio);

      ObjPrecio := TObjPrecio.Create;
      ObjPrecio.Idx := 2;
      ObjPrecio.Precio := dsExistenciasGenerales.DataSet.FieldByName('PrecioMaximo').AsFloat;
      rgPrecios.Items.AddObject('Precio Máximo: ' + FloatToStrF(dsExistenciasGenerales.DataSet.FieldByName('PrecioMaximo').AsFloat, ffCurrency, 16, 2), ObjPrecio);
    end;

    ObjPrecio := TObjPrecio.Create;
    ObjPrecio.Idx := 3;
    ObjPrecio.Precio := 0;
    rgPrecios.Items.AddObject('Precio Libre...', ObjPrecio);

    if rgPrecios.Items.Count > 1 then
      rgPrecios.ItemIndex := 3
    else
      rgPrecios.ItemIndex := 0;
  end;
end;

procedure TFrmEditarCotizacionPartida.SeleccionarInsumo;
begin
  if (IdPresentacion.KeyValue <> Null) and (IdMarca.KeyValue <> Null) then
  begin
    if Not CargarDatosFiltrados(TClientDataSet(dsExistenciasGenerales.DataSet), 'IdInsumo,IdPresentacion,IdMarca', [dsInsumo.DataSet.FieldByName('IdInsumo').AsInteger, dsPresentacion.DataSet.FieldByName('IdPresentacion').AsInteger, dsMarca.DataSet.FieldByName('IdMarca').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Existencias Generales', dsInsumo.DataSet.FieldByName('IdInsumo').AsInteger, 'Id. Insumo']);

    if dsExistenciasGenerales.DataSet.Active then
      dsExistenciasGenerales.DataSet.Refresh
    else
      dsExistenciasGenerales.DataSet.Open;
  end;
end;

end.
