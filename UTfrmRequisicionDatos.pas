unit UTfrmRequisicionDatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ClientModuleUnit1, UInteliDialog, DB, AdvGlowButton, ExtCtrls,
  DBCtrls, JvExControls, JvLabel, StdCtrls, DBCLient, Mask, JvExMask,
  JvToolEdit, JvDBControls;

type
  TFrmRequisicionDatos = class(TForm)
    Panel1: TPanel;
    btnOk: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    dsSolicita: TDataSource;
    dsAutoriza: TDataSource;
    dsRequisicionUpt: TDataSource;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    IdSolicita: TDBLookupComboBox;
    IdAutoriza: TDBLookupComboBox;
    Folio: TDBEdit;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    Fecha: TJvDBDateEdit;
    Comentarios: TDBMemo;
    JvLabel5: TJvLabel;
    IdEmbarcacion: TDBLookupComboBox;
    IdAlmacen: TDBLookupComboBox;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    dsEmbarcacion: TDataSource;
    dsAlmacen: TDataSource;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure IdEmbarcacionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure IdAlmacenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure GrabarElPedo;
  public
    { Public declarations }
  end;

var
  FrmRequisicionDatos: TFrmRequisicionDatos;

implementation

{$R *.dfm}

Uses
  UTFrmSeleccionarCliente;

procedure TFrmRequisicionDatos.FormCloseQuery(Sender: TObject;
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
          mrYes: begin TClientDataSet(dsRequisicionUpt.DataSet).Post; TClientDataSet(dsRequisicionUpt.DataSet).ApplyUpdates(-1); end;
          mrNo: dsRequisicionUpt.DataSet.Cancel;
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

procedure TFrmRequisicionDatos.GrabarElPedo;
var
  Obj: TWinControl;
  Id: Integer;
begin
  try
    // Verificar la captura de datos
    Obj := Nil;
    if Trim(Folio.Text) = '' then
    begin
      Obj := Folio;
      raise InteligentWarning.CreateByCode(18, ['Folio de Requisición']);
    end;

    // Verificar que el código no se duplique en la base de datos
    if VerificaCodigo(TClientDataSet(dsRequisicionUpt.DataSet), 'Folio', Folio.Text, 'Folio', -9) then
    begin
      Obj := Folio;
      raise InteligentWarning.CreateByCode(17, ['Requisiciones', Folio.Text]);
    end;

    if IdSolicita.KeyValue = Null then
    begin
      Obj := IdSolicita;
      raise InteligentWarning.CreateByCode(18, ['Solicita']);
    end;

    if IdAutoriza.KeyValue = Null then
    begin
      Obj := IdAutoriza;
      raise InteligentWarning.CreateByCode(18, ['Autoriza']);
    end;

    TClientDataSet(dsRequisicionUpt.DataSet).Post;
    TClientDataSet(dsRequisicionUpt.DataSet).ApplyUpdates(-1);
    Id := UltimoId;
    if Not CargarDatosFiltrados(TClientDataSet(dsRequisicionUpt.DataSet), 'IdRequisicion', [Id]) then
      raise InteligentException.CreateByCode(13, [Folio.Text, 'Requisición']);
    dsRequisicionUpt.DataSet.Refresh;
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
      dsRequisicionUpt.DataSet.Cancel;
      raise;
    end;
  end;
end;

procedure TFrmRequisicionDatos.IdAlmacenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Loc: TCursor;
begin
  Loc := Screen.Cursor;
  try
    Screen.Cursor := crHourGlass;

    if Key = 116 then
      dsEmbarcacion.DataSet.Refresh;
  finally
    Screen.Cursor := Loc;
  end;
end;

procedure TFrmRequisicionDatos.IdEmbarcacionKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  Loc: TCursor;
begin
  Loc := Screen.Cursor;
  try
    Screen.Cursor := crHourGlass;

    if Key = 116 then
      dsEmbarcacion.DataSet.Refresh;
  finally
    Screen.Cursor := Loc;
  end;
end;

end.
