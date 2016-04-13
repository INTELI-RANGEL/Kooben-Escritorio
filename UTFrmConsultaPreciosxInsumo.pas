unit UTFrmConsultaPreciosxInsumo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, JvExControls, JvLabel, ExtCtrls, ComCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, cxContainer, cxEdit, cxTreeView, frxClass, frxDBSet,
  frxPreview, TreeList, frxChart, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, ClientModuleUnit1, DBClient, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView, URegistro,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  AdvGlowButton, UInteliDialog, Grids, DBGrids, Menus, cxCurrencyEdit;

type
  TLlaveUnica = class
    IdMarca: Integer;
    IdPresentacion: Integer;
    iIdEmpresa: Integer;
  end;

  TFrmConsultaPreciosxInsumo = class(TForm)
    GroupBox1: TGroupBox;
    JvLabel1: TJvLabel;
    CodigoInsumo: TDBText;
    dsInsumo: TDataSource;
    JvLabel2: TJvLabel;
    NombreInsumo: TDBText;
    DescripcionInsumo: TDBMemo;
    Panel1: TPanel;
    pnlGrafica: TPanel;
    Splitter1: TSplitter;
    dsMarcaxInsumo: TDataSource;
    dsPresentacionxInsumo: TDataSource;
    pnlDatos: TPanel;
    Panel2: TPanel;
    frdsHistorialPrecios: TfrxDBDataset;
    tlUniverso: TTreeList;
    pnlAplicacion: TPanel;
    JvLabel3: TJvLabel;
    deAplicacion: TcxDateEdit;
    JvLabel4: TJvLabel;
    dsPrecios: TDataSource;
    cdHistorialPrecios: TClientDataSet;
    memHistorial: TClientDataSet;
    cbMostrar: TCheckBox;
    tvHistorial: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsHistorial: TDataSource;
    ColAplicacion: TcxGridDBColumn;
    ColPrecioCompra: TcxGridDBColumn;
    ColPrecioVenta: TcxGridDBColumn;
    Panel3: TPanel;
    lblTituloMarca: TDBText;
    JvLabel5: TJvLabel;
    lblNombreInsumo: TDBText;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    lblTituloPresentacion: TDBText;
    pnlComparar: TPanel;
    btnComparar: TAdvGlowButton;
    ColIdInsumoPrecio: TcxGridDBColumn;
    cdMarcaxInsumo: TClientDataSet;
    cdPresentacionxUnidad: TClientDataSet;
    cdPrecios: TClientDataSet;
    cdProveedores: TClientDataSet;
    PopupMenu1: TPopupMenu;
    Editar1: TMenuItem;
    Borrar1: TMenuItem;
    cdRegistroBorrar: TClientDataSet;
    cdInsumoPrecio: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure tlUniversoChange(Sender: TObject; Node: TTreeNode);
    procedure cbMostrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlCompararResize(Sender: TObject);
    procedure tlUniversoClick(Sender: TObject);
    procedure tvHistorialCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tvHistorialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Borrar1Click(Sender: TObject);
    procedure JvLabel4Click(Sender: TObject);
    procedure deAplicacionPropertiesEditValueChanged(Sender: TObject);
  private
    OldWidth: Integer;
    Procedure FiltrarPrecios;
    procedure VerificaConjuntos;
    procedure CargarUniverso(Refrescar: Boolean);
    procedure BorrarRegistro;
    procedure EditarRegistro;
  public
    { Public declarations }
  end;

var
  FrmConsultaPreciosxInsumo: TFrmConsultaPreciosxInsumo;

implementation

{$R *.dfm}

Uses
  UTFrmPrecioInsumo;

procedure TFrmConsultaPreciosxInsumo.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
  EliminarConjunto(cdRegistroBorrar);

  SetRegistry('\Ventanas', '\' + Self.Name, 'Top', IntToStr(Self.Top));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Left', IntToStr(Self.Left));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Width', IntToStr(Self.Width));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Height', IntToStr(Self.Height));

  SetRegistry('\Ventanas', '\' + Self.Name + '\pnlDatos', 'Width', IntToStr(pnlDatos.Width));

  for i := 0 to tlUniverso.Columns.Count -1 do
    SetRegistry('\Ventanas', '\' + Self.Name + '\tlUniverso\Col' + IntToStr(i), 'Width', IntToStr(tlUniverso.Columns[i].Width));

  for i := 0 to tvHistorial.ColumnCount -1 do
    SetRegistry('\Ventanas', '\' + Self.Name + '\tvHistorial\Col' + IntToStr(i), 'Width', IntToStr(tvHistorial.Columns[i].Width));

  Action := caFree;
end;

procedure TFrmConsultaPreciosxInsumo.FormShow(Sender: TObject);
var
  locPxU: TClientDataSet;
  i: Integer;
begin
  deAplicacion.Date := Now;
  OldWidth := Panel2.Width;

  Try
    Self.Top := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Top'));
  Except
    ;
  End;

  Try
    Self.Left := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Left'));
  Except
    ;
  End;

  Try
    Self.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Width'));
  Except
    ;
  End;

  Try
    Self.Height := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Height'));
  Except
    ;
  End;

  Try
    pnlDatos.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\pnlDatos', 'Width'));
  Except
    ;
  End;

  for i := 0 to tlUniverso.Columns.Count -1 do
    Try
      tlUniverso.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\tlUniverso\Col' + IntToStr(i), 'Width'));
    Except
      ;
    End;

  for i := 0 to tvHistorial.ColumnCount -1 do
    Try
      tvHistorial.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\tvHistorial\Col' + IntToStr(i), 'Width'));
    Except
      ;
    End;

  try
    if Not CrearConjunto(cdInsumoPrecio, 'cmt_insumoprecio_detalle', ccSelect) then
      raise InteligentException.CreateByCode(5, ['Precios por Insumo']);

    if Not CargarDatosFiltrados(cdInsumoPrecio, 'IdInsumo', [dsInsumo.DataSet.FieldByName('IdInsumo').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Precios por Insumo', dsInsumo.DataSet.FieldByName('IdInsumo').AsInteger, 'Id. Insumo']);

    cdInsumoPrecio.Open;

{    locPxU := dsPresentacionxInsumo.DataSet as TClientDataSet;
    if Not CargarDatosFiltrados(locPxU, 'iIdUnidad', [dsInsumo.DataSet.FieldByName('iIdUnidad').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Presentaciones por Unidad de Medida', dsInsumo.DataSet.FieldByName('iIdUnidad').AsInteger, 'Id. Unidad de Medida']);

    if locPxU.Active then
      locPxU.Refresh
    else
      locPxU.Open;
}
    // Cargar Universo
    CargarUniverso(False);

    // Crear el dataset de memoria para guardar el historial de los precios
    memHistorial.CreateDataSet;
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

procedure TFrmConsultaPreciosxInsumo.JvLabel4Click(Sender: TObject);
begin
  deAplicacion.Date := Now;
end;

procedure TFrmConsultaPreciosxInsumo.pnlCompararResize(Sender: TObject);
begin
  btnComparar.Left := (pnlComparar.Width - btnComparar.Width) div 2;
end;

procedure TFrmConsultaPreciosxInsumo.PopupMenu1Popup(Sender: TObject);
begin
  Editar1.Enabled := memHistorial.RecordCount > 0;
  Borrar1.Enabled := memHistorial.RecordCount > 0;
end;

procedure TFrmConsultaPreciosxInsumo.tlUniversoChange(Sender: TObject;
  Node: TTreeNode);
begin
  Try
    if cbMostrar.Checked then
    begin
      FiltrarPrecios;
    end;
  Except
    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmConsultaPreciosxInsumo.tlUniversoClick(Sender: TObject);
begin
  btnComparar.Enabled := tlUniverso.SelectionCount > 1;
end;

procedure TFrmConsultaPreciosxInsumo.tvHistorialCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  EditarRegistro;
end;

procedure TFrmConsultaPreciosxInsumo.tvHistorialKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 46 then
    BorrarRegistro;
end;

procedure TFrmConsultaPreciosxInsumo.cbMostrarClick(Sender: TObject);
begin
  Splitter1.Visible := cbMostrar.Checked;
  pnlGrafica.Visible := cbMostrar.Checked;
  if cbMostrar.Checked then
  begin
    Panel2.Align := alLeft;
    if OldWidth = 0 then
      Panel2.Width := Panel1.Width Div 2
    else
      Panel2.Width := OldWidth;

    Splitter1.Left := OldWidth;
  end
  else
  begin
    OldWidth := Panel2.Width;
    Panel2.Align := alClient;
  end;
end;

procedure TFrmConsultaPreciosxInsumo.deAplicacionPropertiesEditValueChanged(
  Sender: TObject);
var
  locCursor: TCursor;
begin
  try
    locCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      if Not CargarDatosFiltrados(cdInsumoPrecio, 'IdInsumo,Aplicacion', [dsInsumo.DataSet.FieldByName('IdInsumo').AsInteger, ClientModule1.DateToStrSQL(deAplicacion.Date)]) then
        raise InteligentException.CreateByCode(6, ['Precios de Insumo', dsInsumo.DataSet.FieldByName('IdInsumo').AsInteger, 'Id. Insumo']);

      CargarUniverso(True);
    finally
      Screen.Cursor := locCursor;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmConsultaPreciosxInsumo.Editar1Click(Sender: TObject);
begin
  EditarRegistro;
end;

Procedure TFrmConsultaPreciosxInsumo.FiltrarPrecios;
Var
  Nodo: TTreeNode;
  Llave: TLlaveUnica;
begin
  Nodo := tlUniverso.Selected;
  Llave := TLlaveUnica(Nodo.Data);

  memHistorial.Filtered := False;

  // Verificar si se deben leer los datos historicos
  if (Llave.iIdEmpresa > 0) and (Not memHistorial.Locate('IdMarca;IdPresentacion;iIdEmpresa', VarArrayOf([Llave.IdMarca, Llave.IdPresentacion, Llave.iIdEmpresa]), [])) then
  begin
    ProcedimientoAlmacenado(cdHistorialPrecios, 'Res_HistorialPrecios', 'p_IdInsumo,p_IdMarca,p_IdPresentacion,p_iIdEmpresa,p_Aplicacion,p_Limite', [dsInsumo.DataSet.FieldByName('IdInsumo').AsInteger, Llave.IdMarca, Llave.IdPresentacion, Llave.iIdEmpresa, ClientModule1.DateToStrSQL(Now()), 10]);

    Try
      cdHistorialPrecios.First;
      while Not cdHistorialPrecios.Eof do
      begin
        memHistorial.Append;
        memHistorial.FieldByName('IdInsumoPrecio').AsVariant := cdHistorialPrecios.FieldByName('IdInsumoPrecio').AsVariant;
        memHistorial.FieldByName('IdInsumo').AsVariant := cdHistorialPrecios.FieldByName('IdInsumo').AsVariant;
        memHistorial.FieldByName('NombreTipoInsumo').AsVariant := cdHistorialPrecios.FieldByName('NombreTipoInsumo').AsVariant;
        memHistorial.FieldByName('CodigoInsumo').AsVariant := cdHistorialPrecios.FieldByName('CodigoInsumo').AsVariant;
        memHistorial.FieldByName('NombreInsumo').AsVariant := cdHistorialPrecios.FieldByName('NombreInsumo').AsVariant;
        memHistorial.FieldByName('iIdUnidad').AsVariant := cdHistorialPrecios.FieldByName('iIdUnidad').AsVariant;
        memHistorial.FieldByName('IdMarca').AsVariant := cdHistorialPrecios.FieldByName('IdMarca').AsVariant;
        memHistorial.FieldByName('CodigoMarca').AsVariant := cdHistorialPrecios.FieldByName('CodigoMarca').AsVariant;
        memHistorial.FieldByName('TituloMarca').AsVariant := cdHistorialPrecios.FieldByName('TituloMarca').AsVariant;
        memHistorial.FieldByName('IdPresentacion').AsVariant := cdHistorialPrecios.FieldByName('IdPresentacion').AsVariant;
        memHistorial.FieldByName('CodigoPresentacion').AsVariant := cdHistorialPrecios.FieldByName('CodigoPresentacion').AsVariant;
        memHistorial.FieldByName('TituloPresentacion').AsVariant := cdHistorialPrecios.FieldByName('TituloPresentacion').AsVariant;
        memHistorial.FieldByName('PrecioCompra').AsVariant := cdHistorialPrecios.FieldByName('PrecioCompra').AsVariant;
        memHistorial.FieldByName('PrecioVenta').AsVariant := cdHistorialPrecios.FieldByName('PrecioVenta').AsVariant;
        memHistorial.FieldByName('Aplicacion').AsVariant := cdHistorialPrecios.FieldByName('Aplicacion').AsVariant;
        memHistorial.FieldByName('iIdEmpresa').AsInteger := cdHistorialPrecios.FieldByName('iIdEmpresa').AsInteger;
        memHistorial.FieldByName('sNombreCorto').AsString := cdHistorialPrecios.FieldByName('sNombreCorto').AsString;
        memHistorial.FieldByName('sRazonSocial').AsString := cdHistorialPrecios.FieldByName('sRazonSocial').AsString;
        memHistorial.Post;

        cdHistorialPrecios.Next;
      end;
    Finally
      cdHistorialPrecios.Close;
      EliminarConjunto(cdHistorialPrecios);
    End;
  end;

  memHistorial.Filter := '(IdMarca = ' + InttoStr(Llave.IdMarca) + ') AND (IdPresentacion = ' + IntToStr(Llave.IdPresentacion) + ') AND (iIdEmpresa = ' + IntToStr(Llave.iIdEmpresa) + ')';
  memHistorial.Filtered := True;
  memHistorial.Last;
end;

procedure TFrmConsultaPreciosxInsumo.VerificaConjuntos;
begin
  if cdMarcaxInsumo.ProviderName = '' then
    if Not CrearConjunto(cdMarcaxInsumo, 'cmt_marcaxinsumo_solo_marcas', ccSelect) then
      raise InteligentException.CreateByCode(5, ['Marcas de Ingredientes']);

  if cdPresentacionxUnidad.ProviderName = '' then
    if Not CrearConjunto(cdPresentacionxUnidad, 'cmt_presentacionxunidad', ccSelect) then
      raise InteligentException.CreateByCode(5, ['Presentación por Unidad de Medida']);

  if cdPrecios.ProviderName = '' then
    if Not CrearConjunto(cdPrecios, 'cmt_insumoprecio', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Precios de Insumo']);

  {if cdHistorialPrecios.ProviderName = '' then
    if Not CrearConjunto(cdHistorialPrecios, 'cmt_historialprecios', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Historial de Precios']);}

  if Not CargarDatosFiltrados(cdMarcaxInsumo, 'IdInsumo', [memHistorial.FieldByName('IdInsumo').AsInteger]) then
    raise InteligentException.CreateByCode(6, ['Marcas de Ingredientes', memHistorial.FieldByName('IdInsumo').AsInteger, 'Id. Insumo']);

  if Not CargarDatosFiltrados(cdPrecios, 'IdInsumo', [memHistorial.FieldByName('IdInsumo').AsInteger]) then
    raise InteligentException.CreateByCode(6, ['Precios de Insumo', memHistorial.FieldByName('IdInsumo').AsInteger, 'Id. Insumo']);

  if cdMarcaxInsumo.Active then
    cdMarcaxInsumo.Refresh
  else
    cdMarcaxInsumo.Open;

  if cdPrecios.Active then
    cdPrecios.Refresh
  else
    cdPrecios.Open;

 {Gustavo: llenando catálogo de proveedores o empresas}
  if cdProveedores.ProviderName = '' then
  begin
    if not CrearConjunto(cdProveedores, 'nuc_empresas', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Proveedores']);
  end;

  if cdProveedores.Active then
    cdProveedores.Refresh
  else
    cdProveedores.Open;
end;

procedure TFrmConsultaPreciosxInsumo.Borrar1Click(Sender: TObject);
begin
  BorrarRegistro;
end;

procedure TFrmConsultaPreciosxInsumo.CargarUniverso(Refrescar: Boolean);
var
  Llave: TLlaveUnica;
  Padre, sPadre: TTreeNode;
  sCompra,
  sVenta,
  sAplicacion: String;
  OldIdMarca,
  OldIdPresentacion,
  OldiIdEmpresa: Integer;
begin
  if cdInsumoPrecio.ProviderName <> '' then
  begin
    if Refrescar then
    begin
      if cdInsumoPrecio.Active then
        cdInsumoPrecio.Refresh
      else
        cdInsumoPrecio.Open;
    end;

    // Recorrer todos los registros de Marcas para agregar los nodos al treeview
    //dsMarcaxInsumo.DataSet.First;
    tlUniverso.Items.Clear;
    cdInsumoPrecio.First;
    OldIdMarca := -1;
    OldIdPresentacion := -1;
    OldiIdEmpresa := -1;
    while Not cdInsumoPrecio.Eof do
    begin
      if OldIdMarca <> cdInsumoPrecio.FieldByName('IdMarca').AsInteger then
      begin
        Llave := TLlaveUnica.Create;
        Llave.IdMarca := cdInsumoPrecio.FieldByName('IdMarca').AsInteger;
        Llave.IdPresentacion := -1;
        Llave.iIdEmpresa := -1;

        Padre := tlUniverso.Items.AddObject(Nil, cdInsumoPrecio.FieldByName('TituloMarca').AsString, Llave);
        OldIdMarca := cdInsumoPrecio.FieldByName('IdMarca').AsInteger;
        OldIdPresentacion := -1;
      end;

      if OldIdPresentacion <> cdInsumoPrecio.FieldByName('IdPresentacion').AsInteger then
      begin
        Llave := TLlaveUnica.Create;
        Llave.IdMarca := cdInsumoPrecio.FieldByName('IdMarca').AsInteger;
        Llave.IdPresentacion := cdInsumoPrecio.FieldByName('IdPresentacion').AsInteger;
        Llave.iIdEmpresa := -1;

        sPadre := tlUniverso.Items.AddChildObject(Padre, cdInsumoPrecio.FieldByName('TituloPresentacion').AsString, Llave);
        OldIdPresentacion := cdInsumoPrecio.FieldByName('IdPresentacion').AsInteger;
        OldiIdEmpresa := -1;
      end;

  //    if OldiIdEmpresa <> cdInsumoPrecio.FieldByName('iIdEmpresa').AsInteger then
      begin
  //      if dsPrecios.DataSet.Locate('IdMarca;IdPresentacion;iIdEmpresa', VarArrayOf([cdInsumoPrecio.FieldByName('IdMarca').AsInteger, cdInsumoPrecio.FieldByName('IdPresentacion').AsInteger, cdInsumoPrecio.FieldByName('iIdEmpresa').AsInteger]), []) then
        begin
          Llave := TLlaveUnica.Create;
          Llave.IdMarca := cdInsumoPrecio.FieldByName('IdMarca').AsInteger;
          Llave.IdPresentacion := cdInsumoPrecio.FieldByName('IdPresentacion').AsInteger;
          Llave.iIdEmpresa := cdInsumoPrecio.FieldByName('iIdEmpresa').AsInteger;

          sCompra := FloatToStrF(cdInsumoPrecio.FieldByName('PrecioCompra').AsFloat, ffCurrency, 16, 2);
          sVenta := FloatToStrF(cdInsumoPrecio.FieldByName('PrecioVenta').AsFloat, ffCurrency, 16, 2);
          sAplicacion := FormatDateTime('d "de" mmm yyyy', cdInsumoPrecio.FieldByName('Aplicacion').AsDateTime);

          tlUniverso.Items.AddChildObject(sPadre, cdInsumoPrecio.FieldByName('sNombreCorto').AsString + ';' + sCompra + ';' + sVenta + ';' + sAplicacion, Llave);
        end;
      end;

      cdInsumoPrecio.Next;
    end;

    {while Not dsMarcaxInsumo.DataSet.Eof do
    begin
      Llave := TLlaveUnica.Create;
      Llave.IdMarca := dsMarcaxInsumo.DataSet.FieldByName('IdMarca').AsInteger;
      Llave.IdPresentacion := -1;

      Padre := tlUniverso.Items.AddObject(Nil, dsMarcaxInsumo.DataSet.FieldByName('TituloMarca').AsString, Llave);

      // Recorro todas las presentaciones para armar las convinaciones
      dsPresentacionxInsumo.DataSet.First;
      while Not dsPresentacionxInsumo.DataSet.Eof do
      begin
        Llave := TLlaveUnica.Create;
        Llave.IdMarca := dsMarcaxInsumo.DataSet.FieldByName('IdMarca').AsInteger;
        Llave.IdPresentacion := dsPresentacionxInsumo.DataSet.FieldByName('IdPresentacion').AsInteger;

        if dsPrecios.DataSet.Locate('IdMarca;IdPresentacion', VarArrayOf([LLave.IdMarca, Llave.IdPresentacion]), []) then
        begin
          sCompra := FloatToStrF(dsPrecios.DataSet.FieldByName('PrecioCompra').AsFloat, ffCurrency, 16, 2);
          sVenta := FloatToStrF(dsPrecios.DataSet.FieldByName('PrecioVenta').AsFloat, ffCurrency, 16, 2);
          sAplicacion := FormatDateTime('d "de" mmm yyyy', dsPrecios.DataSet.FieldByName('Aplicacion').AsDateTime);

          tlUniverso.Items.AddChildObject(Padre, dsPresentacionxInsumo.DataSet.FieldByName('TituloPresentacion').AsString + ';' + sCompra + ';' + sVenta + ';' + sAplicacion, Llave);
        end;

        dsPresentacionxInsumo.DataSet.Next;
      end;

      dsMarcaxInsumo.DataSet.Next;
    end;}

    tlUniverso.FullExpand;
  end;
end;

procedure TFrmConsultaPreciosxInsumo.BorrarRegistro;
var
  OldPos: Integer;
begin
  Try
    if tvHistorial.Controller.SelectedRowCount = 0 then
      raise InteligentException.CreateByCode(24, ['Debe seleccionar un registro para eliminarlo']);

    if (memHistorial.Locate('IdInsumoPrecio', tvHistorial.Controller.SelectedRows[0].Values[0], [])) and (InteliDialog.ShowModal('Borrar Precio', '¿Está seguro que desea eliminar este precio de manera definitiva?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    begin
      if cdRegistroBorrar.ProviderName = '' then
        if Not CrearConjunto(cdRegistroBorrar, 'cmt_insumoprecio', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Precios por Insumo']);

      if Not CargarDatosFiltrados(cdRegistroBorrar, 'IdInsumoPrecio', [memHistorial.FieldByName('IdInsumoPrecio').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Precios por Insumo', memHistorial.FieldByName('IdInsumoPrecio').AsInteger, 'Id. InsumoPrecio']);

      if cdRegistroBorrar.Active then
        cdRegistroBorrar.Refresh
      else
        cdRegistroBorrar.Open;

      if cdRegistroBorrar.RecordCount = 1 Then
      begin
        cdRegistroBorrar.Delete;
        cdRegistroBorrar.ApplyUpdates(-1);

        // Actualizar los datos en pantalla
        memHistorial.Delete;

        OldPos := tlUniverso.Selected.AbsoluteIndex;
        try
          CargarUniverso(True);
        finally
          try
            tlUniverso.Items[OldPos].Selected := True;
          except
            ;
          end;
        end;
      end;
    end;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmConsultaPreciosxInsumo.EditarRegistro;
var
  OldPos: Integer;
begin
  Try
    if tvHistorial.Controller.SelectedRowCount = 0 then
      raise InteligentException.CreateByCode(24, ['Debe seleccionar un registro para poder editarlo']);

    if memHistorial.Locate('IdInsumoPrecio', tvHistorial.Controller.SelectedRows[0].Values[0], []) then
    begin
      // Veriricar si es necesario crear los conjuntos de datos de Presentacion y Marcas
      VerificaConjuntos;

      //Gustavo: validaciones cuando se insertan precios para el ingrediente
      if cdProveedores.RecordCount = 0 then
        raise InteligentException.CreateByCode(24, ['No hay proveedores asignados para dar de alta pecios']);

      if cdMarcaxInsumo.RecordCount = 0 then
        raise InteligentException.CreateByCode(24, ['Debe asignar al menos una marca para poder asignar un precio en base a esta']);

      Application.CreateForm(TFrmPrecioInsumo, FrmPrecioInsumo);
      FrmPrecioInsumo.dsInsumo.DataSet := memHistorial;
      FrmPrecioInsumo.dsMarcaxInsumo.DataSet := cdMarcaxInsumo;
      FrmPrecioInsumo.dsPresentacionxUnidad.DataSet := cdPresentacionxUnidad;
      FrmPrecioInsumo.dsProveedorxInsumo.DataSet := cdProveedores;

      FrmPrecioInsumo.IdInsumoPrecio := memHistorial.FieldByName('IdInsumoPrecio').AsInteger;

      if FrmPrecioInsumo.ShowModal = mrOk Then
      begin
        // Actualizar los datos en pantalla
        memHistorial.Edit;
        memHistorial.FieldByName('PrecioCompra').AsFloat := FrmPrecioInsumo.cdInsumoPrecio.FieldByName('PrecioCompra').AsFloat;
        memHistorial.FieldByName('PrecioVenta').AsFloat := FrmPrecioInsumo.cdInsumoPrecio.FieldByName('PrecioVenta').AsFloat;
        memHistorial.Post;

        if memHistorial.RecNo = memHistorial.RecordCount then
        begin
          OldPos := tlUniverso.Selected.AbsoluteIndex;
          try
            CargarUniverso(True);
          finally
            try
              tlUniverso.Items[OldPos].Selected := True;
            except
              ;
            end;
          end;
        end;
      end;
    end;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  End;
end;

end.
