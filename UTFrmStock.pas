unit UTFrmStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  cxNavigator, cxDBData, cxCalc, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  ClientModuleUnit1, DBCtrls, JvExControls, JvLabel, StdCtrls, Mask,
  AdvGlowButton, ExtCtrls, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls,
  UInteliDialog, URegistro, Menus, AdvMenus;

type
  TFrmStock = class(TForm)
    cdInsumoStock: TClientDataSet;
    dsInsumoStock: TDataSource;
    cdInsumoStockUpt: TClientDataSet;
    dsInsumoStockUpt: TDataSource;
    tvInsumoStock: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ColAplicacion: TcxGridDBColumn;
    ColMinimo: TcxGridDBColumn;
    ColMaximo: TcxGridDBColumn;
    ColNombreEmbarcacion: TcxGridDBColumn;
    Panel1: TPanel;
    pnlEditar: TPanel;
    Panel2: TPanel;
    btnCancelar: TAdvGlowButton;
    btnAceptar: TAdvGlowButton;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    IdEmbarcacion: TDBLookupComboBox;
    JvLabel4: TJvLabel;
    Maximo: TJvDBCalcEdit;
    Aplicacion: TJvDBDateEdit;
    dsEmbarcacion: TDataSource;
    Panel4: TPanel;
    btnAgregar: TAdvGlowButton;
    Minimo: TJvDBCalcEdit;
    btnEditar: TAdvGlowButton;
    CodigoInsumo: TJvLabel;
    JvLabel5: TJvLabel;
    SeparaInsumo: TJvLabel;
    NombreInsumo: TJvLabel;
    JvLabel6: TJvLabel;
    CodigoTipoInsumo: TJvLabel;
    NombreTipoInsumo: TJvLabel;
    SeparaTipoInsumo: TJvLabel;
    btnEliminar: TAdvGlowButton;
    AdvPopupMenu1: TAdvPopupMenu;
    Agregar1: TMenuItem;
    Editar1: TMenuItem;
    Borrar1: TMenuItem;
    btnCerrar: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAgregarEditarClick(Sender: TObject);
    procedure FormEditClose(Sender: TObject; var Action: TCloseAction);
    procedure FormEditCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tvInsumoStockCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnEliminarClick(Sender: TObject);
    procedure Agregar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Borrar1Click(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
  private
    FormEdit: TForm;
    Cambios: Boolean;
  public
    IdInsumo: Integer;
  end;

var
  FrmStock: TFrmStock;

implementation

{$R *.dfm}

procedure TFrmStock.Agregar1Click(Sender: TObject);
begin
  btnAgregar.Click;
end;

procedure TFrmStock.Borrar1Click(Sender: TObject);
begin
  btnEliminar.Click;
end;

procedure TFrmStock.btnAgregarEditarClick(Sender: TObject);
var
  IdBuscar: Integer;
begin
  try
    if TWinControl(Sender).Tag = 0 then
      IdBuscar := -9
    else
    begin
      if dsInsumoStock.DataSet.RecordCount = 0 then
        raise InteligentException.CreateByCode(26, ['Stock de Insumos']);

      IdBuscar := dsInsumoStock.DataSet.FieldByName('IdInsumoStock').AsInteger;
    end;

    if Not CargarDatosFiltrados(TClientDataSet(dsInsumoStockUpt.DataSet), 'IdInsumoStock', [IdBuscar]) then
      if IdBuscar = -9 then
        raise InteligentException.CreateByCode(16, ['Stock de Insumos'])
      else
        raise InteligentException.CreateByCode(6, ['Stock de Insumos', IdBuscar, 'Id. InsumoStock']);

    if dsInsumoStockUpt.DataSet.Active then
      dsInsumoStockUpt.DataSet.Refresh
    else
      dsInsumoStockUpt.DataSet.Open;

    if TWinControl(Sender).Tag = 0 then
    begin
      dsInsumoStockUpt.DataSet.Append;
      dsInsumoStockUpt.DataSet.FieldByName('IdInsumoStock').AsInteger := 0;
      dsInsumoStockUpt.DataSet.FieldByName('Minimo').AsFloat := 0.00;
      dsInsumoStockUpt.DataSet.FieldByName('Maximo').AsFloat := 0.00;
      dsInsumoStockUpt.DataSet.FieldByName('IdInsumo').AsInteger := IdInsumo;
      dsInsumoStockUpt.DataSet.FieldByName('Aplicacion').AsDateTime := Now;
    end
    else
    begin
      // Verificar si se pudo leer el registro
      if dsInsumoStockUpt.DataSet.RecordCount = 0 then
        raise InteligentException.CreateByCode(13, [NombreInsumo.Caption, 'Stock por Insumo']);

      dsInsumoStockUpt.DataSet.Edit;
    end;

    FormEdit := TForm.Create(Self);
    FormEdit.Height := pnlEditar.Height;
    FormEdit.Width := pnlEditar.Width;
    FormEdit.OnClose := FormEditClose;
    FormEdit.OnCloseQuery := FormEditCloseQuery;
    FormEdit.Position := poMainFormCenter;
    if dsInsumoStockUpt.State = dsInsert then
      FormEdit.Caption := NombreInsumo.Caption + ' - Nuevo registro de Stock'
    else
      FormEdit.Caption := NombreInsumo.Caption + ' - Editando Stock ' + dsInsumoStockUpt.DataSet.FieldByName('Aplicacion').AsString;

    try
      pnlEditar.Parent := FormEdit;
      pnlEditar.Align := alClient;
      pnlEditar.Visible := True;
      FormEdit.ShowModal;
    finally
      pnlEditar.Visible := False;
      pnlEditar.Align := alNone;
      pnlEditar.Parent := Self;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmStock.btnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmStock.btnEliminarClick(Sender: TObject);
var
  LocCursor: TCursor;
begin
  try
    if dsInsumoStock.DataSet.RecordCount = 0 then
      raise InteligentException.CreateByCode(26, ['Stock de Insumos']);

    if Not CargarDatosFiltrados(TClientDataSet(dsInsumoStockUpt.DataSet), 'IdInsumoStock', [dsInsumoStock.DataSet.FieldByName('IdInsumoStock').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Stocks de Insumos', dsInsumoStock.DataSet.FieldByName('IdInsumoStock').AsInteger, 'Id. InsumoStock']);

    if dsInsumoStockUpt.DataSet.Active then
      dsInsumoStockUpt.DataSet.Refresh
    else
      dsInsumoStockUpt.DataSet.Open;

    // Verificar si se pudo leer el registro
    if dsInsumoStockUpt.DataSet.RecordCount = 0 then
      raise InteligentException.CreateByCode(13, [NombreInsumo.Caption, 'Stock por Insumo']);

    if InteliDialog.ShowModal('Eliminar Stock de Insumo', '¿Está seguro que desea eliminar el registro de Stock de Insumo correspondiente al ' + dsInsumoStockUpt.DataSet.FieldByName('Aplicacion').AsString + ' del Insumo: ' + dsInsumoStock.DataSet.FieldByName('NombreInsumo').AsString + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      LocCursor := Screen.Cursor;
      try
        Screen.Cursor := crHourGlass;
        dsInsumoStockUpt.DataSet.Delete;
        TClientDataSet(dsInsumoStockUpt.DataSet).ApplyUpdates(-1);
        dsInsumoStock.DataSet.Refresh;
      finally
        Screen.Cursor := LocCursor;
      end;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmStock.Editar1Click(Sender: TObject);
begin
  btnEditar.Click;
end;

procedure TFrmStock.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
begin
  for i:= 0 to tvInsumoStock.ColumnCount -1 do
    SetRegistry('\Ventanas', '\' + self.Name + '\tvInsumoStock', 'Column' + IntToStr(i), IntToStr(tvInsumoStock.Columns[i].Width));

  Action := caFree;
end;

procedure TFrmStock.FormShow(Sender: TObject);
var
  i: Integer;
begin
  Cambios := False;

  for i:= 0 to tvInsumoStock.ColumnCount -1 do
    try
      tvInsumoStock.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + self.Name + '\tvInsumoStock', 'Column'+ IntToStr(i)));
    except
      ;
    end;

  // Ajustar el encabezado
  SeparaInsumo.Left := CodigoInsumo.Left + CodigoInsumo.Width + 2;
  NombreInsumo.Left := SeparaInsumo.Left + SeparaInsumo.Width + 2;

  SeparaTipoInsumo.Left := CodigoTipoInsumo.Left + CodigoTipoInsumo.Width + 2;
  NombreTipoInsumo.Left := SeparaTipoInsumo.Left + SeparaTipoInsumo.Width + 2;

  tvInsumoStock.ViewData.Expand(True);

  VerificaDataSetEmbarcacion;
  dsEmbarcacion.DataSet := ClientModule1.cdEmbarcacion;

  if dsInsumoStock.DataSet = cdInsumoStock then
  begin
    if Not CrearConjunto(cdInsumoStock, 'cmt_insumostock', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Stock por Insumos']);

    dsInsumoStock.DataSet.Open;
  end;

  if dsInsumoStockUpt.DataSet = cdInsumoStockUpt then
  begin
    if Not CrearConjunto(cdInsumoStockUpt, 'cmt_insumostock', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Stock por Insumos']);
  end;
end;

procedure TFrmStock.tvInsumoStockCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnEditar.Click;
end;

procedure TFrmStock.FormEditCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  Objeto: TWinControl;
begin
  if btnAceptar.Focused then
  begin
    try
      CanClose := False;
      Objeto := Nil;

      // Verificar la captura de datos
      if dsInsumoStockUpt.DataSet.FieldByName('IdEmbarcacion').IsNull then
      begin
        Objeto := IdEmbarcacion;
        raise InteligentException.CreateByCode(18, ['Ubicación']);
      end;

      if dsInsumoStockUpt.DataSet.FieldByName('Maximo').AsFloat < dsInsumoStockUpt.DataSet.FieldByName('Minimo').AsFloat then
      begin
        Objeto := Minimo;
        raise InteligentException.CreateByCode(8, ['La cantidad indicada como Máximo no puede ser inferior a la cantidad especificada como Mínimo']);
      end;

      CanClose := True;

      dsInsumoStockUpt.DataSet.Post;
      TClientDataSet(dsInsumoStockUpt.DataSet).ApplyUpdates(-1);
      Cambios := True;
    except
      on e:InteligentException do
      begin
        if Assigned(Objeto) then
          Objeto.SetFocus;

        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      end;

      on e:Exception do
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  end
  else
    dsInsumoStockUpt.DataSet.Cancel;
end;

procedure TFrmStock.FormEditClose(Sender: TObject; var Action: TCloseAction);
begin
  if Cambios then
    dsInsumoStock.DataSet.Refresh;
end;

end.
