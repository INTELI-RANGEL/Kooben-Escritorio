unit UTFrmConversion;

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
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ClientModuleUnit1, UInteliDialog, AdvGlowButton, ExtCtrls, URegistro, ComCtrls,
  cxContainer, cxGroupBox, Menus, StdCtrls, cxButtons, dxSkinsdxBarPainter,
  ImgList, dxBar, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxColorComboBox,
  cxDBEdit, DBCtrls, dxLayoutControlAdapters, dxLayoutContainer, dxLayoutControl,
  dxLayoutLookAndFeels, dxLayoutcxEditAdapters, dblookup, JvExControls,
  JvDBLookup, JvExStdCtrls, JvCombobox, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, JvListBox, JvComboListBox, frxClass;

type
  TClasex = class
    IdClase: Integer;
    Nombre: String;
  end;

  TFrmConversion = class(TForm)
    cdUnidad: TClientDataSet;
    cdConversionUnidad: TClientDataSet;
    cdConversionUpt: TClientDataSet;
    dsUnidad: TDataSource;
    dsConversionUnidad: TDataSource;
    cdInsumo: TClientDataSet;
    pcMain: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cdInsumoLista: TClientDataSet;
    dsInsumoLista: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    btnNuevaxInsumo: TAdvGlowButton;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    cxGrid2DBTableView1Column3: TcxGridDBColumn;
    cxGrid2DBTableView1Column4: TcxGridDBColumn;
    popupMenu: TPopupMenu;
    Eliminar1: TMenuItem;
    Editar1: TMenuItem;
    DxBManagerMain: TdxBarManager;
    DxBarMain: TdxBar;
    DxBLbuttonAgregar: TdxBarLargeButton;
    DxBLbuttonEditar: TdxBarLargeButton;
    DxBLbuttonEliminar: TdxBarLargeButton;
    DxBLbuttonActualizar: TdxBarLargeButton;
    DxBLbuttonSalir: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    DxBarBtnNuevo: TdxBarLargeButton;
    DxBarBtnEditar: TdxBarLargeButton;
    DxBarBtnEliminar: TdxBarLargeButton;
    DxBarBtnImprimir: TdxBarLargeButton;
    DxBarBtnExportar: TdxBarLargeButton;
    DxBarBtnImportar: TdxBarLargeButton;
    DxBarBtnImportat: TdxBarLargeButton;
    DxBarBtnOcultar: TdxBarLargeButton;
    cxImageList1: TcxImageList;
    Panel1: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    skin: TdxLayoutSkinLookAndFeel;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    PnlUMedida: TcxGroupBox;
    gridUnidades: TcxGrid;
    gridUnidadesTV1: TcxGridDBTableView;
    gridUnidadesTV1Column1: TcxGridDBColumn;
    gridUnidadesTV1Column2: TcxGridDBColumn;
    gridUnidadesLevel1: TcxGridLevel;
    cbListaUnidades: TJvComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    GroupBox1: TGroupBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    gridConversiones: TcxGrid;
    gridConversionesTV1: TcxGridDBTableView;
    gridConversionesTV1Column1: TcxGridDBColumn;
    gridConversionesTV1Column2: TcxGridDBColumn;
    gridConversionesTV1Column4: TcxGridDBColumn;
    gridConversionesTV1Column3: TcxGridDBColumn;
    gridConversionesLevel1: TcxGridLevel;
    refresh: TdxBarButton;
    dxBarBtnActualizar: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    bbtnImprimir: TdxBarLargeButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridConversionesTV1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Eliminar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure EditarIngrediente;
    procedure EliminarIngrediente;
    procedure DxBarBtnNuevoClick(Sender: TObject);
    procedure DxBarBtnEditarClick(Sender: TObject);
    procedure DxBarBtnEliminarClick(Sender: TObject);
    procedure DxBarBtnImportarClick(Sender: TObject);
    procedure cbListaUnidadesChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dxBarBtnActualizarClick(Sender: TObject);
    procedure pcMainChange(Sender: TObject);
  private
    procedure CrearDataSetInsumo;
  public
    { Public declarations }
  end;

var
  FrmConversion: TFrmConversion;

implementation

uses UTFrmConversionDatos;

{$R *.dfm}

procedure TFrmConversion.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
begin
  Try
//    for i:= 0 to gridUnidadesTV1.ColumnCount -1 do
//      SetRegistry('\Ventanas', '\' + self.Name + '\gridUnidadesTV1', 'Column' + IntToStr(i), IntToStr(gridUnidadesTV1.Columns[i].Width));
//
//    for i:= 0 to gridConversionesTV1.ColumnCount -1 do
//      SetRegistry('\Ventanas', '\' + self.Name + '\gridConversionesTV1', 'Column' + IntToStr(i), IntToStr(gridConversionesTV1.Columns[i].Width));

//    SetRegistry('\Ventanas', '\' + self.Name + '\pnlGeneral', 'Width', IntToStr(pnlGeneral.Width));
//    SetRegistry('\Ventanas', '\' + self.Name, 'Width', IntToStr(Self.Width));
//    SetRegistry('\Ventanas', '\' + self.Name, 'Height', IntToStr(Self.Height));
//    SetRegistry('\Ventanas', '\' + self.Name, 'Top', IntToStr(Self.Top));
//    SetRegistry('\Ventanas', '\' + self.Name, 'Left', IntToStr(Self.Left));

    EliminarConjunto([cdUnidad, cdConversionUnidad, cdConversionUpt, cdInsumo, cdInsumoLista]);
  Finally
    Action := caFree;
  End;
end;

procedure TFrmConversion.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of

    116: if Shift = [] then
           cdConversionUnidad.Refresh;

    27: if Shift = [] then
          Close;
  end;

end;

procedure TFrmConversion.FormShow(Sender: TObject);
var
  Cursor: TCursor;
  objeto: TClasex;
begin
  pcMain.ActivePageIndex := 0;

  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      VerificaPermisos('cmt_conversion', [vpLeer], EADError);

      if Not CrearConjunto(cdUnidad, 'nuc_unidades', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Unidades de Medida']);

      if Not CrearConjunto(cdConversionUnidad, 'cmt_conversion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Conversiones de Unidad de Medida']);

      if Not CrearConjunto(cdConversionUpt, 'cmt_conversion', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Conversiones de Unidad de Medida']);

      cdUnidad.Open;
      cdConversionUnidad.Open;

      //Gustavo: llenando el comboBox
      cdUnidad.First;
      while not cdUnidad.Eof do
      begin
        Objeto := TClasex.Create;
        objeto.IdClase  := cdUnidad.FieldByName('iIdUnidad').AsInteger;
        objeto.Nombre := cdUnidad.FieldByName('sNombre').AsString;
        cbListaUnidades.AddItem(objeto.Nombre, objeto);
        cdUnidad.Next;
      end;

      cbListaUnidades.ItemIndex := 0;
      cbListaUnidadesChange(nil);
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

procedure TFrmConversion.gridConversionesTV1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  EditarIngrediente;
end;

procedure TFrmConversion.pcMainChange(Sender: TObject);
var
  Cursor: TCursor;
begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      if pcMain.ActivePageIndex = 0 then
      begin
        cdConversionUnidad.MasterSource := nil;
        cdConversionUnidad.MasterFields := 'iIdUnidad';
        cdConversionUnidad.IndexFieldNames := 'iIdUnidad_s';
      end
      else
      begin
        // Verificar si es necesario abrir el dataset
        if cdInsumoLista.ProviderName = '' then
          if Not CrearConjunto(cdInsumoLista, 'cmt_insumo', ccCatalog) then
            raise InteligentException.CreateByCode(5, ['Ingredientes']);

        if cdInsumoLista.Active then
          cdInsumoLista.Refresh
        else
          cdInsumoLista.Open;

        cdConversionUnidad.MasterSource := dsInsumoLista;
        cdConversionUnidad.MasterFields := 'IdInsumo';
        cdConversionUnidad.IndexFieldNames := 'IdInsumo';
      end;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:InteligentException do
    begin
      pcMain.TabIndex := 0;
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:Exception do
    begin
      pcMain.TabIndex := 0;
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  End;
end;

procedure TFrmConversion.cbListaUnidadesChange(Sender: TObject);
begin
  //Gustavo: filtrando el dataset según la unidad de conversión.
  cdConversionUnidad.Filtered := False;
  cdConversionUnidad.Filter := 'iIdUnidad_s = ' + inttostr(TClasex(cbListaUnidades.Items.Objects[cbListaUnidades.ItemIndex]).IdClase);
  cdConversionUnidad.Filtered := True;
end;

procedure TFrmConversion.CrearDataSetInsumo;
begin
  if cdInsumo.ProviderName = '' then
  begin
    if Not CrearConjunto(cdInsumo, 'cmt_insumo', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Ingredientes']);

    cdInsumo.Open;
  end;
end;

procedure TFrmConversion.DxBarBtnEditarClick(Sender: TObject);
begin
  EditarIngrediente;
end;

procedure TFrmConversion.DxBarBtnEliminarClick(Sender: TObject);
begin
  EliminarIngrediente;
end;

procedure TFrmConversion.DxBarBtnImportarClick(Sender: TObject);
begin
  close;
end;

procedure TFrmConversion.DxBarBtnNuevoClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      CrearDataSetInsumo;

      Application.CreateForm(TFrmConversionDatos, FrmConversionDatos);
      FrmConversionDatos.dsInsumo.DataSet := cdInsumo;
      //FrmConversionDatos.dsUnidad.DataSet := cdUnidad;
      FrmConversionDatos.idUnidad := TClasex(cbListaUnidades.Items.Objects[cbListaUnidades.ItemIndex]).IdClase;
      FrmConversionDatos.dsConversionUpt.DataSet := cdConversionUpt;

      if Not CargarDatosFiltrados(cdConversionUpt, 'IdConversion', [-9]) then
        raise InteligentException.CreateByCode(16, ['Conversiones de Unidad de Medida']);

      if cdConversionUpt.Active then
        cdConversionUpt.Refresh
      else
        cdConversionUpt.Open;

      cdConversionUpt.Append;
      cdConversionUpt.FieldByName('IdConversion').AsInteger := 0;
      cdConversionUpt.FieldByName('iIdUnidad_s').AsInteger := TClasex(cbListaUnidades.Items.Objects[cbListaUnidades.ItemIndex]).IdClase;
      cdConversionUpt.FieldByName('Operador').AsString := 'Multiplicar';
      cdConversionUpt.FieldByName('Valor').AsFloat := 0;

    Finally
      Screen.Cursor := Cursor;
    End;

    if FrmConversionDatos.ShowModal = mrOk then
      cdConversionUnidad.Refresh;

  Except
    on e:InteligentException do
    begin
      cdConversionUpt.Cancel;
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:Exception do
    begin
      cdConversionUpt.Cancel;
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  End;
end;

procedure TFrmConversion.dxBarBtnActualizarClick(Sender: TObject);
begin
  cdConversionUnidad.Refresh;
end;

procedure TFrmConversion.Editar1Click(Sender: TObject);
begin
  EditarIngrediente;
end;

procedure TFrmConversion.EditarIngrediente;
var
  Cursor: TCursor;
begin
  Try
    //Gustavo: mandando a llamar ventana para editar la Equivalencia
    Cursor := Screen.Cursor;
    Try

      Screen.Cursor := crAppStart;

      CrearDataSetInsumo;

      if Not CargarDatosFiltrados(cdConversionUpt, 'IdConversion', [cdConversionUnidad.FieldByName('IdConversion').AsInteger]) then
        raise InteligentException.CreateByCode(16, ['IdConversion']);

      if cdConversionUpt.Active then
        cdConversionUpt.Refresh
      else
        cdConversionUpt.Open;

      if cdConversionUpt.RecordCount <> 1 then
        raise InteligentException.CreateByCode(13, [cdConversionUnidad.FieldByName('IdConversion').AsInteger, 'Conversiones']);

      cdConversionUpt.Edit;

      Application.CreateForm(TFrmConversionDatos, FrmConversionDatos);
      FrmConversionDatos.dsInsumo.DataSet := cdInsumo;
      //FrmConversionDatos.dsUnidad.DataSet := cdUnidad;
      FrmConversionDatos.idUnidad := TClasex(cbListaUnidades.Items.Objects[cbListaUnidades.ItemIndex]).IdClase;
      FrmConversionDatos.dsConversionUpt.DataSet := cdConversionUpt;
    Finally
      Screen.Cursor := Cursor;
    End;

    if FrmConversionDatos.ShowModal = mrOk then
      cdConversionUnidad.Refresh;

  Except
    on e:InteligentException do
    begin
      cdConversionUpt.Cancel;
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:Exception do
    begin
      cdConversionUpt.Cancel;
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  End;
end;

procedure TFrmConversion.Eliminar1Click(Sender: TObject);
begin
  EliminarIngrediente;
end;

procedure TFrmConversion.EliminarIngrediente;
begin
  //Gustavo: eliminando ingrediente seleccionado
  if Not CargarDatosFiltrados(cdConversionUpt, 'IdConversion', [cdConversionUnidad.FieldByName('IdConversion').AsInteger]) then
      raise InteligentException.CreateByCode(16, ['IdConversion']);

  if cdConversionUpt.Active then
    cdConversionUpt.Refresh
  else
    cdConversionUpt.Open;

  if cdConversionUpt.Locate('IdConversion', cdConversionUpt.FieldByName('IdConversion').AsInteger, []) then
  begin
    if InteliDialog.ShowModal('Eliminando registro', '¿Desea eliminar el elemento seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      cdConversionUpt.Delete;
      TClientDataSet(cdConversionUpt).ApplyUpdates(-1);
      cdConversionUnidad.Refresh;
    end;
  end;
end;

end.
