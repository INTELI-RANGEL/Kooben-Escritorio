unit UTFrmProveedor;

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
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, DB, cxDBData, dxSkinsdxBarPainter, dxBar, dxRibbon, cxClasses,
  ImgList, dxSkinsForm, JvMemoryDataset, DBClient, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, AdvShapeButton, Spin, AdvProgressBar, ComCtrls, StdCtrls,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, ExtCtrls,
  cxButtons, Buttons, PngSpeedButton, JvExControls, JvLabel, cxGroupBox,
  ClientModuleUnit1, UInteliDialog, UTFrmDatosCatalogo, UTFrmDatosProveedor;

type
  TFrmProveedor = class(TFrmCatalogo)
    NombreEmpresa: TcxGridDBColumn;
    RFC: TcxGridDBColumn;
    RegimenFiscal: TcxGridDBColumn;
    TipoEmpresa: TcxGridDBColumn;
    Comentarios: TcxGridDBColumn;
    Ciudad: TcxGridDBColumn;
    Estado: TcxGridDBColumn;
    Pais: TcxGridDBColumn;
    Domicilio: TcxGridDBColumn;
    CP: TcxGridDBColumn;
    RazonSocial: TcxGridDBColumn;
    Municipio: TcxGridDBColumn;
    cdProveedorxInsumo: TClientDataSet;
    cdAux: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
  private
    { Private declarations }
    function createPopUp: TFrmDatosCatalogo; override;
    procedure Inicializar;
  public
    { Public declarations }
  end;

var
  FrmProveedor: TFrmProveedor;

implementation

{$R *.dfm}

{ TFrmProveedor }

procedure TFrmProveedor.BtnCloseClick(Sender: TObject);
begin
  EliminarConjunto([cdAux, cdProveedorxInsumo]);
  inherited;

end;

procedure TFrmProveedor.BtnDeleteClick(Sender: TObject);
begin
  //Gustavo: buscando si el proveedor no tiene registros en cmt_insumoprecios
  if cdProveedorxInsumo.ProviderName = '' then
   if not CrearConjunto(cdProveedorxInsumo, 'cmt_insumoprecio', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Precios de Insumos']);


  if Not CargarDatosFiltrados(cdProveedorxInsumo, 'iIdEmpresa', [cdDatos.FieldByName('iIdEmpresa').AsInteger]) then
     InteligentException.CreateByCode(6, ['Precios de Insumo', cdDatos.FieldByName('iIdEmpresa').AsInteger, 'Id. Proveedor']);

  if cdProveedorxInsumo.Active then
    cdProveedorxInsumo.Refresh
  else
    cdProveedorxInsumo.Open;

  if cdProveedorxInsumo.RecordCount = 0  then
  begin
      // inherited

      //Gustavo: debido a que la funcionalidad heredada del botón no funciona, se generó el código
      // para actualizar el campo Activo = No de la tabla nuc_empresas
      if cdAux.ProviderName = '' then
        if not CrearConjunto(cdAux, 'nuc_empresas', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Id del Proveedor']);

      if not CargarDatosFiltrados(cdAux, 'iIdEmpresa', [dsDatos.DataSet.FieldByName('iIdEmpresa').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Proveedores', dsDatos.DataSet.FieldByName('iIdEmpresa').AsInteger, 'Id Proveedor']);

      if cdAux.Active then
        cdAux.Refresh
      else
        cdAux.Open;

      cdAux.first;
      while not cdAux.Eof do
      begin
        if cdAux.Locate('iIdEmpresa', cdDatos.FieldByName('iIdEmpresa').AsInteger, []) then
        begin
          if InteliDialog.ShowModal('Eliminando registro', '¿Desea eliminar el elemento seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            cdAux.Edit;
            cdAux.FieldByName('Activo').AsString := 'No';
            cdAux.Post;
            TClientDataSet(cdAux).ApplyUpdates(-1);
          end;

        end;

        cdAux.Next;

      end;

      DxBarBtnActualizar.Click;

  end
  else
    InteliDialog.ShowModal('Verifique', 'Este Proveedor tiene asignado Ingredientes y no puede eliminarse de la base de datos', mtWarning, [mbOk], 0);

end;

procedure TFrmProveedor.BtnSearchClick(Sender: TObject);
begin
  CargarDatosFiltrados(cdDatos, 'Activo', ['Si']);
  DxBarBtnActualizar.Click;

end;

function TFrmProveedor.createPopUp: TFrmDatosCatalogo;
begin
   result := TFrmDatosProveedor.Create(Self);
end;

procedure TFrmProveedor.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'PROVEEDORES';
  inherited;

end;

procedure TFrmProveedor.FormShow(Sender: TObject);
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

procedure TFrmProveedor.Inicializar;
begin
  keyField := 'iIdEmpresa';
  entityName := 'nuc_empresas';
  codeField := 'sNombreCorto';
end;

end.
