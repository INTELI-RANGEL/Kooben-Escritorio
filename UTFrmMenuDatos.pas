unit UTFrmMenuDatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, StdCtrls, DBCtrls, JvExMask, JvToolEdit, JvDBControls,
  Mask, JvExControls, JvLabel, ExtCtrls, DB, StrUtils, DateUtils,
  UInteliDialog, ClientModuleUnit1, DBClient;

type
  TFecha = class
    Fecha: TDate;
    FechaInicio: TDate;
    FechaF: TDate;
  end;

  TFrmMenuDatos = class(TForm)
    Panel2: TPanel;
    Panel4: TPanel;
    JvLabel1: TJvLabel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    CodigoMenu: TDBEdit;
    Panel7: TPanel;
    Panel8: TPanel;
    JvLabel6: TJvLabel;
    Panel9: TPanel;
    Comentarios: TDBMemo;
    Panel1: TPanel;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    dsMenu: TDataSource;
    Desde: TDBText;
    btnSelPeriodos: TButton;
    Hasta: TDBText;
    dsBuscarMenu: TDataSource;
    dsConfiguracion: TDataSource;
    procedure btnAceptarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSelPeriodosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
  private
    Resultado: TModalResult;
    ComparaId: Integer;
  public
    pIdMenu: LongInt;
  end;

var
  FrmMenuDatos: TFrmMenuDatos;

implementation

uses UTFrmSelPeriodoMenu;

{$R *.dfm}

procedure TFrmMenuDatos.btnAceptarClick(Sender: TObject);
var
  Cursor: TCursor;
  Fecha: TFecha;
  EsEdit: Boolean;
begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      Fecha := TFecha(FrmSelPeriodoMenu.lvPeriodos.Items[FrmSelPeriodoMenu.lvPeriodos.ItemIndex].Data);

      // Verificar que las fechas no se traslapen
      if Not CargarDatosFiltrados(TClientDataSet(dsBuscarMenu.DataSet), 'FechaI,FechaF', [ClientModule1.DateToStrSQL(Fecha.Fecha), ClientModule1.DateToStrSQL(Fecha.FechaF)]) then
        raise InteligentException.CreateByCode(16, ['Menus']);

      if dsBuscarMenu.DataSet.Active then
        dsBuscarMenu.DataSet.Refresh
      else
        dsBuscarMenu.DataSet.Open;

      if dsBuscarMenu.DataSet.RecordCount > 0 then
        raise InteligentException.CreateByCode(24, ['El periodo seleccionado:' + #10 + #10 +
                                                    DateToStr(Fecha.Fecha) + ' al ' + DateToStr(Fecha.FechaF) + #10 + #10 +
                                                    'coinside total o parcialmente con una periodo ya existente:' + #10 + #10 +
                                                    dsBuscarMenu.DataSet.FieldByName('Desde').AsString + ' al ' + dsBuscarMenu.DataSet.FieldByName('Hasta').AsString + #10 + #10 +
                                                    'No es posible registrar este periodo, verifique esto e intente de nuevo.']);

      EsEdit := dsMenu.State = dsEdit;
      TClientDataSet(dsMenu.DataSet).Post;
      TClientDataSet(dsMenu.DataSet).ApplyUpdates(-1);

      if Not EsEdit then
        pIdMenu := UltimoId;

      Resultado := mrOk;
      Close;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmMenuDatos.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmMenuDatos.btnSelPeriodosClick(Sender: TObject);
var
  Fecha: TFecha;
begin
  Try
    Application.CreateForm(TFrmSelPeriodoMenu, FrmSelPeriodoMenu);
    FrmSelPeriodoMenu.dsConfiguracion.DataSet := dsConfiguracion.DataSet;

    if FrmSelPeriodoMenu.ShowModal = mrOk Then
    begin
      Fecha := TFecha(FrmSelPeriodoMenu.lvPeriodos.Items[FrmSelPeriodoMenu.lvPeriodos.ItemIndex].Data);

      // Verificar que las fechas no se traslapen
      if Not CargarDatosFiltrados(TClientDataSet(dsBuscarMenu.DataSet), 'FechaI,FechaF', [ClientModule1.DateToStrSQL(Fecha.Fecha), ClientModule1.DateToStrSQL(Fecha.FechaF)]) then
        raise InteligentException.CreateByCode(16, ['Menus']);

      if dsBuscarMenu.DataSet.Active then
        dsBuscarMenu.DataSet.Refresh
      else
        dsBuscarMenu.DataSet.Open;

      if dsBuscarMenu.DataSet.RecordCount > 0 then
        raise InteligentException.CreateByCode(24, ['El periodo seleccionado:' + #10 + #10 +
                                                    DateToStr(Fecha.Fecha) + ' al ' + DateToStr(Fecha.FechaF) + #10 + #10 +
                                                    'coinside total o parcialmente con una periodo ya existente:' + #10 + #10 +
                                                    dsBuscarMenu.DataSet.FieldByName('Desde').AsString + ' al ' + dsBuscarMenu.DataSet.FieldByName('Hasta').AsString + #10 + #10 +
                                                    'No es posible registrar este periodo, verifique esto e intente de nuevo.']);

      dsMenu.DataSet.FieldByName('Desde').AsDateTime := Fecha.Fecha;
      dsMenu.DataSet.FieldByName('Hasta').AsDateTime := Fecha.FechaF;
    end;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmMenuDatos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ModalResult := Resultado;
end;

procedure TFrmMenuDatos.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  Resultado := mrCancel;

  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      if pIdMenu = -9 then
      begin
        ComparaId := -1;
        dsMenu.DataSet.Append;
        dsMenu.DataSet.FieldByName('IdMenu').AsInteger := 0;
        dsMenu.DataSet.FieldByName('CodigoMenu').AsString := '< Consecutivo automático >';
        //dsMenu.DataSet.FieldByName('Desde').AsDateTime := Now -1;
        //dsMenu.DataSet.FieldByName('Hasta').AsDateTime := Now;
        dsMenu.DataSet.FieldByName('Comentarios').AsString := '';
        dsMenu.DataSet.FieldByName('Estado').AsString := 'Activo';
      end
      else
      begin
        ComparaId := pIdMenu;

        if Not CargarDatosFiltrados(TClientDataSet(dsMenu.DataSet), 'IdMenu', [pIdMenu]) then
          raise InteligentException.CreateByCode(6, ['Menú', pIdMenu, 'IdMenu']);

        if dsMenu.DataSet.Active then
          dsMenu.DataSet.Refresh
        else
          dsMenu.DataSet.Open;

        if dsMenu.DataSet.RecordCount = 0 then
          raise InteligentException.CreateByCode(13, [pIdMenu, 'Id. Menu']);

        dsMenu.DataSet.Edit;
      end;
    Finally
      Screen.Cursor := Cursor;
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
