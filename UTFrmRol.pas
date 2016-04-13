unit UTFrmRol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, AdvGlowButton, JvExControls, JvLabel,
  ClientModuleUnit1, UInteliDialog, DB, DBClient;

type
  TFrmRol = class(TForm)
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    CodigoRol: TDBEdit;
    TituloRol: TDBEdit;
    dsRolUpt: TDataSource;
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
  FrmRol: TFrmRol;

implementation

{$R *.dfm}

procedure TFrmRol.btnAceptarClick(Sender: TObject);
var
  Objeto: TWinControl;
begin
  Cierrate := False;

  try
    Objeto := CodigoRol;
    if Trim(CodigoRol.Text) = '' then
      raise InteligentWarning.CreateByCode(18, ['Código']);

    Objeto := TituloRol;
    if Trim(TituloRol.Text) = '' then
      raise InteligentWarning.CreateByCode(18, ['Título Rol']);

    dsRolUpt.DataSet.Post;
    TClientDataSet(dsRolUpt.DataSet).ApplyUpdates(-1);
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

procedure TFrmRol.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dsRolUpt.DataSet.State In [dsInsert, dsEdit] then
    dsRolUpt.DataSet.Cancel;

  Action := caFree;
end;

procedure TFrmRol.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := Cierrate;
  Cierrate := True;
end;

procedure TFrmRol.FormShow(Sender: TObject);
begin
  Cierrate := True;
end;

end.
