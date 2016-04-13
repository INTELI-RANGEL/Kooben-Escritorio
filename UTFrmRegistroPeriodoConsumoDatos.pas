unit UTFrmRegistroPeriodoConsumoDatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, ExtCtrls, JvExControls, JvLabel, DBCtrls,
  AdvGlowButton, ClientModuleUnit1, URegistro, UInteliDialog, StdCtrls, Mask,
  JvExMask, JvToolEdit, JvDBControls, JvSpin, JvDBSpinEdit, DateUtils,
  StrUtils;

type
  TFrmRegistroPeriodoConsumoDatos = class(TForm)
    Panel1: TPanel;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    dsRegistroConsumo: TDataSource;
    deFecha: TJvDBDateEdit;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    Personas: TJvDBSpinEdit;
    procedure FormShow(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
  private
    Resultado: TModalResult;
    ComparaId: Integer;
  public
    pIdRegistroConsumo: Integer;
  end;

var
  FrmRegistroPeriodoConsumoDatos: TFrmRegistroPeriodoConsumoDatos;

implementation

{$R *.dfm}

procedure TFrmRegistroPeriodoConsumoDatos.btnAceptarClick(Sender: TObject);
var
  Cursor: TCursor;
  sFecha: String;
begin
  Try
    Cursor := Screen.Cursor;
    Try
      // Verificar si se ha capturado una cantidad superior a 0 en las personas
      if Personas.Value <= 0 then
        raise InteligentWarning.CreateByCode(18, ['Número de Personas']);

      Screen.Cursor := crAppStart;

      // Verificar si la fecha capturada ya existe
      sFecha := IntToStr(YearOf(deFecha.Date)) + '-' + RightStr('0' + IntToStr(MonthOfTheYear(deFecha.Date)), 2) + '-' + RightStr('0' + IntToStr(DayOfTheMonth(deFecha.Date)), 2);
      if RegistrosCuenta('cmt_registroconsumo', 'Fecha', [sFecha]) > 0 then
      begin
        if InteliDialog.ShowModal('Registro ya existe', 'Ya existe un Registro de Consumo con fecha ' + ClientModule1.DateToStrSQL(deFecha.Date) + #10 + #10 +
                                  '¿Desea abrir el registro de consumo en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          // Abrir el registro de consumo
          dsRegistroConsumo.DataSet.Cancel;
          dsRegistroConsumo.DataSet.Close;
          pIdRegistroConsumo := DevuelveId('cmt_registroconsumo', 'Fecha = ' + QuotedStr(sFecha));
          if pIdRegistroConsumo = -1 then
            raise InteligentException.Create('*')
          else
            raise InteligentConnection.Create('*');
        end
        else
          raise InteligentException.Create('*');
      end;

      TClientDataSet(dsRegistroConsumo.DataSet).Post;
      TClientDataSet(dsRegistroConsumo.DataSet).ApplyUpdates(-1);

      pIdRegistroConsumo := UltimoId;

      Resultado := mrOk;
      Close;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:InteligentWarning do
    begin
      Personas.SetFocus;
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:InteligentException do
      deFecha.SetFocus;

    on e:InteligentConnection do
    begin
      Resultado := mrIgnore;
      Close;
    end;

    on e:Exception do
    begin
      dsRegistroConsumo.DataSet.Cancel;
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      Close;
    end;
  End;
end;

procedure TFrmRegistroPeriodoConsumoDatos.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmRegistroPeriodoConsumoDatos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ModalResult := Resultado;
  Action := caFree;
end;

procedure TFrmRegistroPeriodoConsumoDatos.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  Resultado := mrCancel;

  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      if pIdRegistroConsumo = -9 then
      begin
        ComparaId := -1;
        dsRegistroConsumo.DataSet.Append;
        dsRegistroConsumo.DataSet.FieldByName('IdRegistroConsumo').AsInteger := 0;
        dsREgistroConsumo.DataSet.FieldByName('Fecha').AsDateTime := Now;
      end
      else
      begin
        ComparaId := pIdRegistroConsumo;
        if Not CargarDatosFiltrados(TClientDataSet(dsRegistroConsumo.DataSet), 'IdRegistroConsumo', [pIdRegistroConsumo]) then
          raise InteligentException.CreateByCode(6, ['Registro de Consumos', pIdRegistroConsumo, 'IdRegistroConsumo']);

        dsRegistroConsumo.DataSet.Open;

        if dsRegistroConsumo.DataSet.RecordCount = 0 then
          raise InteligentException.CreateByCode(13, [pIdRegistroConsumo, 'Registros de Consumo']);

        dsRegistroConsumo.DataSet.Edit;
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
