unit UTFrmEntradaGeneral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, StdCtrls, JvExControls, JvLabel, ExtCtrls, URegistro,
  UInteliDialog, ClientModuleUnit1, DB, DBClient, DBCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Menus, JvMenus, dxLayoutContainer, dxLayoutcxEditAdapters,
  cxContainer, cxCurrencyEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit,
  dxLayoutControl, dxLayoutControlAdapters, cxButtons, cxButtonEdit, ImgList,
  cxPropertiesStore, StrUtils, dxLayoutLookAndFeels, cxLabel;

type
  TFrmEntradaGeneral = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    JvLabel1: TJvLabel;
    CodigoCotizacion: TEdit;
    btnBuscar: TAdvGlowButton;
    btnNuevo: TAdvGlowButton;
    cdBuscarEntradaGeneral: TClientDataSet;
    cdEntradaGeneralDatosUpt: TClientDataSet;
    dsEntradaGeneralDatosUpt: TDataSource;
    dsEntradaGeneralUpt: TDataSource;
    cdEntradaGeneralUpt: TClientDataSet;
    cdRecibio: TClientDataSet;
    cdAutorizo: TClientDataSet;
    cdProveedores: TClientDataSet;
    Panel3: TPanel;
    JvLabel2: TJvLabel;
    NombreEmpresa: TDBText;
    Panel4: TPanel;
    Panel5: TPanel;
    DomicilioEmpresa: TDBMemo;
    Panel6: TPanel;
    JvLabel3: TJvLabel;
    Aplicacion: TDBText;
    pnlFirmas: TPanel;
    pnlElabora: TPanel;
    JvLabel4: TJvLabel;
    NombreAutorizo: TDBText;
    Panel9: TPanel;
    NombreRecibio: TDBText;
    JvLabel5: TJvLabel;
    Panel7: TPanel;
    btnCancelar: TAdvGlowButton;
    bntAceptar: TAdvGlowButton;
    tvPartidas: TcxGridDBTableView;
    gridPartidasLevel1: TcxGridLevel;
    gridPartidas: TcxGrid;
    cxColInsumo: TcxGridDBColumn;
    cxColCantidad: TcxGridDBColumn;
    cxColPrecio: TcxGridDBColumn;
    cdInsumo: TClientDataSet;
    Panel8: TPanel;
    dsInsumo: TDataSource;
    dxLayControlPartidasGroup_Root: TdxLayoutGroup;
    dxLayControlPartidas: TdxLayoutControl;
    cxSpinCantidad: TcxSpinEdit;
    lyCantidad: TdxLayoutItem;
    cxCurrencyPrecio: TcxCurrencyEdit;
    lyPrecio: TdxLayoutItem;
    btnadd: TcxButton;
    lyAgregar: TdxLayoutItem;
    cxButton1: TcxButton;
    cxColQuitar: TcxGridDBColumn;
    cxImageList1: TcxImageList;
    cxColMarca: TcxGridDBColumn;
    cxColPresentación: TcxGridDBColumn;
    dxLayControlPartidasGroup1: TdxLayoutAutoCreatedGroup;
    cxPropertiesStore1: TcxPropertiesStore;
    cdMarca: TClientDataSet;
    btnMarca: TcxButtonEdit;
    lyMarca: TdxLayoutItem;
    cdMarcaxInsumo: TClientDataSet;
    IdInsumo: TcxTextEdit;
    lyInsumo: TdxLayoutItem;
    dxLayControlPartidasItem1: TdxLayoutItem;
    Panel11: TPanel;
    NombreInsumo: TDBText;
    CodigoInsumo: TDBText;
    lblGuion: TJvLabel;
    btnPresentacion: TcxButtonEdit;
    lyPresentacion: TdxLayoutItem;
    cdPresentacion: TClientDataSet;
    cdPresentacionxInsumo: TClientDataSet;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    cxStyleRepository1: TcxStyleRepository;
    cxstyleditable: TcxStyle;
    Panel10: TPanel;
    LblLeyenda: TcxLabel;
    procedure btnBuscarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure pnlFirmasResize(Sender: TObject);
    procedure AgregarPartida1Click(Sender: TObject);
    procedure IdInsumoEnter(Sender: TObject);
    procedure IdInsumoExit(Sender: TObject);
    procedure IdInsumoKeyPress(Sender: TObject; var Key: Char);
    procedure CodigoCotizacionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxSpinCantidadKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnaddClick(Sender: TObject);
    procedure cxCurrencyPrecioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
    procedure cxColQuitarPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure tvPartidasNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure cxTextEdit1Enter(Sender: TObject);
    procedure cxTextPresentacionEnter(Sender: TObject);
    procedure btnMarcaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnPresentacionPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnCancelarClick(Sender: TObject);
    procedure bntAceptarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    TextoOriginal: String;
    function AgregaPartida: LongInt;
    procedure AgregarInsumo;
    procedure GenerarListaMarcas;
    procedure habilitaPanel;
    procedure limpiarControles;
  public
    { Public declarations }
  end;

var
  FrmEntradaGeneral: TFrmEntradaGeneral;

implementation

{$R *.dfm}

uses
  UTFrmBuscarEntradaGeneral, UTFrmEntradaGeneralDatos,
  UTFrmEntradaGeneralPartidaDatos, UTFrmSelInsumo, UTfrmSelMarcas, UTFrmSelPresentacion;

procedure TFrmEntradaGeneral.AgregarInsumo;
var
  Valor: String;
  IdRegistroMovimientoGeneralPartida: LongInt;
begin
  try
      // Verificar por código o parte del texto
    if Trim(IdInsumo.Text) = '' then
      Valor := '-1'
    else
      Valor := Trim(IdInsumo.Text);

    if Not CargarDatosFiltrados(TClientDataSet(dsInsumo.DataSet), 'Texto', [Valor]) then
      raise InteligentException.CreateByCode(6, ['Insumos', Valor, 'Texto']);
    if dsInsumo.DataSet.Active then
      dsInsumo.DataSet.Refresh
    else
      dsInsumo.DataSet.Open;

    if (dsInsumo.DataSet.RecordCount > 1) or ((dsInsumo.DataSet.RecordCount = 1) and (dsInsumo.DataSet.FieldByName('Cta').AsInteger = 0)) then
    begin
      // Poner la ventana de selección de datos multiples
      Application.CreateForm(TFrmSelInsumo, FrmSelInsumo);
      try
        FrmSelInsumo.Caption := 'Seleccionar Insumo';
        FrmSelInsumo.tvInsumos.DataController.DataSource := dsInsumo;
        FrmSelInsumo.tvInsumos2.DataController.DataSource := dsInsumo;
        FrmSelInsumo.pTexto := IdInsumo.Text;
        if FrmSelInsumo.ShowModal = mrOk then
          //IdRegistroMovimientoGeneralPartida := AgregaPartida
        else
          dsInsumo.DataSet.Close;
      finally
        FrmSelInsumo.Destroy;
      end;
    end;

   
  except
    on e:InteligentException do
    begin
      dsInsumo.DataSet.Close;
      InteliDialog.ShowModal(e.Title, e.Message, mtError, [mbOk], 0);
    end;

    on e:Exception do
    begin
      dsInsumo.DataSet.Close;
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmEntradaGeneral.AgregarPartida1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmEntradaGeneralPartidaDatos, FrmEntradaGeneralPartidaDatos);
  FrmEntradaGeneralPartidaDatos.dsEntradaGeneralDatosUpt.DataSet := cdEntradaGeneralDatosUpt;
  FrmEntradaGeneralPartidaDatos.dsInsumo.DataSet := cdInsumo;
  cdEntradaGeneralDatosUpt.Append;
  cdEntradaGeneralDatosUpt.FieldByName('IdRegistroMovimientoGeneralPartida').AsInteger := 0;
  cdEntradaGeneralDatosUpt.FieldByName('IdRegistroMovimientoGeneral').AsInteger := cdEntradaGeneralUpt.FieldByName('IdRegistroMovimientoGeneral').AsInteger;
  FrmEntradaGeneralPartidaDatos.ShowModal;
end;

procedure TFrmEntradaGeneral.btnBuscarClick(Sender: TObject);
begin
  try
    try
      Application.CreateForm(TFrmBuscarEntradaGeneral, FrmBuscarEntradaGeneral);
      FrmBuscarEntradaGeneral.dsBuscarEntradaGeneral.DataSet := cdBuscarEntradaGeneral;
      if FrmBuscarEntradaGeneral.ShowModal = mrOk then
      begin
        if Not CargarDatosFiltrados(cdEntradaGeneralUpt, 'IdRegistroMovimientoGeneral', [cdBuscarEntradaGeneral.FieldByName('IdRegistroMovimientoGeneral').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['Entradas al Almacén General', cdBuscarEntradaGeneral.FieldByName('IdEntradaGeneral').AsInteger, 'Id. Entrada General']);

        if Not CargarDatosFiltrados(cdEntradaGeneralDatosUpt, 'IdRegistroMovimientoGeneral', [cdBuscarEntradaGeneral.FieldByName('IdRegistroMovimientoGeneral').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['Partidas de Entradas al Almacén General', cdBuscarEntradaGeneral.FieldByName('IdEntradaGeneral').AsInteger, 'Id. Entrada General']);

        if cdEntradaGeneralUpt.Active then
          cdEntradaGeneralUpt.Refresh
        else
          cdEntradaGeneralUpt.Open;

        if cdEntradaGeneralDatosUpt.Active then
          cdEntradaGeneralDatosUpt.Refresh
        else
          cdEntradaGeneralDatosUpt.Open;

      end;
    finally
      habilitaPanel;
      if cxspincantidad.CanFocus then
        cxSpincantidad.SetFocus;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmEntradaGeneral.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEntradaGeneral.btnMarcaPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin

  Application.CreateForm(TFrmSelMarcas, FrmSelMarcas);
  FrmSelMarcas.dsMarca.DataSet := cdMarca;
  FrmSelMarcas.dsMarcaxInsumo.DataSet := cdMarcaxInsumo;
 // FrmSelMarcas.IdInsumo := cdInsumo.FieldByName('IdInsumo').AsInteger;
  FrmSelMarcas.ctvMarcas.CheckBoxes := false;
  if FrmSelMarcas.ShowModal = mrOk then
  begin
    btnMarca.Text := cdMarca.FieldByName('TituloMarca').AsString;
    btnPresentacion.SetFocus;
  end;
end;

procedure TFrmEntradaGeneral.btnNuevoClick(Sender: TObject);
var
  LocCursor: TCursor;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      // Crear una nueva Cotización
      if Not CargarDatosFiltrados(cdEntradaGeneralUpt, 'IdRegistroMovimientoGeneral', [-9]) then
        raise InteligentException.CreateByCode(16, ['*Entrada Almacén General']);

      if cdEntradaGeneralUpt.Active then
        cdEntradaGeneralUpt.Refresh
      else
        cdEntradaGeneralUpt.Open;

      cdEntradaGeneralUpt.Append;
      cdEntradaGeneralUpt.FieldByName('IdRegistroMovimientoGeneral').AsInteger := 0;
      cdEntradaGeneralUpt.FieldByName('Aplicacion').AsDateTime := Now;
      cdEntradaGeneralUpt.FieldByName('TipoMovimiento').AsString := 'ENTRADA';

      Application.CreateForm(TFrmEntradaGeneralDatos, FrmEntradaGeneralDatos);
      FrmEntradaGeneralDatos.dsEntradaGeneralUpt.DataSet := cdEntradaGeneralUpt;
      FrmEntradaGeneralDatos.dsProveedores.DataSet := cdProveedores;
      FrmEntradaGeneralDatos.dsRecibio.DataSet := cdRecibio;
      FrmEntradaGeneralDatos.dsAutorizo.DataSet := cdAutorizo;
      if FrmEntradaGeneralDatos.ShowModal = mrOk then
      begin

      end;
    finally
      habilitaPanel;
      Screen.Cursor := LocCursor;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TfrmEntradaGeneral.GenerarListaMarcas;
var
  CadPaso: String;
begin
  // Generar la cadena de Marcas correspondientes a este insumo (Solo en caso de edición)
  Try
    cdMarca.First;
    CadPaso := '';
    while not cdMarca.Eof do
    begin
      if Not cdMarca.FieldByName('IdMarcaxInsumo').IsNull then
        CadPaso := CadPaso + cdMarca.FieldByName('TituloMarca').AsString + ', ';

      cdMarca.Next;
    end;

    if CadPaso <> '' then
      btnMarca.Text := LeftStr(CadPaso, Length(CadPaso) - 2)
    else
      btnMarca.Text := '< Seleccione las marcas >';
  Finally
    cdMarca.First;
  End;
end;

procedure TFrmEntradaGeneral.habilitaPanel;
var
  estado: Boolean;
begin
  Estado := (dsEntradaGeneralUpt.DataSet.Active and (dsEntradaGeneralUpt.DataSet.RecordCount > 0));
  lyCantidad.Enabled := Estado;
  lyInsumo.Enabled := estado;
  lyMarca.Enabled := Estado;
  lyPresentacion.Enabled :=Estado;
  lyPrecio.Enabled := Estado;
  lyAgregar.Enabled := estado;
end;

procedure TFrmEntradaGeneral.btnPresentacionPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
    Application.CreateForm(TFrmSelPresentacion, FrmSelPresentacion);
    FrmSelPresentacion.dsPresentacion.DataSet := cdPresentacion;
    FrmSelPresentacion.dsPresentacionxInsumo.DataSet := cdPresentacionxInsumo;
   // FrmSelPresentacion.IdInsumo := cdInsumo.FieldByName('IdInsumo').AsInteger;
    FrmSelPresentacion.ctvPresentaciones.Checkboxes := False;
    if FrmSelPresentacion.ShowModal = mrOk then
    begin
      btnPresentacion.Text := cdPresentacion.FieldByName('TituloPresentacion').AsString;
      cxCurrencyPrecio.SetFocus;
    end;
end;

procedure TFrmEntradaGeneral.CodigoCotizacionKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      screen.Cursor := crAppStart;

      if (key = 13) and (Length(Trim(CodigoCotizacion.Text))>0) then
      begin
        if cdBuscarEntradaGeneral.ProviderName = '' then
          if Not CrearConjunto(cdBuscarEntradaGeneral, 'cmt_registromovimientogeneral', ccSelect) then
            raise InteligentException.CreateByCode(5, ['Entradas Almacén General']);

        if Not CargarDatosFiltrados(cdBuscarEntradaGeneral, 'CodigoRegistroMovimientoGeneral', [CodigoCotizacion.Text]) then
          raise InteligentException.CreateByCode(6, ['Partidas de Entradas al Almacén General', cdBuscarEntradaGeneral.FieldByName('IdEntradaGeneral').AsInteger, 'Id. Entrada General']);

        if cdBuscarEntradaGeneral.Active then
          cdBuscarEntradaGeneral.Refresh
        else
          cdBuscarEntradaGeneral.Open;

        if cdBuscarEntradaGeneral.RecordCount = 1 then
        begin
          if Not CargarDatosFiltrados(cdEntradaGeneralUpt, 'IdRegistroMovimientoGeneral', [cdBuscarEntradaGeneral.FieldByName('IdRegistroMovimientoGeneral').AsInteger]) then
            raise InteligentException.CreateByCode(6, ['Entradas al Almacén General', cdBuscarEntradaGeneral.FieldByName('IdEntradaGeneral').AsInteger, 'Id. Entrada General']);

          if Not CargarDatosFiltrados(cdEntradaGeneralDatosUpt, 'IdRegistroMovimientoGeneral', [cdBuscarEntradaGeneral.FieldByName('IdRegistroMovimientoGeneral').AsInteger]) then
            raise InteligentException.CreateByCode(6, ['Partidas de Entradas al Almacén General', cdBuscarEntradaGeneral.FieldByName('IdEntradaGeneral').AsInteger, 'Id. Entrada General']);

          if cdEntradaGeneralUpt.Active then
            cdEntradaGeneralUpt.Refresh
          else
            cdEntradaGeneralUpt.Open;

          if cdEntradaGeneralDatosUpt.Active then
            cdEntradaGeneralDatosUpt.Refresh
          else
            cdEntradaGeneralDatosUpt.Open;
        end
        else
          btnBuscar.Click;
      end;
    finally
      habilitaPanel;
      if (key = 13) and (Length(Trim(CodigoCotizacion.Text))>0) and cxSpinCantidad.CanFocus then
          cxSpinCantidad.SetFocus;
      Screen.Cursor := Cursor;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;

end;

procedure TFrmEntradaGeneral.bntAceptarClick(Sender: TObject);
begin
  try
    if cdEntradaGeneralDatosUpt.Active then
      cdEntradaGeneralDatosUpt.ApplyUpdates(-1);
    Self.Close;
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

procedure TFrmEntradaGeneral.btnaddClick(Sender: TObject);
begin
  AgregaPartida;
end;

procedure TFrmEntradaGeneral.cxButton1Click(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    if dsEntradaGeneralUpt.DataSet.active and (dsEntradaGeneralUpt.DataSet.RecordCount > 0) then
    try
      Screen.Cursor := crHourGlass;
      cdEntradaGeneralUpt.edit;

      Application.CreateForm(TFrmEntradaGeneralDatos, FrmEntradaGeneralDatos);
      FrmEntradaGeneralDatos.dsEntradaGeneralUpt.DataSet := cdEntradaGeneralUpt;
      FrmEntradaGeneralDatos.dsProveedores.DataSet := cdProveedores;
      FrmEntradaGeneralDatos.dsRecibio.DataSet := cdRecibio;
      FrmEntradaGeneralDatos.dsAutorizo.DataSet := cdAutorizo;
      if FrmEntradaGeneralDatos.ShowModal = mrOk then
      begin
        if dsEntradaGeneralUpt.DataSet.Active then
          dsEntradaGeneralUpt.DataSet.Refresh
        else
          dsEntradaGeneralUpt.DataSet.Refresh;
      end;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmEntradaGeneral.cxColQuitarPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  //ShowMessage('BORRAR'+ cdEntradaGeneralDatosUpt.FieldByName('IdregistroMovimientoGeneralPartida').AsString);
  if InteliDialog.ShowModal('Aviso','¿Eliminar ' + cdEntradaGeneralDatosUpt.FieldByName('NombreInsumo').AsString + '?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
    cdEntradaGeneralDatosUpt.Delete;
    cdEntradaGeneralDatosUpt.ApplyUpdates(-1);
  end;

end;

procedure TFrmEntradaGeneral.cxCurrencyPrecioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
  begin
    btnadd.SetFocus;
  end;
end;

procedure TFrmEntradaGeneral.cxSpinCantidadKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
  begin
    IdInsumo.SetFocus;
  end;
end;

procedure TFrmEntradaGeneral.cxTextEdit1Enter(Sender: TObject);
begin
  application.CreateForm(TFrmSelMarcas, FrmSelMarcas);
  frmSelMarcas.ShowModal;
end;

procedure TFrmEntradaGeneral.cxTextPresentacionEnter(Sender: TObject);
begin
  application.CreateForm(TFrmSelPresentacion, FrmSelPresentacion);
  FrmSelPresentacion.ShowModal;
end;

procedure TFrmEntradaGeneral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EliminarConjunto([cdBuscarEntradaGeneral, cdProveedores, cdInsumo, cdRecibio, cdAutorizo, cdEntradaGeneralDatosUpt, cdEntradaGeneralUpt]);
  Action := caFree;
end;

procedure TFrmEntradaGeneral.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
  var
  res: integer;
begin
  res := -1;
  CanClose := True;
  if cdEntradaGeneralDatosUpt.Active and (cdEntradaGeneralDatosUpt.ChangeCount <> 0) then
    begin
      res := InteliDialog.ShowModal('Aviso', 'Hay cambios que no se han guardado ¿Dedeas guardarlos?', mtConfirmation, [mbYes,mbNo,mbCancel],0);
      case res of
        mrYes: cdEntradaGeneralDatosUpt.ApplyUpdates(-1);
        mrNo: ;
        mrCancel: CanClose := False;
      end;
    end;

end;

procedure TFrmEntradaGeneral.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      if Not CrearConjunto(cdProveedores, 'nuc_empresas_find', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Proveedores']);

      if Not CrearConjunto(cdRecibio, 'usuarios', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Usuarios (Elabora)']);

      if Not CrearConjunto(cdAutorizo, 'usuarios', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Usuarios (Autorizó)']);

      if Not CrearConjunto(cdEntradaGeneralUpt, 'cmt_registromovimientogeneral', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['*Entradas Almacén General']);

      if Not CrearConjunto(cdEntradaGeneralDatosUpt, 'cmt_registromovimientogeneralpartida', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Partidas de Entradas Generales']);

      if Not CrearConjunto(cdInsumo, 'cmt_insumo_find', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Insumos']);

      if not CrearConjunto(cdMarca, 'cmt_marca', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Marcas']);

      if not CrearConjunto(cdMarcaxInsumo, 'cmt_marcaxinsumo', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Marcas por Ingrediente']);

      if not CrearConjunto(cdPresentacion, 'cmt_presentacion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Marcas']);

      if not CrearConjunto(cdPresentacionxInsumo, 'cmt_presentacionxinsumo', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Marcas por Ingrediente']);

      cdMarca.Open;
      cdMarcaxInsumo.Open;
      cdPresentacion.Open;
      cdPresentacionxInsumo.Open;

      cdRecibio.Open;
      if cdRecibio.RecordCount = 0 then
        raise InteligentException.CreateByCode(22, ['Usuarios (Recibió)']);

      cdAutorizo.Open;
      if cdAutorizo.RecordCount = 0 then
        raise InteligentException.CreateByCode(22, ['Usuarios (Autoriza)']);

    finally
      habilitaPanel;
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

procedure TFrmEntradaGeneral.IdInsumoEnter(Sender: TObject);
begin
  IdInsumo.Text := TextoOriginal;
end;

procedure TFrmEntradaGeneral.IdInsumoExit(Sender: TObject);
begin
  TextoOriginal := IdInsumo.Text;
  if dsInsumo.DataSet.Active and (dsInsumo.Dataset.RecordCount > 0) then
    IdInsumo.Text := dsInsumo.DataSet.FieldByName('Nombreinsumo').AsString + ' - ' + dsInsumo.DataSet.FieldByName('DescripcionInsumo').AsString;
end;

procedure TFrmEntradaGeneral.IdInsumoKeyPress(Sender: TObject; var Key: Char);

begin
  if Key = #13 then
  begin
    AgregarInsumo;
    btnMarca.SetFocus;
  end
  else
    dsInsumo.DataSet.Close;
end;

procedure TFrmEntradaGeneral.limpiarControles;
begin
  cxSpinCantidad.value := 0;
  IdInsumo.Text := '';
  btnMarca.Text := '';
  btnPresentacion.text := '';
  cxCurrencyPrecio.Text := '';
end;

procedure TFrmEntradaGeneral.pnlFirmasResize(Sender: TObject);
begin
  pnlElabora.Width := pnlFirmas.Width div 2;
end;

procedure TFrmEntradaGeneral.tvPartidasNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  //ShowMessage(intToStr(aButtonIndex));
  if AButtonIndex = 16 then
  begin
    cdEntradaGeneralDatosUpt.ApplyUpdates(-1);
  end;
end;

function TFrmEntradaGeneral.AgregaPartida: LongInt;
var
  Resultado: LongInt;
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := CrAppStart;
      Resultado := -9;

      if Not dsEntradaGeneralUpt.DataSet.Active  or (dsEntradaGeneralUpt.DataSet.Active and (dsEntradaGeneralUpt.DataSet.RecordCount = 0))then
      begin

      end;

      if (Length(trim(cxSpinCantidad.Text)) = 0) or (cxSpinCantidad.Value <= 0) then
      begin
        if cxSpinCantidad.CanFocus then
          cxSpinCantidad.SetFocus;

        raise InteligentException.Create('Debes ingresar una cantidad al insumo, el valor debe ser mayor 0');
      end;

      if Not cdinsumo.active  and (length(Trim(idInsumo.text)) = 0) then
      begin
        if idInsumo.CanFocus then
          idInsumo.SetFocus;

        raise InteligentException.Create('Debes seleccionar un insumo para agregar a la partida.');
      end;

      if cdinsumo.active  and (cdinsumo.RecordCount = 0) then
      begin
        if idInsumo.CanFocus then
          idInsumo.SetFocus;

        raise InteligentException.Create('Debes seleccionar un insumo válido para agregar a la partida.');
      end;


      if (Length(trim(btnMarca.Text)) = 0) then
      begin
        if btnMarca.CanFocus then
          btnMarca.SetFocus;

        raise InteligentException.Create('Selecciona una marca para el insumo.');
      end;

      if (Length(trim(btnPresentacion.Text)) = 0) then
      begin
        if btnPresentacion.CanFocus then
          btnPresentacion.SetFocus;

        raise InteligentException.Create('Selecciona una presentación para el insumo.');
      end;

      if Length(trim(cxCurrencyPrecio.Text)) = 0 then
      begin
        if cxCurrencyPrecio.CanFocus then
          cxCurrencyPrecio.SetFocus;

        raise InteligentException.Create('Debes asignar un precio al insumo');
      end;

      cdEntradaGeneralDatosUpt.Append;
      cdEntradaGeneralDatosUpt.FieldByName('IdRegistroMovimientoGeneralPartida').AsInteger := 0;
      cdEntradaGeneralDatosUpt.FieldByName('IdRegistroMovimientoGeneral').AsInteger := cdEntradaGeneralUpt.FieldByName('IdregistroMovimientoGeneral').AsInteger;
      cdEntradaGeneralDatosUpt.FieldByName('IdInsumo').AsInteger := cdInsumo.FieldByName('IdInsumo').AsInteger;
      cdEntradaGeneralDatosUpt.FieldByName('Solicitado').AsFloat := 0.00;
      cdEntradaGeneralDatosUpt.FieldByName('Registrado').AsFloat := cxSpinCantidad.Value;
      cdEntradaGeneralDatosUpt.FieldByName('Surtido').AsDateTime := Now;
      cdEntradaGeneralDatosUpt.FieldByName('IdPresentacion').AsInteger := cdPresentacion.FieldByName('IdPresentacion').AsInteger;
      cdEntradaGeneralDatosUpt.FieldByName('IdMarca').AsInteger := cdMarca.FieldByName('IdMarca').AsInteger;

      cdEntradaGeneralDatosUpt.FieldByName('Precio').AsFloat := cxCurrencyPrecio.Value;
      cdEntradaGeneralDatosUpt.Post;
      cdEntradaGeneralDatosUpt.ApplyUpdates(-1);


      if cxSpinCantidad.CanFocus then
        cxSpinCantidad.SetFocus;

      limpiarControles;

      Resultado := cdEntradaGeneralUpt.FieldByName('IdregistroMovimientoGeneral').AsInteger;
      try
        // Tomar los datos como registro de Edición;
        cdEntradaGeneralDatosUpt.close;         //esto lo puse, aunque no queria por que me está dando pedos con el dataset
        if Not CargarDatosFiltrados(cdEntradaGeneralDatosUpt, 'IdRegistroMovimientoGeneral', [Resultado]) then
          raise InteligentException.CreateByCode(6, ['Partidas de Entrada General', Resultado, 'IdRegistroMovimientoGeneralPartida']);

        cdEntradaGeneralDatosUpt.open;
      finally
        Result := Resultado;
      end;
    finally
      Screen.Cursor := Cursor;
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

end.
