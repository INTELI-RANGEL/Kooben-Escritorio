unit UfrmImpuestosxinsumo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, dxBar, ImgList, clientmoduleunit1,
  uintelidialog, DBClient;

type
  TFrmImpuestosxinsumo = class(TForm)
    cxImageList1: TcxImageList;
    dxBarManagerDxBManagerMain: TdxBarManager;
    dxbrMain: TdxBar;
    btnDxBLbuttonAgregar: TdxBarLargeButton;
    btnDxBLbuttonEditar: TdxBarLargeButton;
    btnDxBLbuttonEliminar: TdxBarLargeButton;
    btnDxBLbuttonActualizar: TdxBarLargeButton;
    btnDxBLbuttonSalir: TdxBarLargeButton;
    btn1: TdxBarLargeButton;
    btnDxBarBtnNuevo: TdxBarLargeButton;
    btnDxBarBtnEditar: TdxBarLargeButton;
    btnDxBarBtnEliminar: TdxBarLargeButton;
    btnDxBarBtnActualizar: TdxBarLargeButton;
    btnDxBarBtnImprimir: TdxBarLargeButton;
    btnDxBarBtnExportar: TdxBarLargeButton;
    btnDxBarBtnImportar: TdxBarLargeButton;
    btnDxBarBtnImportat: TdxBarLargeButton;
    btnDxBarBtnOcultar: TdxBarLargeButton;
    cxGridixi: TcxGridDBTableView;
    cxLvl1: TcxGridLevel;
    CxGrdixi: TcxGrid;
    cxColTipo: TcxGridDBColumn;
    cxColLeyenda: TcxGridDBColumn;
    cxColdescripcion: TcxGridDBColumn;
    cxColGridixiColumn1: TcxGridDBColumn;
    cdixi: TClientDataSet;
    dsixi: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnDxBarBtnNuevoClick(Sender: TObject);
    procedure btnDxBarBtnEditarClick(Sender: TObject);
    procedure btnDxBarBtnActualizarClick(Sender: TObject);
    procedure btnDxBarBtnImportarClick(Sender: TObject);
    procedure btnDxBarBtnOcultarClick(Sender: TObject);
    procedure btnDxBarBtnEliminarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmImpuestosxinsumo: TFrmImpuestosxinsumo;

implementation

{$R *.dfm}

uses
ufrmdatosImpuestosxinsumos;


procedure TFrmImpuestosxinsumo.btnDxBarBtnActualizarClick(Sender: TObject);
var
  cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      screen.Cursor := crAppStart;
      if cdixi.Active then
        cdixi.Refresh
      else
        cdixi.Open;
    finally
      screen.Cursor := Cursor;
    end;
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  end;
end;


procedure TFrmImpuestosxinsumo.btnDxBarBtnEditarClick(Sender: TObject);
begin
  if cdixi.Active and (cdixi.RecordCount > 0) then
  begin
    application.createForm(TfrmDatosImpuestosxInsumos, FrmDatosImpuestosxinsumos);
    FrmDatosImpuestosxinsumos.id := cdixi.FieldByName('IdImpuestoxInsumo').AsInteger;
    if FrmDatosImpuestosxInsumos.ShowModal = mrOk then
      cdixi.Refresh;
  end;
end;

procedure TFrmImpuestosxinsumo.btnDxBarBtnEliminarClick(Sender: TObject);

var
  CtaSel, CtaDel: Integer;
begin
  if cdixi.State = dsBrowse then
  Try
    VerificaPermisos('cmt_impuestoxinsumo', [vpBorrar], EADError);

    if cdixi.State <> dsBrowse then
      raise InteligentWarning.CreateByCode(26, ['IMPUESTOS POR INSUMO']);

    if cdixi.RecordCount < 1 Then
      raise InteligentWarning.CreateByCode(26, ['IMPUESTOS POR INSUMO']);



    if ((cxgridixi.Controller.SelectedRowCount = 1) and (InteliDialog.ShowModal('Eliminación de registros', 'Se procederá a borrar el registro [' + cdixi.FieldByName('codigo').AsString + ']' + #10 + #10 + '¿Desea proceder con esto ahora?', mtWarning, [mbYes, mbNo], 0) = mrNo)) or
       ((cxgridixi.Controller.SelectedRowCount > 1) and (InteliDialog.ShowModal('Eliminación de registros', 'Se procederá con el borrado de ' + IntToStr(cxgridixi.Controller.SelectedRowCount) + ' registros' + #10 + #10 + '¿Desea borrar estos registros ahora?', mtConfirmation, [mbYes, mbNo], 0) = mrNo)) then
      raise InteligentException.Create('*');

    CtaSel := cxgridixi.Controller.SelectedRowCount;

    CtaDel := BorrarRegistro(cdixi, 'IdImpuestoxinsumo', brSelected, true);
    if CtaDel > 0 then
    begin
      cdixi.Refresh;  // Si se ha podido eliminar un registro se deberá actualizar el grid

      // Informar del resultado del borrado de registros
      if CtaDel = 0 then
        InteliDialog.ShowModal('No se borraron registros', 'No se pudo eliminar ningún registro de los seleccionados.' + #10 + #10 + 'Es probable que estos registros se encuentren relacionados con algunos otros dentro de la base de datos, verifique esto e intente de nuevo.', mtWarning, [mbOk], 0)
      else
        if CtaDel < CtaSel then
          InteliDialog.ShowModal('No se pudieron borrar todos los registros', 'Solamente ' + IntToStr(CtaDel) + ' registro(s) pudieron ser borrados de los ' + IntToStr(CtaSel) + ' que fueron seleccionados.' + #10 + #10 + 'Es probable que estos registros se encuentren relacionados con algunos otros dentro de la base de datos, verifique esto e intente de nuevo.', mtWarning, [mbOk], 0)
        else
          InteliDialog.ShowModal('Se borraron todos los registros seleccionados', 'El borrado de registros se ha terminado de manera satisfactoria.', mtWarning, [mbOk], 0);
    end;
  Except
    on e:InteligentWarning do
      InteliDialog.ShowModal('No se ha eliminado ningún registro', e.message, mtWarning, [mbOk], 0);

    on e:InteligentException do
      if e.Message <> '*' then
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmImpuestosxinsumo.btnDxBarBtnImportarClick(Sender: TObject);
begin
  close;
end;

procedure TFrmImpuestosxinsumo.btnDxBarBtnNuevoClick(Sender: TObject);
begin
  application.createForm(TfrmDatosImpuestosxInsumos, FrmDatosImpuestosxinsumos);
  FrmDatosImpuestosxinsumos.id := -9;
  if FrmDatosImpuestosxInsumos.ShowModal = mrOk then
    if cdixi.Active then cdixi.Refresh;
end;

procedure TFrmImpuestosxinsumo.btnDxBarBtnOcultarClick(Sender: TObject);
begin
   cxgridixi.FilterRow.Visible := Not cxgridixi.FilterRow.Visible;
end;

procedure TFrmImpuestosxinsumo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := Cafree;
end;

procedure TFrmImpuestosxinsumo.FormShow(Sender: TObject);
var
  cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      screen.Cursor := crAppStart;

      if cdixi.ProviderName = '' then
        if not CrearConjunto(cdixi, 'cmt_impuestoxinsumo2', ccCatalog) then
          raise inteligentException.CreateByCode(5, ['Tabla de conceptos por insumo']);

      if not CargarDatosFiltrados(cdixi, 'IdImpuestoxInsumo', [-1]) then
        raise InteligentException.CreateByCode(6, ['Conceptos por insumo', 'IdImpuestoxInsumo', '-1']);

      cdixi.Open;
    finally
      screen.Cursor := Cursor;
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

end.
