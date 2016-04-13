unit UTFrmSalidasAlmacen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, AdvGlowButton, ClientModuleUnit1, UInteliDialog, DB,
  DBClient, StdCtrls, Mask, DBCtrls, JvExMask, JvToolEdit, JvDBControls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit, cxMemo, cxDBEdit, JvExControls, JvLabel,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, JvBaseEdits,
  frxClass, frxDBSet, URegistro, cxCurrencyEdit;

type
  TFrmSalidasAlmacen = class(TForm)
    pnlEncabezado: TPanel;
    pnlDatos: TPanel;
    pnlBotones: TPanel;
    btnGrabar: TAdvGlowButton;
    btnCerrar: TAdvGlowButton;
    cdRegistroMovUpt: TClientDataSet;
    cdRegistroMovPdaUpt: TClientDataSet;
    dsRegistroMovUpt: TDataSource;
    dsRegistroMovPdaUpt: TDataSource;
    Referencia: TDBEdit;
    cdRecibio: TClientDataSet;
    cdAutorizo: TClientDataSet;
    dsRecibido: TDataSource;
    dsAutorizo: TDataSource;
    JvLabel2: TJvLabel;
    Panel1: TPanel;
    Comentarios: TcxDBMemo;
    pnllblComentarios: TPanel;
    JvLabel4: TJvLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    JvLabel3: TJvLabel;
    Panel5: TPanel;
    pnlIdAutorizo: TPanel;
    IdRecibio: TDBLookupComboBox;
    IdAutorizo: TDBLookupComboBox;
    pnlAccionesPartida: TPanel;
    cdRegistroMovimientoPartida: TClientDataSet;
    dsRegistroMovimientoPartida: TDataSource;
    pnlCodigoRegistroMovimiento: TPanel;
    JvLabel1: TJvLabel;
    CodigoRegistroMovimiento: TDBEdit;
    Aplicacion: TJvDBDateEdit;
    JvLabel5: TJvLabel;
    pnlBotonesEncabezado: TPanel;
    btnEncabezadoGrabar: TAdvGlowButton;
    btnEncabezadoCancel: TAdvGlowButton;
    pnlPartidas: TPanel;
    gridPartida: TcxGrid;
    tvRegistroMovPda: TcxGridDBTableView;
    CodigoInsumo: TcxGridDBColumn;
    NombreInsumo: TcxGridDBColumn;
    UMedida: TcxGridDBColumn;
    Solicitado: TcxGridDBColumn;
    gridPartidaLevel1: TcxGridLevel;
    Panel2: TPanel;
    cdInsumoBuscar: TClientDataSet;
    dsInsumoBuscar: TDataSource;
    edtNombreInsumo: TDBText;
    pnlSelInsumo: TPanel;
    Panel6: TPanel;
    btnSelOk: TAdvGlowButton;
    btnSelCancelar: TAdvGlowButton;
    tvInsumoBuscar: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    selNombreInsumo: TcxGridDBColumn;
    selCodigoInsumo: TcxGridDBColumn;
    btnImprimir2: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    frxSalidas: TfrxReport;
    fdsRegistroMovimiento: TfrxDBDataset;
    fdsRegistroMovimientoPartida: TfrxDBDataset;
    Panel7: TPanel;
    btnImprimir: TAdvGlowButton;
    cdRegistroMovimiento: TClientDataSet;
    cdBuscarSalida: TClientDataSet;
    IdEmbarcacion: TDBLookupComboBox;
    JvLabel7: TJvLabel;
    cdEmbarcacion: TClientDataSet;
    dsEmbarcacion: TDataSource;
    cdConsultaExistencia: TClientDataSet;
    Panel8: TPanel;
    cdPresentacion: TClientDataSet;
    dsPresentacion: TDataSource;
    cdConversion: TClientDataSet;
    dsConversion: TDataSource;
    Panel9: TPanel;
    Panel10: TPanel;
    JvLabel6: TJvLabel;
    edtCodigoInsumo: TEdit;
    JvLabel8: TJvLabel;
    edtSolicitado: TJvCalcEdit;
    btnOkInsumo: TAdvGlowButton;
    Panel11: TPanel;
    pnlPresentacion: TPanel;
    lblPresentacion: TJvLabel;
    IdPresentacion: TDBLookupComboBox;
    rgTipoMedida: TRadioGroup;
    edtsNombre: TDBText;
    pnlConversion: TPanel;
    lblConversion: TJvLabel;
    IdConversion: TDBLookupComboBox;
    Registrado: TcxGridDBColumn;
    sNombre: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormaSelShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnEncabezadoGrabarClick(Sender: TObject);
    procedure cdRegistroMovUptAfterEdit(DataSet: TDataSet);
    procedure btnEncabezadoCancelClick(Sender: TObject);
    procedure edtCodigoInsumoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormaSelClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSelCancelarClick(Sender: TObject);
    procedure btnSelOkClick(Sender: TObject);
    procedure tvInsumoBuscarCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure edtSolicitadoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodigoInsumoChange(Sender: TObject);
    procedure edtSolicitadoChange(Sender: TObject);
    procedure btnOkInsumoClick(Sender: TObject);
    procedure btnGrabarClick(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure pnlEncabezadoDblClick(Sender: TObject);
    procedure cdRegistroMovPdaUptAfterPost(DataSet: TDataSet);
    procedure btnImprimirClick(Sender: TObject);
    procedure cdRegistroMovUptAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdRegistroMovPdaUptAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure rgTipoMedidaClick(Sender: TObject);
    procedure cdInsumoBuscarAfterOpen(DataSet: TDataSet);
    procedure cdInsumoBuscarAfterClose(DataSet: TDataSet);
    procedure cdPresentacionAfterScroll(DataSet: TDataSet);
    procedure cdConversionAfterScroll(DataSet: TDataSet);
  private
    IdRegistroMovimiento: Integer;
    CodigoOriginal: String;
    FormaSelResult: TModalResult;
    NecesitaGrabar: Boolean;
    ValorRegistrado: Real;
    procedure EstadoEncabezado(Modo: Boolean);
    function BuscarReceta: Integer;
  public
    { Public declarations }
  end;

var
  FrmSalidasAlmacen: TFrmSalidasAlmacen;

implementation

{$R *.dfm}

Uses
  Unit2, UTFrmBuscarMovimiento;

procedure TFrmSalidasAlmacen.btnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSalidasAlmacen.btnEncabezadoCancelClick(Sender: TObject);
begin
  try
    cdRegistroMovUpt.Cancel;
    EstadoEncabezado(False);
  finally
    if Not cdRegistroMovimientoPartida.Active then
      Close;
  end;
end;

procedure TFrmSalidasAlmacen.btnEncabezadoGrabarClick(Sender: TObject);
var
  Obj: TWinControl;
  OrigState: TDataSetState;
begin
  try
    // Verificar si los datos se han capturado de manera correcta
    Obj := CodigoRegistroMovimiento;
    if Trim(CodigoRegistroMovimiento.Text) = '' then
      raise InteligentWarning.CreateByCode(18, ['Código Salida']);

    // Si se trata de una edición se deberá verificar que no se duplique el código si es que este ha sido cambiado
    if (cdRegistroMovUpt.State = dsInsert) OR ((cdRegistroMovUpt.State = dsEdit) and (ANSICOMPARETEXT(CodigoRegistroMovimiento.Text, CodigoOriginal) <> 0)) then
    begin
      try
        if Not CargarDatosFiltrados(cdRegistroMovUpt, 'CodigoRegistroMovimiento,TipoMovimiento', [CodigoRegistroMovimiento.Text, 'SALIDA']) then
          raise InteligentException.CreateByCode(16, ['Registros de Salidas']);
        if CuantosRegistros(cdRegistroMovUpt) > 0 then
        begin
          Obj := CodigoRegistroMovimiento;
          raise InteligentWarning.CreateByCode(17, ['Registro de Salidas', CodigoRegistroMovimiento.Text]);
        end;
      finally
        if Not CargarDatosFiltrados(cdRegistroMovUpt, 'IdRegistroMovimiento', [-9]) then
          raise InteligentException.CreateByCode(16, ['Registros de Salidas']);
      end;
    end;

    Obj := Referencia;
    if Trim(Referencia.Text) = '' then
      raise InteligentWarning.CreateByCode(18, ['Referencia']);

    Obj := IdRecibio;
    if cdRegistroMovUpt.FieldByName('IdRecibio').IsNull then
      raise InteligentWarning.CreateByCode(18, ['Recibió']);

    Obj := IdAutorizo;
    if cdRegistroMovUpt.FieldByName('IdAutorizo').IsNull then
      raise InteligentWarning.CreateByCode(18, ['Autorizó']);

    OrigState := cdRegistroMovUpt.State;

    cdRegistroMovUpt.Post;
    cdRegistroMovUpt.ApplyUpdates(-1);

    if OrigState = dsInsert then
    begin
      IdRegistroMovimiento := UltimoId;
      cdRegistroMovUpt.Close;
      if Not CargarDatosFiltrados(cdRegistroMovUpt, 'IdRegistroMovimiento', [IdRegistroMovimiento]) then
        raise InteligentException.CreateByCode(6, ['Registro de Salida', IdRegistroMovimiento, 'Id. Registro de Movimiento']);

      cdRegistroMovUpt.Open;

      if Not CargarDatosFiltrados(cdRegistroMovimiento, 'IdRegistroMovimiento', [IdRegistroMovimiento]) then
        raise InteligentException.CreateByCode(6, ['Salidas del Almacén', IdRegistroMovimiento, 'Id. Salida']);

      if Not CargarDatosFiltrados(cdRegistroMovimientoPartida, 'IdRegistroMovimiento', [IdRegistroMovimiento]) then
        raise InteligentException.CreateByCode(6, ['Partidas de Salidas del Almacén', IdRegistroMovimiento, 'Id. Salida']);

      if cdRegistroMovimiento.Active then
        cdRegistroMovimiento.Refresh
      else
        cdRegistroMovimiento.Open;

      if cdRegistroMovimientoPartida.Active then
        cdRegistroMovimientoPartida.Refresh
      else
        cdRegistroMovimientoPartida.Open;
    end
    else
      IdRegistroMovimiento := cdRegistroMovUpt.FieldByName('IdRegistroMovimiento').AsInteger;

    EstadoEncabezado(False);
  except
    on e:InteligentWarning do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      Obj.SetFocus;
    end;

    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      Close;
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      Close;
    end;
  end;
end;

procedure TFrmSalidasAlmacen.btnGrabarClick(Sender: TObject);
begin
  // Verificar las existencias
  ConcretarTransaccion;
  NecesitaGrabar := False;
  InteliDialog.ShowModal('El registro ha sido grabado', 'El registro ha sido grabado', mtInformation, [mbOk], 0);
  IniciarTransaccion;
end;

procedure TFrmSalidasAlmacen.btnImprimirClick(Sender: TObject);
begin
  ClientModule1.ImprimeReporte('SalidasAlmacen.fr3', frxSalidas);
end;

procedure TFrmSalidasAlmacen.btnOkInsumoClick(Sender: TObject);
var
  LocCursor: TCursor;
  Existencia: Real;
  Resultado: Real;
  Leyenda: String;
begin
  // Agregar el Insumo a las partidas de Salida
  if cdInsumoBuscar.RecordCount > 0 then
  begin
    try
      if pnlPresentacion.Visible then
        if IdPresentacion.KeyValue = Null then
          raise InteligentException.CreateByCode(18, ['Presentación']);

      if pnlConversion.Visible then
        if IdConversion.KeyValue = Null then
          raise InteligentException.CreateByCode(18, ['Conversión']);

      Leyenda := '';
      if pnlPresentacion.Visible then
        Leyenda := FloatToStrF(ValorRegistrado, ffNumber, 16, 6) + ' ' + cdPresentacion.FieldByName('sNombre_t').AsString + ' DE ' + cdInsumoBuscar.FieldByName('NombreInsumo').AsString + ' EN PRESENTACIÓN DE: ' + cdPresentacion.FieldByName('TituloPresentacion').AsString + ' (' + FloatToStrF(edtSolicitado.Value, ffNumber, 16, 6) + ')';

      if pnlConversion.Visible then
        Leyenda := FloatToStrF(ValorRegistrado, ffNumber, 16, 6) + ' ' + cdConversion.FieldByName('sNombre_t').AsString + ' DE ' + cdInsumoBuscar.FieldByName('NombreInsumo').AsString + ' = ' + FloatToStrF(edtSolicitado.Value, ffNumber, 16, 6) + ' ' + cdConversion.FieldByName('sNombre_s').AsString;

      // Verificar información de captura
      if InteliDialog.ShowModal('Verificar captura de datos', 'Se va a capturar la siguiente partida:' + #10 + #10 +
                                                              Leyenda + #10 + #10 + '¿Confirma la creación de la partida?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        raise InteligentConnection.Create('*');

      LocCursor := Screen.Cursor;
      try
        Screen.Cursor := crHourGlass;

        if Not CargarDatosFiltrados(cdConsultaExistencia, 'IdEmbarcacion,Aplicacion,TiposInsumo,IdInsumo', [cdRegistroMovimiento.FieldByName('IdEmbarcacion').AsInteger, ClientModule1.DatetoStrSql(Now), '', cdInsumoBuscar.FieldByName('IdInsumo').AsInteger]) then
          raise InteligentException.CreateByCode(16, ['Existencias']);
//          ProcedimientoAlmacenado(cdConsultaExistencia, 'Res_Existencias', 'pIdEmbarcacion,pAplicacion,pTiposInsumo,pIdInsumo', [cdRegistroMovimiento.FieldByName('IdEmbarcacion').AsInteger, ClientModule1.DatetoStrSql(Now), '', cdInsumoBuscar.FieldByName('IdInsumo').AsInteger]);

        if cdConsultaExistencia.Active then
          cdConsultaExistencia.Refresh
        else
          cdConsultaExistencia.Open;

        if cdConsultaExistencia.RecordCount = 0 then
          raise InteligentException.CreateByCode(30, ['Existencias para ' + cdInsumoBuscar.FieldByName('NombreInsumo').AsString]);

        Existencia := cdConsultaExistencia.FieldByName('Existencia').AsFloat;

        if Existencia < edtSolicitado.Value then
          if InteliDialog.ShowModal('Cantidad superior a la existencia', 'La cantidad solicitada (' + FloatToStr(edtSolicitado.Value) + ' ' + cdInsumoBuscar.FieldByName('sNombre').AsString + ') es superior a la existencia (' + FloatToStr(Existencia) + ' ' + cdInsumoBuscar.FieldByName('sNombre').AsString + '), esto generará una existencia negativa.' + #10 + #10 + '¿Está seguro que desea registrar esta salida?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
            raise InteligentConnection.Create('*');

        if Not cdRegistroMovPdaUpt.Active then
          cdRegistroMovPdaUpt.Open;

        cdRegistroMovPdaUpt.Append;
        cdRegistroMovPdaUpt.FieldByName('IdRegistroMovimientoPartida').AsInteger := 0;
        cdRegistroMovPdaUpt.FieldByName('IdRegistroMovimiento').AsInteger := IdRegistroMovimiento;
        cdRegistroMovPdaUpt.FieldByName('IdInsumo').AsInteger := cdInsumoBuscar.FieldByName('IdInsumo').AsInteger;
        cdRegistroMovPdaUpt.FieldByName('Solicitado').AsFloat := edtSolicitado.Value;
        cdRegistroMovPdaUpt.FieldByName('Registrado').AsFloat := edtSolicitado.Value;
        cdRegistroMovPdaUpt.FieldByName('Surtido').AsDateTime := cdRegistroMovUpt.FieldByName('Aplicacion').AsDateTime;
        cdRegistroMovPdaUpt.FieldByName('Precio').AsFloat := 0.000000;

        // Si es una cantidad por presentación se deberá almacenar la cantidad en base a su unidad de medida original
        if pnlPresentacion.Visible then
        begin
          cdRegistroMovPdaUpt.FieldByName('IdPresentacion').AsInteger := cdPresentacion.FieldByName('IdPresentacion').AsInteger;
          cdRegistroMovPdaUpt.FieldByName('Registrado').AsFloat := ValorRegistrado;
        end
        else
          cdRegistroMovPdaUpt.FieldByName('IdPresentacion').Clear;

        // Si es una cantidad por conversion se deberá almacenar la cantidad en base a su unidad de medida original
        if pnlConversion.Visible then
        begin
          cdRegistroMovPdaUpt.FieldByName('IdConversion').AsInteger := cdConversion.FieldByName('IdConversion').AsInteger;
          cdRegistroMovPdaUpt.FieldByName('Registrado').AsFloat := ValorRegistrado;
        end
        else
          cdRegistroMovPdaUpt.FieldByName('IdConversion').Clear;
        cdRegistroMovPdaUpt.Post;
        cdRegistroMovPdaUpt.ApplyUpdates(-1);

        cdRegistroMovimientoPartida.Refresh;
        if edtCodigoInsumo.CanFocus then
          edtCodigoInsumo.SetFocus;
      finally
        Screen.Cursor := LocCursor;
      end;
    except
      on e:InteligentConnection do
        ;

      on e:InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e:Exception do
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmSalidasAlmacen.btnSelCancelarClick(Sender: TObject);
begin
  TForm(TWinControl(Sender).Parent.Parent.Parent).Close;
end;

procedure TFrmSalidasAlmacen.btnSelOkClick(Sender: TObject);
begin
  FormaSelResult := mrOk;
  TForm(TWinControl(Sender).Parent.Parent.Parent).Close;
end;

procedure TFrmSalidasAlmacen.cdConversionAfterScroll(DataSet: TDataSet);
var
  Leyenda: String;
begin
  Leyenda := '';
  if (cdInsumoBuscar.Active) and (edtSolicitado.Value > 0) and (IdConversion.KeyValue > 0) then
  begin
    if AnsiCompareText(cdConversion.FieldByName('Operador').AsString, 'Multiplicar') = 0 then
      ValorRegistrado := edtSolicitado.Value * cdConversion.FieldByName('Valor').AsFloat
    else
      ValorRegistrado := edtSolicitado.Value / cdConversion.FieldByName('Valor').AsFloat;
    ValorRegistrado := Round(ValorRegistrado * 1000000) / 1000000;

    Leyenda := FloatToStrF(edtSolicitado.Value, ffNumber, 16, 6) + ' ' + cdPresentacion.FieldByName('sNombre_s').AsString + ' = ' + FloatToStrF(ValorRegistrado, ffNumber, 16, 6) + ' ' + cdInsumoBuscar.FieldByName('sNombre').AsString;
  end;

  lblConversion.Caption := Leyenda;
end;

procedure TFrmSalidasAlmacen.cdInsumoBuscarAfterClose(DataSet: TDataSet);
begin
  rgTipoMedida.Enabled := False;
end;

procedure TFrmSalidasAlmacen.cdInsumoBuscarAfterOpen(DataSet: TDataSet);
begin
  rgTipoMedida.Enabled := True;
end;

procedure TFrmSalidasAlmacen.cdPresentacionAfterScroll(DataSet: TDataSet);
var
  Leyenda: String;
begin
  Leyenda := '';
  if (cdInsumoBuscar.Active) and (edtSolicitado.Value > 0) and (IdPresentacion.KeyValue > 0) then
  begin
    if AnsiCompareText(cdPresentacion.FieldByName('Operador').AsString, 'Multiplicar') = 0 then
      ValorRegistrado := edtSolicitado.Value * cdPresentacion.FieldByName('Valor').AsFloat
    else
      ValorRegistrado := edtSolicitado.Value / cdPresentacion.FieldByName('Valor').AsFloat;
    ValorRegistrado := Round(ValorRegistrado * 1000000) / 1000000;

    Leyenda := FloatToStrF(edtSolicitado.Value, ffNumber, 16, 6) + ' ' + cdPresentacion.FieldByName('TituloPresentacion').AsString + ' = ' + FloatToStrF(ValorRegistrado, ffNumber, 16, 6) + ' ' + cdInsumoBuscar.FieldByName('sNombre').AsString;
  end;

  lblPresentacion.Caption := Leyenda;
end;

procedure TFrmSalidasAlmacen.cdRegistroMovPdaUptAfterApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  NecesitaGrabar := True;
end;

procedure TFrmSalidasAlmacen.cdRegistroMovPdaUptAfterPost(DataSet: TDataSet);
begin
  if Not cdRegistroMovimiento.Active then
    cdRegistroMovimiento.Open;

  cdRegistroMovimiento.Refresh;
end;

procedure TFrmSalidasAlmacen.cdRegistroMovUptAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  NecesitaGrabar := True;
end;

procedure TFrmSalidasAlmacen.cdRegistroMovUptAfterEdit(DataSet: TDataSet);
begin
  CodigoOriginal := cdRegistroMovUpt.FieldByName('CodigoRegistroMovimiento').AsString;
end;

procedure TFrmSalidasAlmacen.edtCodigoInsumoChange(Sender: TObject);
begin
  if cdInsumoBuscar.Active then
    cdInsumoBuscar.Close;

  lblPresentacion.Caption := '';
end;

procedure TFrmSalidasAlmacen.edtCodigoInsumoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  FormaSel: TForm;
begin
  if Key = 13 then
  begin
    try
      // Localizar el insumo
      if Not CargarDatosFiltrados(cdInsumoBuscar, 'CodigoBuscar', [edtCodigoInsumo.Text]) then
        raise InteligentException.CreateByCode(6, ['Insumos', edtCodigoInsumo.Text, 'Codigo Insumo']);

      if cdInsumoBuscar.Active then
        cdInsumoBuscar.Refresh
      else
        cdInsumoBuscar.Open;

      btnOkInsumo.Enabled := False;
      if cdInsumoBuscar.RecordCount > 0 then
      begin
        if cdInsumoBuscar.RecordCount = 1 then
        begin
          // Si se trata solo de uno registro entonces se deberá ir directamente a pedir la cantidad solicitada
          btnOkInsumo.Enabled := True;
          edtSolicitado.SetFocus;
        end
        else
        begin
          // Si se tratan de valor registros entonces se deberá mostrar una ventana con ellos para seleccionar el indicado
          FormaSel := TForm.Create(Self);
          try
            FormaSel.Width := pnlSelInsumo.Width;
            FormaSel.OnClose := FormaSelClose;
            FormaSel.OnShow := FormaSelShow;
            FormaSel.OnClose := FormaSelClose;
            FormaSel.Height := pnlSelInsumo.Height;
            pnlSelInsumo.Parent := FormaSel;
            pnlSelInsumo.Align := alClient;
            pnlSelInsumo.Visible := True;

            if FormaSel.ShowModal = mrOk Then
            begin
              edtSolicitado.SetFocus;
              btnOkInsumo.Enabled := edtSolicitado.Value > 0;   // Si ya está indicada una cantidad se deberá poner el Ok habilitado
            end;
          finally
            pnlSelInsumo.Visible := False;
            pnlSelInsumo.Align := alNone;
            pnlSelInsumo.Parent := Self;
          end;
        end;

        // Filtrar solo sus presentaciones
        cdPresentacion.Filtered := False;
        cdPresentacion.Filter := 'iIdUnidad_t = ' + cdInsumoBuscar.FieldByName('iIdUnidad').AsString;
        cdPresentacion.Filtered := True;

        // Filtrar solo sus presentaciones
        cdConversion.Filtered := False;
        cdConversion.Filter := 'iIdUnidad_t = ' + cdInsumoBuscar.FieldByName('iIdUnidad').AsString;
        cdConversion.Filtered := True;
      end;
    except
      on e:InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e:Exception do
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmSalidasAlmacen.edtSolicitadoChange(Sender: TObject);
begin
  btnSelOk.Enabled := edtSolicitado.Value > 0;
  cdPresentacionAfterScroll(cdPresentacion);
  {if edtSolicitado.Value <= 0 then
    lblPresentacion.Caption := '';}
end;

procedure TFrmSalidasAlmacen.edtSolicitadoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
  begin
    if edtSolicitado.Value > 0 then
      // Verificar si ya se ha seleccionado un Insumo
      btnOkInsumo.Enabled := cdInsumoBuscar.Active
    else
      btnOkInsumo.Enabled := False;

    if btnOkInsumo.Enabled then
      btnOkInsumo.SetFocus
    else
      edtCodigoInsumo.SetFocus;
  end;
end;

procedure TFrmSalidasAlmacen.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
  try
    for i := 0 to tvInsumoBuscar.ColumnCount -1 do
      SetRegistry('\Ventanas', '\' + Self.Name + '\tvInsumoBuscar\Col' + IntToStr(i), 'Width', IntToStr(tvInsumoBuscar.Columns[i].Width));
  Except
    ;
  end;

  try
    for i := 0 to tvRegistroMovPda.ColumnCount -1 do
      SetRegistry('\Ventanas', '\' + Self.Name + '\tvRegistroMovPda\Col' + IntToStr(i), 'Width', IntToStr(tvRegistroMovPda.Columns[i].Width));
  Except
    ;
  end;

  CancelarTransaccion;
  EliminarConjunto([cdRegistroMovUpt, cdRegistroMovPdaUpt, cdRegistroMovimiento, cdRegistroMovimientoPartida, cdRecibio, cdAutorizo, cdInsumoBuscar, cdBuscarSalida, cdConsultaExistencia, cdConsultaExistencia, cdPresentacion]);
  Action := caFree;
end;

procedure TFrmSalidasAlmacen.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  // Verificar si se necesita grabar antes de salir
  if (NecesitaGrabar) and (Form2.NuevaSalida <> nesBorrar) then
  begin
    CanClose := True;
    case InteliDialog.ShowModal('Grabar modificaciones realizadas', '¿Desea grabar los cambios realizados antes de cerrar la ventana?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
      mrYes: btnGrabar.Click;
      mrNo: ;
      mrCancel: CanClose := False;
    end;
  end;
end;

procedure TFrmSalidasAlmacen.FormaSelClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TForm(Sender).ModalResult := FormaSelResult;
  //Action := caFree;
end;

procedure TFrmSalidasAlmacen.FormResize(Sender: TObject);
var
  Ancho: Integer;
begin
  Ancho := (Self.Width - pnllblComentarios.Width - (GetSystemMetrics(SM_CXBORDER) * 2)) Div 2;
  pnlIdAutorizo.Width := Ancho;
end;

procedure TFrmSalidasAlmacen.FormShow(Sender: TObject);
var
  locCursor: TCursor;
  i: Integer;
  Procesado: Integer;
begin
  IniciarTransaccion;
  NecesitaGrabar := False;
  pnlPresentacion.Align := alBottom;
  pnlConversion.Align := alBottom;

  // Estado de columnas del grid
  for i := 0 to tvInsumoBuscar.ColumnCount -1 do
    Try
      tvInsumoBuscar.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\tvInsumoBuscar\Col' + IntToStr(i), 'Width'));
    Except
      ;
    End;

  for i := 0 to tvRegistroMovPda.ColumnCount -1 do
    Try
      tvRegistroMovPda.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\tvRegistroMovPda\Col' + IntToStr(i), 'Width'));
    Except
      ;
    End;

  try
    locCursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      if Not CrearConjunto(cdConsultaExistencia, 'cmt_existenciasdetalle', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Existencias']);

      if Not CrearConjunto(cdRegistroMovUpt, 'cmt_registromovimiento', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Registro de Salidas']);

      if not CrearConjunto(cdRegistroMovPdaUpt, 'cmt_registromovimientopartida', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Partidas del registro de Salidas']);

      if not CrearConjunto(cdRegistroMovimiento, 'cmt_registromovimiento', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Registro de Salidas']);

      if not CrearConjunto(cdRegistroMovimientoPartida, 'cmt_registromovimientopartida', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Partidas del registro de Salidas']);

      if not CrearConjunto(cdRecibio, 'usuarios', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Usuarios']);

      if not CrearConjunto(cdAutorizo, 'usuarios', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Usuarios']);

      if not CrearConjunto(cdInsumoBuscar, 'cmt_insumo', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Insumos']);

      if not CrearConjunto(cdEmbarcacion, 'cmt_embarcacion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Localizaciones']);

      if Not CrearConjunto(cdPresentacion, 'cmt_presentacionxunidad_dx', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Presentacions']);

      if Not CrearConjunto(cdConversion, 'cmt_conversion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Conversiones de Unidades']);

      cdRecibio.Open;
      cdAutorizo.Open;
      cdEmbarcacion.Open;
      cdPresentacion.Open;
      cdConversion.Open;

      if cdRecibio.RecordCount = 0 then
        raise InteligentException.CreateByCode(22, ['Usuarios Reciben']);

      if cdAutorizo.RecordCount = 0 then
        raise InteligentException.CreateByCode(22, ['Usuarios Autorizó']);

      if cdEmbarcacion.RecordCount = 0 then
        raise InteligentException.CreateByCode(22, ['Localizaciones']);

      if Form2.NuevaSalida = nesNueva then
      begin
        // Crear Registros de captura de datos
        if Not CargarDatosFiltrados(cdRegistroMovUpt, 'IdRegistroMovimiento', [-9]) then
          raise InteligentException.CreateByCode(16, ['Registro de Salida']);

        if Not CargarDatosFiltrados(cdRegistroMovPdaUpt, 'IdRegistroMovimiento', [-9]) then
          raise InteligentException.CreateByCode(16, ['Partidas de Registro de Salida']);

        cdRegistroMovUpt.Open;
        cdRegistroMovPdaUpt.Open;

        cdRegistroMovUpt.Append;
        cdRegistroMovUpt.FieldByName('IdRegistroMovimiento').AsInteger := 0;
        cdRegistroMovUpt.FieldByName('IdEmbarcacion').AsInteger := cdEmbarcacion.FieldByName('IdEmbarcacion').AsInteger;
        cdRegistroMovUpt.FieldByName('Aplicacion').AsDateTime := Now;
        cdRegistroMovUpt.FieldByName('TipoMovimiento').AsString := 'SALIDA';
      end
      else
      begin
        // Mostrar la ventana de selección de Salida
        BuscarReceta;

        Self.Caption := 'Salida del Almacén ' + cdRegistroMovimiento.FieldByName('CodigoRegistroMovimiento').AsString;

        IdRegistroMovimiento := cdRegistroMovimiento.FieldByName('IdRegistroMovimiento').AsInteger;

        if Not CargarDatosFiltrados(cdRegistroMovUpt, 'IdRegistroMovimiento', [IdRegistroMovimiento]) then
          raise InteligentException.CreateByCode(6, ['Salidas del Almacén', IdRegistroMovimiento, 'Id. Salida']);

        if Not CargarDatosFiltrados(cdRegistroMovPdaUpt, 'IdRegistroMovimiento', [IdRegistroMovimiento]) then
          raise InteligentException.CreateByCode(16, ['Partidas de Registro de Salida']);

        if Not CargarDatosFiltrados(cdRegistroMovimiento, 'IdRegistroMovimiento', [IdRegistroMovimiento]) then
          raise InteligentException.CreateByCode(6, ['Salidas del Almacén', IdRegistroMovimiento, 'Id. Salida']);

        if Not CargarDatosFiltrados(cdRegistroMovimientoPartida, 'IdRegistroMovimiento', [IdRegistroMovimiento]) then
          raise InteligentException.CreateByCode(6, ['Partidas de Salidas del Almacén', IdRegistroMovimiento, 'Id. Salida']);

        cdRegistroMovUpt.Open;
        cdRegistroMovimiento.Open;
        cdRegistroMovimientoPartida.Open;
      end;

      EstadoEncabezado(Form2.NuevaSalida = nesNueva);

      if Form2.NuevaSalida = nesBorrar then
      begin
        try
          if InteliDialog.ShowModal('Eliminar Salida al Almacén', 'Está a punto de eliminar el siguiente registro de salida y todas sus partidas:' + #10 + #10 +
                                    'Código de Salida: ' + cdRegistroMovimiento.FieldByName('CodigoRegistroMovimiento').AsString + #10 +
                                    'Referencia: ' + cdRegistroMovimiento.FieldByName('Referencia').AsString + #10 +
                                    'Aplicación: ' + cdRegistroMovimiento.FieldByName('Aplicacion').AsString + #10 + #10 +
                                    '¿Desea eliminarla en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin

            // Borrar primero las partidas
            if Not CargarDatosFiltrados(cdRegistroMovPdaUpt, 'IdRegistroMovimiento', [cdRegistroMovimiento.FieldByName('IdRegistroMovimiento').AsInteger]) then
              raise InteligentException.CreateByCode(6, ['Partidas del Registro de Salida', cdRegistroMovimiento.FieldByName('IdRegistroMovimiento').AsInteger, 'Id. Entrada al Almacén']);

            if cdRegistroMovPdaUpt.Active then
              cdRegistroMovPdaUpt.Refresh
            else
              cdRegistroMovPdaUpt.Open;

            Procesado := 0;
            while Not cdRegistroMovPdaUpt.Eof do
            begin
              cdRegistroMovPdaUpt.Delete;
              Inc(Procesado);
            end;

            if Procesado > 0 then
              cdRegistroMovPdaUpt.ApplyUpdates(-1);

            // Borrar la cabecera
            cdRegistroMovUpt.Delete;
            cdRegistroMovUpt.ApplyUpdates(-1);

            ConcretarTransaccion;

            InteliDialog.ShowModal('Eliminar Entrada al Almacén', 'El registro de Entrada al Almacén ha sido borrado correctamente.', mtInformation, [mbOk], 0);
          end;
        finally
          PostMessage(Self.Handle, WM_CLOSE, 0, 0);
        end;
      end;
    finally
      Screen.Cursor := locCursor;
    end;
  except
    on e:InteligentException do
    begin
      if e.Message <> '*' then
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmSalidasAlmacen.pnlEncabezadoDblClick(Sender: TObject);
begin
  cdRegistroMovUpt.Edit;
  EstadoEncabezado(True);
end;

procedure TFrmSalidasAlmacen.rgTipoMedidaClick(Sender: TObject);
begin
  pnlPresentacion.Visible := rgTipoMedida.ItemIndex = 1;
  pnlConversion.Visible := rgTipoMedida.ItemIndex = 2;

  case rgTipoMedida.ItemIndex of
    1: if IdPresentacion.KeyValue <> Null then
         cdPresentacionAfterScroll(cdPresentacion);
    2: if IdConversion.KeyValue <> Null then
         cdConversionAfterScroll(cdConversion);
  end;
end;

procedure TFrmSalidasAlmacen.FormaSelShow(Sender: TObject);
begin
  FormaSelResult := mrCancel;
end;

procedure TFrmSalidasAlmacen.tvInsumoBuscarCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnSelOk.Click;
end;

procedure TFrmSalidasAlmacen.EstadoEncabezado(Modo: Boolean);
const
  FontColor: Array[False..True] of TColor = (clGray, clBlack);
begin
  pnlEncabezado.Font.Color := FontColor[Modo];
  pnlDatos.Visible := Not Modo;
  //gridPartida.Visible := Not Modo;
  pnlBotones.Visible := Not Modo;
  pnlBotonesEncabezado.Visible := Modo;

  if Modo then
    CodigoRegistroMovimiento.SetFocus
  else
    edtCodigoInsumo.SetFocus;
end;

function TFrmSalidasAlmacen.BuscarReceta: Integer;
var
  i, ii: Integer;
  YaAbierto: Boolean;
  LocForm: TForm;
  LocDataSet: TClientDataSet;
begin
  if cdBuscarSalida.ProviderName = '' then
  begin
    if Not CrearConjunto(cdBuscarSalida, 'cmt_registromovimiento', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Registros de Salidas del Almacén']);

    if Not CargarDatosFiltrados(cdBuscarSalida, 'TipoMovimiento', ['SALIDA']) then
      raise InteligentException.CreateByCode(6, ['Registros de Salidas del Almacén', 'SALIDA', 'Tipo Movimiento']);

    cdBuscarSalida.Open;
  end;

  Application.CreateForm(TFrmBuscarMovimiento, FrmBuscarMovimiento);
  FrmBuscarMovimiento.dsMovimiento.DataSet := cdBuscarSalida;
  FrmBuscarMovimiento.Caption := 'Seleccionar la Salida del Almacén';
  FrmBuscarMovimiento.TsRecientes.Caption := 'Salidas recientes';
  FrmBuscarMovimiento.TsTodas.Caption := 'Todas las Salidas';

  {if Form2.IdReceta = -3 then
    FrmBuscarReceta.btnAbrir.Caption := '&Eliminar'
  else}
    FrmBuscarMovimiento.btnAbrir.Caption := '&Abrir';

  if FrmBuscarMovimiento.ShowModal = mrCancel then
    raise InteligentException.Create('*');

  // Verificar si la receta ya está abierta
  i := 0;
  YaAbierto := False;
  while (i < Application.MainForm.MDIChildCount) and (Not YaAbierto) do
  begin
    if CompareText(Application.MainForm.MDIChildren[i].Name, Self.Name) <> 0 then
    begin
      // Buscar el dataset de la receta para ver que Id es el suyo
      LocForm := Application.MainForm.MDIChildren[i];
      ii := 0;
      while ii < LocForm.ComponentCount do
      begin
        if LocForm.Components[ii].ClassNameIs('TClientDataSet') and (AnsiCompareText(LocForm.Components[ii].Name, 'cdRegistroMovimiento') = 0) then
        begin
          LocDataSet := TClientDataSet(LocForm.Components[ii]);
          YaAbierto := (LocDataSet.ProviderName <> '') and (LocDataSet.Active) and (LocDataSet.RecordCount > 0) and (LocDataSet.FieldByName('IdRegistroMovimiento').AsInteger = cdBuscarSalida.FieldByName('IdRegistroMovimiento').AsInteger);
          ii := LocForm.ComponentCount;
        end;

        Inc(ii);
      end;
    end;

    if Not YaAbierto then
      Inc(i);
  end;

  if YaAbierto then
  begin
    if LocForm.WindowState = wsMinimized then
      LocForm.WindowState := wsNormal;

    LocForm.BringToFront;
    raise InteligentWarning.CreateByCode(24, ['La Salida del Almacén  ya se encuentra abierta en el sistema, no es posible abrir dos veces la misma Salida.']);
  end
  else
  begin
    if Not CargarDatosFiltrados(cdRegistroMovimiento, 'IdRegistroMovimiento', [cdBuscarSalida.FieldByName('IdRegistroMovimiento').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Registro de Salidas del Almacén', cdBuscarSalida.FieldByName('IdRegistroMovimiento').AsInteger, 'Id. Salida']);

    if cdRegistroMovimiento.Active then
      cdRegistroMovimiento.Refresh
    else
      cdRegistroMovimiento.Open;

    if cdRegistroMovimiento.RecordCount = 0 then
      raise InteligentException.CreateByCode(13, [cdBuscarSalida.FieldByName('CodigoReceta').AsString, 'Registros de Salidas del Almacén']);
  end;
end;

end.
