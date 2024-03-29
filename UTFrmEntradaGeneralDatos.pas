unit UTFrmEntradaGeneralDatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ClientModuleUnit1, URegistro, UInteliDialog, DBClient, JvExMask,
  JvToolEdit, JvDBControls, JvExControls, JvLabel, StdCtrls, Mask, DBCtrls,
  AdvGlowButton, ExtCtrls;

type
  TFrmEntradaGeneralDatos = class(TForm)
    dsRecibio: TDataSource;
    dsAutorizo: TDataSource;
    dsEntradaGeneralUpt: TDataSource;
    CodigoRegistroMovimientoGeneral: TDBEdit;
    lblEntrada: TJvLabel;
    JvLabel2: TJvLabel;
    Aplicacion: TJvDBDateEdit;
    Panel1: TPanel;
    btnOk: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    Referencia: TDBEdit;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    IdAutorizo: TDBLookupComboBox;
    JvLabel5: TJvLabel;
    IdRecibio: TDBLookupComboBox;
    Comentarios: TDBMemo;
    JvLabel6: TJvLabel;
    IdProveedor: TEdit;
    sNombreCorto: TDBText;
    sRazonSocial: TDBText;
    lblProveedor: TJvLabel;
    lblGuion: TJvLabel;
    dsProveedores: TDataSource;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CodigoRegistroMovimientoGeneralChange(Sender: TObject);
    procedure AplicacionChange(Sender: TObject);
    procedure dsProveedoresDataChange(Sender: TObject; Field: TField);
    procedure IdProveedorExit(Sender: TObject);
    procedure IdProveedorEnter(Sender: TObject);
    procedure IdProveedorKeyPress(Sender: TObject; var Key: Char);
  private
    NecesitaGrabar: Boolean;
    TextoOriginal: String;
    procedure GrabarElPedo;
  public
    CambiarModoSalida: Boolean;
    { Public declarations }
  end;

var
  FrmEntradaGeneralDatos: TFrmEntradaGeneralDatos;

implementation

uses UTFrmSeleccionarCliente;

{$R *.dfm}

procedure TFrmEntradaGeneralDatos.AplicacionChange(Sender: TObject);
begin
  NecesitaGrabar := True;
end;

procedure TFrmEntradaGeneralDatos.CodigoRegistroMovimientoGeneralChange(
  Sender: TObject);
begin
  NecesitaGrabar := True;
end;

procedure TFrmEntradaGeneralDatos.dsProveedoresDataChange(Sender: TObject;
  Field: TField);
begin
  lblGuion.Left := sNombreCorto.Left + sNombreCorto.Width + 2;
  sRazonSocial.Left := lblGuion.Left + lblGuion.Width + 2;
end;

procedure TFrmEntradaGeneralDatos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmEntradaGeneralDatos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  cClose: Boolean;
begin
  cClose := True;

  try
    try
      if ModalResult = mrOk then
      begin
        GrabarElPedo;
      end
      else
        if NecesitaGrabar then
        begin
          case InteliDialog.ShowModal('Grabar captura', 'Los datos capturados no han sido grabados.' + #10 + #10 + '�Desea grabarlos en este momento?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
            mrYes:
            begin
              TClientDataSet(dsEntradaGeneralUpt.DataSet).Post;
              TClientDataSet(dsEntradaGeneralUpt.DataSet).ApplyUpdates(-1);
            end;
            mrNo: dsEntradaGeneralUpt.DataSet.Cancel;
            mrCancel: cClose := False;
          end;
        end
        else
          dsEntradaGeneralUpt.DataSet.Cancel;
    finally
      CanClose := cClose;
    end;
  except
    on e:InteligentWarning do
      CanClose := False;

    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmEntradaGeneralDatos.FormShow(Sender: TObject);
begin
  NecesitaGrabar := False;

  try

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

procedure TFrmEntradaGeneralDatos.GrabarElPedo;
var
  Obj: TWinControl;
  Id: Integer;
begin
  try
    // Verificar la captura de datos
    Obj := Nil;
    if Trim(CodigoRegistroMovimientoGeneral.Text) = '' then
    begin
      Obj := CodigoRegistroMovimientoGeneral;
      raise InteligentWarning.CreateByCode(18, ['C�digo Entrada']);
    end;

    // Verificar que el c�digo no se duplique en la base de datos
    if VerificaCodigo(TClientDataSet(dsEntradaGeneralUpt.DataSet), 'CodigoRegistroMovimientoGeneral', CodigoRegistroMovimientoGeneral.Text, 'IdCotizacion', -9) then
    begin
      Obj := CodigoRegistroMovimientoGeneral;
      raise InteligentWarning.CreateByCode(17, ['Entradas Almac�n General', CodigoRegistroMovimientoGeneral.Text]);
    end;

    // Verificar que se haya seleccionado un Proveedor
    if dsProveedores.DataSet.Active then
      dsEntradaGeneralUpt.DataSet.FieldByName('iIdEmpresa').AsInteger := dsProveedores.DataSet.FieldByName('iIdEmpresa').AsInteger
    else
    begin
      Obj := IdProveedor;
      raise InteligentWarning.CreateByCode(18, ['Proveedor']);
    end;

    if Trim(Referencia.Text) = '' then
    begin
      Obj := Referencia;
      raise InteligentWarning.CreateByCode(18, ['Referencia']);
    end;

    if IdAutorizo.KeyValue = Null then
    begin
      Obj := IdAutorizo;
      raise InteligentWarning.CreateByCode(18, ['Autoriz�']);
    end;

    if IdRecibio.KeyValue = Null then
    begin
      Obj := IdRecibio;
      raise InteligentWarning.CreateByCode(18, ['Recibi�']);
    end;

    TClientDataSet(dsEntradaGeneralUpt.DataSet).Post;
    TClientDataSet(dsEntradaGeneralUpt.DataSet).ApplyUpdates(-1);
    Id := UltimoId;
    if Not CargarDatosFiltrados(TClientDataSet(dsEntradaGeneralUpt.DataSet), 'IdRegistroMovimientoGeneral', [Id]) then
      raise InteligentException.CreateByCode(13, [CodigoRegistroMovimientoGeneral.Text, 'Entrada Almac�n General']);
    dsEntradaGeneralUpt.DataSet.Refresh;
  except
    on e:InteligentWarning do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      if Assigned(Obj) then
        Obj.SetFocus;
      raise;
    end;

    on e:Exception do
    begin
      dsEntradaGeneralUpt.DataSet.Cancel;
      raise;
    end;
  end;
end;

procedure TFrmEntradaGeneralDatos.IdProveedorEnter(Sender: TObject);
begin
  IdProveedor.Text := TextoOriginal;
end;

procedure TFrmEntradaGeneralDatos.IdProveedorExit(Sender: TObject);
begin
  TextoOriginal := IdProveedor.Text;
  if dsProveedores.DataSet.Active and (dsProveedores.Dataset.RecordCount > 0) then
    IdProveedor.Text := dsProveedores.DataSet.FieldByName('sNombreCorto').AsString + ' - ' + dsProveedores.DataSet.FieldByName('sRazonSocial').AsString;
end;

procedure TFrmEntradaGeneralDatos.IdProveedorKeyPress(Sender: TObject;
  var Key: Char);
var
  Valor: String;
begin
  if Key = #13 then
  begin
    try
      // Verificar por c�digo o parte del texto
      if Trim(IdProveedor.Text) = '' then
        Valor := '-1'
      else
        Valor := Trim(IdProveedor.Text);

      if Not CargarDatosFiltrados(TClientDataSet(dsProveedores.DataSet), 'Texto', [Valor]) then
        raise InteligentException.CreateByCode(6, ['Proveedores', Valor, 'Texto']);
      if dsProveedores.DataSet.Active then
        dsProveedores.DataSet.Refresh
      else
        dsProveedores.DataSet.Open;

      if (dsProveedores.DataSet.RecordCount > 1) or ((dsProveedores.DataSet.RecordCount = 1) and (dsProveedores.DataSet.FieldByName('Cta').AsInteger = 0)) then
      begin
        // Poner la ventana de selecci�n de datos multiples
        Application.CreateForm(TFrmSeleccionarCliente, FrmSeleccionarCliente);
        try
          FrmSeleccionarCliente.Caption := 'Seleccionar Proveedor';
          FrmSeleccionarCliente.tvClientes.DataController.DataSource := dsProveedores;
          FrmSeleccionarCliente.tvClientes2.DataController.DataSource := dsProveedores;
          FrmSeleccionarCliente.pTexto := IdProveedor.Text;
          if FrmSeleccionarCliente.ShowModal = mrOk then
            Referencia.SetFocus
          else
            dsProveedores.DataSet.Close;
        finally
          FrmSeleccionarCliente.Destroy;
        end;
      end;
    except
      on e:InteligentException do
      begin
        dsProveedores.DataSet.Close;
        InteliDialog.ShowModal(e.Title, e.Message, mtError, [mbOk], 0);
      end;

      on e:Exception do
      begin
        dsProveedores.DataSet.Close;
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      end;
    end;
  end
  else
    dsProveedores.DataSet.Close;
end;

end.
