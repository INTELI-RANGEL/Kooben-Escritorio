unit UTFrmEntradaGeneralPartidaDatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, AdvGlowButton, DB, UInteliDialog, ClientModuleUnit1,
  JvExControls, JvLabel, StdCtrls, DBCtrls, DBClient;

type
  TFrmEntradaGeneralPartidaDatos = class(TForm)
    Panel1: TPanel;
    btnCancelar: TAdvGlowButton;
    btnAceptar: TAdvGlowButton;
    dsEntradaGeneralDatosUpt: TDataSource;
    Panel2: TPanel;
    IdInsumo: TEdit;
    Panel3: TPanel;
    JvLabel1: TJvLabel;
    Panel4: TPanel;
    NombreInsumo: TDBText;
    lblGuion: TJvLabel;
    dsInsumo: TDataSource;
    CodigoInsumo: TDBText;
    procedure IdInsumoEnter(Sender: TObject);
    procedure IdInsumoExit(Sender: TObject);
    procedure IdInsumoKeyPress(Sender: TObject; var Key: Char);
  private
    TextoOriginal: String;
  public
    { Public declarations }
  end;

var
  FrmEntradaGeneralPartidaDatos: TFrmEntradaGeneralPartidaDatos;

implementation

{$R *.dfm}

Uses
  UTFrmSelInsumo;

procedure TFrmEntradaGeneralPartidaDatos.IdInsumoEnter(Sender: TObject);
begin
  IdInsumo.Text := TextoOriginal;
end;

procedure TFrmEntradaGeneralPartidaDatos.IdInsumoExit(Sender: TObject);
begin
  TextoOriginal := IdInsumo.Text;
  if dsInsumo.DataSet.Active and (dsInsumo.Dataset.RecordCount > 0) then
    IdInsumo.Text := dsInsumo.DataSet.FieldByName('sNombreCorto').AsString + ' - ' + dsInsumo.DataSet.FieldByName('sRazonSocial').AsString;
end;

procedure TFrmEntradaGeneralPartidaDatos.IdInsumoKeyPress(Sender: TObject;
  var Key: Char);
var
  Valor: String;
begin
  if Key = #13 then
  begin
    try
      // Verificar por código o parte del texto
      if Trim(IdInsumo.Text) = '' then
        Valor := '-1'
      else
        Valor := Trim(IdInsumo.Text);

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
          FrmSelInsumo.Caption := 'Seleccionar Proveedor';
          FrmSelInsumo.tvInsumos.DataController.DataSource := dsInsumo;
          //FrmSelInsumo.tvClientes2.DataController.DataSource := dsProveedores;
          FrmSelInsumo.pTexto := IdInsumo.Text;
          if FrmSelInsumo.ShowModal = mrOk then
            //Referencia.SetFocus
          else
            dsInsumo.DataSet.Close;
        finally
          FrmSelInsumo.Destroy;
        end;
      end;
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

end.
