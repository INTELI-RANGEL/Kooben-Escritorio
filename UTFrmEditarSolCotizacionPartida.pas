unit UTFrmEditarSolCotizacionPartida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, AdvGlowButton, ExtCtrls, DBCtrls, Mask, RxToolEdit, RxCurrEdit,
  RXDBCtrl, JvExControls, JvLabel, StdCtrls, ClientModuleUnit1, UInteliDialog,
  DBClient;

type
  TFrmEditarSolCotizacionPartida = class(TForm)
    CodigoInsumo: TEdit;
    NombreInsumo: TDBText;
    JvLabel1: TJvLabel;
    Cantidad: TRxDBCalcEdit;
    IdPresentacion: TDBLookupComboBox;
    JvLabel3: TJvLabel;
    IdMarca: TDBLookupComboBox;
    Panel1: TPanel;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    dsInsumo: TDataSource;
    dsPresentacion: TDataSource;
    dsSolCotizacionDatos: TDataSource;
    dsMarca: TDataSource;
    procedure CodigoInsumoEnter(Sender: TObject);
    procedure CodigoInsumoExit(Sender: TObject);
    procedure CodigoInsumoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    TextoOriginal: String;
  public
    IdxColumn: Integer;
  end;

var
  FrmEditarSolCotizacionPartida: TFrmEditarSolCotizacionPartida;

implementation

{$R *.dfm}

Uses
  UTFrmSelInsumo;

procedure TFrmEditarSolCotizacionPartida.CodigoInsumoEnter(Sender: TObject);
begin
  CodigoInsumo.Text := TextoOriginal;
end;

procedure TFrmEditarSolCotizacionPartida.CodigoInsumoExit(Sender: TObject);
begin
  TextoOriginal := CodigoInsumo.Text;
  if dsInsumo.DataSet.Active and (dsInsumo.Dataset.RecordCount > 0) then
    CodigoInsumo.Text := dsInsumo.DataSet.FieldByName('CodigoInsumo').AsString;
end;

procedure TFrmEditarSolCotizacionPartida.CodigoInsumoKeyPress(Sender: TObject;
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

procedure TFrmEditarSolCotizacionPartida.FormShow(Sender: TObject);
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
      end;

      if dsMarca.DataSet.Active then
        dsMarca.DataSet.Refresh
      else
        dsMarca.DataSet.Open;

      if dsPresentacion.DataSet.Active then
        dsPresentacion.DataSet.Refresh
      else
        dsPresentacion.DataSet.Open;
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

end.
