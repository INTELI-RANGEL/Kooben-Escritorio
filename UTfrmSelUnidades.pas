unit UTfrmSelUnidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, ComCtrls, JvExComCtrls, JvComCtrls, JvCheckTreeView,
  JvExControls, JvLabel, ExtCtrls, DB, URegistro, UInteliDialog;

type
  TFrmSelUnidades = class(TForm)
    Panel1: TPanel;
    JvLabel1: TJvLabel;
    ctvUnidades: TJvCheckTreeView;
    Panel2: TPanel;
    Panel3: TPanel;
    btnAgregar: TAdvGlowButton;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    dsUnidad: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    Resultado: TModalResult;
    ListaCheck: TStringList;
    ListaNombre: TStringList;
    procedure LlenarTree;
  public
    ListaUnidades: String;
    ListaNombres: String;
  end;

var
  FrmSelUnidades: TFrmSelUnidades;

implementation

{$R *.dfm}

procedure TFrmSelUnidades.btnAceptarClick(Sender: TObject);
var
  i: Integer;
begin
  Try
    Resultado := mrOk;
    ListaUnidades := '';
    ListaNombres := '';

    Try
      ListaCheck := TStringList.Create;
      ListaCheck.Clear;

      ListaNombre := TStringList.Create;
      ListaNombre.Clear;

      for i := 0 to ctvUnidades.Items.Count -1 do
        if ctvUnidades.Checked[ctvUnidades.Items.Item[i]] then
        begin
          ListaCheck.Add(IntToStr(Integer(ctvUnidades.Items.Item[i].Data)));
          ListaNombre.Add(ctvUnidades.Items.Item[i].Text);
        end;

      ListaUnidades := ListaCheck.CommaText;
      ListaNombres := ListaNombre.CommaText;
    Except
      Resultado := mrAbort;
    End;
  Finally
    Close;
  End;
end;

procedure TFrmSelUnidades.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSelUnidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ModalResult := Resultado;

  SetRegistry('\Ventanas', '\' + Self.Name, 'Top', IntToStr(Self.Top));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Left', IntToStr(Self.Left));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Width', IntToStr(Self.Width));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Height', IntToStr(Self.Height));

  Action := caFree;
end;

procedure TFrmSelUnidades.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  Resultado := mrCancel;

  Try
    Cursor := Screen.Cursor;

    Try
      Screen.Cursor := crAppStart;

      Try
        Self.Top := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Top'));
      Except
        ;
      End;

      Try
        Self.Left := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Left'));
      Except
        ;
      End;

      Try
        Self.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Width'));
      Except
        ;
      End;

      Try
        Self.Height := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Height'));
      Except
        ;
      End;

      LlenarTree;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmSelUnidades.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 116 then
  begin
    dsUnidad.DataSet.Refresh;
    LlenarTree;   // Volver a llenar el tree con los datos actuales
  end;
end;

procedure TFrmSelUnidades.LlenarTree;
var
  Padre: TTreeNode;
  Lista: TStringList;
  Nodo: TTreeNode;
begin
  dsUnidad.DataSet.First;
  Padre := Nil;
  ctvUnidades.Items.Clear;
  Lista := TStringList.Create;
  Lista.CommaText := ListaUnidades;
  while Not dsUnidad.DataSet.Eof do
  begin
    Nodo := ctvUnidades.Items.AddObject(Padre, dsUnidad.DataSet.FieldByName('sNombre').AsString, TObject(dsUnidad.DataSet.FieldByName('iIdUnidad').AsInteger));

    // Verificar si debe estar checkeado
    ctvUnidades.Checked[Nodo] := Lista.IndexOf(dsUnidad.DataSet.FieldByName('iIdUnidad').AsString) > -1;

    dsUnidad.DataSet.Next;
  end;
end;

end.
