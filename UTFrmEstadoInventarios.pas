unit UTFrmEstadoInventarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls,
  Tabs, DBClient, ClientModuleUnit1, UInteliDialog, AdvGlowButton;

type
  TFrmEstadoInventarios = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    tvExistencia: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    TabSet1: TTabSet;
    cdExistencia: TClientDataSet;
    dsExistencia: TDataSource;
    NombreEmbarcacion: TcxGridDBColumn;
    CodigoExistencia: TcxGridDBColumn;
    Descripcion: TcxGridDBColumn;
    Elaboracion: TcxGridDBColumn;
    Aplicacion: TcxGridDBColumn;
    Estado: TcxGridDBColumn;
    btnAutorizar: TAdvGlowButton;
    btnDesautorizar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    Panel3: TPanel;
    procedure FormShow(Sender: TObject);
    procedure TabSet1Change(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure cdExistenciaAfterScroll(DataSet: TDataSet);
    procedure btnAutorizarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnDesautorizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    pIdExistencia: String;
  public
    { Public declarations }
  end;

var
  FrmEstadoInventarios: TFrmEstadoInventarios;

implementation

{$R *.dfm}

Uses
  Unit2;

procedure TFrmEstadoInventarios.btnAutorizarClick(Sender: TObject);
var
  cdCambiar: TClientDataSet;
begin
  if (Form2.EsGeneral AND VerificaPermisos('cmt_existenciageneral', [vpEscribir], EADMessage)) OR ((Not Form2.EsGeneral) AND VerificaPermisos('cmt_existencia', [vpEscribir], EADMessage)) then
    if AnsiCompareText(cdExistencia.FieldByName('Estado').AsString, 'AUTORIZADO') <> 0 then
    begin
      if InteliDialog.ShowModal('Autorizar Inventario', '¿Está seguro que desea autorizar este inventario?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        cdCambiar := TClientDataSet.Create(Self);
        try
          if Form2.EsGeneral then
            ProcedimientoAlmacenado(cdCambiar, 'Res_EstadoInventarioGeneral', 'pIdExistencia,pEstado', [cdExistencia.FieldByName(pIdExistencia).AsInteger, 'AUTORIZADO'])
          else
            ProcedimientoAlmacenado(cdCambiar, 'Res_EstadoInventario', 'pIdExistencia,pEstado', [cdExistencia.FieldByName(pIdExistencia).AsInteger, 'AUTORIZADO']);

          if cdCambiar.RecordCount > 0 then
            if cdCambiar.FieldByName('Resultado').AsString = 'OK' then
            begin
              InteliDialog.ShowModal('Autorizar Inventario', 'El Inventario indicado ha sido Autorizado correctamente.', mtInformation, [mbOk], 0);
              cdExistencia.Refresh;
            end
            else
              InteliDialog.ShowModal('Autorizar Inventario', 'El inventario no se ha podido Autorizar debido a lo siguiente:' + #10 + #10 + cdCambiar.FieldByName('Resultado').AsString, mtInformation, [mbOk], 0);
        finally
          EliminarConjunto(cdCambiar);
          cdCambiar.Free;
        end;
      end;
    end;
end;

procedure TFrmEstadoInventarios.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEstadoInventarios.btnDesautorizarClick(Sender: TObject);
var
  cdCambiar: TClientDataSet;
begin
  if (Form2.EsGeneral AND (VerificaPermisos('cmt_existenciageneral', [vpEscribir], EADMessage))) OR ((Not Form2.EsGeneral) AND (VerificaPermisos('cmt_existencia', [vpEscribir], EADMessage))) then
    if AnsiCompareText(cdExistencia.FieldByName('Estado').AsString, 'ABIERTO') <> 0 then
    begin
      if InteliDialog.ShowModal('Desautorizar Inventario', '¿Está seguro que desea   Desautorizar este inventario?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        cdCambiar := TClientDataSet.Create(Self);
        try
          if Form2.EsGeneral then
            ProcedimientoAlmacenado(cdCambiar, 'Res_EstadoInventarioGeneral', 'pIdExistencia,pEstado', [cdExistencia.FieldByName(pIdExistencia).AsInteger, 'ABIERTO'])
          else
            ProcedimientoAlmacenado(cdCambiar, 'Res_EstadoInventario', 'pIdExistencia,pEstado', [cdExistencia.FieldByName(pIdExistencia).AsInteger, 'ABIERTO']);
          if cdCambiar.RecordCount > 0 then
            if cdCambiar.FieldByName('Resultado').AsString = 'OK' then
            begin
              InteliDialog.ShowModal('Desautorizar Inventario', 'El Inventario indicado ha sido Desautorizado correctamente.', mtInformation, [mbOk], 0);
              cdExistencia.Refresh;
            end
            else
              InteliDialog.ShowModal('Desautorizar Inventario', 'El inventario no se ha podido Desautorizar debido a lo siguiente:' + #10 + #10 + cdCambiar.FieldByName('Resultado').AsString, mtInformation, [mbOk], 0);
        finally
          EliminarConjunto(cdCambiar);
          cdCambiar.Free;
        end;
      end;
    end;
end;

procedure TFrmEstadoInventarios.cdExistenciaAfterScroll(DataSet: TDataSet);
begin
  btnAutorizar.Enabled := AnsiCompareText(cdExistencia.FieldByName('Estado').AsString, 'AUTORIZADO') <> 0;
  btnDesautorizar.Enabled := AnsiCompareText(cdExistencia.FieldByName('Estado').AsString, 'AUTORIZADO') = 0;
end;

procedure TFrmEstadoInventarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EliminarConjunto(cdExistencia);
end;

procedure TFrmEstadoInventarios.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
begin
  if Form2.EsGeneral then
  begin
    pIdExistencia := 'IdExistenciaGeneral';
    NombreEmbarcacion.Caption := 'Almacén';
    NombreEmbarcacion.DataBinding.FieldName := 'NombreAlmacen';
  end
  else
  begin
    pIdExistencia := 'IdExistencia';
    NombreEmbarcacion.Caption := 'Localización';
    NombreEmbarcacion.DataBinding.FieldName := 'NombreEmbarcacion';
  end;

  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      if Form2.EsGeneral then
      begin
        VerificaPermisos('cmt_existenciageneral', [vpLeer], EADError);

        if Not CrearConjunto(cdExistencia, 'cmt_existenciageneral', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Inventario General']);
      end
      else
      begin
        VerificaPermisos('cmt_existencia', [vpLeer], EADError);

        if Not CrearConjunto(cdExistencia, 'cmt_existencia', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Inventario']);
      end;

      cdExistencia.Open;

      if cdExistencia.RecordCount = 0 then
        raise InteligentException.CreateByCode(22, ['Existencias']);
    finally
      Screen.Cursor := LocCursor;
    end;
  except
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
  end;
end;

procedure TFrmEstadoInventarios.TabSet1Change(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
begin
  cdExistencia.Filtered := False;

  case NewTab of
    0: cdExistencia.Filter := '';
    1: cdExistencia.Filter := 'Estado = ' + QuotedStr('AUTORIZADO');
    2: cdExistencia.Filter := 'Estado = ' + QuotedStr('ABIERTO');
  end;

  cdExistencia.Filtered := True;
end;

end.
