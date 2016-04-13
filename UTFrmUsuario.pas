unit UTFrmUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, AdvGlowButton, JvExControls, JvLabel,
  ClientModuleUnit1, UInteliDialog, DB, DBClient;

type
  TFrmUsuario = class(TForm)
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    sNombre: TDBEdit;
    sAPaterno: TDBEdit;
    sAMaterno: TDBEdit;
    sIdUsuario: TDBEdit;
    sPassword: TDBEdit;
    dsUsuarioUpt: TDataSource;
    RePassword: TEdit;
    Administrador: TDBComboBox;
    JvLabel7: TJvLabel;
    procedure btnAceptarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Cierrate: Boolean;
  public
    { Public declarations }
  end;

var
  FrmUsuario: TFrmUsuario;

implementation

{$R *.dfm}

procedure TFrmUsuario.btnAceptarClick(Sender: TObject);
var
  Objeto: TWinControl;
begin
  Cierrate := False;

  try
    Objeto := sNombre;
    if Trim(sNombre.Text) = '' then
      raise InteligentWarning.CreateByCode(18, ['Nombre']);

    Objeto := sAPaterno;
    if Trim(sAPaterno.Text) = '' then
      raise InteligentWarning.CreateByCode(18, ['Apellido Paterno']);

    Objeto := sAmaterno;
    if Trim(sAmaterno.Text) = '' then
      raise InteligentWarning.CreateByCode(18, ['Apellido Materno']);

    Objeto := sIdUsuario;
    if Trim(sIdUsuario.Text) = '' then
      raise InteligentWarning.CreateByCode(18, ['Clave Usuario']);

    if dsUsuarioUpt.DataSet.State = dsInsert then
    begin
      Objeto := sPassword;
      if Trim(sPassword.Text) = '' then
        raise InteligentWarning.CreateByCode(18, ['Password']);

      // Validar que los campos del password sean correctos
      Objeto := sPassword;
      if sPassword.Text <> RePassword.Text then
        raise InteligentWarning.CreateByCode(8, ['El campo Password no es igual a la repetición capturada.']);
    end;

    // Si todo está bien, verificar que el código de usuario no se repita
    // Pendiente Rangel

    dsUsuarioUpt.DataSet.Post;
    TClientDataSet(dsUsuarioUpt.DataSet).ApplyUpdates(-1);
    Cierrate := True;
  except
    on e:InteligentWarning do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      if Objeto.CanFocus then
        Objeto.setFocus;
    end;

    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dsUsuarioUpt.DataSet.State In [dsInsert, dsEdit] then
    dsUsuarioUpt.DataSet.Cancel;

  Action := caFree;
end;

procedure TFrmUsuario.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := Cierrate;
  Cierrate := True;
end;

procedure TFrmUsuario.FormShow(Sender: TObject);
begin
  Cierrate := True;

  if dsUsuarioUpt.DataSet.State = dsEdit then
  begin
    sPassword.Enabled := False;
    JvLabel4.Visible := False;
    RePassword.Visible := False;
  end;
end;

end.
