unit UTFrmNuevaComisaria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, JvExControls, JvLabel, StdCtrls, Mask, DBCtrls, AdvGlowButton,
  UInteliDialog, DBClient, ClientModuleUnit1, ComCtrls, AdvDateTimePicker,
  AdvDBDateTimePicker, ExtCtrls;

type
  TFrmNuevaComisaria = class(TForm)
    dsComisaria: TDataSource;
    CodigoComisaria: TDBEdit;
    JvLabel1: TJvLabel;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    Fecha: TAdvDBDateTimePicker;
    JvLabel3: TJvLabel;
    Requerido: TAdvDBDateTimePicker;
    JvLabel4: TJvLabel;
    Referencia: TDBEdit;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    Comentarios: TDBMemo;
    Panel1: TPanel;
    JvLabel2: TJvLabel;
    CodigoMenu: TDBText;
    dsBuscarMenu: TDataSource;
    Desde: TDBText;
    JvLabel7: TJvLabel;
    Hasta: TDBText;
    JvLabel8: TJvLabel;
    Comentariosx: TDBText;
    JvLabel9: TJvLabel;
    CodigoEmbarcacion: TDBText;
    JvLabel10: TJvLabel;
    JvLabel11: TJvLabel;
    NombreEmbarcacion: TDBText;
    procedure FormShow(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    mResultado: TModalResult;
  public
    { Public declarations }
  end;

var
  FrmNuevaComisaria: TFrmNuevaComisaria;

implementation

{$R *.dfm}

procedure TFrmNuevaComisaria.btnAceptarClick(Sender: TObject);
begin
  // Veirificar si el Codigo

  dsComisaria.DataSet.Post;
  TClientDataSet(dsComisaria.DataSet).ApplyUpdates(-1);

  mResultado := mrOk;
  Close;
end;

procedure TFrmNuevaComisaria.btnCancelarClick(Sender: TObject);
begin
  mResultado := mrCancel;
  Close;
end;

procedure TFrmNuevaComisaria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Try
    Try
      dsComisaria.DataSet.Cancel;
    Finally
      ModalResult := mResultado;
    End;
  Except
    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmNuevaComisaria.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
begin
  Try
    LocCursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      mResultado := mrCancel;
      dsComisaria.DataSet.FieldByName('Fecha').AsDateTime := Now();
      dsComisaria.DataSet.FieldByName('Requerido').AsDateTime := Now();
      dsComisaria.DataSet.FieldByName('Activo').AsString := 'Si';
      dsComisaria.DataSet.FieldByName('Consecutivo').AsInteger := 0;
    Finally
      Screen.Cursor := LocCursor;
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
