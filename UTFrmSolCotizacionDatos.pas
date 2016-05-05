unit UTFrmSolCotizacionDatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, JvExMask, JvToolEdit, JvDBControls, AdvGlowButton,
  ExtCtrls, JvExControls, JvLabel, Mask, ClientModuleUnit1, URegistro,
  UInteliDialog, DBClient, DB;

type
  TFrmSolCotizacionDatos = class(TForm)
    CodigoSolCotizacion: TDBEdit;
    JvLabel1: TJvLabel;
    Panel1: TPanel;
    btnOk: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    JvLabel2: TJvLabel;
    Fecha: TJvDBDateEdit;
    Comentarios: TDBMemo;
    JvLabel5: TJvLabel;
    dsSolCotizacionUpt: TDataSource;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    procedure GrabarElPedo;
  public
    { Public declarations }
  end;

var
  FrmSolCotizacionDatos: TFrmSolCotizacionDatos;

implementation

{$R *.dfm}

procedure TFrmSolCotizacionDatos.FormCloseQuery(Sender: TObject;
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
      begin
        case InteliDialog.ShowModal('Grabar captura', 'Los datos capturados no han sido grabados.' + #10 + #10 + '¿Desea grabarlos en este momento?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
          mrYes: begin TClientDataSet(dsSolCotizacionUpt.DataSet).Post; TClientDataSet(dsSolCotizacionUpt.DataSet).ApplyUpdates(-1); end;
          mrNo: dsSolCotizacionUpt.DataSet.Cancel;
          mrCancel: cClose := False;
        end;
      end;
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

procedure TFrmSolCotizacionDatos.GrabarElPedo;
var
  Obj: TWinControl;
  Id: Integer;
begin
  try
    // Verificar la captura de datos
    Obj := Nil;
    if Trim(CodigoSolCotizacion.Text) = '' then
    begin
      Obj := CodigoSolCotizacion;
      raise InteligentWarning.CreateByCode(18, ['Código de Solicitud de Cotización']);
    end;

    // Verificar que el código no se duplique en la base de datos
    if VerificaCodigo(TClientDataSet(dsSolCotizacionUpt.DataSet), 'CodigoSolCotizacion', CodigoSolCotizacion.Text, 'IdSolCotizacion', dsSolCotizacionUpt.DataSet.FieldByName('IdSolCotizacion').AsInteger) then
    begin
      Obj := CodigoSolCotizacion;
      raise InteligentWarning.CreateByCode(17, ['Solicitud de Cotización', CodigoSolCotizacion.Text]);
    end;

    TClientDataSet(dsSolCotizacionUpt.DataSet).Post;
    TClientDataSet(dsSolCotizacionUpt.DataSet).ApplyUpdates(-1);
    Id := UltimoId;
    if Not CargarDatosFiltrados(TClientDataSet(dsSolCotizacionUpt.DataSet), 'IdSolCotizacion', [Id]) then
      raise InteligentException.CreateByCode(13, [CodigoSolCotizacion.Text, 'Solicitudes de Cotización']);
    dsSolCotizacionUpt.DataSet.Refresh;
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
      dsSolCotizacionUpt.DataSet.Cancel;
      raise;
    end;
  end;
end;

end.
