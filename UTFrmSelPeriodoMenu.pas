unit UTFrmSelPeriodoMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, ClientModuleUnit1, UInteliDialog, DateUtils,
  AdvGlowButton, StdCtrls, JvExControls, JvLabel, DB, DBClient;

type
  TFecha = class
    IdEmbarcacion: LongInt;
    Fecha: TDate;
    FechaInicio: TDate;
    FechaFinal: TDate;
  end;

  TFrmSelPeriodoMenu = class(TForm)
    lvPeriodos: TListView;
    Panel1: TPanel;
    Panel2: TPanel;
    btnAtras: TAdvGlowButton;
    btnAdelante: TAdvGlowButton;
    pnlArea: TPanel;
    pnlMesAnio: TPanel;
    eMes: TEdit;
    eAnio: TEdit;
    Panel3: TPanel;
    cbSecuencia: TComboBox;
    JvLabel1: TJvLabel;
    bntAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    dsConfiguracion: TDataSource;
    cdIndicador: TClientDataSet;
    cbEmbarcacion: TComboBox;
    JvLabel2: TJvLabel;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnAdelanteClick(Sender: TObject);
    procedure eGlobalEnter(Sender: TObject);
    procedure btnAtrasClick(Sender: TObject);
    procedure cbSecuenciaChange(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure bntAceptarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbEmbarcacionChange(Sender: TObject);
  private
    SelEdit: TEdit;
    myMes: Word;
    myAnio: Word;
    myFecha: TDate;
    OrDia: Word;
    Resultado: TModalResult;
    procedure PonerCalendario(pFecha: TDate);
    procedure ArmarSecuencia(pFecha: TDate);
  public
    dDesde: Integer;
    dHasta: Integer;
    Semanas: Byte;
    MustExist: Boolean;
  end;

var
  FrmSelPeriodoMenu: TFrmSelPeriodoMenu;

implementation

{$R *.dfm}

const
  nDia: Array[1..7] of String = ('Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sábado', 'Domingo');
  NomMes: Array[1..12] of String = ('ENERO', 'FEBRERO', 'MARZO', 'ABRIL', 'MAYO', 'JUNIO', 'JULIO',
                                    'AGOSTO', 'SEPTIEMBRE', 'OCTUBRE', 'NOVIEMBRE', 'DICIEMBRE');

procedure TFrmSelPeriodoMenu.btnAtrasClick(Sender: TObject);
begin
  // Atrazar un mes o un año
  if SelEdit = eMes then
  begin
    // Atrazar un mes
    Dec(myMes);
    if myMes < 1 then
    begin
      myMes := 12;
      Dec(myAnio);
    end;
  end
  else
  begin
    // Avanzar un año
    Dec(myAnio);
  end;

  // Determinar la nueva fecha
  if EncodeDate(myAnio, myMes, 1) = EncodeDate(YearOf(Now), MonthOfTheYear(Now), 1) then
    myFecha := EncodeDate(myAnio, myMes, OrDia)
  else
    myFecha := EncodeDate(myAnio, myMes, 1);

  eMes.Text := NomMes[myMes];
  eAnio.Text := IntToStr(myAnio);

  ArmarSecuencia(myFecha);
  PonerCalendario(myFecha);
end;

procedure TFrmSelPeriodoMenu.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSelPeriodoMenu.cbEmbarcacionChange(Sender: TObject);
begin
  // Localizar la embarcación en el dataset
  ClientModule1.cdEmbarcacion.RecNo := cbEmbarcacion.ItemIndex +1;

  // Volver a generar el menú
  PonerCalendario(myFecha);
end;

procedure TFrmSelPeriodoMenu.cbSecuenciaChange(Sender: TObject);
begin
  PonerCalendario(Now);
end;

procedure TFrmSelPeriodoMenu.bntAceptarClick(Sender: TObject);
begin
  Try
    // Verificar si se especificó que el menú debe existir
    if (MustExist) and (lvPeriodos.Items[lvPeriodos.ItemIndex].SubItems[6] = '') then
      raise InteligentException.Create('El periodo seleccionado no existe, es necesario que éste exista para poder cambiar su Estado');

    Resultado := mrOk;
    Close;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal('El periodo no existe', e.Message, mtWarning, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmSelPeriodoMenu.btnAdelanteClick(Sender: TObject);
begin
  // Avanzar un mes o un año
  if SelEdit = eMes then
  begin
    // Avanzar un mes
    Inc(myMes);
    if myMes > 12 then
    begin
      myMes := 1;
      Inc(myAnio);
    end;
  end
  else
  begin
    // Avanzar un año
    Inc(myAnio);
  end;

  // Determinar la nueva fecha
  if EncodeDate(myAnio, myMes, 1) = EncodeDate(YearOf(Now), MonthOfTheYear(Now), 1) then
    myFecha := EncodeDate(myAnio, myMes, OrDia)
  else
    myFecha := EncodeDate(myAnio, myMes, 1);

  eMes.Text := NomMes[myMes];
  eAnio.Text := IntToStr(myAnio);

  ArmarSecuencia(myFecha);
  PonerCalendario(myFecha);
end;

procedure TFrmSelPeriodoMenu.eGlobalEnter(Sender: TObject);
begin
  SelEdit := TEdit(Sender);
end;

procedure TFrmSelPeriodoMenu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ModalResult := Resultado;
end;

procedure TFrmSelPeriodoMenu.FormCreate(Sender: TObject);
begin
  MustExist := False;   // Por default
end;

procedure TFrmSelPeriodoMenu.FormResize(Sender: TObject);
begin
  pnlMesAnio.Left := (pnlArea.Width - pnlMesAnio.Width) Div 2;
end;

procedure TFrmSelPeriodoMenu.FormShow(Sender: TObject);
var
  i, Cuenta,
  iDia: Integer;
  oRecNo: LongInt;
begin
  Resultado := mrCancel;

  dDesde := dsConfiguracion.DataSet.FieldByName('Desde').AsInteger;
  dHasta := dsConfiguracion.DataSet.FieldByName('Hasta').AsInteger;
  Semanas := dsConfiguracion.DataSet.FieldByName('Semanas').AsInteger;

  myFecha := Now;
  OrDia := DayOfTheMonth(myFecha);
  myMes := MonthOfTheYear(myFecha);
  myAnio := YearOf(myFecha);

  eMes.Text := NomMes[myMes];
  eAnio.Text := IntToStr(myAnio);

  SelEdit := eMes;  // Seleccionar el mes por default
  SelEdit.SetFocus;
  Try
    VerificaDataSetEmbarcacion;
    if ClientModule1.cdEmbarcacion.RecordCount = 0 then
      raise InteligentException.CreateByCode(22, ['Ubicaciones']);

    if Semanas = 0 then
      raise InteligentException.CreateByCode(24, ['El número de semanas debe ser igual o mayor que cero']);

    if dHasta > dDesde then
      Cuenta := 1 + (dHasta - dDesde)
    else
      Cuenta := 1 + (7 - dDesde) + dHasta;

    Cuenta := Cuenta * Semanas;

    // Poner los periodos en el listview
    iDia := dDesde;
    for i := 1 to Cuenta do
    begin
      With lvPeriodos.Columns.Add do
      begin
        Caption := nDia[iDia];
        Width := 60;
        MaxWidth := 60;
        MinWidth := 60;
        Alignment := taCenter;
      end;

      Inc(iDia);
      if iDia > 7 then
        iDia := 1;
    end;

    // Poner la columna del Estado del periodo
    With lvPeriodos.Columns.Add do
    begin
      Caption := 'Estado';
      Width := 130;
      MaxWidth := 130;
      MinWidth := 130;
      Alignment := taCenter;
    end;

    // Poner la columna de la Solicitud de Consumo del periodo
    With lvPeriodos.Columns.Add do
    begin
      Caption := 'Solicitud';
      Width := 130;
      MaxWidth := 300;
      MinWidth := 130;
      Alignment := taCenter;
    end;

    if Not CrearConjunto(cdIndicador, 'cmt_menu_estado', ccSelect) then
      raise InteligentException.CreateByCode(5, ['Estado de Menus periodicos']);

    // Llenar las embarcaciones
    Try
      oRecNo := ClientModule1.cdEmbarcacion.RecNo;
      ClientModule1.cdEmbarcacion.First;
      cbEmbarcacion.Items.Clear;
      while not ClientModule1.cdEmbarcacion.Eof do
      begin
        cbEmbarcacion.Items.Add(ClientModule1.cdEmbarcacion.FieldByName('NombreEmbarcacion').AsString);

        ClientModule1.cdEmbarcacion.Next;
      end;
    Finally
      ClientModule1.cdEmbarcacion.RecNo := oRecNo;
    End;

    if cbEmbarcacion.Items.Count >= ClientModule1.cdEmbarcacion.RecordCount then
      cbEmbarcacion.ItemIndex := ClientModule1.cdEmbarcacion.RecNo -1;

    ArmarSecuencia(Now);
    PonerCalendario(Now);
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

procedure TFrmSelPeriodoMenu.PonerCalendario(pFecha: TDate);
var
  InicioMes: TDate;
  i, Activa, iDia: Integer;
  OldCur: TCursor;
  Objeto: TFecha;
  Periodo: TFecha;
  myEstado: String;
begin
  OldCur := Screen.Cursor;

  Try
    Screen.Cursor := crAppStart;

    if Not CargarDatosFiltrados(cdIndicador, 'Mes,IdEmbarcacion', [myMes, ClientModule1.cdEmbarcacion.FieldByName('IdEmbarcacion').AsInteger]) then
      raise InteligentException.CreateBycode(6, ['Estado de Menus Periódicos', myMes, 'Mes']);

    if cdIndicador.Active then
      cdIndicador.Refresh
    else
      cdIndicador.Open;

    // Limpiar los meses anteriores
    lvPeriodos.Items.Clear;

    // Obtener la fecha seleccionada
    Objeto := TFecha(cbSecuencia.Items.Objects[cbSecuencia.ItemIndex]);
    InicioMes := Objeto.Fecha;

    // Poner los elementos desde el inicio del periodo
    Activa := -1;
    while EncodeDate(YearOf(InicioMes + (Semanas * 7)), MonthOfTheYear(InicioMes + (Semanas * 7)), 1) <= EncodeDate(YearOf(Objeto.FechaInicio), MonthOfTheYear(Objeto.FechaInicio), 1) do
    begin
      if cdIndicador.Locate('Desde;Hasta', VarArrayOf([ClientModule1.DatetoStrSql(InicioMes), ClientModule1.DatetoStrSql(InicioMes +(Semanas *7) -1)]), []) then
        myEstado := cdIndicador.FieldByName('LeyendaEstado').AsString //cdIndicador.FieldByName('Estado').AsString + ' (' + cdIndicador.FieldByName('CuentaDias').AsString + ')'
      else
        myEstado := '';

      iDia := DayOfTheMonth(InicioMes);
      Periodo := TFecha.Create;
      Periodo.IdEmbarcacion := ClientModule1.cdEmbarcacion.FieldByName('IdEmbarcacion').AsInteger;
      Periodo.Fecha := InicioMes;
      Periodo.FechaFinal := (InicioMes + (Semanas * 7)) -1;
      With lvPeriodos.Items.Add do
      begin
        Caption := IntToStr(iDia);
        Data := Periodo;

        for i := 1 to (Semanas * 7) -1 do
          SubItems.Add(IntToStr(DayOfTheMonth(InicioMes + i)));

        SubItems.Add(myEstado);   // Agregar el estado
        if myEstado <> '' then
          SubItems.Add(cdIndicador.FieldByName('Solicitud').AsString);    // Agregar la leyenda de la solicitud de Consumo
      end;

      if (Now >= InicioMes) and (Now <= (InicioMes + (Semanas * 7) - 1)) then
        Activa := lvPeriodos.Items.Count -1;

      InicioMes := InicioMes + (Semanas * 7);
    end;

    // Seleccionar el renglón activo
    if Activa >= 0 then
      lvPeriodos.Items[Activa].Selected := True;
  Finally
    Screen.Cursor := OldCur;
  End;
end;

procedure TFrmSelPeriodoMenu.ArmarSecuencia(pFecha: TDate);
var
  i: Integer;
  InicioMes: TDate;
  Objeto: TFecha;
begin
  // Localizar inicio del mes actual
  InicioMes := EncodeDate(YearOf(pFecha), MonthOfTheYear(pFecha), 1);

  // Localiar inicio de rango
  while dDesde < DayOfTheWeek(InicioMes) do
    InicioMes := InicioMes -1;

  cbSecuencia.Items.Clear;
  for i := 1 to Semanas do
  begin
    Objeto := TFecha.Create;
    Objeto.IdEmbarcacion := ClientModule1.cdEmbarcacion.FieldByName('IdEmbarcacion').AsInteger;
    Objeto.Fecha := InicioMes;
    Objeto.FechaInicio := pFecha;
    Objeto.FechaFinal := InicioMes + 6;
    cbSecuencia.Items.AddObject(nDia[DayOfTheWeek(InicioMes)] + ' ' + IntToStr(DayOfTheMonth(InicioMes)) + ' DE ' + NomMes[MonthOfTheYear(InicioMes)] + ' DE ' + IntToStr(YearOf(InicioMes)), Objeto);

    InicioMes := InicioMes + 7;
  end;
  cbSecuencia.ItemIndex := 0;
end;

end.
