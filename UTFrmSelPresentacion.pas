unit UTFrmSelPresentacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, ComCtrls, JvExComCtrls, JvComCtrls, JvCheckTreeView,
  JvExControls, JvLabel, ExtCtrls, DB, DBClient, URegistro, UInteliDialog,
  ClientModuleUnit1;

type
  TFrmSelPresentacion = class(TForm)
    Panel1: TPanel;
    JvLabel1: TJvLabel;
    ctvPresentaciones: TJvCheckTreeView;
    Panel2: TPanel;
    Panel3: TPanel;
    btnAgregar: TAdvGlowButton;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    dsPresentacionxInsumo: TDataSource;
    dsPresentacion: TDataSource;
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    Resultado: TModalResult;
    procedure LlenarTree;
  public
    IdInsumo: Integer;
  end;

var
  FrmSelPresentacion: TFrmSelPresentacion;

implementation

{$R *.dfm}

procedure TFrmSelPresentacion.btnAceptarClick(Sender: TObject);
var
  i, IdPresentacion: Integer;
  Modificado: Boolean;
begin
  Try
    Resultado := mrOk;

    Try
      Modificado := False;
      if ctvPresentaciones.Checkboxes then
      begin
        for i := 0 to ctvPresentaciones.Items.Count -1 do
        begin
          IdPresentacion := Integer(ctvPresentaciones.Items.Item[i].Data);

          if ctvPresentaciones.Checked[ctvPresentaciones.Items.Item[i]] then
          begin
            // Verificar si el nodo existe en la tabla (si no es asi crearlo)
            if not dsPresentacionxInsumo.DataSet.Locate('IdPresentacion', IdPresentacion, []) then
            begin
              // Crear nuevo registro de presentacion
              dsPresentacionxInsumo.DataSet.Append;
              dsPresentacionxInsumo.DataSet.FieldByName('IdPresentacionxInsumo').AsInteger := 0;
              dsPresentacionxInsumo.DataSet.FieldByName('IdPresentacion').AsInteger := IdPresentacion;
              dsPresentacionxInsumo.DataSet.FieldByName('IdInsumo').AsInteger := IdInsumo;
              dsPresentacionxInsumo.DataSet.Post;
              Modificado := True;
              //TClientDataSet(dsPresentacionxInsumo.DataSet).ApplyUpdates(-1);
            end;
          end
          else
          begin
            // Verificar si el nodo existe en la tabla (si es asi eliminarlo)
            if dsPresentacionxInsumo.DataSet.Locate('IdPresentacion', IdPresentacion, []) then
            begin
              // Eliminar el registro de la tabla
              dsPresentacionxInsumo.DataSet.Delete;
              Modificado := True;
            end;
          end;
        end;

        if Modificado then
          TClientDataSet(dsPresentacionxInsumo.DataSet).ApplyUpdates(-1);
      end
      else
      begin
        dsPresentacion.dataset.Locate('IdPresentacion', integer(ctvPresentaciones.Items.Item[ctvPresentaciones.ItemIndex].Data), []);
      end;
    Except
      Resultado := mrAbort;
    End;
  Finally
    Close;
  End;
end;

procedure TFrmSelPresentacion.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSelPresentacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ModalResult := Resultado;

  SetRegistry('\Ventanas', '\' + Self.Name, 'Top', IntToStr(Self.Top));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Left', IntToStr(Self.Left));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Width', IntToStr(Self.Width));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Height', IntToStr(Self.Height));

  Action := caFree;
end;

procedure TFrmSelPresentacion.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 116 then
  begin
    dsPresentacion.DataSet.Refresh;
    LlenarTree;   // Volver a llenar el tree con los datos actuales
  end;
end;

procedure TFrmSelPresentacion.FormShow(Sender: TObject);
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

      LlenarTree;   // Llenar el tree con las presentaciones posibles
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

procedure TFrmSelPresentacion.LlenarTree;
var
  Padre: TTreeNode;
  Nodo: TTreeNode;
begin
  Try
    dsPresentacion.DataSet.First;
    Padre := Nil;
    ctvPresentaciones.Items.Clear;
    while Not dsPresentacion.DataSet.Eof do
    begin
      Nodo := ctvPresentaciones.Items.AddObject(Padre, dsPresentacion.DataSet.FieldByName('TituloPresentacion').AsString, TObject(dsPresentacion.DataSet.FieldByName('IdPresentacion').AsInteger));

      // Verificar si debe estar checkeado
      ctvPresentaciones.Checked[Nodo] := Not dsPresentacion.DataSet.FieldByName('IdPresentacionxInsumo').IsNull;

      dsPresentacion.DataSet.Next;
    end;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, mtError, [mbOk], 0);
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
