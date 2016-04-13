unit UTFrmInsumos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Menus,
  dxSkinsdxBarPainter, dxBar, cxClasses, JvMemoryDataset, DB, DBClient,
  AdvShapeButton, Spin, AdvProgressBar, ComCtrls, StdCtrls, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxDBGrid, ExtCtrls, cxButtons, Buttons,
  PngSpeedButton, JvExControls, JvLabel, cxGroupBox, ClientModuleUnit1,
  UTFrmDatosInsumo, UTFrmDatosCatalogo, NxColumns, NxDBColumns,
  UControlExcepciones, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, ImgList, dxSkinsForm, cxGridLevel,
  cxGridCustomView, cxGrid, cxLabel, dxRibbon, UInteliDialog, ExtDlgs, frxClass,
  frxDBSet, ComObj, cxCalc, Grids, DBGrids;

type
  TFrmInsumos = class(TFrmCatalogo)
    srCodigo: TEdit;
    JvLabel1: TJvLabel;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    btnPrecios: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    cdMarcaxInsumo: TClientDataSet;
    cdHistorialPrecios: TClientDataSet;
    cdPrecios: TClientDataSet;
    CxColumnCodigo: TcxGridDBColumn;
    CxColumnNombre: TcxGridDBColumn;
    CxColumnDescripcion: TcxGridDBColumn;
    CxColumnTipoinsumo: TcxGridDBColumn;
    CxColumnUMedida: TcxGridDBColumn;
    cdProveedores: TClientDataSet;
    cdPresentacionxunidad: TClientDataSet;
    SavePictureDialog1: TSavePictureDialog;
    frxInsumos: TfrxReport;
    fdsDatos: TfrxDBDataset;
    NombreTipoInsumo: TcxGridDBColumn;
    cdIntegridadInsumo: TClientDataSet;
    CxColumnIdInsumo: TcxGridDBColumn;
    cdInsumoUpt: TClientDataSet;
    bsiPrecios: TdxBarSubItem;
    btnImportarPrecios: TdxBarLargeButton;
    cdCanasta: TClientDataSet;
    cdCatalogo: TClientDataSet;
    cdDuplicidad: TClientDataSet;
    cdMarcaxInsumoUpt: TClientDataSet;
    cdConversionxUnidad: TClientDataSet;
    dxBarLargeButton2: TdxBarLargeButton;
    btnStocks: TdxBarLargeButton;
    cdInsumoStock: TClientDataSet;
    cdInsumoStockUpt: TClientDataSet;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure btnPreciosClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnPrintClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure CxDbGridDatosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnImportarPreciosClick(Sender: TObject);
    procedure btnStocksClick(Sender: TObject);
  private
    procedure Inicializar;
    function createPopUp: TFrmDatosCatalogo; override;
    procedure VerificaConjuntos;
  public
    { Public declarations }
  end;

var
  FrmInsumos: TFrmInsumos;

implementation

uses
  UTFrmPrecioInsumo, UTFrmConsultaPreciosxInsumo, UTFrmSelFormato,
  frm_SelectSheet, UTFrmErrorIntegracionPrecios, UTFrmStock;

{$R *.dfm}

Function ColumnaNombre(Numero: Integer): String;
Var
  Valor, NumLetras: Integer;
  Cad: String;
Begin
  NumLetras := 26;  // O1
  Cad := '';
  Valor := Numero Mod NumLetras;
  if Valor = 0 then Valor := 26;
  if Numero - Valor > 0 then Cad := Char(64 + Trunc((Numero - Valor) / NumLetras));
  Cad := Cad + Char(64 + Valor);
  Result := Cad;
End;

procedure TFrmInsumos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  EliminarConjunto([cdMarcaxInsumo, cdPresentacionxUnidad, cdPrecios, cdInsumoUpt, cdCanasta]); //, cdHistorialPrecios]);

end;

procedure TFrmInsumos.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'INGREDIENTES';
  inherited;
end;

procedure TFrmInsumos.FormShow(Sender: TObject);
begin
  Try
    inherited;
    if ModoSeleccion = True then
      BtnSelect.Visible := True;
    inicializar;
    abrir;
  Except
    ;
  End;
end;

procedure TFrmInsumos.btnPreciosClick(Sender: TObject);
begin
  Try
    if cdDatos.RecordCount = 0 then
      raise InteligentException.CreateByCode(22, ['Insumos']);

    // Veriricar si es necesario crear los conjuntos de datos de Presentacion y Marcas
    VerificaConjuntos;

    //Gustavo: validaciones cuando se insertan precios para el ingrediente
    if cdProveedores.RecordCount = 0 then
      raise InteligentException.CreateByCode(24, ['No hay proveedores asignados para dar de alta pecios']);

    if cdMarcaxInsumo.RecordCount = 0 then
      raise InteligentException.CreateByCode(24, ['Debe asignar al menos una marca para poder asignar un precio en base a esta']);

    Application.CreateForm(TFrmPrecioInsumo, FrmPrecioInsumo);
    FrmPrecioInsumo.dsInsumo.DataSet := cdDatos;
    FrmPrecioInsumo.dsMarcaxInsumo.DataSet := cdMarcaxInsumo;
    FrmPrecioInsumo.dsPresentacionxUnidad.DataSet := cdPresentacionxUnidad;
    FrmPrecioInsumo.dsProveedorxInsumo.DataSet := cdProveedores;

    FrmPrecioInsumo.IdInsumoPrecio := -9;

    FrmPrecioInsumo.ShowModal;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmInsumos.BtnPrintClick(Sender: TObject);
begin
  inherited;
  ClientModule1.ImprimeReporte('CatalogoInsumos.fr3', frxInsumos);
end;

procedure TFrmInsumos.BtnSearchClick(Sender: TObject);
var
  vCodigo: String;
begin
  if srCodigo.Text = '' then
    vCodigo := '-1'
  else
    vCodigo := srCodigo.Text;

  CargarDatosFiltrados(cdDatos, 'CodigoInsumo', [vCodigo]);

  DxBarBtnActualizar.Click;
end;

procedure TFrmInsumos.btnStocksClick(Sender: TObject);
begin
  inherited;

  if cdInsumoStock.ProviderName = '' then
    if Not CrearConjunto(cdInsumoStock, 'cmt_insumostock', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Stock de Insumos']);

  if Not CargarDatosFiltrados(cdInsumoStock, 'IdInsumo', [cdDatos.FieldByName('IdInsumo').AsInteger]) then
    raise InteligentException.CreateByCode(6, ['Stock de Insumos', cdDatos.FieldByName('IdInsumo').AsInteger, 'Id. Insumo']);

  if cdInsumoStock.Active then
    cdInsumoStock.Refresh
  else
    cdInsumoStock.Open;

  if cdInsumoStockUpt.ProviderName = '' then
    if Not CrearConjunto(cdInsumoStockUpt, 'cmt_insumostock', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Stock de Insumos']);

  if Not CargarDatosFiltrados(cdInsumoStockUpt, 'IdInsumo', [cdDatos.FieldByName('IdInsumo').AsInteger]) then
    raise InteligentException.CreateByCode(6, ['Stock de Insumos', cdDatos.FieldByName('IdInsumo').AsInteger, 'Id. Insumo']);

  Application.CreateForm(TFrmStock, FrmStock);
  FrmStock.Caption := 'Consulta de Stocks para: ' + cdDatos.FieldByName('NombreInsumo').AsString;
  FrmStock.IdInsumo := cdDatos.FieldByName('IdInsumo').AsInteger;
  FrmStock.CodigoInsumo.Caption := cdDatos.FieldByName('CodigoInsumo').AsString;
  FrmStock.NombreInsumo.Caption := cdDatos.FieldByName('NombreInsumo').AsString;
  FrmStock.CodigoTipoInsumo.Caption := cdDatos.FieldByName('CodigoTipoInsumo').AsString;
  FrmStock.NombreTipoInsumo.Caption := cdDatos.FieldByName('NombreTipoInsumo').AsString;
  FrmStock.dsInsumoStock.DataSet := cdInsumoStock;
  FrmStock.dsInsumoStockUpt.DataSet := cdInsumoStockUpt;
  FrmStock.ShowModal;
end;

function TFrmInsumos.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosInsumo.Create(Self);
end;

procedure TFrmInsumos.CxDbGridDatosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  cdDatos.Refresh;
end;

procedure TFrmInsumos.BtnDeleteClick(Sender: TObject);
begin
  //inherited;   Cancelar el comportamiento natural
  if CxDbGridDatos.Controller.SelectedRowCount > 0 then
  begin
    // Verificar si no se ha utilizado dicho ingediente en alguna tabla dependiente
    try
      if cdIntegridadInsumo.ProviderName = '' then
        if not CrearConjunto(cdIntegridadInsumo, 'cmt_integridadinsumo', ccSelect) then
          raise InteligentException.CreateByCode(5, ['Integridad de Insumos']);

      if cdInsumoUpt.ProviderName = '' then
        if not CrearConjunto(cdInsumoUpt, 'cmt_insumo', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Insumos para actualización']);

      if cdDatos.Locate('IdInsumo', CxDbGridDatos.Controller.SelectedRows[0].Values[1], []) then
      begin
        if Not CargarDatosFiltrados(cdIntegridadInsumo, 'IdInsumo', [cdDatos.FieldByName('IdInsumo').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['Integridad de Insumos', cdDatos.FieldByName('IdInsumo').AsInteger, 'Id. Insumo']);
        if cdIntegridadInsumo.Active then
          cdIntegridadInsumo.Refresh
        else
          cdIntegridadInsumo.Open;

        if cdIntegridadInsumo.FieldByName('Existe').AsInteger = 1 then
          raise InteligentException.CreateByCode(24, ['No es posible eliminar el registro de ' + cdDatos.FieldByName('NombreInsumo').AsString + ' del catálogo de Insumos, actualice la información en la pantalla para continuar.']);

        if Not CargarDatosFiltrados(cdInsumoUpt, 'IdInsumo', [cdDatos.FieldByName('IdInsumo').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['Insumos para actualizacion', cdDatos.FieldByName('IdInsumo').AsInteger, 'Id. Insumo']);

        try
          if cdInsumoUpt.Active then
            cdInsumoUpt.Refresh
          else
            cdInsumoUpt.Open;

          if cdInsumoUpt.RecordCount = 0 then
            raise InteligentException.CreateByCode(27, ['Insumos', cdDatos.FieldByName('NombreInsumo').AsString]);

          cdInsumoUpt.Edit;
          cdInsumoUpt.FieldByName('Activo').AsString := 'No';
          cdInsumoUpt.Post;
          cdInsumoUpt.ApplyUpdates(-1);

          cdDatos.Refresh;
        finally
          if cdInsumoUpt.Active then
            cdInsumoUpt.Close;
        end;
      end;
    except
      on e:InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e:Exception do
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmInsumos.btnImportarPreciosClick(Sender: TObject);
Var
  flcid, Ren: Integer ;
  ListaNecesarios,
  ListaLlave           : TStringList;
  TipoCampo            : Variant;
  DescripTabla: String;
  Excel                : OleVariant;
  Formato: Boolean;
  Ancho: Real;
  CadId, CodigoInsumo: String;
  iIdEmpresa,
  IdMarca,
  IdPresentacion: Integer;
  CodigoProveedor, CodigoMarca, CodigoPresentacion: String;
  Precio: Real;
  Aplicacion: TDate;
  ListaErrores: TStringList;
  ListaWarning: TStringList;
  MaxErrores: Integer;
  Omitir, OmitirDefault: Byte;
  ListaInd: TStringList;
  IniciaError: Integer;
  CadenaInd: String;
  Ciclos: Integer;

Procedure Agregar(Estructura: TJvMemoryData; Llave, Nombre: String; pAncho: Real; pForanea1: String; pForanea2: String);
Begin
  Estructura.Append;
  Estructura.FieldByName('sIdLlave').AsString := Llave;
  Estructura.FieldByName('sNombre').AsString := Nombre;
  Estructura.FieldByName('iAncho').AsFloat := pAncho;
  Estructura.FieldByName('sForaneaTabla').AsString := pForanea1;
  Estructura.FieldByName('sForaneaCampo').AsString := pForanea2;
  Estructura.FieldByName('iColumna').AsInteger := Estructura.RecordCount + 1;
  Estructura.Post;
End;

procedure NoExiste(NombreColumna: String);
begin
  ListaWarning.Add('Renglón ' + IntToStr(Ren) + ', Columna "' + NombreColumna + '" no tiene ningún valor');
end;

function Separa(Lista: TStringList): String;
var
  ix: Integer;
  Resultado: String;
begin
  Resultado := '';
  for ix := 0 to Lista.Count -1 do
    Resultado := Resultado + Lista[ix] + #10;

  Result := Resultado;
end;

begin
  Try
    DescripTabla := 'CATÁLOGO PRECIOS DE INSUMO';

    mdDeposito.FieldDefs.Clear;   // Limpiar la estructura de la tabla

    Try
      // Seleccionar tipo de formato a generar
      Try
        Application.CreateForm(TFrmSelFormato, FrmSelFormato);
        if FrmSelFormato.ShowModal = mrOk then
          Formato := FrmSelFormato.RadioGroup1.ItemIndex = 0;
      Finally
        FrmSelFormato.Free;
      End;

      // Proceder a seleccionar el archivo
      if Formato then
      begin
        SaveXLS.Title := 'Generar formato vacio para captura de datos en EXCEL';
        SaveXLS.FileName := 'cmt_insumoprecio';
      end
      else
      begin
        OpenXLS.Title := 'Importar información de captura previa en archivo de EXCEL';
        OpenXLS.FileName := 'cmt_insumoprecio';
      end;

      If (Not Formato and OpenXLS.Execute) or (Formato and SaveXLS.Execute) then
      Begin
        // Generar el ambiente de excel para vaciar los datos de la gráfica
        Try
          Excel := CreateOleObject('Excel.Application');
        except
          raise Exception.Create('No se pudo crear el objeto EXCEL');
        End;

        Excel.Visible := False;
        Excel.DisplayAlerts := False;
        Excel.ScreenUpdating := False;

        if Formato then
        begin
          // Abrir los datos de la canasta básica
          if cdCanasta.ProviderName = '' then
            if Not CrearConjunto(cdCanasta, 'cmt_insumo', ccCatalog) then
              raise InteligentException.CreateByCode(5, ['Insumos de la Canasta Básica']);

          if Not CargarDatosFiltrados(cdCanasta, 'eClasificacion', ['Basica']) then
            raise InteligentException.CreateByCode(16, ['Insumo de la Canasta Básica']);

          if cdCanasta.Active then
            cdCanasta.Refresh
          else
            cdCanasta.Open;

          Excel.WorkBooks.Add;
          Excel.Visible := True;
          Excel.ScreenUpdating := True;

          Ciclos := 0;
          while (Excel.ActiveWorkbook.Sheets.Count < 2) and (Ciclos < 4) do
          begin
            Excel.ActiveWorkbook.Sheets.Add;
            Inc(Ciclos);
          end;

          if Ciclos >= 4 then
            raise InteligentException.CreateByCode(1, ['No se pueden crear todas las cejas requeridas en la hoja de Excel']);

          Excel.Sheets.Item[2].Select;

          while Excel.ActiveWorkbook.Sheets.Count < 2 do
            Excel.ActiveWorkbook.Sheets.Add;

          Excel.ActiveWorkbook.Sheets[1].Name := 'Precios';
          Excel.ActiveWorkbook.Sheets[2].Name := 'Catalogos';

          try
            if Not CrearConjunto(cdCatalogo, 'nuc_empresas', ccCatalog) then
              raise InteligentException.CreateByCode(5, ['Proveedores']);

            cdCatalogo.Open;
            try
              Excel.ActiveSheet.Cells[1, 1].Value := 'Proveedor';
              Excel.ActiveSheet.Cells[1, 2].Value := 'NombreProveedor';
              while Not cdCatalogo.Eof do
              begin
                Excel.ActiveSheet.Cells[cdCatalogo.RecNo +1, 1].Value := cdCatalogo.FieldByName('sNombreCorto').AsString;
                Excel.ActiveSheet.Cells[cdCatalogo.RecNo +1, 2].Value := cdCatalogo.FieldByName('iIdEmpresa').AsString;

                cdCatalogo.Next;
              end;

              Excel.ActiveWorkbook.Names.Add('Proveedor', EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, '=Catalogos!$A$2:$A$' + IntToStr(cdCatalogo.RecordCount +1), EmptyParam, EmptyParam, EmptyParam);
              Excel.ActiveWorkbook.Names.Add('iIdEmpresa', EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, '=Catalogos!$A$2:$B$' + IntToStr(cdCatalogo.RecordCount +1), EmptyParam, EmptyParam, EmptyParam);
            finally
              cdCatalogo.Close;
            end;

            if Not CrearConjunto(cdCatalogo, 'cmt_marca', ccCatalog) then
              raise InteligentException.CreateByCode(5, ['Marcas']);

            cdCatalogo.Open;
            try
              Excel.ActiveSheet.Cells[1, 3].Value := 'IdMarca';
              Excel.ActiveSheet.Cells[1, 4].Value := 'TituloMarca';
              while Not cdCatalogo.Eof do
              begin
                Excel.ActiveSheet.Cells[cdCatalogo.RecNo +1, 3].Value := cdCatalogo.FieldByName('TituloMarca').AsString;
                Excel.ActiveSheet.Cells[cdCatalogo.RecNo +1, 4].Value := cdCatalogo.FieldByName('IdMarca').AsString;

                cdCatalogo.Next;
              end;

              Excel.ActiveWorkbook.Names.Add('Marca', EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, '=Catalogos!$C$2:$C$' + IntToStr(cdCatalogo.RecordCount +1), EmptyParam, EmptyParam, EmptyParam);
              Excel.ActiveWorkbook.Names.Add('IdMarca', EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, '=Catalogos!$C$2:$D$' + IntToStr(cdCatalogo.RecordCount +1), EmptyParam, EmptyParam, EmptyParam);
            finally
              cdCatalogo.Close;
            end;

            if Not CrearConjunto(cdCatalogo, 'cmt_presentacion', ccCatalog) then
              raise InteligentException.CreateByCode(5, ['Presentaciones']);

            cdCatalogo.Open;
            try
              Excel.ActiveSheet.Cells[1, 5].Value := 'IdPresentacion';
              Excel.ActiveSheet.Cells[1, 6].Value := 'TituloPresentacion';
              while Not cdCatalogo.Eof do
              begin
                Excel.ActiveSheet.Cells[cdCatalogo.RecNo +1, 5].Value := cdCatalogo.FieldByName('TituloPresentacion').AsString;
                Excel.ActiveSheet.Cells[cdCatalogo.RecNo +1, 6].Value := cdCatalogo.FieldByName('IdPresentacion').AsString;

                cdCatalogo.Next;
              end;

              Excel.ActiveWorkbook.Names.Add('Presentacion', EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, '=Catalogos!$E$2:$E$' + IntToStr(cdCatalogo.RecordCount +1), EmptyParam, EmptyParam, EmptyParam);
              Excel.ActiveWorkbook.Names.Add('IdPresentacion', EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, '=Catalogos!$E$2:$F$' + IntToStr(cdCatalogo.RecordCount +1), EmptyParam, EmptyParam, EmptyParam);
            finally
              cdCatalogo.Close;
            end;
          finally
            if cdCatalogo.ProviderName <> '' then
              cdCatalogo.Close;

            EliminarConjunto(cdCatalogo);
          end;

          Excel.Sheets.Item[1].Select;
          Excel.ActiveSheet.Cells[1,1].Value := 'Fecha de Aplicación:';
          Excel.ActiveSheet.Cells[1,1].HorizontalAlignment := -4152;
          Excel.ActiveSheet.Cells[1,2].NumberFormat := '[$-F800]dddd, mmmm dd, yyyy';
          Excel.ActiveSheet.Cells[1,2].HorizontalAlignment := -4131;
          Excel.ActiveSheet.Cells[1,2].Value := Now;

          Excel.Columns[1].ColumnWidth := 20;
          Excel.Columns[2].ColumnWidth := 40;
          Excel.Columns[3].ColumnWidth := 30;
          Excel.Columns[4].ColumnWidth := 30;
          Excel.Columns[5].ColumnWidth := 30;
          Excel.Columns[6].ColumnWidth := 20;
          Excel.Columns[6].NumberFormat := '$ #,##0.00';

          //Excel.Rows['1:2'].RowHeight := 0;

          Excel.ActiveSheet.Cells[3,1].Value := 'Código';
          Excel.ActiveSheet.Cells[3,2].Value := 'Nombre';
          Excel.ActiveSheet.Cells[3,3].Value := 'Proveedor';
          Excel.ActiveSheet.Cells[3,4].Value := 'Marca';
          Excel.ActiveSheet.Cells[3,5].Value := 'Presentación';
          Excel.ActiveSheet.Cells[3,6].Value := 'Precio';

          cdCanasta.First;
          while Not cdCanasta.Eof do
          begin
            Excel.ActiveSheet.Cells[cdCanasta.RecNo + 3, 1].Value := cdCanasta.FieldByName('CodigoInsumo').AsString;
            Excel.ActiveSheet.Cells[cdCanasta.RecNo + 3, 2].Value := cdCanasta.FieldByName('NombreInsumo').AsString;

            cdCanasta.Next;
          end;

          // Combo de empresas
          Excel.ActiveSheet.Range['C4:C' + IntToStr(cdCanasta.RecordCount + 3)].Select;
          Excel.Selection.Validation.Delete;
          Excel.Selection.Validation.Add(3, 1, 1, '=Proveedor');
          Excel.Selection.Validation.IgnoreBlank := True;
          Excel.Selection.Validation.InCellDropdown := True;
          Excel.Selection.Validation.InputTitle := '';
          Excel.Selection.Validation.ErrorTitle := '';
          Excel.Selection.Validation.InputMessage := '';
          Excel.Selection.Validation.ErrorMessage := '';
          Excel.Selection.Validation.ShowInput := True;
          Excel.Selection.Validation.ShowError := True;

          // Combo de Marcas
          Excel.ActiveSheet.Range['D4:D' + IntToStr(cdCanasta.RecordCount + 3)].Select;
          Excel.Selection.Validation.Delete;
          Excel.Selection.Validation.Add(3, 1, 1, '=Marca');
          Excel.Selection.Validation.IgnoreBlank := True;
          Excel.Selection.Validation.InCellDropdown := True;
          Excel.Selection.Validation.InputTitle := '';
          Excel.Selection.Validation.ErrorTitle := '';
          Excel.Selection.Validation.InputMessage := '';
          Excel.Selection.Validation.ErrorMessage := '';
          Excel.Selection.Validation.ShowInput := True;
          Excel.Selection.Validation.ShowError := True;

          // Combo de empresas
          Excel.ActiveSheet.Range['E4:E' + IntToStr(cdCanasta.RecordCount + 3)].Select;
          Excel.Selection.Validation.Delete;
          Excel.Selection.Validation.Add(3, 1, 1, '=Presentacion');
          Excel.Selection.Validation.IgnoreBlank := True;
          Excel.Selection.Validation.InCellDropdown := True;
          Excel.Selection.Validation.InputTitle := '';
          Excel.Selection.Validation.ErrorTitle := '';
          Excel.Selection.Validation.InputMessage := '';
          Excel.Selection.Validation.ErrorMessage := '';
          Excel.Selection.Validation.ShowInput := True;
          Excel.Selection.Validation.ShowError := True;

          Excel.ActiveWorkbook.SaveAs(SaveXLS.FileName);

          Excel.Application.WindowState := -4140;   // Minimizar excel para poder pareciar el dialogo
          InteliDialog.ShowModal('Proceso terminado', 'La generación del machote de captura de excel ha sido terminado correctamente', mtInformation, [mbOk], 0);
          Excel.Application.WindowState := -4143;   // Recuperar el tamaño de la ventana para mostrar el archivo de excel
        end
        else
        begin
          OmitirDefault := 0;
          Excel.WorkBooks.Open(OpenXLS.FileName);

          // Revisar cuantas hojas tiene el libro
          Application.CreateForm(TFrmSelectSheet, FrmSelectSheet);
          FrmSelectSheet.ComboBox1.Clear;
          FrmSelectSheet.Excel := Excel;
          FrmSelectSheet.mdEstructura := mdEstructura;
          FrmSelectSheet.mdDeposito := mdDeposito;
          FrmSelectSheet.ListaNecesarios := ListaNecesarios;
          FrmSelectSheet.ListaLlave := ListaLlave;
          FrmSelectSheet.Excel := Excel;
          FrmSelectSheet.flcid := flcid;
          FrmSelectSheet.NombreTabla := EntityName;
          FrmSelectSheet.DescripTabla := DescripTabla;
          while FrmSelectSheet.Combobox1.Items.Count < Excel.ActiveWorkbook.Sheets.Count do
          Begin
            Excel.Sheets.Item[FrmSelectSheet.Combobox1.Items.Count + 1].Select;
            FrmSelectSheet.Combobox1.Items.Add(Excel.Sheets[FrmSelectSheet.Combobox1.Items.Count + 1].Name);
          End;
          if FrmSelectSheet.ShowModal = mrOk then
          begin
            MaxErrores := FrmSelectSheet.seErrores.Value;
            if cdPrecios.ProviderName = '' then
              if Not CrearConjunto(cdPrecios, 'cmt_insumoprecio', ccUpdate) then
                raise InteligentException.CreateByCode(5, ['Precios de Insumo']);

            if Not CargarDatosFiltrados(cdPrecios, 'IdInsumoPrecio', [-9]) then
              raise InteligentException.CreateByCode(16, ['Precios de Insumos']);

            if cdPrecios.Active then
              cdPrecios.Refresh
            else
              cdPrecios.Open;

            if cdInsumoUpt.ProviderName = '' then
              if not CrearConjunto(cdInsumoUpt, 'cmt_insumo', ccCatalog) then
                raise InteligentException.CreateByCode(5, ['Insumos']);

            if Not CargarDatosFiltrados(cdInsumoUpt, 'eClasificacion', ['basica']) then
              raise InteligentException.CreateByCode(6, ['Insumos', cdDatos.FieldByName('IdInsumo').AsInteger, 'Id. Insumo']);

            if cdInsumoUpt.Active then
              cdInsumoUpt.Refresh
            else
              cdInsumoUpt.Open;

            if cdConversionxUnidad.ProviderName = '' then
              if Not CrearConjunto(cdConversionxUnidad, 'cmt_conversionxunidad_dx', ccSelect) then
                raise InteligentException.CreateByCode(5, ['Conversiones por Unidad']);

            cdConversionxUnidad.Open;

            Excel.ActiveWorkBook.Sheets[FrmSelectSheet.Combobox1.Text].Select;

            CodigoInsumo := Excel.ActiveWorkBook.ActiveSheet.Cells[1, 2].Value2;
            try
              Aplicacion := StrToFloat(CodigoInsumo);
              //Aplicacion := Trunc(Aplicacion);
            except
              raise InteligentConnection.CreateByCode(24, ['La fecha es incorrecta, no es posible levantar la información de los precios.']);
            end;

            try
              // Verificar la factibilidad de la carga de información
              Ren := 4;
              ListaErrores := TStringList.Create;
              ListaErrores.Clear;

              ListaWarning := TStringList.Create;
              ListaWarning.Clear;

              ListaInd := TStringList.Create;
              ListaInd.Clear;

              while (Excel.ActiveWorkBook.ActiveSheet.Cells[Ren, 1].Value <> '') and (ListaErrores.Count < MaxErrores) do
              begin
                IniciaError := ListaErrores.Count;

                CodigoInsumo := Excel.ActiveWorkBook.ActiveSheet.Cells[Ren, 1].Value;
                CodigoInsumo := Trim(CodigoInsumo);

                // Verificar si el Código del Insumo existe
                if CodigoInsumo = '' then
                  ListaErrores.Add('Renglón ' + IntToStr(Ren) + ', Columna "Código" no tiene ningún valor')
                else
                begin
                  if not cdInsumoUpt.Locate('CodigoInsumo', CodigoInsumo, []) then
                    ListaErrores.Add('Renglón ' + IntToStr(Ren) + ', Columna "Insumo", el valor ' + CodigoInsumo + ' no existe dentro del catálogo de Insumos.');
                end;

                // Si el Codigo de Insumo es incorrecto entonces brincar todo lo demas
                if IniciaError = ListaErrores.Count then
                begin
                  try
                    Precio := StrToFloat(Excel.ActiveWorkBook.ActiveSheet.Cells[Ren, 6].Value);
                  except
                    Precio := 0;
                  end;

                  // Inicializar valores de Id's para verificación cuando el precio sea 0
                  iIdEmpresa := -1;
                  IdMarca := -1;
                  IdPresentacion := -1;

                  CodigoProveedor := Excel.ActiveWorkBook.ActiveSheet.Cells[Ren, 3].Value;
                  if Trim(CodigoProveedor) = '' then
                    NoExiste('Proveedor')
                  else
                  begin
                    Excel.ActiveWorkBook.ActiveSheet.Cells[2, 1].FormulaR1C1 := '=+VLOOKUP("' + CodigoProveedor + '", iIdEmpresa, 2, FALSE)';
                    try
                      iIdEmpresa := Excel.ActiveWorkBook.ActiveSheet.Cells[2, 1].Value;
                    except
                      ListaErrores.Add('Renglón ' + IntToStr(Ren) + ', Columna "Proveedor", el valor ' + CodigoProveedor + ' no existe dentro del catálogo de Proveedores.');
                    end;
                  end;

                  CodigoMarca := Excel.ActiveWorkBook.ActiveSheet.Cells[Ren, 4].Value;
                  if TRIM(CodigoMarca) = '' then
                    NoExiste('Marca')
                  else
                  begin
                    Excel.ActiveWorkBook.ActiveSheet.Cells[2, 1].FormulaR1C1 := '=+VLOOKUP("' + CodigoMarca + '", IdMarca, 2, FALSE)';
                    try
                      IdMarca := Excel.ActiveWorkBook.ActiveSheet.Cells[2, 1].Value;
                    except
                      ListaErrores.Add('Renglón ' + IntToStr(Ren) + ', Columna "Marca", el valor ' + CodigoMarca + ' no existe dentro del catálogo de Marcas.');
                    end;
                  end;

                  CodigoPresentacion := Excel.ActiveWorkBook.ActiveSheet.Cells[Ren, 5].Value;
                  if Trim(CodigoPresentacion) = '' then
                  begin
                    if Precio > 0 then
                      NoExiste('Presentación');
                  end
                  else
                  begin
                    Excel.ActiveWorkBook.ActiveSheet.Cells[2, 1].FormulaR1C1 := '=+VLOOKUP("' + CodigoPresentacion + '", IdPresentacion, 2, FALSE)';
                    try
                      IdPresentacion := Excel.ActiveWorkBook.ActiveSheet.Cells[2, 1].Value;
                    except
                      ListaErrores.Add('Renglón ' + IntToStr(Ren) + ', Columna "Presentación", el valor ' + CodigoPresentacion + ' no existe dentro del catálogo de Presentaciones.');
                    end;
                  end;

                  // Verificar si la presentacion seleccionada cuenta con una conversión si es que fuese diferente a la unidad de medida del insumo
                  if IdPresentacion > -1 then
                  begin
                    if Not cdConversionxUnidad.Locate('iIdUnidad_t;IdPresentacion;IdInsumo', VarArrayOf([cdInsumoUpt.FieldByName('iIdUnidad').AsInteger, IdPresentacion, cdInsumoUpt.FieldByName('IdInsumo').AsInteger]), []) then
                      if Not cdConversionxUnidad.Locate('iIdUnidad_t;IdPresentacion;IdInsumo', VarArrayOf([cdInsumoUpt.FieldByName('iIdUnidad').AsInteger, IdPresentacion, 'Null']), []) then
                        ListaErrores.Add('Renglón ' + IntToStr(Ren) + ', Columna "Presentación", No existe una conversión para ' + cdInsumoUpt.FieldByName('sNombre').AsString + ' a la presentación "' + CodigoPresentacion + '"');
                  end;

                  if (Precio <= 0) and (iIdEmpresa > -1) and (IdMarca > -1) and (IdPresentacion > -1) then
                    ListaWarning.Add('Renglón ' + IntToStr(Ren) + ', Columna "Precio", existe Proveedor, Marca y Presentación pero no existe precio.');

                  // Guardar todos los registros de manera individual
                  if IniciaError = ListaErrores.Count then
                  begin
                    CadenaInd := cdInsumoUpt.FieldByName('IdInsumo').AsString;
                    CadenaInd := CadenaInd + '-' + IntToStr(iIdEmpresa);
                    CadenaInd := CadenaInd + '-' + IntToStr(IdMarca);
                    CadenaInd := CadenaInd + '-' + IntToStr(IdPresentacion);

                    if ListaInd.IndexOf(CadenaInd) >= 0 then
                      ListaErrores.Add('Renglón ' + IntToStr(Ren) + ', los datos en este registro se repiten con los del renglón ' + IntToStr(Integer(ListaInd.Objects[ListaInd.IndexOf(CadenaInd)])) + '.');

                    ListaInd.AddObject(CadenaInd, TObject(Ren));
                  end;
                end;

                Inc(Ren);
              end;

              // Verificar si hubo errores
              if ListaErrores.Count > 0 then
              begin
                raise InteligentWarning.CreateByCode(24, ['Se ha alcanzado el número máximo de errores permitidos.' + #10 + #10 + Separa(ListaErrores) + #10 + 'No se puede continuar con el proceso de levantamiento de información, haga las correcciones necesarias e intente de nuevo.']);
              end
              else
                if ListaWarning.Count > 0 then
                  if InteliDialog.ShowModal('Aviso', Separa(ListaWarning), mtConfirmation, [mbYes, mbCancel], 0) = mrCancel then
                    raise InteligentConnection.Create('*');
            Finally
              ListaErrores.Clear;
              ListaErrores.Free;

              ListaWarning.Clear;
              ListaWarning.Free;

              ListaInd.Clear;
              ListaInd.Free;
            End;

            try
              if Not Assigned(cdDuplicidad) then
                cdDuplicidad := TClientDataSet.Create(Self);

              if cdDuplicidad.ProviderName = '' then
                if Not CrearConjunto(cdDuplicidad, 'cmt_insumoprecio', ccCatalog) then
                  raise InteligentException.CreateByCode(5, ['Precios de Insumos']);

              if Not Assigned(cdMarcaxInsumoUpt) then
                cdMarcaxInsumoUpt := TClientDataSet.Create(Self);

              if cdMarcaxInsumoUpt.ProviderName = '' then
                if Not CrearConjunto(cdMarcaxInsumoUpt, 'cmt_marcaxinsumo', ccUpdate) then
                  raise InteligentException.CreateByCode(5, ['Marcas por Insumos']);

              // Si todo está bien se debe  proceder a levantar la información
              Ren := 4;
              while Excel.ActiveWorkBook.ActiveSheet.Cells[Ren, 1].Value <> '' do
              begin
{                Excel.ScreenUpdating := True;
                Excel.Visible := True;}
                CodigoInsumo := Excel.ActiveWorkBook.ActiveSheet.Cells[Ren, 1].Value;
                CodigoInsumo := Trim(CodigoInsumo);

                cdInsumoUpt.Locate('CodigoInsumo', CodigoInsumo, []);

                iIdEmpresa := -1;
                IdMarca := -1;
                IdPresentacion := -1;

                try
                  CodigoProveedor := Excel.ActiveWorkBook.ActiveSheet.Cells[Ren, 3].Value;
                  CodigoProveedor := Trim(CodigoProveedor);
                  Excel.ActiveWorkBook.ActiveSheet.Cells[2, 1].FormulaR1C1 := '=+VLOOKUP("' + CodigoProveedor + '", iIdEmpresa, 2, FALSE)';
                  iIdEmpresa := Excel.ActiveWorkBook.ActiveSheet.Cells[2, 1].Value;

                  CodigoMarca := Excel.ActiveWorkBook.ActiveSheet.Cells[Ren, 4].Value;
                  CodigoMarca := TRIM(CodigoMarca);
                  Excel.ActiveWorkBook.ActiveSheet.Cells[2, 1].FormulaR1C1 := '=+VLOOKUP("' + CodigoMarca + '", IdMarca, 2, FALSE)';
                  IdMarca := Excel.ActiveWorkBook.ActiveSheet.Cells[2, 1].Value;

                  CodigoPresentacion := Excel.ActiveWorkBook.ActiveSheet.Cells[Ren, 5].Value;
                  CodigoPresentacion := Trim(CodigoPresentacion);
                  Excel.ActiveWorkBook.ActiveSheet.Cells[2, 1].FormulaR1C1 := '=+VLOOKUP("' + CodigoPresentacion + '", IdPresentacion, 2, FALSE)';
                  IdPresentacion := Excel.ActiveWorkBook.ActiveSheet.Cells[2, 1].Value;
                except
                  ;
                end;

                try
                  Precio := StrToFloat(Excel.ActiveWorkBook.ActiveSheet.Cells[Ren, 6].Value);
                except
                  Precio := 0;
                end;

                if (Precio > 0) and (iIdEmpresa > -1) and (IdMarca > -1) and (IdPresentacion > -1) then
                begin
                  // Verificar que el registro identificado por IdInsumo, iIdEmpresa, IdMarca, IdPresentacion y Aplicación no existe
                  if Not CargarDatosFiltrados(cdDuplicidad, 'IdInsumo,iIdEmpresa,IdMarca,IdPresentacion,Aplicacion', [cdInsumoUpt.FieldByName('IdInsumo').AsInteger, iIdEmpresa, IdMarca, IdPresentacion, ClientModule1.DateToStrSQL(Aplicacion)]) then
                    raise InteligentException.CreateByCode(16, ['Precios de Insumos']);

                  if CuantosRegistros(cdDuplicidad) > 0 then
                  begin
                    Omitir := OmitirDefault; // Omitir = False
                    if Omitir = 0 then
                    begin
                      Application.CreateForm(TFrmErrorIntegracionPrecios, FrmErrorIntegracionPrecios);
                      FrmErrorIntegracionPrecios.Memo1.Lines.Clear;
                      FrmErrorIntegracionPrecios.Memo1.Lines.Add('Insumo: ' + CodigoInsumo);
                      FrmErrorIntegracionPrecios.Memo1.Lines.Add('Proveedor: ' + CodigoProveedor);
                      FrmErrorIntegracionPrecios.Memo1.Lines.Add('Marca: ' + CodigoMarca);
                      FrmErrorIntegracionPrecios.Memo1.Lines.Add('Presentación: ' + CodigoPresentacion);
                      FrmErrorIntegracionPrecios.Memo1.Lines.Add('Aplicación: ' + DateToStr(Aplicacion));
                      case FrmErrorIntegracionPrecios.ShowModal of
                        mrCancel: Omitir := 1; // Omitir = True
                        mrRetry: Omitir := 2;  // Omitir = True y no avanzar el renglón
                        mrAbort: raise InteligentException.CreateBycode(24, ['Proceso cancelado por el usuario']);
                      end;
                      if FrmErrorIntegracionPrecios.cbRespuesta.Checked then
                        OmitirDefault := Omitir;
                    end;
                  end;

                  if Omitir = 0 then
                  begin
                    // Verificar si existe la relación Marca/Insumo
                    if Not CargarDatosFiltrados(cdMarcaxInsumoUpt, 'IdInsumo,IdMarca', [cdInsumoUpt.FieldByName('IdInsumo').AsInteger, IdMarca]) then
                      raise InteligentException.CreateByCode(16, ['Marcas por Insumos']);

                    if CuantosRegistros(cdMarcaxInsumoUpt) = 0 then
                    begin
                      // Si no existe la relación de Marca por Insumo se debe agregar
                      if Not CargarDatosFiltrados(cdMarcaxInsumoUpt, 'IdMarcaxInsumo', [-9]) then
                        raise InteligentException.CreateByCode(16, ['Marcas por Insumos']);

                      if cdMarcaxInsumoUpt.Active then
                        cdMarcaxInsumoUpt.Refresh
                      else
                        cdMarcaxInsumoUpt.Open;

                      cdMarcaxInsumoUpt.Append;
                      cdMarcaxInsumoUpt.FieldByName('IdMarcaxInsumo').AsInteger := 0;
                      cdMarcaxInsumoUpt.FieldByName('IdInsumo').AsInteger := cdInsumoUpt.FieldByName('IdInsumo').AsInteger;
                      cdMarcaxInsumoUpt.FieldByName('IdMarca').AsInteger := IdMarca;
                      cdMarcaxInsumoUpt.Post;
                      cdMarcaxInsumoUpt.ApplyUpdates(-1);
                    end;

                    cdPrecios.Append;
                    cdPrecios.FieldByName('IdInsumoPrecio').AsInteger := 0;
                    cdPrecios.FieldByName('IdInsumo').AsInteger := cdInsumoUpt.FieldByName('IdInsumo').AsInteger;
                    cdPrecios.FieldByName('iIdEmpresa').AsInteger := iIdEmpresa;
                    cdPrecios.FieldByName('IdMarca').AsInteger := IdMarca;
                    cdPrecios.FieldByName('IdPresentacion').AsInteger := IdPresentacion;
                    cdPrecios.FieldByName('PrecioCompra').AsFloat := Precio;
                    cdPrecios.FieldByName('PrecioVenta').AsFloat := Precio;
                    cdPrecios.FieldByName('Aplicacion').AsDateTime := Aplicacion;
                    cdPrecios.Post;
                  end;
                end;

                if Omitir <> 2 then
                  Inc(Ren);
              end;

              if cdPrecios.ChangeCount > 0 then
              begin
                Ren := cdPrecios.ChangeCount;
                cdPrecios.ApplyUpdates(-1);
                InteliDialog.ShowModal('Precios registrados', 'Se han registrado un total de ' + IntToStr(Ren) + ' precios de manera satisfactoria.', mtInformation, [mbOk], 0);
              end
              else
                InteliDialog.ShowModal('Aviso', 'No se ha registrado ningún precio.', mtWarning, [mbOk], 0);
            finally
              // Eliminar el conjunto de verificacion de duplicidad
              if cdDuplicidad.ProviderName <> '' then
              begin
                if (cdDuplicidad.ProviderName <> '') and (cdDuplicidad.Active) then
                  cdDuplicidad.Close;

                if (cdMarcaxInsumoUpt.ProviderName <> '') and (cdMarcaxInsumoUpt.Active) then
                  cdMarcaxInsumoUpt.Close;

                if (cdConversionxUnidad.ProviderName <> '') and (cdConversionxUnidad.Active) then
                  cdConversionxUnidad.Close;

                EliminarConjunto([cdDuplicidad, cdMarcaxInsumoUpt, cdConversionxUnidad]);
                cdDuplicidad.Free;
              end;
            end;
          end;
        End;
      End;
    Finally
      // Bloquear esta parte del código para que no genere errores provenientes de la aplicación externa (EXCEL)
      Try
        Excel.ScreenUpdating := True;
        Excel.Visible := True;

        if Not Formato then
          Excel.Quit;

        FreeAndNil(Excel);
        //Excel := Null;
      Except
        ;   // No hacer nada, solo es para no tener un error basura
      end;
    End;
  Except
    on e:InteligentConnection do
      ;

    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:InteligentWarning do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmInsumos.btnModificarClick(Sender: TObject);
begin
  Try
    VerificaConjuntos;

    Application.CreateForm(TFrmConsultaPreciosxInsumo, FrmConsultaPreciosxInsumo);
    FrmConsultaPreciosxInsumo.dsInsumo.DataSet := cdDatos;
    FrmConsultaPreciosxInsumo.dsMarcaxInsumo.DataSet := cdMarcaxInsumo;
    FrmConsultaPreciosxInsumo.dsPrecios.DataSet := cdPrecios;
    FrmConsultaPreciosxInsumo.dsPresentacionxInsumo.DataSet := cdPresentacionxUnidad;
    //FrmConsultaPreciosxInsumo.dsHistorialPrecios.DataSet := cdHistorialPrecios;
    FrmConsultaPreciosxInsumo.ShowModal;
  Except
    on e:Exception do
      LevantarExcepcion(e);
  End;
end;

procedure TFrmInsumos.Inicializar;
begin
  keyField := 'IdInsumo';
  entityName := 'cmt_insumo';
  codeField := 'CodigoInsumo';
end;

procedure TFrmInsumos.VerificaConjuntos;
begin
  if cdMarcaxInsumo.ProviderName = '' then
    if Not CrearConjunto(cdMarcaxInsumo, 'cmt_marcaxinsumo_solo_marcas', ccSelect) then
      raise InteligentException.CreateByCode(5, ['Marcas de Ingredientes']);

  if cdPresentacionxUnidad.ProviderName = '' then
    if Not CrearConjunto(cdPresentacionxUnidad, 'cmt_presentacionxunidad_dx', ccSelect) then
      raise InteligentException.CreateByCode(5, ['Presentación por Unidad de Medida']);

  if cdPrecios.ProviderName = '' then
    if Not CrearConjunto(cdPrecios, 'cmt_insumoprecio', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Precios de Insumo']);

  if Not CargarDatosFiltrados(cdMarcaxInsumo, 'IdInsumo', [cdDatos.FieldByName('IdInsumo').AsInteger]) then
    raise InteligentException.CreateByCode(6, ['Marcas de Ingredientes', cdDatos.FieldByName('IdInsumo').AsInteger, 'Id. Insumo']);

  if Not CargarDatosFiltrados(cdPrecios, 'IdInsumo', [cdDatos.FieldByName('IdInsumo').AsInteger]) then
    raise InteligentException.CreateByCode(6, ['Precios de Insumo', cdDatos.FieldByName('IdInsumo').AsInteger, 'Id. Insumo']);

  //cdMarcaxInsumo.Close;
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

end.
