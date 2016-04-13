unit UTFrmSolicitudDatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, AdvGlowButton, ExtCtrls, UInteliDialog, JvExControls, JvLabel,
  StdCtrls, Mask, DBCtrls, JvExMask, JvToolEdit, JvDBControls, DBClient,
  DateUtils, StrUtils;

type
  TFrmSolicitudDatos = class(TForm)
    Panel1: TPanel;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    dsSolicitud: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    JvLabel1: TJvLabel;
    CodigoSolicitud: TDBEdit;
    Panel5: TPanel;
    Panel6: TPanel;
    JvLabel2: TJvLabel;
    Referencia: TDBEdit;
    JvLabel3: TJvLabel;
    FechaInicio: TJvDBDateEdit;
    JvLabel4: TJvLabel;
    FechaFin: TJvDBDateEdit;
    JvLabel5: TJvLabel;
    Requerido: TJvDBDateEdit;
    Comentarios: TDBMemo;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    JvLabel6: TJvLabel;
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    Resultado: TModalResult;
    ComparaId: Integer;
  public
    pIdSolicitud: LongInt;
  end;

var
  FrmSolicitudDatos: TFrmSolicitudDatos;

implementation

uses ClientModuleUnit1;

{$R *.dfm}

procedure TFrmSolicitudDatos.btnAceptarClick(Sender: TObject);
var
  Cursor: TCursor;
  sFecha: String;
  ControlError: TWinControl;
  EsEdit: Boolean;

function DateToStrMy(Fecha: TDate): String;
const
  NomMes: Array[1..12] Of String = ('Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre');
begin
  Result := RightStr('0' + IntToStr(DayOfTheMonth(Fecha)), 2) + '-' + NomMes[MonthOf(Fecha)] + '-' + IntToStr(YearOf(Fecha));
end;

begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      // Verificar que las fechas sean correspondientes una a otra
      if FechaInicio.Date > FechaFin.Date then
      begin
        ControlError := FechaInicio;
        raise InteligentWarning.CreateByCode(18, ['La fecha de Inicio no puede ser posterior a la fecha de Término del periodo']);
      end;

      if Trim(Referencia.Text) = '' then
      begin
        ControlError := Referencia;
        raise InteligentWarning.CreateByCode(18, ['Referencia']);
      end;

      if InteliDialog.ShowModal('Selección de Registros de Consumo', 'Está a punto de asimilar todos los Registros de Consumo a partir del día: ' + DateToStrMy(FechaInicio.Date) + ' y hasta el día: ' + DateToStrMy(FechaFin.Date) +'.' + #10 + #10 +
                                'Se seleccionarán solamente aquellos Registros de Consumo que no hayan sido requeridos en otra Solicitud de Insumos ya procesada.' + #10 + #10 +
                                '¿Está seguro que desea proceder con la asimilación de los Registros de Consumo en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
        raise InteligentConnection.Create('*');

      // Asimilar los registros


      EsEdit := dsSolicitud.State = dsEdit;
      TClientDataSet(dsSolicitud.DataSet).Post;
      TClientDataSet(dsSolicitud.DataSet).ApplyUpdates(-1);

      if Not EsEdit then
        pIdSolicitud := UltimoId;

      Resultado := mrOk;
      Close;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:InteligentWarning do
    begin
      ControlError.SetFocus;
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:InteligentConnection do
    begin
      Resultado := mrAbort;
      Close;
    end;

    on e:Exception do
    begin
      dsSolicitud.DataSet.Cancel;
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      Close;
    end;
  End;
end;

procedure TFrmSolicitudDatos.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFrmSolicitudDatos.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  Resultado := mrCancel;

  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      if pIdSolicitud = -9 then
      begin
        ComparaId := -1;
        dsSolicitud.DataSet.Append;
        dsSolicitud.DataSet.FieldByName('IdSolicitud').AsInteger := 0;
        dsSolicitud.DataSet.FieldByName('CodigoSolicitud').AsString := '< Consecutivo automático >';
        dsSolicitud.DataSet.FieldByName('FechaInicio').AsDateTime := Now -1;
        dsSolicitud.DataSet.FieldByName('FechaFin').AsDateTime := Now;
        dsSolicitud.DataSet.FieldByName('Requerido').AsDateTime := Now;
        dsSolicitud.DataSet.FieldByName('Emitido').AsDateTime := Now;
      end
      else
      begin
        ComparaId := pIdSolicitud;

        if Not CargarDatosFiltrados(TClientDataSet(dsSolicitud.DataSet), 'IdSolicitud', [pIdSolicitud]) then
          raise InteligentException.CreateByCode(6, ['Solicitud de Ingredientes', pIdSolicitud, 'IdSolicitud']);

        if dsSolicitud.DataSet.Active then
          dsSolicitud.DataSet.Refresh
        else
          dsSolicitud.DataSet.Open;

        if dsSolicitud.DataSet.RecordCount = 0 then
          raise InteligentException.CreateByCode(13, [pIdSolicitud, 'Solicitud de Ingredientes']);

        dsSolicitud.DataSet.Edit;
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
