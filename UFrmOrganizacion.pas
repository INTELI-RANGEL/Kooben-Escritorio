unit UFrmOrganizacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxCustomData, cxStyles, cxTL, cxTLdxBarBuiltInMenu,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, cxInplaceContainer, cxTLData, cxDBTL, dxSkinscxPCPainter,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  cxSplitter, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, DBClient, UInteliDialog,
  ClientModuleUnit1, cxMaskEdit, cxLabel, ImgList, cxImage,
  dxSkinsdxBarPainter, dxBar, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxRibbonCustomizationForm, dxRibbon, cxPC, dxDockControl, dxDockPanel,
  dxSkinsForm, dxRibbonForm, dxSkinsdxDockControlPainter, cxContainer,
  cxScrollBox, cxDBEdit, cxDBLabel, Menus, StdCtrls, cxButtons, shellApi,
  cxTextEdit, cxMemo, ExtCtrls, cxDropDownEdit, cxGroupBox, cxTreeView,
  Uregistro, midas;

type
  TInfoTree = class
    Id: Integer;
    Caption: String;
    ColumnName: String;
  end;

  TFrmOrganizacion = class(TdxRibbonForm)
    cdOrganizacion: TClientDataSet;
    dsOrganizacion: TDataSource;
    dxBarManager1: TdxBarManager;
    dxbrOpciones: TdxBar;
    dxBtnInsertar: TdxBarLargeButton;
    dxBtnEditar: TdxBarLargeButton;
    dxBtnEliminar: TdxBarLargeButton;
    dxBtnExportar: TdxBarLargeButton;
    dxBtnCerrar: TdxBarLargeButton;
    dxBtnActualizar: TdxBarLargeButton;
    dxDockManager1: TdxDockingManager;
    dxDSite1: TdxDockSite;
    dxDockPanel1: TdxDockPanel;
    dxLDockOrganizacion: TdxLayoutDockSite;
    dxDockConfiguracion: TdxDockPanel;
    dxTreeFrmOrganizacion: TcxDBTreeList;
    cxColumnTituloOrganizacion: TcxDBTreeListColumn;
    cxColumnCodigo: TcxDBTreeListColumn;
    cxColumnNombre: TcxDBTreeListColumn;
    cxColumnRfc: TcxDBTreeListColumn;
    cxColumnRegPat: TcxDBTreeListColumn;
    cxColumnLogo: TcxDBTreeListColumn;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dxDockPanel3: TdxDockPanel;
    dxLDocktimbrado: TdxLayoutDockSite;
    cxScrBoxDatosFiscales: TcxScrollBox;
    cxlbl1: TcxLabel;
    cxlbl2: TcxLabel;
    cxlbl3: TcxLabel;
    cxlbl4: TcxLabel;
    cxlbl5: TcxLabel;
    cxlbl6: TcxLabel;
    cxlbl7: TcxLabel;
    cxlbl8: TcxLabel;
    cxDbLblSalario: TcxDBLabel;
    dxBtnFiltrar: TdxBarLargeButton;
    dxDockPanel4: TdxDockPanel;
    dxLayoutDockSite3: TdxLayoutDockSite;
    cxScrollBox1: TcxScrollBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    cxDbLblPD: TcxDBLabel;
    cxDbLblPV: TcxDBLabel;
    cxDbLblEPV: TcxDBLabel;
    cxDbLblEAguin: TcxDBLabel;
    cxDbLblSVI: TcxDBLabel;
    cxDbLblTopeImss: TcxDBLabel;
    cxDbLblImp: TcxDBLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxDBLabel11: TcxDBLabel;
    cxLabel11: TcxLabel;
    cxbtnUbicacionKey: TcxButton;
    cxbtnUbicacionCer: TcxButton;
    CxMemoCer: TcxDBMemo;
    CxMemoKey: TcxDBMemo;
    dxTabOrganizaciones: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxDockPanel2: TdxDockPanel;
    dxLayoutDockSite4: TdxLayoutDockSite;
    cxScrollBox2: TcxScrollBox;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxDBImage2: TcxDBImage;
    cxDBLabel9: TcxDBLabel;
    cxDBLabel10: TcxDBLabel;
    cxDBLabel12: TcxDBLabel;
    cxDBLabel13: TcxDBLabel;
    cxDBLabel14: TcxDBLabel;
    cxDBLabel15: TcxDBLabel;
    cxDBLabel16: TcxDBLabel;
    cxDBLabel17: TcxDBLabel;
    cdNivelOrg: TClientDataSet;
    dxSubInsertar: TdxBarSubItem;
    DxBtnPadre: TdxBarButton;
    DxBtnHijo: TdxBarButton;
    cxImageList1: TcxImageList;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    mbBuscar: TdxBar;
    bcBuscar: TdxBarCombo;
    cxStyle3: TcxStyle;
    ebTexto: TdxBarEdit;
    dxBarButton1: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure dxBtnCerrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxbtnUbicacionKeyClick(Sender: TObject);
    procedure cxbtnUbicacionCerClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBtnEditarClick(Sender: TObject);
    procedure dxBtnActualizarClick(Sender: TObject);
    procedure DxBtnPadreClick(Sender: TObject);
    procedure DxBtnHijoClick(Sender: TObject);
    procedure dxBtnEliminarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ebTextoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bcBuscarChange(Sender: TObject);
    procedure dxTreeFrmOrganizacionDblClick(Sender: TObject);
    procedure dxSubInsertarPopup(Sender: TObject);
  private
    { Private declarations }
    Procedure insertar(padre: Boolean);
    Procedure ColumnasTree(Tree: TcxDbTreeList; ComboLLenar: TdxBarCombo);
    function BuscarNodo(tree: TcxDbTreeList; ColumnaBuscar, TextoBuscar: String; BusquedaSensible: boolean = False): TcxTreeListNode;
  public
    { Public declarations }
  end;

var
  FrmOrganizacion: TFrmOrganizacion;

implementation
  Uses UDatosOrganizacion;

{$R *.dfm}

procedure TFrmOrganizacion.bcBuscarChange(Sender: TObject);
begin
  ebTexto.SetFocus(False);
end;

function TFrmOrganizacion.BuscarNodo(tree: TcxDbTreeList; ColumnaBuscar, TextoBuscar: String;
  BusquedaSensible: boolean = False): TcxTreeListNode;
var
  Nodo: TcxTreeListNode;
begin
  if (tree.DataController.DataSource.DataSet <> nil) and (TClientDataset(tree.DataController.DataSource.DataSet).RecordCount > 0) then
  begin
    Nodo := dxTreeFrmOrganizacion.FindNodeByText(TextoBuscar, TcxTreeListColumn(FindComponent(ColumnaBuscar)) ,nil, false, true, BusquedaSensible,tlfmNormal,nil, false);
    dxTreeFrmOrganizacion.Select(Nodo);
    result := Nodo;
  End;
end;

Procedure TFrmOrganizacion.ColumnasTree(Tree: TcxDbTreeList; ComboLLenar: TdxBarCombo);
var
  i: integer;
  InfoTree: TInfoTree;
begin
  i := 0;
  if tree.ColumnCount > 0 then
  begin
    ComboLlenar.Items.Clear;
    while i < Tree.ColumnCount do
    begin
      InfoTree := TinfoTree.Create;
      InfoTree.Id := i;
      InfoTree.Caption := tree.Columns[i].Caption.Text;
      InfoTree.ColumnName := Tree.Columns[i].Name;
      bcBuscar.Items.AddObject(InfoTree.Caption, InfoTree);

      inc(i);
    end;

    if ComboLLenar.Items.Count > 0 then
    begin
      ComboLlenar.SetFocus;
      ComboLLenar.ItemIndex := 0;
    end;
  end;
end;

procedure TFrmOrganizacion.cxbtnUbicacionCerClick(Sender: TObject);
begin
  if Length(trim(cxMEmoCer.Text)) > 0 then
    ShellExecute(0, 'explore', nil, nil,pchar(cxMemoCer.Text), SW_SHOW);
end;

procedure TFrmOrganizacion.cxbtnUbicacionKeyClick(Sender: TObject);
begin
  if length(trim(cxMemoKey.Text)) > 0  then
    ShellExecute(0, 'explore', nil, nil,pchar(cxMemoKey.Text), SW_SHOW);
end;

procedure TFrmOrganizacion.dxBtnActualizarClick(Sender: TObject);
var
  cursor: TCursor;
begin
  try
    cursor := Screen.Cursor;
    try
      Screen.Cursor := crSQLWait;
      if cdOrganizacion.Active then
        cdOrganizacion.Refresh
      else
        cdOrganizacion.Open;
    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.message, e.msgType, [mbOK], 0);
  end;

end;

procedure TFrmOrganizacion.dxBtnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmOrganizacion.dxBtnEditarClick(Sender: TObject);
begin
  try
    VerificaPermisos('nuc_organizacion', [vpEscribir], EADError);

    Application.CreateForm(TFrmDatosOrganizacion, FrmDatosOrganizacion);
    FrmDatosOrganizacion.dsPadres.DataSet := cdOrganizacion;
    FrmDatosOrganizacion.IdOrganizacion := cdOrganizacion.FieldByName('IdOrganizacion').AsInteger;
    FrmDatosOrganizacion.ShowModal;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.message, e.msgType, [mbOK], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmOrganizacion.dxBtnEliminarClick(Sender: TObject);
var
  CuentaBorrados: Integer;
  CuentaSeleccionados: Integer;
begin
  try
    VerificaPermisos('nuc_organizacion', [vpBorrar], EADError);

    if (InteliDialog.ShowModal('Aviso', '¿Está seguro que desea borrar el registro seleccionado.' + cdOrganizacion.FieldByName('NombreOrganizacion').AsString, mtConfirmation, [mbYes, mbNo], 0)) =mrYes then
    begin
      CuentaBorrados := BorrarRegistro(cdOrganizacion, [cdOrganizacion.FieldByName('IdOrganizacion').AsInteger]);

      if CuentaBorrados = 0 then
        InteliDialog.ShowModal('No se borraron registros', 'No se pudo eliminar ningún registro de los seleccionados.' + #10 + #10 + 'Es probable que estos registros se encuentren relacionados con algunos otros dentro de la base de datos, verifique esto e intente de nuevo.', mtWarning, [mbOk], 0)
      else
        dxBtnActualizarClick(nil);
    end;
  Except
    on e:InteligentException do
      inteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmOrganizacion.DxBtnHijoClick(Sender: TObject);
begin
  insertar(False);
end;

procedure TFrmOrganizacion.DxBtnPadreClick(Sender: TObject);
begin
  insertar(True);
end;

procedure TFrmOrganizacion.dxSubInsertarPopup(Sender: TObject);
begin
  DxBtnPadre.Enabled := VerificaPermisos('nuc_organizacion', [vpInsertar], EADMessage);
  DxBtnHijo.Enabled := DxBtnPadre.Enabled;
end;

procedure TFrmOrganizacion.dxTreeFrmOrganizacionDblClick(Sender: TObject);
begin
  if dxTreeFrmOrganizacion.DataController.DataSet.RecordCount > 0 then
    dxBtnEditar.Click;
end;

procedure TFrmOrganizacion.ebTextoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  LocNombreColumna: string;
begin
  LocNombreColumna := TInfoTree(bcBuscar.Items.Objects[bcBuscar.ItemIndex]).ColumnName;
  BuscarNodo(dxTreeFrmOrganizacion, LocNombreColumna, ebTexto.Text)
end;

procedure TFrmOrganizacion.FormActivate(Sender: TObject);
begin
  //wSystem.SetFocus(Self);
end;

procedure TFrmOrganizacion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if cdOrganizacion.ProviderName <> '' then
    EliminarConjunto(cdOrganizacion);

  if cdNivelOrg.ProviderName <> '' then
    EliminarConjunto(cdNivelOrg);

  action := Cafree;
end;

procedure TFrmOrganizacion.FormCreate(Sender: TObject);
var
  cursor: TCursor;
begin
  try
    DisableAero := True;
    Globales.SetValue('TmpHandle', Self.Handle);
    //wSystem.Addform(Self);

    cursor := Screen.Cursor;
    try
      Screen.Cursor := crSQLWait;

      if not CrearConjunto(cdOrganizacion, 'nuc_organizacion', ccCatalog) then
        raise inteligentException.CreateByCode(5, ['nuc_organizacion / Catalog']);

      {este catálogo nos determina cuantos niveles podemos tener en nuc_organizacion}
      if not CrearConjunto(cdNivelOrg, 'nuc_nivelorganizacion', ccCatalog) then
        raise inteligentException.CreateByCode(5, ['nuc_organizacion / Catalog']);

    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.message, e.msgType, [mbOK], 0);
  end;
end;

procedure TFrmOrganizacion.FormDestroy(Sender: TObject);
begin
  //wSystem.Delete(Self);
end;

procedure TFrmOrganizacion.FormShow(Sender: TObject);
var
  cursor: TCursor;
begin
  Try

    DisableAero := True;
    cursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      VerificaPermisos('nuc_organizacion', [vpLeer], EADError);

      //dxSkinController1.SkinName := Globales.Elemento('GlobalSkin').AsString;
      ColumnasTree(dxTreeFrmOrganizacion, bcBuscar);

      cdOrganizacion.Open;
      cdNivelOrg.Open

    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.message, e.msgType, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmOrganizacion.insertar(padre: Boolean);
var
  cursor: TCursor;
  LocNivel: Integer;
begin
  try
    DisableAero := True;
    cursor := Screen.Cursor;
    try
      Screen.Cursor := crSQLWait;

      {Sumar 1 o 2 para identificar en que nivel voy a insertar}
      if Padre then
        locNivel := dxTreeFrmOrganizacion.Selections[0].Level + 1
      else
        locNivel := dxTreeFrmOrganizacion.Selections[0].Level + 2;

      {verificar cuantos niveles como máximo puedo tener de acuerdo a la tabla nuc_nivelorganizacion}
      if LocNivel > cdNivelOrg.RecordCount then
        raise InteligentException.CreateByCode(24, ['Solo puedes agregar como máximo ' + intToStr(cdNivelOrg.RecordCount) + 'Niveles.']);

      cdNivelOrg.IndexFieldNames := 'IdNivelOrganizacion';
      cdNivelOrg.RecNo := LocNivel;

      Application.CreateForm(TFrmDatosOrganizacion, FrmDatosOrganizacion);
      FrmDatosOrganizacion.dsPadres.DataSet := cdOrganizacion;
      FrmDatosOrganizacion.IdOrganizacion := -9;

      {Si no está en el nivel 0 no es root}
      if LocNivel  > 1 then
      begin
        {Si es por un nivel inferior}
        if Not Padre then
          FrmDatosOrganizacion.IdPadre := cdOrganizacion.FieldByName('idOrganizacion').AsInteger
        else
          FrmDatosOrganizacion.IdPadre := cdOrganizacion.FieldByName('padre').AsInteger;

        FrmDatosOrganizacion.NivelOrganizacional := cdNivelOrg.fieldByName('IdNivelOrganizacion').asInteger;
      end
      else
      begin
        FrmDatosOrganizacion.IdPadre := -5;
        FrmDatosOrganizacion.NivelOrganizacional := cdNivelOrg.fieldByName('IdNivelOrganizacion').asInteger;
      end;

      FrmDatosOrganizacion.ShowModal;
      dxBtnActualizarClick(nil);
    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.message, e.msgType, [mbOK], 0);
  end;
end;

end.
