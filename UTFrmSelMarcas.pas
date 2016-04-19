unit UTFrmSelMarcas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ComCtrls, JvExComCtrls, JvComCtrls, JvCheckTreeView, URegistro,
  UInteliDialog, ClientModuleUnit1, AdvGlowButton, JvExControls, JvLabel,
  ExtCtrls, DBClient, Provider;

type
  TFrmSelMarcas = class(TForm)
    dsMarca: TDataSource;
    ctvMarcas: TJvCheckTreeView;
    Panel1: TPanel;
    JvLabel1: TJvLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnAgregar: TAdvGlowButton;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    dsMarcaxInsumo: TDataSource;
    cdMarca: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAgregarClick(Sender: TObject);
  private
    Resultado: TModalResult;
    procedure LlenarTree;
  public
    IdInsumo: Integer;
  end;

var
  FrmSelMarcas: TFrmSelMarcas;

implementation

{$R *.dfm}

Uses
  UTFrmDatosMarca;

procedure TFrmSelMarcas.btnAceptarClick(Sender: TObject);
var
  i, IdMarca: Integer;
begin
  Try
    Resultado := mrOk;

    Try
      if ctvMarcas.Checkboxes then
      begin

        for i := 0 to ctvMarcas.Items.Count -1 do
        begin
          IdMarca := Integer(ctvMarcas.Items.Item[i].Data);

          if ctvMarcas.Checked[ctvMarcas.Items.Item[i]] then
          begin
            // Verificar si el nodo existe en la tabla (si no es asi crearlo)
            if not dsMarcaxInsumo.DataSet.Locate('IdMarca', IdMarca, []) then
            begin
              // Crear nuevo registro de marca
              dsMarcaxInsumo.DataSet.Append;
              dsMarcaxInsumo.DataSet.FieldByName('IdMarcaxInsumo').AsInteger := 0;
              dsMarcaxInsumo.DataSet.FieldByName('IdMarca').AsInteger := IdMarca;
              dsMarcaxInsumo.DataSet.FieldByName('IdInsumo').AsInteger := IdInsumo;
              dsMarcaxInsumo.DataSet.Post;
              TClientDataSet(dsMarcaxInsumo.DataSet).ApplyUpdates(-1);
            end;
          end
          else
          begin
            // Verificar si el nodo existe en la tabla (si es asi eliminarlo)
            if dsMarcaxInsumo.DataSet.Locate('IdMarca', IdMarca, []) then
            begin
              // Eliminar el registro de la tabla
              try
                dsMarcaxInsumo.DataSet.Delete;
                TClientDataSet(dsMarcaxInsumo.DataSet).ApplyUpdates(-1);
              except
                ;   // Si no se puede eliminar el registro es por cuestiones de integridad de datos entonces deberemos evitar que se genere el error
              end;
            end;
          end;
        end;
      end
      else
      begin
        dsmarca.dataset.Locate('idMarca', integer(ctvMarcas.Items.Item[ctvMarcas.ItemIndex].Data), []);
      end;
    Except
      on e:Exception do
      begin
        Resultado := mrAbort;
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      end;
    End;
  Finally
    Close;
  End;
end;

procedure TFrmSelMarcas.btnAgregarClick(Sender: TObject);
var
  NewMarca: TFrmDatosMarca;
begin
  try
    NewMarca := TFrmDatosMarca.Create(Self);
    NewMarca.BtnAddNew.Visible := False;

    if Not CrearConjunto(cdMarca, 'cmt_marca', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Marcas']);

    if Not CargarDatosFiltrados(cdMarca, 'IdMarca', [-9]) then
      raise InteligentException.CreateByCode(16, ['Marcas']);

    cdMarca.Open;

    try
      cdMarca.Append;
      cdMarca.FieldByName('IdMarca').AsInteger := 0;
      NewMarca.dsDatos.DataSet := cdMarca;
      NewMarca.KeyField := 'IdMarca';
      NewMarca.CodeField := 'CodigoMarca';
      NewMarca.EntityName := 'cmt_marca';

      if NewMarca.ShowModal = mrOk then
      begin
        dsMarca.DataSet.Refresh;
        LlenarTree;   // Volver a llenar el tree con los datos actuales
      end
      else
        cdMarca.Cancel;
    finally
      FreeAndNil(NewMarca);
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmSelMarcas.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSelMarcas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ModalResult := Resultado;

  if cdMarca.ProviderName <> '' then
    EliminarConjunto(cdMarca);

  SetRegistry('\Ventanas', '\' + Self.Name, 'Top', IntToStr(Self.Top));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Left', IntToStr(Self.Left));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Width', IntToStr(Self.Width));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Height', IntToStr(Self.Height));

  Action := caFree;
end;

procedure TFrmSelMarcas.FormShow(Sender: TObject);
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

      LlenarTree;   // Llenar el tree con las marcas posibles
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

procedure TFrmSelMarcas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 116 then
  begin
    dsMarca.DataSet.Refresh;
    LlenarTree;   // Volver a llenar el tree con los datos actuales
  end;
end;

procedure TFrmSelMarcas.LlenarTree;
var
  Padre: TTreeNode;
  Nodo: TTreeNode;
  Lista: TStringList;
begin
  Try
    dsMarca.DataSet.First;
    Padre := Nil;
    ctvMarcas.Items.Clear;
    Lista := TStringList.Create;
    Lista.Clear;
    while Not dsMarca.DataSet.Eof do
    begin
      if Lista.IndexOf(dsMarca.DataSet.FieldByName('IdMarca').AsString) < 0 then
      begin
        Lista.Add(dsMarca.DataSet.FieldByName('IdMarca').AsString);

        Nodo := ctvMarcas.Items.AddObject(Padre, dsMarca.DataSet.FieldByName('TituloMarca').AsString, TObject(dsMarca.DataSet.FieldByName('IdMarca').AsInteger));

        // Verificar si debe estar checkeado
        ctvMarcas.Checked[Nodo] := Not dsMarca.DataSet.FieldByName('IdMarcaxInsumo').IsNull;
      end;

      dsMarca.DataSet.Next;
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
