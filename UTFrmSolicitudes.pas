unit UTFrmSolicitudes;

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
  cxNavigator, DB, cxDBData, cxContainer, cxTextEdit, cxMemo, cxDBEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, AdvPicture, StdCtrls, ExtCtrls,
  JvExControls, JvLabel, DBCtrls, URegistro, DBClient, ClientModuleUnit1,
  UInteliDialog, dxSkinsdxBarPainter, Menus, dxBar, dxRibbon,
  AdvCircularProgress, AdvMenus, AdvGlowButton, Mask, RxToolEdit, RxCurrEdit,
  RxDBCurrEdit, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls, JvMenus,
  StrUtils, cxDBLookupComboBox, cxCurrencyEdit, cxCalc, cxCalendar, frxClass,
  frxDBSet;

type
  TFrmSolicitudes = class(TForm)
    pnlReceta: TPanel;
    NombreReceta: TDBText;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel3: TPanel;
    CodigoReceta: TDBText;
    Panel4: TPanel;
    JvLabel1: TJvLabel;
    Panel5: TPanel;
    JvLabel4: TJvLabel;
    Consecutivo: TDBText;
    GroupBox1: TGroupBox;
    AdvPicture1: TAdvPicture;
    Panel2: TPanel;
    jvlbl1: TJvLabel;
    cdComisaria: TClientDataSet;
    dsComisaria: TDataSource;
    cdComisariaInsumoLista: TClientDataSet;
    dsComisariaInsumoLista: TDataSource;
    cdBuscarComisaria: TClientDataSet;
    cdComisariaUpt: TClientDataSet;
    cdEmbarcacion: TClientDataSet;
    cdBuscarMenu: TClientDataSet;
    pmCabecera: TPopupMenu;
    ModificarcabeceradeReceta1: TMenuItem;
    Verimagendetamaooriginal1: TMenuItem;
    N4: TMenuItem;
    ActualizardatosdelaReceta1: TMenuItem;
    N2: TMenuItem;
    ImprimirReceta1: TMenuItem;
    pmImagen: TPopupMenu;
    CerrarImagen1: TMenuItem;
    cdExplosion: TClientDataSet;
    AdvPopupMenu1: TAdvPopupMenu;
    Editar1: TMenuItem;
    pnlEditarPartida: TPanel;
    pnlBotonesEdicion: TPanel;
    btnEditarOk: TAdvGlowButton;
    btnEditarCancelar: TAdvGlowButton;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    EdtCantidadSolicitada: TJvDBCalcEdit;
    JvLabel7: TJvLabel;
    JvLabel8: TJvLabel;
    EdtCantidadOriginal: TDBCurrencyEdit;
    popSolicitar: TJvPopupMenu;
    Reestablecervalororiginal1: TMenuItem;
    Ajustara1: TMenuItem;
    N1: TMenuItem;
    Redondeara1: TMenuItem;
    Redondeara2: TMenuItem;
    Redondeara3: TMenuItem;
    N3: TMenuItem;
    Ajustara2: TMenuItem;
    Ajustara3: TMenuItem;
    cdVerificaEntrada: TClientDataSet;
    cdMarca: TClientDataSet;
    dsMarca: TDataSource;
    cdPresentacion: TClientDataSet;
    dsPresentacion: TDataSource;
    IdMarca: TDBLookupComboBox;
    IdPresentacion: TDBLookupComboBox;
    JvLabel9: TJvLabel;
    JvLabel10: TJvLabel;
    Panel6: TPanel;
    btnImprimir: TAdvGlowButton;
    btnAutorizar: TAdvGlowButton;
    btnDesautorizar: TAdvGlowButton;
    btnCerrar: TAdvGlowButton;
    btnGrabar: TAdvGlowButton;
    Panel7: TPanel;
    GroupBox2: TGroupBox;
    dsBuscarMenu: TDataSource;
    JvLabel11: TJvLabel;
    CodigoMenu: TDBText;
    Desde: TDBText;
    lblDesde: TJvLabel;
    lblHasta: TJvLabel;
    Hasta: TDBText;
    DBText1: TDBText;
    JvLabel12: TJvLabel;
    CodigoEmbarcacion: TDBText;
    lblNombreEmbarcacion: TJvLabel;
    NombreEmbarcacion: TDBText;
    Estado: TDBText;
    cdCostoxDia: TClientDataSet;
    Panel8: TPanel;
    pnlCostoDia: TPanel;
    Panel10: TPanel;
    dsCostoxDia: TDataSource;
    spCostoDia: TSplitter;
    pnlSplitter: TPanel;
    cxGrid2: TcxGrid;
    tvCostoxDia: TcxGridDBTableView;
    Fecha: TcxGridDBColumn;
    CostoCompra: TcxGridDBColumn;
    Personas: TcxGridDBColumn;
    CostoxPersona: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    Panel9: TPanel;
    cdComisariaPartidaUpt: TClientDataSet;
    dsComisariaPartidaUpt: TDataSource;
    cdEmpresa: TClientDataSet;
    dsEmpresa: TDataSource;
    cdTipoInsumo: TClientDataSet;
    dsTipoInsumo: TDataSource;
    cxGrid3: TcxGrid;
    tvComisariaPartida: TcxGridDBTableView;
    colIdComisariaPartida: TcxGridDBColumn;
    colIdTipoInsumo: TcxGridDBColumn;
    colCodigoInsumo: TcxGridDBColumn;
    colNombreInsumo: TcxGridDBColumn;
    colsNombreCorto: TcxGridDBColumn;
    colTituloMarca: TcxGridDBColumn;
    colTituloPresentacion: TcxGridDBColumn;
    colCantidadSolicitada: TcxGridDBColumn;
    colsNombre: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    JvLabel13: TJvLabel;
    JvLabel14: TJvLabel;
    iIdEmpresa: TDBLookupComboBox;
    sNombre: TDBText;
    edtCodigoInsumo: TDBText;
    edtNombreInsumo: TDBText;
    edtsNombre1: TDBText;
    colCantidadPresentacion: TcxGridDBColumn;
    colCosto: TcxGridDBColumn;
    colPrecioCompra: TcxGridDBColumn;
    cdComisariaPartida: TClientDataSet;
    dsComisariaPartida: TDataSource;
    cdMarcaxInsumo: TClientDataSet;
    cdMarcaGeneral: TClientDataSet;
    Reporte: TfrxReport;
    frdsComisaria: TfrxDBDataset;
    ComentariosComisaria: TDBMemo;
    frdsMenu: TfrxDBDataset;
    frdsComisariaPartida: TfrxDBDataset;
    frdsCostoxDia: TfrxDBDataset;
    lblConversion: TJvLabel;
    procedure FormShow(Sender: TObject);
    procedure DxBtnEditRecetaClick(Sender: TObject);
    procedure pnlRecetaDblClick(Sender: TObject);
    procedure ModificarcabeceradeReceta1Click(Sender: TObject);
    procedure ActualizardatosdelaReceta1Click(Sender: TObject);
    procedure ImprimirReceta1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure btnEditarOkClick(Sender: TObject);
    procedure btnEditarCancelarClick(Sender: TObject);
    procedure FormaEditClose(Sender: TObject; var Action: TCloseAction);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormaEditCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnGrabarClick(Sender: TObject);
    procedure cdComisariaUptAfterPost(DataSet: TDataSet);
    procedure btnCerrarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnAutorizarClick(Sender: TObject);
    procedure pnlSplitterDblClick(Sender: TObject);
    procedure colIdMarcaPropertiesCloseUp(Sender: TObject);
    procedure colIdPresentacionPropertiesCloseUp(Sender: TObject);
    procedure cdComisariaPartidaUptAfterPost(DataSet: TDataSet);
    procedure tvComisariaPartidaCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure cdPresentacionAfterScroll(DataSet: TDataSet);
    procedure EdtCantidadSolicitadaChange(Sender: TObject);
  private
    Titulo: String;
    IdComisaria: Integer;
    OriginalPos: TPoint;
    FormaEdit: TForm;
    EditResultado: TModalResult;
    Cerrarte: Boolean;
    NecesitaGrabar: Boolean;
    OldWidth: Integer;
    Saliendo: Boolean;
    ModificarConversion: Boolean;
    Entero: Extended;
    IdMenu: LongInt;
    procedure VerificaDataSet(DataSet: TClientDataSet);
    function BuscarReceta: Integer;
    procedure CrearPartidasInsumos;
    procedure CrearConjuntosNuevaReceta;
    procedure VerificaBuscarMenu(Dataset: TClientDataSet);
    procedure ImprimirReceta;
    procedure ActualizarReceta;
    procedure EstableceEstado;
    procedure AbrirCostoDia;
  public
    { Public declarations }
  end;

var
  FrmSolicitudes: TFrmSolicitudes;

implementation

uses
  Unit2, UTFrmBuscarConsumo, UTFrmNuevaComisaria, UTFrmSeleccionarMenu,
  UTFrmSelMarcas;

{$R *.dfm}

procedure TFrmSolicitudes.FormShow(Sender: TObject);
var
  i: Integer;
  ListaBorrar: Array of Variant;
  LocCursor: TCursor;
  cRegistros: Integer;
begin
  Saliendo := False;
  ModificarConversion := False;

  try
    Self.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Width'));
  Except
    ;
  end;

  try
    Self.Height := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Height'));
  Except
    ;
  end;

  try
    OldWidth := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\pnlCostoDia', 'OldWidth'));
  Except
    OldWidth := 185;
  end;

  try
    pnlCostoDia.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\pnlCostoDia', 'Width'));
  Except
    ;
  end;

  if pnlCostoDia.Width <= pnlSplitter.Width then
  begin
    OldWidth := 185;
    spCostoDia.Visible := False;
  end;

  for i:= 0 to tvComisariaPartida.ColumnCount -1 do
    try
      tvComisariaPartida.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + self.Name + '\tvComisariaPartida\Col' + IntToStr(i), 'Width'));
    except
      ;
    end;

  for i:= 0 to tvCostoxDia.ColumnCount -1 do
    try
      tvCostoxDia.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + self.Name + '\tvCostoxDia\Col' + IntToStr(i), 'Width'));
    except
      ;
    end;

  NecesitaGrabar := False;
  IniciarTransaccion;
  Try
    case Form2.IdComisaria of
      -3: VerificaPermisos('cmt_registromovimiento', [vpBorrar], EADError);
      -5: VerificaPermisos('cmt_registromovimiento', [vpEscribir], EADError);
      -9: VerificaPermisos('cmt_registromovimiento', [vpInsertar], EADError);
    end;

    // Crear los dataset necesarios
    VerificaDataSet(cdComisaria);

    if Form2.IdComisaria = -5 then
    begin
      Titulo := 'Abrir Solicitud de Consumo';

      BuscarReceta;

      IdMenu := cdComisaria.FieldByName('IdMenu').AsInteger;

      Self.Caption := 'Solicitud de Consumo: ' + cdComisaria.FieldByName('CodigoComisaria').AsString;

      CrearPartidasInsumos;

      IdComisaria := cdComisaria.FieldByName('IdComisaria').AsInteger;

      if Not CargarDatosFiltrados(cdComisariaPartida, 'IdComisaria,OrdenOriginal', [IdComisaria, 'Si']) then
        raise InteligentException.CreateByCode(6, ['Ingredientes por Solicitud de Consumo', IdComisaria, 'Id. Comisaria']);

      cdComisariaPartida.Open;

      AbrirCostoDia; // Abrir los datos del costo por persona

      // Localizar los datos del Menú
      VerificaBuscarMenu(cdBuscarMenu);
      if Not CargarDatosFiltrados(cdBuscarMenu, 'IdMenu', [cdComisaria.FieldByName('IdMenu').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Menús Periódicos', cdComisaria.FieldByName('IdMenu').AsInteger, 'Id. Menú']);

      cdBuscarMenu.Open;

      tvComisariaPartida.DataController.Groups.FullExpand;
    end;

    // Se va a crear una nueva receta
    if Form2.IdComisaria = -9 then
    begin
      CrearConjuntosNuevaReceta;

      // Localizar el menú del cual se debe generar la solicitud de Consumo
      Application.CreateForm(TFrmSeleccionarMenu, FrmSeleccionarMenu);
      VerificaBuscarMenu(cdBuscarMenu);
      if Not CargarDatosFiltrados(cdBuscarMenu, 'SinComisaria,Estado', ['Si', 'Autorizado']) then
        raise InteligentException.CreateByCode(6, ['Menús Periódicos', 'Si', 'SinComisaria']);
      if cdBuscarMenu.Active then
        cdBuscarMenu.Refresh
      else
        cdBuscarMenu.Open;
      FrmSeleccionarMenu.dsMenu.DataSet := cdBuscarMenu;
      FrmSeleccionarMenu.dsEmbarcacion.DataSet := cdEmbarcacion;
      if FrmSeleccionarMenu.ShowModal = mrCancel then
        raise InteligentException.Create('*');

      IdMenu := cdBuscarMenu.FieldByName('IdMenu').AsInteger;

      if Not CargarDatosFiltrados(cdComisariaUpt, 'IdComisaria', [-9]) then
        raise InteligentException.CreateByCode(16, ['Solicitud de Consumo']);

      cdComisariaUpt.Open;

      Application.CreateForm(TFrmNuevaComisaria, FrmNuevaComisaria);
      FrmNuevaComisaria.dsComisaria.DataSet := cdComisariaUpt;
      FrmNuevaComisaria.dsBuscarMenu.DataSet := cdBuscarMenu;
      cdComisariaUpt.Append;
      cdComisariaUpt.FieldByName('IdComisaria').AsInteger := 0;
      cdComisariaUpt.FieldByName('CodigoComisaria').AsString := '';
      cdComisariaUpt.FieldByName('IdMenu').AsInteger := cdBuscarMenu.FieldByName('IdMenu').AsInteger;
      cdComisariaUpt.FieldByName('Estado').AsString := 'ABIERTO';
      if FrmNuevaComisaria.ShowModal = mrCancel then
        raise InteligentException.Create('*');

      Self.Caption := 'Solicitud de Consumo: ' + cdComisariaUpt.FieldByName('CodigoComisaria').AsString;
      IdComisaria := UltimoId;

      LocCursor := Screen.Cursor;
      Try
        Screen.Cursor := crAppStart;

        // Cargar los datos generales de la Comisaria
        if Not CargarDatosFiltrados(cdComisaria, 'IdComisaria', [IdComisaria]) then
          raise InteligentException.CreateByCode(6, ['Solicitud de Consumo', IdComisaria, 'Id. Solicitud de Consumo']);

        if cdComisaria.Active then
          cdComisaria.Refresh
        else
          cdComisaria.Open;

        // Crear el dataset de las partidas de insumo
        CrearPartidasInsumos;

        if Not CargarDatosFiltrados(cdExplosion, 'IdMenu', [cdBuscarMenu.FieldByName('IdMenu').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['Explosión de Insumos del Menú', cdBuscarMenu.FieldByName('IdMenu').AsInteger, 'Id. Menu']);


        if Not CargarDatosFiltrados(cdComisariaPartidaUpt, 'IdComisaria', [-9]) then
          raise InteligentException.CreateByCode(16, ['Partidas de Solicitud de Consumo']);

        cdExplosion.Open;
        cdComisariaPartidaUpt.Open;
        while Not cdExplosion.Eof do
        begin
          cdComisariaPartidaUpt.Append;
          cdComisariaPartidaUpt.FieldByName('IdComisariaPartida').AsInteger := 0;
          cdComisariaPartidaUpt.FieldByName('IdComisaria').AsInteger := IdComisaria;
          cdComisariaPartidaUpt.FieldByName('IdInsumo').AsInteger := cdExplosion.FieldByName('IdInsumo').AsInteger;
          cdComisariaPartidaUpt.FieldByName('CantidadOriginal').AsFloat := cdExplosion.FieldByName('Cantidad').AsFloat;
          cdComisariaPartidaUpt.FieldByName('CantidadSolicitada').AsFloat := cdExplosion.FieldByName('Cantidad').AsFloat;
          cdComisariaPartidaUpt.FieldByName('iIdUnidad').AsInteger := cdExplosion.FieldByName('iIdUnidad').AsInteger;
          cdComisariaPartidaUpt.Post;

          cdExplosion.Next;
        end;

        if cdExplosion.RecordCount > 0 then
          cdComisariaPartidaUpt.ApplyUpdates(-1);

        if Not CargarDatosFiltrados(cdComisariaPartida, 'IdComisaria,OrdenOriginal', [IdComisaria, 'Si']) then
          raise InteligentException.CreateByCode(6, ['Partidas de Solicitud de Consumo', IdComisaria, 'Id. Comisaria']);

        cdComisariaPartida.Open;

        AbrirCostoDia;

        tvComisariaPartida.DataController.Groups.FullExpand;
      Finally
        cdComisariaPartidaUpt.Close;
        Screen.Cursor := LocCursor;
      End;
    end;

    // Ordenar la información del Menú si no se trata de un borrado
    if Form2.IdComisaria <> -3 then
    begin
      EstableceEstado;

      lblDesde.Left := CodigoMenu.Left + CodigoMenu.Width + 26;
      Desde.Left := lblDesde.Left + lblDesde.Width + 6;

      lblHasta.Left := Desde.Left + Desde.Width + 6;
      Hasta.Left := lblHasta.Left + lblHasta.Width + 6;

      lblNombreEmbarcacion.Left := CodigoEmbarcacion.Left + CodigoEmbarcacion.Width + 6;
      NombreEmbarcacion.Left := lblNombreEmbarcacion.Left + lblNombreEmbarcacion.Width + 6;

      if Not CrearConjunto(cdEmpresa, 'nuc_empresas', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Proveedores']);
      cdEmpresa.Open;

      if Not CrearConjunto(cdMarca, 'cmt_marca_insumo', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Marcas']);
      cdMarca.Open;

      if Not CrearConjunto(cdTipoInsumo, 'cmt_tipoinsumo', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Tipos de Ingredientes']);
      cdTipoInsumo.Open;

      if Not CrearConjunto(cdPresentacion, 'cmt_conversionxunidad_dx', ccSelect) then
      //if Not CrearConjunto(cdPresentacion, 'cmt_presentacion_insumo', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Presentaciones por Unidad']);

      {if Not CargarDatosFiltrados(cdPresentacion, 'iIdUnidad', [cdComisariaPartida.FieldByName('iIdUnidad').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Presentaciones por Unidad', cdComisariaPartida.FieldByName('iIdUnidad').AsInteger, 'Id. Unidad de Medida']);
}
      cdPresentacion.Open;
    end;

    // Se va a borrar la solicitud
    if Form2.IdComisaria = -3 then
    begin
      Try
        Titulo := 'Eliminar Solicitud de Consumo';

        BuscarReceta;

        // Verificar si existe un registro de salida para esta Solicitud
        if cdVerificaEntrada.ProviderName = '' then
          if Not CrearConjunto(cdVerificaEntrada, 'cmt_registromovimiento', ccUpdate) then
            raise InteligentException.CreateByCode(5, ['Entradas al Almacén']);

        if cdComisariaUpt.ProviderName = '' then
          if Not CrearConjunto(cdComisariaUpt, 'cmt_comisaria', ccUpdate) then
            raise InteligentException.CreateByCode(5, ['Solicitudes de Consumo']);

        if Not CargarDatosFiltrados(cdVerificaEntrada, 'IdComisaria', [cdComisaria.FieldByName('IdComisaria').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['Entradas al Almacén', cdComisaria.FieldByName('IdComisaria').AsInteger, 'Id. Comisaria']);

        cRegistros := CuantosRegistros(cdVerificaEntrada);
        if cRegistros > 0 then
          raise InteligentException.CreateByCode(23, [cdComisaria.FieldByName('CodigoComisaria').AsString, 'Solicitudes de Consumo', cRegistros, 'Entradas al Almacén']);

        // Preguntar si se desea eliminar la receta
        if InteliDialog.ShowModal('Eliminar Solicitud de Consumo', 'Está a punto de eliminar la Solicitud de Consumo:' + #10 + #10 +
                                  cdComisaria.FieldByName('CodigoCOmisaria').AsString + ' - ' + cdComisaria.FieldByName('Referencia').AsString + #10 + #10 +
                                  '¿Está seguro de eliminarla de manera definitiva?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        Begin
          Try
            CrearPartidasInsumos;

            IdComisaria := cdComisaria.FieldByName('IdComisaria').AsInteger;

            if Not CargarDatosFiltrados(cdComisariaUpt, 'IdComisaria', [IdComisaria]) then
              raise InteligentException.CreateByCode(6, ['Insumos por Solicitud de Consumo', IdComisaria, 'Id. Comisaria']);

            cdComisariaUpt.Open;

            if Not CargarDatosFiltrados(cdComisariaPartidaUpt, 'IdComisaria', [IdComisaria]) then
              raise InteligentException.CreateByCode(6, ['Insumos por Solicitud de Consumo', IdComisaria, 'Id. Comisaria']);

            cdComisariaPartidaUpt.Open;

            // Eliminar las partidas primero
            cdComisariaPartidaUpt.First;

            SetLength(ListaBorrar, cdComisariaPartidaUpt.RecordCount);
            while Not cdComisariaPartidaUpt.Eof do
            begin
              ListaBorrar[cdComisariaPartidaUpt.RecNo -1] := cdComisariaPartidaUpt.FieldByName('IdComisariaPartida').AsInteger;
              cdComisariaPartidaUpt.Next;
            end;

            if cdComisariaPartidaUpt.RecordCount > 0 then
            begin
              if EliminarRegistro(cdComisariaPartidaUpt, ListaBorrar) = 0 then
                raise InteligentException.CreateByCode(32, ['Registro de Ingredientes', 'de la Solicitud de Consumo indicada', 'Consumos']);
            end;

            if EliminarRegistro(cdComisariaUpt, [cdComisaria.FieldByName('IdComisaria').AsInteger]) = 0 then
              raise InteligentException.CreateByCode(24, ['La solicitud de consumo no ha podido ser eliminada']);

            InteliDialog.ShowModal('Solicitud de Consumo eliminada', 'La Solicitud de Consumo seleccionada ha sido eliminada satisfactoriamente.', mtInformation, [mbOk], 0);

            ConcretarTransaccion;
          Except
            on e:InteligentException do
              InteliDialog.ShowModal(e.Title, e.Message, mtError, [mbOk], 0);

            on e:Exception do
              InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
          End;
        End;
      Finally
        if (cdComisaria.ProviderName <> '') and (cdComisaria.Active) then
          cdComisaria.Close;

        if (cdComisariaPartidaUpt.ProviderName <> '') and (cdComisariaPartidaUpt.Active) then
          cdComisariaPartidaUpt.Close;

        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      End;
    end;
  Except
    on e:InteligentException do
    begin
      if e.Message <> '*' then
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      if self.Showing then
      begin
        NecesitaGrabar := False;
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;
    end;

    on e:InteligentWarning do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      if self.Showing then
      begin
        NecesitaGrabar := False;
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;
    end;

    on e:Exception do
    begin
      NecesitaGrabar := False;
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmSolicitudes.ImprimirReceta1Click(Sender: TObject);
begin
  ImprimirReceta;
end;

procedure TFrmSolicitudes.ModificarcabeceradeReceta1Click(Sender: TObject);
begin
  pnlRecetaDblClick(pnlReceta);
end;

procedure TFrmSolicitudes.pnlRecetaDblClick(Sender: TObject);
begin
  try
    // Editar el encabezado de la receta
    CrearConjuntosNuevaReceta;

    Application.CreateForm(TFrmNuevaComisaria, FrmNuevaComisaria);
    FrmNuevaComisaria.dsComisaria.DataSet := cdComisariaUpt;
    FrmNuevaComisaria.dsBuscarMenu.DataSet := cdBuscarMenu;

    if Not CargarDatosFiltrados(cdComisariaUpt, 'IdComisaria', [cdComisaria.FieldByName('IdComisaria').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Solicitudes de Consumo', cdComisaria.FieldByName('IdComisaria').AsInteger, 'Id. Solicitud de Consumo']);

    if cdComisariaUpt.Active then
      cdComisariaUpt.Open
    else
      cdComisariaUpt.Open;

    if cdComisaria.RecordCount = 0 then
      raise InteligentException.CreateByCode(13, [cdComisaria.FieldByName('CodigoComisaria').AsString, 'Solicitudes de Consumo']);

    cdComisariaUpt.Edit;
    if FrmNuevaComisaria.ShowModal = mrCancel then
      raise InteligentException.Create('*');

    if FrmNuevaComisaria.ShowModal = mrOk then
      cdComisaria.Refresh;
  except
    on e:InteligentException do
      if e.Message <> '*' then
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmSolicitudes.pnlSplitterDblClick(Sender: TObject);
begin
  // Verificar el estado del Splitter
  spCostoDia.Visible := Not spCostoDia.Visible;
  if spCostoDia.Visible then
    pnlCostoDia.Width := OldWidth
  else
  begin
    OldWidth := pnlCostoDia.Width;
    pnlCostoDia.Width := pnlSplitter.Width;
  end;
end;

procedure TFrmSolicitudes.tvComisariaPartidaCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  oHeight, OWidth: Integer;
  OriginalRound,
  OriginalTrunc,
  SolicitarRound,
  SolicitarTrunc,
  locOriginal: Real;
  LocCursor: TCursor;

function Truncar(Valor: Real; Dec: Byte): Real;
var
  NumDec: Byte;
  sValor, Ceros: String;
begin
  sValor := FloatToStr(Valor);
  NumDec := Length(sValor) - Pos('.', sValor);
  if NumDec > Dec then
    sValor := LeftStr(sValor, Length(sValor) - (NumDec - Dec));
  Ceros := Copy(DupeString('0', Dec), 1, Dec - NumDec);
  sValor := sValor + Ceros;
  Result := StrToFloat(sValor);
end;

begin
  try
    if cdComisaria.FieldByName('Estado').AsString = 'AUTORIZADO' then
      raise InteligentException.CreateByCode(24, ['No es posible editar las partidas de esta Solicitud de Consumo debido a que ya ha sido Autorizada.']);

    if tvComisariaPartida.Controller.SelectedRowCount = 0 then
      raise InteligentException.CreateByCode(24, ['No ha seleccionado ninguna Partida de Insumo.']);

    if Not CargarDatosFiltrados(cdComisariaPartidaUpt, 'IdComisariaPartida', [cdComisariaPartida.FieldByName('IdComisariaPartida').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Partidas de Solicitud de Consumo', cdComisariaPartida.FieldByName('IdComisariaPartida').AsInteger, 'Id. Partida de Solicitud de Consumo']);

    if cdComisariaPartidaUpt.Active then
      cdComisariaPartidaUpt.Refresh
    else
      cdComisariaPartidaUpt.Open;

    if cdComisariaPartidaUpt.RecordCount = 0 then
      raise InteligentException.CreateByCode(13, [cdComisariaPartida.FieldByName('NombreInsumo').AsString, 'Partidas de Solicitud de Consumo']);

    cdComisariaPartidaUpt.Edit;

    // Antes de presentar los datos filtrar las marcas y las presentaciones solo por aquel insumo que se está modificando
    try
      cdMarca.Filtered := False;
      cdMarca.Filter := 'IdInsumo = ' + cdComisariaPartidaUpt.FieldByName('IdInsumo').AsString;
      cdMarca.Filtered := True;

      cdPresentacion.Filtered := False;
      cdPresentacion.Filter := '(iIdUnidad_t = ' + cdComisariaPartidaUpt.FieldByName('iIdUnidad').AsString + ') AND ((IdInsumo = ' + cdComisariaPartidaUpt.FieldByName('IdInsumo').AsString + ') OR (IdInsumo = NULL))';
//      cdPresentacion.Filter := 'iIdUnidad_t = ' + cdComisariaPartidaUpt.FieldByName('iIdUnidad').AsString;
      cdPresentacion.Filtered := True;

      if cdMarca.RecordCount = 0 then
      begin
        if InteliDialog.ShowModal('No existen Marcas', 'El Insumo que está tratando de editar no contiene Marcas asignadas, esto hace imposible que el registro sea modificado.' + #10 + #10 + '¿Desea asignar Marcas a este Insumo ahora?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
          raise InteligentWarning.Create('*');

        if cdMarcaGeneral.ProviderName = '' then
          if Not CrearConjunto(cdMarcaGeneral, 'cmt_marca', ccCatalog) then
            raise InteligentException.CreateByCode(5, ['Marcas']);

        if Not cdMarcaGeneral.Active then
          cdMarcaGeneral.Open;

        if cdMarcaxInsumo.ProviderName = '' then
          if not CrearConjunto(cdMarcaxInsumo, 'cmt_marcaxinsumo', ccUpdate) then
            raise InteligentException.CreateByCode(5, ['Marcas por Insumo']);

        if Not CargarDatosFiltrados(cdMarcaxInsumo, 'IdInsumo', [cdComisariaPartidaUpt.FieldByName('IdInsumo').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['Marcas por Insumo', cdComisariaPartidaUpt.FieldByName('IdInsumo').AsInteger, 'Id. Insumo']);

        if cdMarcaxInsumo.Active then
          cdMarcaxInsumo.Refresh
        else
          cdMarcaxInsumo.Open;

        cdMarca.Filtered := False;
        Application.CreateForm(TFrmSelMarcas, FrmSelMarcas);
        FrmSelMarcas.dsMarca.DataSet := cdMarcaGeneral;
        FrmSelMarcas.dsMarcaxInsumo.DataSet := cdMarcaxInsumo;
        FrmSelMarcas.IdInsumo := cdComisariaPartidaUpt.FieldByName('IdInsumo').AsInteger;
        if FrmSelMarcas.ShowModal = mrOk then
        begin
          cdMarca.Refresh;
          cdMarca.Filtered := True;

          if cdMarca.RecordCount = 0 then
            raise InteligentWarning.Create('*');
        end
        else
          raise InteligentWarning.Create('*');
      end;

      if cdPresentacion.RecordCount = 0 then
        raise InteligentException.CreateByCode(24, ['El sistema ha buscado la Unidad de Medida "' + cdComisariaPartida.FieldByName('sNombre').AsString + '" en los siguientes catálogos:' + #10 + #10 + #10 + '1.- Presentaciones (No existe una presentación que corresponda a la Unidad de Medida ' + cdComisariaPartida.FieldByName('sNombre').AsString + ')' + #10 + #10 +
                                                    '2.- Conversiones de Unidad de Medida de ' + cdComisariaPartida.FieldByName('sNombre').AsString + ' para el Ingrediente: ' + cdComisariaPartida.FieldByName('NombreInsumo').AsString + ' (No existe una conversión para utilizar una Unidad de Medida diferente a ' + cdComisariaPartida.FieldByName('sNombre').AsString + ' para este ingrediente)' + #10 + #10 +
                                                    '3.- Conversiones de Unidad de Medida de ' + cdComisariaPartida.FieldByName('sNombre').AsString + ' de forma general (No existe una conversión para utilizar una Unidad de Medida diferente a ' + cdComisariaPartida.FieldByName('sNombre').AsString + ')' + #10 + #10 + #10 +
                                                    'Verifique esto, alimente correctamente el sistema en cualquiera de las opciones aquí mostradas e intente de nuevo.']);

      // Armar el formulario de edición
      FormaEdit := TForm.Create(Self);
      oHeight := pnlEditarPartida.Height;
      oWidth := pnlEditarPartida.Width;
      EditResultado := mrCancel;
      Cerrarte := True;
      Try
        FormaEdit.Width := oWidth;
        FormaEdit.Height := oHeight;
        FormaEdit.OnClose := FormaEditClose;
        FormaEdit.OnCloseQuery := FormaEditCloseQuery;

        pnlEditarPartida.Parent := FormaEdit;
        pnlEditarPartida.Align := alClient;
        pnlEditarPartida.Visible := True;

        // Modificar el popup para que muestre los valores específicos para este registro
        LocOriginal := StrToFloat(cdComisariaPartidaUpt.FieldByName('CantidadOriginal').AsString);

        OriginalRound := Round(LocOriginal * 10000) / 10000;
        OriginalTrunc := Truncar(LocOriginal, 4);
        SolicitarRound := Round(EdtCantidadSolicitada.Value * 10000) / 10000;
        SolicitarTrunc := Trunc(EdtCantidadSolicitada.Value * 10000) / 10000;

        Reestablecervalororiginal1.Caption := 'Valor original: ' + FloatToStrF(cdComisariaPartidaUpt.FieldByName('CantidadOriginal').AsFloat, ffNumber, 16, 6);
        Redondeara1.Caption := 'Redondear a: ' + FloatToStrF(OriginalRound, ffNumber, 16, 4);
        Redondeara2.Caption := 'Redondear a: ' + FloatToStrF(Round(OriginalRound * 100) / 100, ffNumber, 16, 2);
        Redondeara3.Caption := 'Redondear a: ' + FloatToStrF(Round(OriginalRound), ffNumber, 16, 0);

        Ajustara1.Caption := 'Ajustar a: ' + FloatToStrF(OriginalTrunc, ffNumber, 16, 4);
        Ajustara2.Caption := 'Ajustar a: ' + FloatToStrF(Trunc(OriginalTrunc * 100) / 100, ffNumber, 16, 2);
        Ajustara3.Caption := 'Ajustar a: ' + FloatToStrF(Trunc(OriginalTrunc), ffNumber, 16, 0);

        //Redondeara1.Caption := 'Redondear a: ' + FloatToStrF(SolicitarRound, ffNumber, 16, 4);
        //Ajustara2.Caption := 'Ajustar a: ' + FloatToStrF(SolicitarTrunc, ffNumber, 16, 4);
        try
          ModificarConversion := True;
          if cdPresentacion.Locate('IdPresentacion', cdComisariaPartida.FieldByName('IdPresentacion').AsInteger, []) then
            cdPresentacionAfterScroll(cdPresentacion);
          if FormaEdit.ShowModal <> mrOk then
            raise InteligentWarning.Create('*');
        Finally
          ModificarConversion := False;
        end;

        LocCursor := Screen.Cursor;
        Try
          Screen.Cursor := crAppStart;
          cdComisariaPartida.Refresh; // Actualizar las partidas de la Comisaria
          cdCostoxDia.Refresh;            // Actualizar los costos diarios por persona
        Finally
          Screen.Cursor := LocCursor;
        end;
      Finally
        pnlEditarPartida.Visible := False;
        pnlEditarPartida.Align := alNone;
        pnlEditarPartida.Parent := Self;

        FormaEdit.Destroy;
      End;
    Finally
      cdMarca.Filtered := False;
      cdPresentacion.Filtered := False;
    end;
  Except
    on e:InteligentWarning do
      ;

    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmSolicitudes.VerificaDataSet(DataSet: TClientDataSet);
begin
  if DataSet.ProviderName = '' then
    if Not CrearConjunto(DataSet, 'cmt_comisaria', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Solicitudes de Consumo']);
end;

procedure TFrmSolicitudes.ActualizardatosdelaReceta1Click(Sender: TObject);
begin
  ActualizarReceta;
end;

function TFrmSolicitudes.BuscarReceta: Integer;
var
  i, ii: Integer;
  YaAbierto: Boolean;
  LocForm: TForm;
  LocDataSet: TClientDataSet;
begin
  VerificaDataSet(cdBuscarComisaria);

  if Not CargarDatosFiltrados(cdBuscarComisaria, 'Cuenta', ['Si']) then
    raise InteligentException.CreateByCode(6, ['Solicitudes de Consumo', 'Si', 'Cuenta']);

  cdBuscarComisaria.Open;

  Application.CreateForm(TFrmBuscarConsumo, FrmBuscarConsumo);
  FrmBuscarConsumo.dsComisaria.DataSet := cdBuscarComisaria;
  FrmBuscarConsumo.Caption := Titulo;

  if Form2.IdComisaria = -3 then
    FrmBuscarConsumo.btnAbrir.Caption := '&Eliminar'
  else
    FrmBuscarConsumo.btnAbrir.Caption := '&Abrir';

  if FrmBuscarConsumo.ShowModal = mrCancel then
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
        if LocForm.Components[ii].ClassNameIs('TClientDataSet') and (AnsiCompareText(LocForm.Components[ii].Name, 'cdComisaria') = 0) then
        begin
          LocDataSet := TClientDataSet(LocForm.Components[ii]);
          YaAbierto := (LocDataSet.ProviderName <> '') and (LocDataSet.Active) and (LocDataSet.RecordCount > 0) and (LocDataSet.FieldByName('IdComisaria').AsInteger = cdBuscarComisaria.FieldByName('IdComisaria').AsInteger);
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
    raise InteligentWarning.CreateByCode(24, ['La Solicitud de Consumo de ' + cdBuscarComisaria.FieldByName('NombreReceta').AsString + ' ya se encuentra abierta en el sistema, no es posible abrir dos veces la misma Solicitud de Consumo.']);
    //InteliDialog.ShowModal('La receta ya está abierta', 'La receta de ' + cdBuscarComisaria.FieldByName('NombreReceta').AsString + ' ya se encuentra abierta en el sistema, no es posible abrir dos veces la misma receta.', mtConfirmation, [mbOk], 0);
  end
  else
  begin
    if Not CargarDatosFiltrados(cdComisaria, 'IdComisaria', [cdBuscarComisaria.FieldByName('IdComisaria').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Solicitudes de Consumo', cdBuscarComisaria.FieldByName('IdComisaria').AsInteger, 'Id. Comisaria']);

    if cdComisaria.Active then
      cdComisaria.Refresh
    else
      cdComisaria.Open;

    if cdComisaria.RecordCount = 0 then
      raise InteligentException.CreateByCode(13, [cdBuscarComisaria.FieldByName('CodigoReceta').AsString, 'Solicitudes de Consumo']);
  end;
end;

procedure TFrmSolicitudes.cdComisariaPartidaUptAfterPost(DataSet: TDataSet);
var
  LocCursor: TCursor;
begin
  LocCursor := Screen.Cursor;
  try
    Screen.Cursor := crHourGlass;

    NecesitaGrabar := True;

    if (cdCostoxDia.ProviderName <> '') and (cdCostoxDia.Active) then
      cdCostoxDia.Refresh;
  finally
    Screen.Cursor := LocCursor;
  end;
end;

procedure TFrmSolicitudes.cdComisariaUptAfterPost(DataSet: TDataSet);
begin
  NecesitaGrabar := True;
end;

procedure TFrmSolicitudes.cdPresentacionAfterScroll(DataSet: TDataSet);
var
  locValor: Real;
  myCadena: String;
begin
  if ModificarConversion then
  begin
    myCadena := FloatToStrF(EdtCantidadSolicitada.Value, ffNumber, 16, 6) + ' ' + cdComisariaPartida.FieldByName('sNombre').AsString;

    if AnsiCompareText(cdPresentacion.FieldByName('Operador').AsString, 'Multiplicar') = 0 then
    begin
      myCadena := myCadena + ' / ';
      locValor := EdtCantidadSolicitada.Value / cdPresentacion.FieldByName('Valor').AsFloat;
    end
    else
    begin
      myCadena := myCadena + ' * ';
      locValor := EdtCantidadSolicitada.Value * cdPresentacion.FieldByName('Valor').AsFloat;
    end;

    locValor := Round(locValor * 1000000) / 1000000;
    if (cdPresentacion.FieldByName('Fraccion').AsString = 'No') and (locValor - Trunc(locValor) > 0) then
      Entero := Trunc(locValor) + 1
    else
      Entero := locValor;
    myCadena := myCadena + FloatToStrF(cdPresentacion.FieldByName('Valor').AsFloat, ffNumber, 16, 6);
    myCadena := myCadena + ' = ' + FloatToStrF(locValor, ffNumber, 16, 6) + ', (' + FloatToStrF(Entero, ffNumber, 16, 6) + ') ';

    lblConversion.Caption := myCadena + cdPresentacion.FieldByName('TituloPresentacion').AsString;

    //ShowMessage('Modificar la conversion ahora');
  end;
end;

procedure TFrmSolicitudes.colIdMarcaPropertiesCloseUp(Sender: TObject);
begin
  cdMarca.Filtered := False;  // Este es el bueno
end;

procedure TFrmSolicitudes.colIdPresentacionPropertiesCloseUp(Sender: TObject);
begin
  cdPresentacion.Filtered := False;
end;

procedure TFrmSolicitudes.CrearPartidasInsumos;
begin
  if cdExplosion.ProviderName = '' then
    //if Not CrearConjunto(cdExplosion, 'cmt_explosion', ccSelect) then
    if Not CrearConjunto(cdExplosion, 'cmt_insumopedidopartida', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Explosión de Insumos del Menú']);

  if cdComisariaPartida.ProviderName = '' then
    if Not CrearConjunto(cdComisariaPartida, 'cmt_comisariapartida', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Partidas de Solicitud de Consumo']);

  if cdComisariaPartidaUpt.ProviderName = '' then
    if Not CrearConjunto(cdComisariaPartidaUpt, 'cmt_comisariapartida', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Partidas de Solicitud de Consumo']);
end;

procedure TFrmSolicitudes.DxBtnEditRecetaClick(Sender: TObject);
begin
  pnlRecetaDblClick(pnlReceta);
end;

procedure TFrmSolicitudes.Editar1Click(Sender: TObject);
begin
  // Editar la partida seleccionada
end;

procedure TFrmSolicitudes.EdtCantidadSolicitadaChange(Sender: TObject);
begin
  cdPresentacionAfterScroll(cdPresentacion);
end;

procedure TFrmSolicitudes.CrearConjuntosNuevaReceta;
begin
  if cdComisariaUpt.ProviderName = '' then
    if Not CrearConjunto(cdComisariaUpt, 'cmt_comisaria', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Solicitudes de Consumo']);

  if cdEmbarcacion.ProviderName = '' then
    if Not CrearConjunto(cdEmbarcacion, 'cmt_embarcacion', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Localizaciones']);
end;

procedure TFrmSolicitudes.VerificaBuscarMenu(Dataset: TClientDataSet);
begin
  if DataSet.ProviderName = '' then
    if Not CrearConjunto(DataSet, 'cmt_menu', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Menús periódicos']);
end;

procedure TFrmSolicitudes.ImprimirReceta;
var
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  Try
    Screen.Cursor := crAppStart;

{
    ClientModule1.ImprimeReporte('Recetas.fr3', RepReceta);}
  Finally
    Screen.Cursor := Cursor;
  End;
end;

procedure TFrmSolicitudes.ActualizarReceta;
var
  Cursor: TCursor;
begin
  if cdComisaria.Active and cdComisariaPartida.Active then
  begin
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;
      cdComisaria.Refresh;
      cdComisariaPartida.Refresh;
    Finally
      Screen.Cursor := Cursor;
    End;
  end;
end;

procedure TFrmSolicitudes.btnAutorizarClick(Sender: TObject);
const
  cEstado: Array[False..True, 0..2] of String = (('Desautorizar', 'desautorizado', 'ABIERTO'), ('Autorizar', 'autorizado', 'AUTORIZADO'));
var
  Marca: TBookMark;
begin
  try
    VerificaPermisos('cmt_registromovimiento', [vpEscribir], EADError);

    cdComisaria.Refresh;
    if (TWinControl(Sender).Tag = 1) and (cdComisaria.FieldByName('ListaMovimientos').AsString <> '') then
      raise InteligentException.CreateByCode(24, ['No es posible Desautorizar la Solicitud de Consumo debido a que esta ya cuenta con Movimientos de almacén registrados:' + #10 + #10 + cdComisaria.FieldByName('ListaMovimientos').AsString + #10 + #10 + 'Verifique esto e intente de nuevo.']);

    CrearConjuntosNuevaReceta;

    if Not CargarDatosFiltrados(cdComisariaUpt, 'IdComisaria', [cdComisaria.FieldByName('IdComisaria').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Solicitud de Consumo', cdComisaria.FieldByName('IdComisaria').AsInteger, 'Id. Solicitud de Consumo']);

    try
      if cdComisariaUpt.Active then
        cdComisariaUpt.Refresh
      else
        cdComisariaUpt.Open;

      if cdComisariaUpt.RecordCount = 0 then
        raise InteligentException.CreateByCode(27, ['de Solicitud de Consumo', cdComisaria.FieldByName('CodigoComisaria').AsString]);

      // Verificar si se puede autorizar esta madre
      Marca := cdComisariaPartida.BookMark;
      cdComisariaPartida.DisableControls;
      try
        if cdComisariaPartida.Locate('iIdEmpresa', Null, []) then
          raise InteligentException.CreateByCode(24, ['No es posible Autorizar ésta Solicitud de Consumo debido a que existen Insumos a los que no se les ha especificado el Proveedor que los ha de suministrar.' + #10 + #10 + 'Verifique esto e intente de nuevo.']);

        if cdComisariaPartida.Locate('IdMarca', Null, []) then
          raise InteligentException.CreateByCode(24, ['No es posible Autorizar ésta Solicitud de Consumo debido a que existen Insumos a los que no se les ha especificado la Marca que se ha de comprar.' + #10 + #10 + 'Verifique esto e intente de nuevo.']);

        if cdComisariaPartida.Locate('IdPresentacion', Null, []) then
          raise InteligentException.CreateByCode(24, ['No es posible Autorizar ésta Solicitud de Consumo debido a que existen Insumos a los que no se les ha especificado la Presentación que se ha de comprar.' + #10 + #10 + 'Verifique esto e intente de nuevo.']);
      finally
        cdComisariaPartida.GotoBookMark(Marca);
        cdComisariaPartida.EnableControls;
      end;

      if InteliDialog.ShowModal(cEstado[TWinControl(Sender).Tag = 0, 0] + ' Solicitud de Consumo', '¿Desea ' + cEstado[TWinControl(Sender).Tag = 0, 0] + ' en este momento la Solicitud de Consumo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        cdComisariaUpt.Edit;
        cdComisariaUpt.FieldByName('Estado').AsString := cEstado[TWinControl(Sender).Tag = 0, 2];
        cdComisariaUpt.Post;
        cdComisariaUpt.ApplyUpdates(-1);

        cdComisaria.Refresh;
        if cdComisaria.RecordCount = 0 then
          raise InteligentException.CreateByCode(27, ['de Solicitud de Consumo', cdComisaria.FieldByName('CodigoComisaria').AsString]);
        EstableceEstado;

        InteliDialog.ShowModal('Solicitud de Consumo', 'La Solicitud de Consumo: ' + cdComisaria.FieldByName('CodigoComisaria').AsString + ' ha sido ' + cEstado[TWinControl(Sender).Tag = 0, 1] + ' satisfactoriamente.', mtInformation, [mbOk], 0);
      end;
    finally
      cdComisariaUpt.Close;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmSolicitudes.btnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSolicitudes.btnEditarCancelarClick(Sender: TObject);
begin
  FormaEdit.Close;
end;

procedure TFrmSolicitudes.btnEditarOkClick(Sender: TObject);
var
  Objeto: TWinControl;
begin
  try
    // Verificar la captura de datos
    Objeto := iIdEmpresa;
    if cdComisariaPartidaUpt.FieldByName('iIdEmpresa').IsNull then
      raise InteligentException.CreateByCode(18, ['Proveedor']);

    Objeto := IdMarca;
    if cdComisariaPartidaUpt.FieldByName('IdMarca').IsNull then
      raise InteligentException.CreateByCode(18, ['Marca']);

    Objeto := IdPresentacion;
    if cdComisariaPartidaUpt.FieldByName('IdPresentacion').IsNull then
      raise InteligentException.CreateByCode(18, ['Presentación']);

    cdComisariaPartidaUpt.FieldByName('CantidadPresentacion').AsFloat := Entero;
    cdComisariaPartidaUpt.Post;
    cdComisariaPartidaUpt.ApplyUpdates(-1);
    EditResultado := mrOk;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      if Assigned(Objeto) and Objeto.CanFocus then
        Objeto.SetFocus;

      Cerrarte := False;
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      cdComisariaPartidaUpt.Cancel;
      EditResultado := mrCancel;
    end;
  end;

  FormaEdit.Close;
end;

procedure TFrmSolicitudes.btnGrabarClick(Sender: TObject);
begin
  try
    ConcretarTransaccion;

    InteliDialog.ShowModal('Datos grabados', 'La Solicitud de Consumo ha sido grabada correctamente.', mtInformation, [mbOk], 0);

    NecesitaGrabar := False;
    IniciarTransaccion;
  Except
    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      Close;
    end;
  end;
end;

procedure TFrmSolicitudes.btnImprimirClick(Sender: TObject);
begin
  if VerificaPermisos('cmt_registromovimiento', [vpImprimir], EADMessage) then
    ClientModule1.ImprimeReporte('Solicitud_Comisaria.fr3', Reporte);
end;

procedure TFrmSolicitudes.FormaEditClose(Sender: TObject; var Action: TCloseAction);
begin
  cdComisariaPartidaUpt.Cancel;
  FormaEdit.ModalResult := EditResultado;
  Action := caFree;
end;

procedure TFrmSolicitudes.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
begin
  try
    CancelarTransaccion;

    SetRegistry('\Ventanas', '\' + Self.Name, 'Width', IntToStr(Self.Width));
    SetRegistry('\Ventanas', '\' + Self.Name, 'Height', IntToStr(Self.Height));
    SetRegistry('\Ventanas', '\' + Self.Name + '\pnlCostoDia', 'Width', IntToStr(pnlCostoDia.Width));
    SetRegistry('\Ventanas', '\' + Self.Name + '\pnlCostoDia', 'OldWidth', IntToStr(OldWidth));

    for i := 0 to tvComisariaPartida.ColumnCount -1 do
      SetRegistry('\Ventanas', '\' + Self.Name + '\tvComisariaPartida\Col' + IntToStr(i), 'Width', IntToStr(tvComisariaPartida.Columns[i].Width));

    for i := 0 to tvCostoxDia.ColumnCount -1 do
      SetRegistry('\Ventanas', '\' + Self.Name + '\tvCostoxDia\Col' + IntToStr(i), 'Width', IntToStr(tvCostoxDia.Columns[i].Width));

    EliminarConjunto([cdVerificaEntrada, cdExplosion, cdComisariaPartidaUpt, cdComisariaUpt, cdEmbarcacion, cdBuscarMenu, cdComisaria, cdBuscarComisaria, cdMarca, cdPresentacion, cdCostoxDia, cdComisariaPartida, cdMarcaGeneral]);
  Finally
    Action := caFree;
  end;
end;

procedure TFrmSolicitudes.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  // Verificar si se necesita grabar antes de salir
  if (NecesitaGrabar) and (Form2.IdComisaria <> -3) then
  begin
    CanClose := True;
    case InteliDialog.ShowModal('Grabar modificaciones realizadas', '¿Desea grabar los cambios realizados antes de cerrar la ventana?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
      mrYes: begin Saliendo := True; btnGrabar.Click; end;
      mrNo: ;
      mrCancel: CanClose := False;
    end;
  end;
end;

procedure TFrmSolicitudes.FormResize(Sender: TObject);
begin
  ComentariosComisaria.Width := pnlReceta.Width - ComentariosComisaria.Left - 6;
end;

procedure TFrmSolicitudes.FormaEditCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := Cerrarte;
  Cerrarte := True;
end;

procedure TFrmSolicitudes.EstableceEstado;
begin
  if cdComisaria.FieldByName('Estado').AsString = 'ABIERTO' then
    Estado.Font.Color := $004080FF
  else
    Estado.Font.Color := clBlue;

  btnAutorizar.Enabled := cdComisaria.FieldByName('Estado').AsString = 'ABIERTO';
  btnDesautorizar.Enabled := Not btnAutorizar.Enabled;
end;

procedure TFrmSolicitudes.AbrirCostoDia;
begin
  if Not CrearConjunto(cdCostoxDia, 'cmt_costopersonasdia', ccSelect) then
    raise InteligentException.CreateByCode(5, ['Costo Diario por Persona']);

  if Not CargarDatosFiltrados(cdCostoxDia, 'IdMenu', [IdMenu]) then
    raise InteligentException.CreateByCode(6, ['Costo Diario por Persona', cdComisaria.FieldByName('IdMenu').AsInteger, 'Id. Menu']);

  cdCostoxDia.Open;
end;

end.
