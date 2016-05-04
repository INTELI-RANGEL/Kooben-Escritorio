unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OverbyteIcsWndControl, OverbyteIcsWSocket, URegistro, DSHTTPCommon,
  DSService, DBXJSON, ExtCtrls, DBCtrls, StdCtrls, NxDBGrid, NxGrid,
  NxPageControl, ComCtrls, TypInfo, ClientModuleUnit1, NxCollection, DB,
  DBClient, AdvToolBar, AdvShapeButton, JvExControls, JvLabel, AdvGlowButton,
  UTFrmEsquema, Menus, JvDBImage, ButtonGroup, JvComponentBase, JvBalloonHint,
  JvBackgrounds, ShellAPI, AdvMenus, StrUtils, InterClases, AdvOfficeStatusBar,
  TMSFrame, AdvPreviewMenu, AdvPreviewMenuStylers, AdvToolBarStylers,
  AdvOfficeStatusBarStylers, CustomItemsContainer, AdvPolyList,
  GDIPImageTextItem, GDIPGraphicItem, GDIPButtonItem, GDIPCustomItem,
  GDIPTextItem, GDIPSectionItem, GDIPImageSectionItem, GDIPGroupItem, UFrame,
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
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxRibbonCustomizationForm, dxBar, cxClasses, dxRibbon, ImgList, dxSkinsForm,
  IdBaseComponent, IdZLibCompressorBase, IdCompressorZLib, cxPC,
  dxSkinscxPCPainter, dxBarBuiltInMenu, dxTabbedMDI, dxAlertWindow,
  AdvCircularProgress;

type
  ProcedureParameter = procedure(formulario: TForm);

  TMyCallback = class(TDBXCallback)
    function Execute(const Arg: TJSONValue): TJSONValue; override;
  end;

  TOpciones = Class
    myParent: TMenuItem;
    myCaption: String;
    myHandle: TMenuItem;
  End;

  TNuevaEntradaSalida = (nesNueva, nesEditar, nesBorrar);

  TForm2 = class(TForm)
    MsgServidor: TWSocket;
    AlertSrv: TNxAlertWindow;
    cdKardex: TClientDataSet;
    ProgressBar1: TProgressBar;
    cdConfiguracionAcceso: TClientDataSet;
    cdImagen: TClientDataSet;
    cdOrganizaciones: TClientDataSet;
    Fondo: TJvBackground;
    DSTCPIPClientCallbackChannelManager1: TDSClientCallbackChannelManager;
    DSClientCallbackChannelManager1: TDSClientCallbackChannelManager;
    DSHTTPClientCallbackChannelManager1: TDSClientCallbackChannelManager;
    StatusBar1: TAdvOfficeStatusBar;
    msRecientes: TAdvMenuStyler;
    pmRecientes: TAdvPopupMenu;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvPreviewMenuOfficeStyler1: TAdvPreviewMenuOfficeStyler;
    AdvPreviewMenu1: TAdvPreviewMenu;
    dxbrmngr1: TdxBarManager;
    TabRecetario: TdxRibbonTab;
    dxrbn1: TdxRibbon;
    TabConsumos: TdxRibbonTab;
    TabCatalogos: TdxRibbonTab;
    TabOpciones: TdxRibbonTab;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    btnAbrirReceta1: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    barRecetas: TdxBar;
    btnAbrirReceta2: TdxBarLargeButton;
    dxBarButton3: TdxBarButton;
    btnNuevaReceta1: TdxBarLargeButton;
    btnEliminarReceta1: TdxBarLargeButton;
    btnImprimirReceta: TdxBarLargeButton;
    dxbrmngr1Bar2: TdxBar;
    btnAbrirPeriodo1: TdxBarLargeButton;
    btnEstado1: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    tbTipos1: TdxBar;
    dxBarSubItem2: TdxBarSubItem;
    btnTiposInsumo1: TdxBarButton;
    dxBarButton4: TdxBarButton;
    btnTiposReceta1: TdxBarButton;
    btnPresentaciones1: TdxBarButton;
    tbDatos1: TdxBar;
    btnInsumos1: TdxBarButton;
    btnUbicaciones1: TdxBarButton;
    btnMarcas1: TdxBarButton;
    tbTablas1: TdxBar;
    btnConversiones1: TdxBarButton;
    btnUnidades1: TdxBarButton;
    btnPeriodosConsumo1: TdxBarButton;
    dxbrmngr1Bar4: TdxBar;
    btnVentanaHorizontal1: TdxBarButton;
    btnVentanaVertical1: TdxBarButton;
    btnVentanaCascada1: TdxBarButton;
    btnTiposReceta2: TdxBarLargeButton;
    btnPresentaciones2: TdxBarLargeButton;
    btnTiposInsumo2: TdxBarLargeButton;
    btnUbicaciones2: TdxBarLargeButton;
    btnMarcas2: TdxBarLargeButton;
    btnInsumos2: TdxBarLargeButton;
    btnConversiones2: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    btnPeriodosConsumo2: TdxBarLargeButton;
    btnVentanaHorizontal3: TdxBarLargeButton;
    btnVentanaVertical3: TdxBarLargeButton;
    btnVentanaCascada2: TdxBarLargeButton;
    btnUnidades2: TdxBarLargeButton;
    cxImageList32x32: TcxImageList;
    dxSkinController1: TdxSkinController;
    IdCompressorZLib1: TIdCompressorZLib;
    dxtbdmdmngr1: TdxTabbedMDIManager;
    dxBtnAbirSolicitud: TdxBarLargeButton;
    dxBtnNuevaSolicitud: TdxBarLargeButton;
    dxBtnConfiguracion: TdxBarLargeButton;
    dxAlert: TdxAlertWindowManager;
    dxbrmngr1Bar5: TdxBar;
    btnCiudad: TdxBarLargeButton;
    btnEstado: TdxBarLargeButton;
    btnPais: TdxBarLargeButton;
    dxbrmngr1Bar6: TdxBar;
    btnConfigOrga: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    btnProveedores: TdxBarLargeButton;
    dxbrmngr1Bar3: TdxBar;
    btnExplosionPeriodo: TdxBarLargeButton;
    btnIngredientesPeriodo: TdxBarLargeButton;
    btnRecetasPeriodo: TdxBarLargeButton;
    TabBarras: TdxRibbonTab;
    dxbrmngr1Bar7: TdxBar;
    btnAbrirBarra: TdxBarLargeButton;
    btnNuevaBarra: TdxBarLargeButton;
    btnEliminarBarra: TdxBarLargeButton;
    btnImprimirBarras: TdxBarLargeButton;
    btnTiposIngredientePeriodo: TdxBarLargeButton;
    btnTiposRecetaPeriodo: TdxBarLargeButton;
    btnGraficaConsumo: TdxBarLargeButton;
    TabConsumibles: TdxRibbonTab;
    BarConsumibles: TdxBar;
    btnAbrirConsumibles: TdxBarLargeButton;
    btnNuevoConsumible: TdxBarLargeButton;
    btnEliminarConsumible: TdxBarLargeButton;
    btnImprimirConsumible: TdxBarLargeButton;
    btnTiposPaqCon: TdxBarLargeButton;
    dxbrmngr1Bar8: TdxBar;
    btnSolicitudes: TdxBarLargeButton;
    btnNuevaSolicitud: TdxBarLargeButton;
    TabAlmacen: TdxRibbonTab;
    barEntradas: TdxBar;
    btnEntradasAlmacen: TdxBarLargeButton;
    btnNuevoRegistroEntradas: TdxBarLargeButton;
    barAlmacen: TdxBar;
    btnRegistrarInventario: TdxBarLargeButton;
    btnSalidasAlmacen: TdxBarLargeButton;
    btnReporteDiario: TdxBarLargeButton;
    btnEstadoDiario: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    btnEditEntradasAlmacen: TdxBarLargeButton;
    btnConsutalSalidas: TdxBarLargeButton;
    barExistencia: TdxBar;
    btnConsultarExistencias: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    btnMovimientoInsumos: TdxBarLargeButton;
    btnMovimientoPrecios: TdxBarLargeButton;
    barUtilerias: TdxBar;
    btnReSeleccionar: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    btnEliminarEntradas: TdxBarLargeButton;
    btnEliminarSalidas: TdxBarLargeButton;
    barRecetasSecundarias: TdxBar;
    btnAbrirSecundaria: TdxBarLargeButton;
    btnNuevaSecundaria: TdxBarLargeButton;
    btnEliminarInventario: TdxBarLargeButton;
    btnConsultaPrecios: TdxBarLargeButton;
    btnContratos: TdxBarLargeButton;
    btnUsuarios: TdxBarLargeButton;
    pnlUsuarioPermisos: TPanel;
    JvLabel1: TJvLabel;
    reUsuario: TEdit;
    btnreOk: TAdvGlowButton;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    rePassword: TEdit;
    btnreCancelar: TAdvGlowButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    btnCompararPrecios: TdxBarLargeButton;
    TabAlmacenGeneral: TdxRibbonTab;
    barInventarioGeneral: TdxBar;
    btnRegistrarInventarioGeneral: TdxBarLargeButton;
    btnEstadoInventarioGeneral: TdxBarLargeButton;
    btnEliminarInventarioGeneral: TdxBarLargeButton;
    btnAlmacenes: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    btnAlmacen: TdxBarLargeButton;
    btnImpuestos: TdxBarLargeButton;
    btnTipoImpuesto: TdxBarLargeButton;
    btnAlmacenes2: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    BarCotizaciones: TdxBar;
    btnCotizacion: TdxBarLargeButton;
    btnImpuestoxInsumo: TdxBarLargeButton;
    barEntradasGral: TdxBar;
    btnEntradas: TdxBarLargeButton;
    btnSalidasGral: TdxBarLargeButton;
    btnRequisicion: TdxBarLargeButton;
    btnOrdenCompra: TdxBarLargeButton;
    BarSolicitudCotizacion: TdxBar;
    btnSolCotizacion: TdxBarLargeButton;
    btnRegistrarCotizacion: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnInsumosClick(Sender: TObject);
    procedure btnTiposInsumoClick(Sender: TObject);
    procedure btnUnidadesClick(Sender: TObject);
    procedure btnUbicacionesClick(Sender: TObject);
    procedure btnTiposRecetaClick(Sender: TObject);
    procedure btnAbrirRecetaClick(Sender: TObject);
    procedure btnEliminarRecetaClick(Sender: TObject);
    procedure btnConversionesClick(Sender: TObject);
    procedure btnVentanaHorizontalClick(Sender: TObject);
    procedure btnVentanaVerticalClick(Sender: TObject);
    procedure btnVentanaCascadaClick(Sender: TObject);
    procedure tbVentanasOptionClick(Sender: TObject; ClientPoint,
      ScreenPoint: TPoint);
    procedure btnPeriodosConsumoClick(Sender: TObject);
    procedure btnAbrirPeriodoClick(Sender: TObject);
    procedure btnNuevoPeriodoClick(Sender: TObject);
    procedure btnNuevaRecetaClick(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure btnMarcasClick(Sender: TObject);
    procedure btnPresentacionesClick(Sender: TObject);
    procedure btnAbrirReceta2Click(Sender: TObject);
    procedure btnNuevaReceta1Click(Sender: TObject);
    procedure btnEliminarReceta1Click(Sender: TObject);
    procedure btnImprimirRecetaClick(Sender: TObject);
    procedure btnAbrirPeriodo1Click(Sender: TObject);
    procedure btnEstado1Click(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure btnTiposInsumo1Click(Sender: TObject);
    procedure btnTiposReceta1Click(Sender: TObject);
    procedure btnPresentaciones1Click(Sender: TObject);
    procedure btnInsumos1Click(Sender: TObject);
    procedure btnUbicaciones1Click(Sender: TObject);
    procedure btnMarcas1Click(Sender: TObject);
    procedure btnConversiones1Click(Sender: TObject);
    procedure btnUnidades1Click(Sender: TObject);
    procedure btnPeriodosConsumo1Click(Sender: TObject);
    procedure btnVentanaHorizontal1Click(Sender: TObject);
    procedure btnVentanaCascada1Click(Sender: TObject);
    procedure btnVentanaVertical1Click(Sender: TObject);
    procedure btnTiposReceta2Click(Sender: TObject);
    procedure btnPresentaciones2Click(Sender: TObject);
    procedure btnTiposInsumo2Click(Sender: TObject);
    procedure btnUbicaciones2Click(Sender: TObject);
    procedure btnMarcas2Click(Sender: TObject);
    procedure btnInsumos2Click(Sender: TObject);
    procedure btnConversiones2Click(Sender: TObject);
    procedure btnUnidades2Click(Sender: TObject);
    procedure btnPeriodosConsumo2Click(Sender: TObject);
    procedure btnVentanaHorizontal3Click(Sender: TObject);
    procedure btnVentanaVertical3Click(Sender: TObject);
    procedure btnVentanaCascada2Click(Sender: TObject);
    procedure dxBtnConfiguracionClick(Sender: TObject);
    procedure btnCiudadClick(Sender: TObject);
    procedure btnEstadoClick(Sender: TObject);
    procedure btnPaisClick(Sender: TObject);
    procedure btnConfigOrgaClick(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure btnProveedoresClick(Sender: TObject);
    procedure btnAbrirBarraClick(Sender: TObject);
    procedure btnNuevaBarraClick(Sender: TObject);
    procedure btnEliminarBarraClick(Sender: TObject);
    procedure btnImprimirBarrasClick(Sender: TObject);
    procedure btnReporteGlobalClick(Sender: TObject);
    procedure btnGraficaConsumoClick(Sender: TObject);
    procedure btnAbrirConsumiblesClick(Sender: TObject);
    procedure btnNuevoConsumibleClick(Sender: TObject);
    procedure btnTiposPaqConClick(Sender: TObject);
    procedure btnEliminarConsumibleClick(Sender: TObject);
    procedure btnImprimirConsumibleClick(Sender: TObject);
    procedure btnSolicitudesClick(Sender: TObject);
    procedure btnNuevaSolicitudClick(Sender: TObject);
    procedure btnEntradasAlmacenClick(Sender: TObject);
    procedure btnRegistrarInventarioClick(Sender: TObject);
    procedure btnSalidasAlmacenClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure btnEditEntradasAlmacenClick(Sender: TObject);
    procedure btnConsutalSalidasClick(Sender: TObject);
    procedure btnConsultarExistenciasClick(Sender: TObject);
    procedure btnMovimientoInsumosClick(Sender: TObject);
    procedure btnMovimientoPreciosClick(Sender: TObject);
    procedure btnReSeleccionarClick(Sender: TObject);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure btnEliminarEntradasClick(Sender: TObject);
    procedure btnEliminarSalidasClick(Sender: TObject);
    procedure btnAbrirSecundariaClick(Sender: TObject);
    procedure btnEliminarInventarioClick(Sender: TObject);
    procedure btnConsultaPreciosClick(Sender: TObject);
    procedure btnContratosClick(Sender: TObject);
    procedure btnUsuariosClick(Sender: TObject);
    procedure FormaUserCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnreOkClick(Sender: TObject);
    procedure dxBarLargeButton10Click(Sender: TObject);
    procedure btnCompararPreciosClick(Sender: TObject);
    procedure btnRegistrarInventarioGeneralClick(Sender: TObject);
    procedure btnEstadoInventarioGeneralClick(Sender: TObject);
    procedure btnEliminarInventarioGeneralClick(Sender: TObject);
    procedure btnImpuestosClick(Sender: TObject);
    procedure btnTipoImpuestoClick(Sender: TObject);
    procedure btnAlmacenes2Click(Sender: TObject);
    procedure btnCotizacionClick(Sender: TObject);
    procedure btnImpuestoxInsumoClick(Sender: TObject);
    procedure btnEntradasClick(Sender: TObject);
    procedure btnRequisicionClick(Sender: TObject);
    procedure btnSolCotizacionClick(Sender: TObject);
  private
    IdentificadorSistema: String;
    ListaChat,
    lsClientsConected: TStringList;
    cConfiguracion,
    IdSesion,
    FMyCallbackName: string;
    ForzarSalir: Boolean;
    Habil: Boolean;
    ListaComa: String;
    OrigCaption: String;
    CerrarFormaUser: Boolean;
    procedure ScreenActiveControlChange(Sender: TObject);
    procedure EnterColor(Sender: TWinControl);
    procedure ExitColor(Sender: TWinControl);
    procedure InicializarSistema(Reiniciar: boolean = false);
    procedure ModificarIconoAplicacion;
    procedure AsignarDireccionServidor;
    Function ReadWallpaper(TBackground: TJvBackground):Boolean;
    function ValidaExtencion(path: string): Boolean;
    function IniciarForm(clase: TComponentClass; formulario: TForm;
      Multiple: Boolean; Inicializar: ProcedureParameter = nil): boolean;
  public
    ObligaCerrar: Boolean;
    PuertoMsgUtilizado: Boolean;
    GlobalColorGroup, GlobalColorGroupText, GlobalColorTextBtn,
    GlobalColorCaptura, GlobalColorCampo, GlobalColor2, GlobalColor1,
    GlobalColorPanel, FocusColor: Tcolor;
    IdOrganizacionSel: LongInt;
    IdComisaria: LongInt;
    IdReceta: LongInt;
    IdRegistroConsumo: LongInt;
    IdSolicitud: LongInt;
    IdMenu: LongInt;
    NuevaEntrada: TNuevaEntradaSalida;
    NuevaSalida: TNuevaEntradaSalida;
    TipoReceta: String;
    CualTipoReceta: String;
    Secundaria: Boolean;
    BorrarInventario: Boolean;
    EsGeneral: Boolean;
    procedure LogMsg(const s: string);
    procedure QueueLogMsg(const s: string);
    procedure PrecargaColores(DatosConfig: TClientDataset);
  end;

const
  TipoBoton = 'TAdvGlowButton';
  NumPagesMain = 2;

var
  Form2: TForm2;
  LastFocused: TWinControl;
  OriginalColor: TColor;
  TipoCliente : string;
  TipodePermiso : String;
  ClassUser: TClassUser;

implementation

uses UInteliDialog, Frm_Conectando, UTFrmSeleccion, UTFrmInsumos,
  UTFrmTiposInsumo, UTFrmUnidades, UTFrmEmbarcaciones, UTFrmComisaria,
  UTFrmRecetario, UTFrmTiposReceta, UTFrmConversion, UTFrmPeriodosConsumo,
  UTFrmRegistroPeriodoConsumo, UTFrmImprimeRecetas, UTFrmInsumosPosPeriodo,
  UTFrmMarcas, UTFrmPresentaciones, UTFrmRangoConsumos, UtfrmCmtConfiguracion,
  UTFrmMenu, UDatosOrganizacion, UFrmOrganizacion, UTFrmPais, UTFrmEstado,
  UTFrmCiudad, UTFrmProveedor, UTFrmMenuDX, UTFrmEstadoMenu,
  UTFrmReportesIngredientes, UTFrmGraficaConsumos, UTFrmConsumible,
  UTFrmSolicitudes, UTFrmEntradasAlmacenDX, UTFrmRegistroExistencia,
  UTFrmSalidasAlmacen, UTFrmEstadoInventarios, UTFrmConsultarExistencias,
  UTFrmConsultaPrecios, UTFrmPrecioBajo, UTFrmContratos, UTFrmUsuarioPermisos,
  UTFrmRolPermisos, UTFrmComparaPrecios, UTFrmAlmacenes, UTFrmIVA,
  UTFrmTiposImpuesto, UTFrmCotizacion, UTFrmImpuestoxInsumo,
  UTFrmEntradaGeneral, UFrmImpuestosxInsumo, UTFrmRequisicion,
  UTFrmSolCotizacion;

{$R *.dfm}

function CadenaServidor(Cadena: String): Boolean;
begin
  Result := ClientModule1.FuncCadenaServidor(Cadena);
end;

function TMyCallback.Execute(const Arg: TJSONValue): TJSONValue;
begin
  Form2.QueueLogMsg(Arg.ToString);
  Result := TJSONTrue.Create;
end;

function TForm2.IniciarForm(clase: TComponentClass; formulario: TForm; Multiple: Boolean; Inicializar: ProcedureParameter = nil): boolean;
var
  Cta, x: Integer;
  Found: Boolean;
  Forma: TForm;
  Cadena,
  SubCad: String;

procedure AccedeACoordenadas;
begin
end;

begin
  Try
    Try
      // Analizar si se requiere validar la ejecución previa del formulario
      if Not Multiple then
      begin
        Try
          // Verificar si la ventana ya existe
          Cta := 0;
          Found := False;
          while (Cta < Self.MDIChildCount) and Not Found do
          begin
            Found := AnsiCompareText(Self.MDIChildren[Cta].ClassName, Clase.ClassName) = 0;
            if Not Found then
              Inc(Cta);
          end;

          if Not Found then
          begin
            // Si la ventana no existe tratar de invocarla
            Try
              Application.CreateForm(Clase, Formulario);

              AccedeACoordenadas;  // Acceder a las poislbes coordenadas anteriores
              if Assigned(Inicializar) then
                Inicializar(formulario);
              formulario.show;    // Mostrar la ventana en la posición indicada
              // Registrar la utilización de la ventana
              Try


              Except
                ; // No hacer nada, solo es para no emitir un error que detenga le funcionamiento
              End;
              Result := True;
            Except
              Formulario.Free;
              Result := false;
            End;
          End
          Else
          Begin
            Forma := Self.MDIChildren[Cta];
            if Forma.WindowState = wsMinimized then
              Forma.WindowState := wsNormal  // Restablecer la ventana
            else
              Forma.BringToFront;
            Result := False;
          End;
        Finally

        End;
      end
      else
      begin
        // Tratar de ejecutar directamente el formulario
        Try
          Application.CreateForm(Clase, Formulario);

          AccedeACoordenadas;   // Acceder a las posibles coordenadas anteriores
          if Assigned(Inicializar) then
            Inicializar(formulario);
          Cadena := Formulario.Name;
          x := Length(Cadena);
          SubCad := '';
          while CharInSet(Cadena[x], ['0'..'9']) and (x > 0) and (Cadena[x] <> '_') do
          begin
            SubCad := Cadena[x] + SubCad;
            Dec(x);
          end;

          Try
            if SubCad <> '' then
            Formulario.Caption := Formulario.Caption + ' [' + SubCad + ']';
          Except
            ;
          End;

          formulario.show;
          Result := True;
        Except
          on e:exception do
          begin
            showmessage(e.Message);
          Result := false;
          end;
        End;
      end;
    Finally

    end;
  Except
    on e:InteligentException do
      if e.Message = '*' then
        ;
  end;
end;

procedure TForm2.LogMsg(const s: string);
begin
  // Enviar cadena para que sea decodificada y ejecute la acción correspondiente
  CadenaServidor(s);
end;

procedure TForm2.QueueLogMsg(const s: string);
begin
  TThread.Queue(nil,
    procedure
    begin
      LogMsg(s)
    end);
end;

procedure TForm2.PrecargaColores(DatosConfig: TClientDataset);
var
  global1, Global2, colorpanel, colorgrouptext, colorgroup, colorcampo,
  colorcaptura, colortextbtn, colorcamposalida, colorfocus: Integer;
Begin
  try
    ClientModule1.IniNucConfiguracion(DatosConfig);
    //trata de leer el parametro de configuracion
    try
      global1 := strToInt(ClientModule1.ConfigGetValor('GlobalColor1',DatosConfig));
    except
      begin
        //si no lo puede leer se hace un default
        global1 := 12632256;
        //se trata de crear el nuevo registro ya que no se pudo leer
        if not ClientModule1.SetNewValorConfig('GlobalColor1','Estilo','12632256') then
        //en dado caso que no se haya podio crear el nuevo registro es porq ya exitia
        //entonces procederemos a insertar el valor nulo con uno default
          ClientModule1.EditValorConfig('GlobalColor1','12632256');
      end;
    end;
    // se establece el valor del color
    GlobalColor1 := global1;

    try
      Global2 := strToInt(ClientModule1.ConfigGetValor('GlobalColor2',DatosConfig));;
    except
      begin
        Global2 := 10789024;
        if not ClientModule1.SetNewValorConfig('GlobalColor2','Estilo','10789024') then
          ClientModule1.EditValorConfig('GlobalColor2','10789024');
      end;
    end;
    GlobalColor2 := Global2;

    try
      colorpanel := strToInt(ClientModule1.ConfigGetValor('GlobalColorPanel',DatosConfig));
    except
      begin
        colorpanel := 15780518;
        if not ClientModule1.SetNewValorConfig('GlobalColorPanel','Estilo','15780518') then
          ClientModule1.EditValorConfig('GlobalColorPanel','15780518');
      end;
    end;
    GlobalColorPanel := colorpanel;

    try
      colorgrouptext := strToInt(ClientModule1.ConfigGetValor('GlobalColorGroupText',DatosConfig));
    except
      begin
      colorgrouptext := 0;
        if not ClientModule1.SetNewValorConfig('GlobalColorGroupText','Estilo','0') then
          ClientModule1.EditValorConfig('GlobalColorGroupText','0');
      end;
    end;
    GlobalColorGroupText :=  colorgrouptext;

    try
      colorgroup := strToInt(ClientModule1.ConfigGetValor('GlobalColorGroup',DatosConfig));
    except
      begin
        colorgroup := 15780518;
        if not ClientModule1.SetNewValorConfig('GlobalColorGroup','Estilo','15780518') then
          ClientModule1.EditValorConfig('GlobalColorGroup','15780518');
      end;
    end;
    GlobalColorGroup := colorgroup;

    try
      colorcampo := strToInt(ClientModule1.ConfigGetValor('GlobalColorCampo',DatosConfig));
    except
      begin
        colorcampo := 16777215;
        if not ClientModule1.SetNewValorConfig('GlobalColorCampo','Estilo','16777215') then
          ClientModule1.EditValorConfig('GlobalColorCampo','16777215');
      end;
    end;
    GlobalColorCampo := colorcampo;

    try
      colorcaptura := strToInt(ClientModule1.ConfigGetValor('GlobalColorCaptura',DatosConfig));
    except
      begin
        colorcaptura := 0;
        if not ClientModule1.SetNewValorConfig('GlobalColorCaptura','Estilo','0') then
          ClientModule1.EditValorConfig('GlobalColorCaptura','0');
      end;
    end;
    GlobalColorCaptura := colorcaptura;

    try
      colortextbtn := strToInt(ClientModule1.ConfigGetValor('GlobalColorTextBtn',DatosConfig));
    except
      begin
        colortextbtn := -16777208;
        if not ClientModule1.SetNewValorConfig('GlobalColorTextBtn','Estilo','-16777208') then
          ClientModule1.EditValorConfig('GlobalColorTextBtn','-16777208');
      end;
    end;
      GlobalColorTextBtn := colortextbtn;

    try
      colorcamposalida := strToInt(ClientModule1.ConfigGetValor('GlobalColorCampo',DatosConfig));
    except
      begin
        colorcamposalida := 16777215;
      end;
    end;
    Globales.SetValue('Color_Salida', colorcamposalida);

    try
      colorfocus := strToInt(ClientModule1.ConfigGetValor('GlobalColorFocus',DatosConfig));
    except
      begin
        colorfocus := 12639424;
        if not ClientModule1.SetNewValorConfig('GlobalColorFocus','Estilo','12639424') then
          ClientModule1.EditValorConfig('GlobalColorFocus','12639424');
      end;
    end;
    Globales.SetValue('color_entrada', colorfocus);

    focusColor := Globales.Elemento('Color_entrada').AsInteger;
    ClientModule1.ComponentColor(Self);

    form2.Refresh;
    form2.Repaint;
  except
      on e:exception do
      raise Exception.Create('No se ha podido cargar la configuración de colores debido a lo siguiente:' + #10 + #10 + e.message);
  end;
End;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
var
  TabIndex: Integer;
begin
  SetRegistry('\Ventanas', '\' + Self.Name + '\dxrbn1', 'ActiveTabIndex', IntToStr(dxrbn1.ActiveTab.Index));
  EliminarConjunto(ClientModule1.cdEmbarcacion);
end;

procedure TForm2.FormaUserCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := CerrarFormaUser;
  CerrarFormaUser := True;
end;

procedure TForm2.FormCreate(Sender: TObject);
var
  Cadena: String;
begin
  ObligaCerrar := False;
  MsgServidor.Proto := 'udp';
  MsgServidor.Addr := '0.0.0.0';
  MsgServidor.Port := '81';
  Try
    PuertoMsgUtilizado := False;
    MsgServidor.Listen;

    Screen.Cursors[crAppStart] := LoadCursorFromFile(PChar(ExtractFilePath(Application.ExeName) + '\Busy.ani'));
  Except
    on e:exception do
    begin
      PuertoMsgUtilizado:= True;
      ForzarSalir := True;
      ObligaCerrar := True;

      //ShowMessage('No se pueden enviar mensajes al servidor.'+' Error al tratar de comunicarse con el puerto 81, puede que tenga otro cliente iniciado o bien el puerto está cerrado.');
    end;
  End;

  IdentificadorSistema := 'Comisariato';
  ListaChat := TStringList.Create;
  lsClientsConected:=TStringList.Create;

  cConfiguracion := '';   // Inicializar configuracion en nulo hasta que el usuario seleccione alguna

  Cadena := StringReplace(DateTimeToStr(Now), ':', '', [rfReplaceAll, rfIgnoreCase]);
  Cadena := StringReplace(Cadena, '/', '', [rfReplaceAll, rfIgnoreCase]);
  Cadena := StringReplace(Cadena, ' ', '', [rfReplaceAll, rfIgnoreCase]);
  Cadena := StringReplace(Cadena, 'A', 'S', [rfReplaceAll, rfIgnoreCase]);
  Cadena := StringReplace(Cadena, 'P', 'S', [rfReplaceAll, rfIgnoreCase]);
  Cadena := StringReplace(Cadena, 'H', 'S', [rfReplaceAll, rfIgnoreCase]);
  Cadena := StringReplace(Cadena, 'M', 'S', [rfReplaceAll, rfIgnoreCase]);
  IdSesion:=Cadena;

  // Callbacks
  DSClientCallbackChannelManager1.ManagerId := TDSTunnelSession.GenerateSessionId;
  FMyCallbackName := TDSTunnelSession.GenerateSessionId;
  DSClientCallbackChannelManager1.RegisterCallback(FMyCallbackName, TMyCallback.Create);

  //manejo del focus
  Screen.OnActiveControlChange := ScreenActiveControlChange;
end;

procedure TForm2.FormShow(Sender: TObject);
var
  TabIndex: Integer;
begin
  barRecetasSecundarias.Visible := False;

  Try
    InicializarSistema;
    LeerConfiguaracionAcceso(cdConfiguracionAcceso);
    ClientModule1.CargarRutaReportes(19);

    Try
      //dxrbn1.Tabs[0].Index;
      TabIndex := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\dxrbn1', 'ActiveTabIndex'));
      dxrbn1.ActiveTab := dxrbn1.Tabs[TabIndex];
    Except
      dxrbn1.ActiveTab := dxrbn1.Tabs[0];
    End;

    OrigCaption := Self.Caption;
    Self.Caption := OrigCaption + ' - ' + ClientModule1.cdOrganizacion.FieldByName('NombreOrganizacion').AsString;
    StatusBar1.Panels[1].Text := ClientModule1.cdOrganizacion.FieldByName('CodigoOrganizacion').AsString;
    StatusBar1.Panels[2].Text := 'BD: ' + Globales.Elemento('DATABASE').AsString;
    StatusBar1.Panels[3].Text := 'Host: ' + ClientModule1.SQLConnection1.Params.Values['HostName'];
  Except
    on e:InteligentConnection do
    begin
      ForzarSalir := True;
      Globales.Free;
      if e.Message <> '***' then
        InteliDialog.ShowModal('No se ha podido iniciar el sistema', 'No se ha podido iniciar el sistema debido a lo siguiente:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    //se pulso el boton salir en la suite
    on e:InteligentWarning do
    begin
      if e.Message = '*' then
      begin
        ForzarSalir := True;
        Globales.Free;
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;
    end;

    on e:exception do
    begin
      ForzarSalir := True;
      Globales.Free;
      InteliDialog.ShowModal('No se ha podido iniciar el sistema', 'No se ha podido iniciar el sistema por la siguiente razón:' + #10 + #10 +
                             e.message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TForm2.ScreenActiveControlChange(Sender: TObject);
var
  doEnter, doExit: boolean;
  previousActiveControl: TWinControl;
begin
  try
    if Screen.ActiveControl = nil then
    begin
      LastFocused := nil;
      Exit;
    end;

    try
      lastFocused.Enabled;
    except
      on e:exception do
        lastFocused := nil;
    end;

    doExit := LastFocused <> Nil;
    if doExit then
      PreviousActiveControl := LastFocused;

    if (Screen.ActiveControl <> nil) and (Screen.ActiveControl.Enabled) then
    begin
      if (Screen.ActiveControl.ClassType = TDBEdit) or (Screen.ActiveControl.ClassType = TEdit) or
         (Screen.ActiveControl.ClassType = TDBComboBox) or (Screen.ActiveControl.ClassType = TComboBox) or
         (Screen.ActiveControl.ClassType = TDBMemo) then
      begin
        {doEnter := true;
        doExit := true;

        if Screen.ActiveControl is TButtonControl then doEnter := false;
        if Screen.ActiveControl is TNextDBGrid then doEnter := false;
        if Screen.ActiveControl is TForm then doEnter := false;
        if Screen.ActiveControl is TNextGrid then doEnter := false;
        if Screen.ActiveControl is TNxPageControl then doEnter := false;}
        doEnter := (TComponent(Screen.ActiveControl).Tag and (1 shl 0)) = 0;
        doExit := (TComponent(Screen.ActiveControl).Tag and (1 shl 0)) = 0;

        PreviousActiveControl := LastFocused;

        if previousActiveControl <> nil then
        begin
          if previousActiveControl is TButtonControl then doExit := false;
          if previousActiveControl is TNextDBGrid then doExit := false;
          if previousActiveControl is TForm then doExit := false;
          if previousActiveControl is TNextGrid then doExit := false;
          if Screen.ActiveControl is TNxPageControl then doExit := false;
          if Screen.ActiveControl is TTreeView then doExit := false;
        end;

        LastFocused := Screen.ActiveControl;

        if doEnter then EnterColor(lastFocused);
      end;
    end;

    if doExit then  ExitColor(PreviousActiveControl);

  Except
    on e:Exception do
      ;
  end;
end;

procedure TForm2.btnRegistrarInventarioClick(Sender: TObject);
begin
  BorrarInventario := False;
  EsGeneral := False;
  IniciarForm(TFrmRegistroExistencia, FrmRegistroExistencia, False);
end;

procedure TForm2.btnRegistrarInventarioGeneralClick(Sender: TObject);
begin
  BorrarInventario := False;
  EsGeneral := True;
  IniciarForm(TFrmRegistroExistencia, FrmRegistroExistencia, False);
end;

procedure TForm2.btnreOkClick(Sender: TObject);
begin
  CerrarFormaUser := (AnsiCompareText(reUsuario.Text, Globales.Elemento('Usuario').AsString) = 0) and (AnsiCompareText(rePassword.Text, Globales.Elemento('Password').AsString) = 0);
  if Not CerrarFormaUser then
  begin
    reUsuario.SetFocus;
    raise Exception.Create('El Usuario y Password capturados no coinsiden, intenten de nuevo.');
  end;
end;

procedure TForm2.btnReporteGlobalClick(Sender: TObject);
begin
  Application.CreateForm(TFrmReportesIngredientes, FrmReportesIngredientes);
  FrmReportesIngredientes.ModoReporte := TdxBarLargeButton(Sender).Tag;
  FrmReportesIngredientes.Caption := TdxBarLargeButton(Sender).Hint;
  FrmReportesIngredientes.ShowModal;
end;

procedure TForm2.btnRequisicionClick(Sender: TObject);
begin
  Application.CreateForm(TFrmRequisicion, FrmRequisicion);
  FrmRequisicion.ShowModal;
end;

procedure TForm2.tbVentanasOptionClick(Sender: TObject; ClientPoint,
  ScreenPoint: TPoint);
begin
  //
end;

procedure TForm2.EnterColor(Sender: TWinControl);
begin
  if Sender <> nil then
  begin
    if IsPublishedProp(Sender,'Color') then
    begin
      originalColor := Globales.Elemento('Color_Salida').AsInteger;
      SetOrdProp(Sender,'Color', focusColor) ;
    end ;
  end ;
end;

procedure TForm2.ExitColor(Sender: TWinControl);
begin
  if Sender <> nil then
  begin
    if  TComponent(sender).Tag <> 99 then
    begin
      if IsPublishedProp(Sender,'Color') then
      begin
        SetOrdProp(Sender, 'Color', Globales.Elemento('Color_salida').AsInteger);
      end ;
    end;
  end ;
end;

procedure TForm2.InicializarSistema(Reiniciar: boolean = false);
var
  ii, count: Integer;
  ListaTmp: TStringList;
  Providername: String;
  PopWizard: TFrmEsquema;
  valida, verifica: string;
  dtAccesado: TDateTime;
  StrCreado,
  StrModificado: String;
  cdSistemas: TClientDataSet;
  ListaPar: TStringList;
begin
  ForzarSalir := True;
  Habil := True;

  // Generar colores por default
  Globales := TGlobales.Create;
  GlobalColor1 := 12632256;  //color Global
  GlobalColor2 := 10789024; //color secundario
  GlobalColorPanel := 15780518;   //color de tpanel
  GlobalColorGroupText := 0; //color de fuente de Groupbox
  GlobalColorGroup := 15780518;   //color de GroupBox
  GlobalColorCampo := 16777215;  //color de tedit, tdbedit tdbmemo
  GlobalColorCaptura := 0;  //color de entrada de texto
  GlobalColorTextBtn := -16777208;   //color fuente de boton
  Globales.SetValue('Color_Salida', clWhite);
  Globales.SetValue('Color_Entrada', 12639424);
  focuscolor :=  Globales.Elemento('Color_entrada').AsInteger;

  Try
    if Assigned(TClientDataSet(Self.FindComponent('TABLAISPT'))) then
      TClientDataSet(Self.FindComponent('TABLAISPT')).Destroy;

    if Assigned(TClientDataSet(Self.FindComponent('SUBSIDIOISPT'))) then
      TClientDataSet(Self.FindComponent('SUBSIDIOISPT')).Destroy;

    if Assigned(TClientDataSet(Self.FindComponent('TABLAIMSS'))) then
      TClientDataSet(Self.FindComponent('TABLAIMSS')).Destroy;

  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  End;

  Try
    if ParamCount > 0 then
    begin
      ListaPar := TStringList.Create;
      ListaPar.CommaText := ParamStr(1);
    end;

    Application.CreateForm(TFrmConectando, FrmConectando);
    FrmConectando.ListaPar := ListaPar;
    if FrmConectando.ShowModal = mrCancel then
      raise InteligentConnection.Create('***');   // Si se ha cancelado en la ventana de conecta se deber cerrar la ventana aquí
  Finally
    FreeAndNil(FrmConectando);
    ListaPar.Free;
  end;

  // Verificar si se ha podido conectar con la base de datos
  if Not ClientModule1.SQLConnection1.Connected then
    raise Exception.Create('No se ha podido establecer la comunicación con la base de datos');

  if ClientModule1.cdNucConfiguracion.Active then
  begin
    Eliminarconjunto(ClientModule1.cdNucConfiguracion);
    ClientModule1.cdNucConfiguracion.Free;
    ClientModule1.cdNucConfiguracion := TClientDataset.create(nil);
  end;

  PrecargaColores(ClientModule1.cdNucConfiguracion);
  ClientModule1.ComponentColor(Self);

  // Acceder a las imagenes de la configuración para actualizar el archivo local
  Try
    // Cargar la imagen a memoria
    Crearconjunto(cdImagen, 'nuc_configuracion_imagen1', ccUpdate);
    CargarDatosFiltrados(cdImagen, 'Parametro', ['ImagenGrande']);
    cdImagen.Open;
  Except
    raise;
  End;

  ModificarIconoAplicacion;   // Buscar la imagen guardada en la configuración para sustituirla

  AsignarDireccionServidor;   // Asignar la direccion del servidor a los objetos de comunicación

  //añadiendo formularios
  CrearConjunto(cdOrganizaciones, cOrganizacion, providername, ccUpdate);
  cdOrganizaciones.Open;
  if CdOrganizaciones.RecordCount < 1 then
  begin
    Try
    PopWizard := TFrmEsquema.Create(Self);
      PopWizard.Showmodal;
    if PopWizard.Cancelado = True then
        raise Exception.Create('No se ha podido activar el configurador de la estructura de empresa');
    Finally
      FreeAndNil(PopWizard);
    End;
  end;

  Try
  /// OJO AQUÍ RANGEL..... ESTABAS PROBANDO EL TFRMSELECCIONDX
    Application.CreateForm(TFrmSeleccion, FrmSeleccion);
    Case FrmSeleccion.ShowModal of
      mrOk: ;
      mrNo: raise Exception.Create('No se ha podido activar la ventana de selección de estructura de acceso al sistema');
      mrCancel: raise InteligentConnection.Create('***');
    End;

  Finally
    FreeAndNil(FrmSeleccion);
  End;
  // Fin formularios añadidos
  Form2.BringToFront;   // Traer la ventana hacia el frente

  //verificar proceso de solicitud
  try
    valida := ClientModule1.ConfigGetValor('validacion',Clientmodule1.cdNucConfiguracion);
    if Length(Trim(valida)) < 2 then
    begin
      raise Exception.Create('');
    end;
  except
    valida := 'si';
    if not ClientModule1.SetNewValorConfig('validacion','se valida','si') then
      ClientModule1.EditValorConfig('validacion','si');
  end;

  try
    verifica := ClientModule1.ConfigGetValor('verificacion',Clientmodule1.cdNucConfiguracion);
    if Length(Trim(verifica)) < 2 then
    begin
      raise Exception.Create('');
    end;
  except
    verifica := 'si';
    if not ClientModule1.SetNewValorConfig('verificacion','se verifica','si') then
      ClientModule1.EditValorConfig('verificacion','si');
  end;

  // Generar el modo todopoderoso para los usuarios de ADMIN
  GodMode := AnsiCompareText(ClientModule1.cdUsuario.FieldByName('CodigoRol').AsString,'ADMIN') = 0;

  ///////////////////////////////////////////////////////////////////////
  ///  Cargar los datos del menu
  ///////////////////////////////////////////////////////////////////////
  ObtenerPrefijo(ListaComa);
  // Buscar ahora los prefijos de los sistemas a los cuales tiene permiso y dejar solo aquellos
  // validos según los permisos asignados al rol
  if not GodMode then
  begin
    ListaTmp := TStringList.Create;
    ListaTmp.Delimiter := ',';
    ListaTmp.DelimitedText := ListaComa;
    cdSistemas := TClientDataSet.Create(nil);
    CrearConjunto(cdSistemas,'nuc_sistemapermiso','SELECT');
    //CargarDatosFiltrados(cdSistemas,'idrol',[ClientModule1.cdUsuario.FieldByName('idRol').AsInteger]);
    cdSistemas.Open;
    ii := 0;
    while ii < ListaTmp.Count do
    begin
      if not cdSistemas.Locate('prefijo',ListaTmp[ii],[loCaseInsensitive]) then
        ListaTmp.Delete(ii)
      else
        inc(ii);
    end;
    ListaComa := ListaTmp.DelimitedText;
    cdSistemas.Close;
    EliminarConjunto(cdSistemas);
    cdSistemas.Free;
    ListaTmp.Free;
  end;

  // verificar el tipo de permiso
  try
    TipodePermiso := ClientModule1.ConfigGetValor('tipopermiso',ClientModule1.cdNucConfiguracion);
    if Length(trim(TipodePermiso)) < 2 then
      raise Exception.Create('');
  except
    begin
      TipodePermiso := 'Rol';
      if not ClientModule1.SetNewValorConfig('tipopermiso','Tipo de permisos manejados por el sistema.','Rol') then
        ClientModule1.EditValorConfig('tipopermiso','Rol');
    end;
  end;

  //verificando tamaño de fuente
  try
    if Length(trim(ClientModule1.ConfigGetValor('Datos',ClientModule1.cdNucConfiguracion))) < 1 then
      raise Exception.Create('');
  except
    begin
      if not ClientModule1.SetNewValorConfig('Datos','Tamaño de fuente.','9') then
        ClientModule1.EditValorConfig('Datos','9');
    end;
  end;

  try
    if Length(trim(ClientModule1.ConfigGetValor('Ventana',ClientModule1.cdNucConfiguracion))) < 1 then
      raise Exception.Create('');
  except
    begin
      if not ClientModule1.SetNewValorConfig('Ventana','Tamaño de fuente.','8') then
        ClientModule1.EditValorConfig('Ventana','8');
    end;
  end;

  // Determinar el tipo de permisos que se debe usar
  ClientModule1.CargaPermisos(ClientModule1.cdUsuario.FieldByName('idRol').AsInteger);

  if Not ((TipoCliente = '0') or (TipoCliente = '2')) then
  begin
    Count := 0;
    while Count < self.ComponentCount do
    begin
      if Self.Components[count].ClassName = 'TPanel' then
        TPanel(Self.Components[count]).Visible := False;
      inc(Count);
    end;
    StatusBar1.Panels[5].Text := 'Nombre: ' + ClientModule1.cdUsuario.FieldByName('nombreusuario').AsString;
    StatusBar1.Panels[5].Width := Trunc(StatusBar1.Canvas.TextWidth(StatusBar1.Panels[5].Text) * 1.4);
  end;

  // Actualizar estado anterior de la ventana de comunicación
  ProviderName := VarRegistry( '\Ambiente\Principal', '\Comunicación', 'Estado');
  //if ProviderName = 'Anclado' then

  //if (TipoCliente = '2') or (TipoCliente = '3') then
    ReadWallpaper(Fondo);
  ForzarSalir := False;

  DSTCPIPClientCallbackChannelManager1.DSHostname:= ClientModule1.SQLConnection1.Params.Values['Hostname'];
  dSTCPIPClientCallbackChannelManager1.DSPort:=ClientModule1.SQLConnection1.Params.Values['port'];
  DSTCPIPClientCallbackChannelManager1.CommunicationProtocol:= ClientModule1.SQLConnection1.Params.Values['communicationProtocol'];

  DSHTTPClientCallbackChannelManager1.DSHostname:=ClientModule1.SQLConnection1.Params.Values['Hostname'];
  DSHTTPClientCallbackChannelManager1.DSPort:=ClientModule1.SQLConnection1.Params.Values['port'];
  DSHTTPClientCallbackChannelManager1.CommunicationProtocol:= ClientModule1.SQLConnection1.Params.Values['communicationProtocol'];

  Self.Resize;
end;

procedure TForm2.ModificarIconoAplicacion;
var
  Buffer: array[0..2048] of char;
  IconIndex: word;
  IconHandle: HIcon;
  FileNameIcon: String;
begin
  FileNameIcon := ExtractFilePath(ParamStr(0)) + 'Icono.ico';
  if FileExists(FileNameIcon) then
  begin
    try
      IconIndex := 0;
      IconHandle := 0;
      IconHandle := ExtractAssociatedIcon(HInstance, PWideChar(FileNameIcon), IconIndex);
      if IconHandle <> 0 then
        Application.Icon.Handle := IconHandle;
    Except
      on e:exception do
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TForm2.btnAbrirReceta2Click(Sender: TObject);
begin
  IdReceta := -5;
  TipoReceta := 'Receta';
  Secundaria := False;
  IniciarForm(TFrmRecetario, FrmRecetario, True);
end;

procedure TForm2.btnAbrirRecetaClick(Sender: TObject);
begin
  IdReceta := -5;
  Secundaria := False;
  IniciarForm(TFrmRecetario, FrmRecetario, True);
end;

procedure TForm2.btnAbrirSecundariaClick(Sender: TObject);
begin
  IdReceta := -5;
  TipoReceta := 'Receta';
  Secundaria := True;
  IniciarForm(TFrmRecetario, FrmRecetario, True);
end;

procedure TForm2.btnCiudadClick(Sender: TObject);
begin
  IniciarForm(TFrmCiudad, FrmCiudad, False);
end;

procedure TForm2.btnCompararPreciosClick(Sender: TObject);
begin
  IniciarForm(TFrmComparaPrecios, FrmComparaPrecios, True);
end;

procedure TForm2.btnConfigOrgaClick(Sender: TObject);
begin
  IniciarForm(TFrmOrganizacion, FrmOrganizacion, False);
end;

procedure TForm2.btnConsultarExistenciasClick(Sender: TObject);
begin
  Application.CreateForm(TFrmConsultarExistencias, FrmConsultarExistencias);
  FrmConsultarExistencias.ShowModal;
end;

procedure TForm2.btnConsutalSalidasClick(Sender: TObject);
begin
  NuevaSalida := nesEditar;
  IniciarForm(TFrmSalidasAlmacen, FrmSalidasAlmacen, False);
end;

procedure TForm2.btnContratosClick(Sender: TObject);
begin
  IniciarForm(TFrmContratos, FrmContratos, False);
end;

procedure TForm2.btnConversiones1Click(Sender: TObject);
begin
  IniciarForm(TFrmConversion, FrmConversion, False);
end;

procedure TForm2.btnConversiones2Click(Sender: TObject);
begin
  Application.CreateForm(TFrmConversion, FrmConversion);
  FrmConversion.ShowModal;
  //IniciarForm(TFrmConversion, FrmConversion, False);
end;

procedure TForm2.btnConversionesClick(Sender: TObject);
begin
  IniciarForm(TFrmConversion, FrmConversion, False);
end;

procedure TForm2.btnCotizacionClick(Sender: TObject);
begin
  IniciarForm(TFrmCotizacion, FrmCotizacion, False);
end;

procedure TForm2.btnUbicaciones1Click(Sender: TObject);
begin
  IniciarForm(TFrmEmbarcaciones, FrmEmbarcaciones, False);
end;

procedure TForm2.btnUbicaciones2Click(Sender: TObject);
begin
  IniciarForm(TFrmEmbarcaciones, FrmEmbarcaciones, False);
end;

procedure TForm2.btnUbicacionesClick(Sender: TObject);
begin
  IniciarForm(TFrmEmbarcaciones, FrmEmbarcaciones, False);
end;

procedure TForm2.btnImprimirBarrasClick(Sender: TObject);
begin
  TipoReceta := 'Barra';
  IniciarForm(TFrmImprimeRecetas, FrmImprimeRecetas, False);
end;

procedure TForm2.btnImprimirConsumibleClick(Sender: TObject);
begin
  TipoReceta := 'Consumible';
  IniciarForm(TFrmImprimeRecetas, FrmImprimeRecetas, False);
end;

procedure TForm2.btnInsumos1Click(Sender: TObject);
begin
  IniciarForm(TFrmInsumos, FrmInsumos, False);
end;

procedure TForm2.btnInsumos2Click(Sender: TObject);
begin
  IniciarForm(TFrmInsumos, FrmInsumos, False);
end;

procedure TForm2.btnInsumosClick(Sender: TObject);
begin
  IniciarForm(TFrmInsumos, FrmInsumos, False);
end;

procedure TForm2.btnImpuestosClick(Sender: TObject);
begin
  IniciarForm(TFrmIVA, FrmIVA, False);
end;

procedure TForm2.btnImpuestoxInsumoClick(Sender: TObject);
begin
  IniciarForm(TFrmImpuestosxInsumo, FrmImpuestosxInsumo, False);
end;

procedure TForm2.btnMarcas1Click(Sender: TObject);
begin
  IniciarForm(TFrmMarcas, FrmMarcas, False);
end;

procedure TForm2.btnMarcas2Click(Sender: TObject);
begin
  IniciarForm(TFrmMarcas, FrmMarcas, False);
end;

procedure TForm2.btnMarcasClick(Sender: TObject);
begin
  IniciarForm(TFrmMarcas, FrmMarcas, False);
end;

procedure TForm2.btnMovimientoInsumosClick(Sender: TObject);
begin
  InteliDialog.ShowModal('Opción pendiente', 'Esta opción esta pendiente', mtInformation, [mbOk], 0);
end;

procedure TForm2.btnMovimientoPreciosClick(Sender: TObject);
begin
  Application.CreateForm(TFrmConsultaPrecios, FrmConsultaPrecios);
  FrmConsultaPrecios.ShowModal;
end;

procedure TForm2.btnTipoImpuestoClick(Sender: TObject);
begin
  IniciarForm(TFrmTiposImpuesto, FrmTiposImpuesto, False);
end;

procedure TForm2.btnTiposInsumo1Click(Sender: TObject);
begin
  IniciarForm(TFrmTiposInsumo, FrmTiposInsumo, False);
end;

procedure TForm2.btnTiposInsumo2Click(Sender: TObject);
begin
  IniciarForm(TFrmTiposInsumo, FrmTiposInsumo, False);
end;

procedure TForm2.btnTiposInsumoClick(Sender: TObject);
begin
  IniciarForm(TFrmTiposInsumo, FrmTiposInsumo, False);
end;

procedure TForm2.btnTiposPaqConClick(Sender: TObject);
begin
  CualTipoReceta := 'CONSUMIBLE';
  IniciarForm(TFrmTiposReceta, FrmTiposReceta, False)
end;

procedure TForm2.btnUnidades1Click(Sender: TObject);
begin
  IniciarForm(TFrmUnidades, FrmUnidades, False);
end;

procedure TForm2.btnUnidades2Click(Sender: TObject);
begin
  IniciarForm(TFrmUnidades, FrmUnidades, False);
end;

procedure TForm2.btnUnidadesClick(Sender: TObject);
begin
  IniciarForm(TFrmUnidades, FrmUnidades, False);
end;

procedure TForm2.btnUsuariosClick(Sender: TObject);
var
  FormaUser: TForm;
  Dimension: TPoint;
begin
  try
    Dimension.X := pnlUsuarioPermisos.Width;
    Dimension.Y := pnlUsuarioPermisos.Height;
    CerrarFormaUser := True;
    reUsuario.Text := '';
    rePassword.Text := '';

    FormaUser := TForm.Create(Self);
    FormaUser.Width := pnlUsuarioPermisos.Width;
    FormaUser.Height := pnlUsuarioPermisos.Height;
    FormaUser.BorderStyle := bsDialog;
    FormaUser.Position := poMainFormCenter;
    FormaUser.OnCloseQuery := FormaUserCloseQuery;
    try
      pnlUsuarioPermisos.Parent := FormaUser;
      pnlUsuarioPermisos.Align := alClient;
      pnlUsuarioPermisos.Visible := True;
      if FormaUser.ShowModal = mrOk then
      begin
        Application.CreateForm(TFrmUsuarioPermisos, FrmUsuarioPermisos);
        FrmUsuarioPermisos.ShowModal;
        ClientModule1.cdPermisos.Refresh;
      end;
    finally
      pnlUsuarioPermisos.Visible := False;
      pnlUsuarioPermisos.Align := alNone;
      pnlUsuarioPermisos.Parent := Self;

      pnlUsuarioPermisos.Width := Dimension.X;
      pnlUsuarioPermisos.Height := Dimension.Y;
    end;
  except
    on e:InteligentException do
      MessageDlg(e.Message, mtError, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TForm2.btnTiposReceta1Click(Sender: TObject);
begin
  IniciarForm(TFrmTiposReceta, FrmTiposReceta, False)
end;

procedure TForm2.btnTiposReceta2Click(Sender: TObject);
begin
  CualTipoReceta := 'RECETA';
  IniciarForm(TFrmTiposReceta, FrmTiposReceta, False)
end;

procedure TForm2.btnTiposRecetaClick(Sender: TObject);
begin
  IniciarForm(TFrmTiposReceta, FrmTiposReceta, False)
end;

procedure TForm2.btnEditEntradasAlmacenClick(Sender: TObject);
begin
  NuevaEntrada := nesEditar;
  IniciarForm(TFrmEntradasAlmacenDX, FrmEntradasAlmacenDX, True);
end;

procedure TForm2.btnEliminarBarraClick(Sender: TObject);
begin
  IdReceta := -3;
  TipoReceta := 'Barra';
  Secundaria := False;
  IniciarForm(TFrmRecetario, FrmRecetario, True);
end;

procedure TForm2.btnEliminarConsumibleClick(Sender: TObject);
begin
  IdReceta := -3;
  IniciarForm(TFrmConsumible, FrmConsumible, True);
end;

procedure TForm2.btnEliminarEntradasClick(Sender: TObject);
begin
  NuevaEntrada := nesBorrar;
  IniciarForm(TFrmEntradasAlmacenDX, FrmEntradasAlmacenDX, True);
end;

procedure TForm2.btnEliminarInventarioClick(Sender: TObject);
begin
  BorrarInventario := True;
  EsGeneral := False;
  IniciarForm(TFrmRegistroExistencia, FrmRegistroExistencia, False);
end;

procedure TForm2.btnEliminarInventarioGeneralClick(Sender: TObject);
begin
  BorrarInventario := True;
  EsGeneral := True;
  IniciarForm(TFrmRegistroExistencia, FrmRegistroExistencia, False);
end;

procedure TForm2.btnEliminarReceta1Click(Sender: TObject);
begin
  IdReceta := -3;
  TipoReceta := 'Receta';
  Secundaria := False;
  IniciarForm(TFrmRecetario, FrmRecetario, True);
end;

procedure TForm2.btnEliminarRecetaClick(Sender: TObject);
begin
  IdReceta := -3;
  Secundaria := False;
  IniciarForm(TFrmRecetario, FrmRecetario, True);
end;

procedure TForm2.btnEliminarSalidasClick(Sender: TObject);
begin
  NuevaSalida := nesBorrar;
  IniciarForm(TFrmSalidasAlmacen, FrmSalidasAlmacen, False);
end;

procedure TForm2.btnEntradasAlmacenClick(Sender: TObject);
begin
  NuevaEntrada := nesNueva;
  IniciarForm(TFrmEntradasAlmacenDX, FrmEntradasAlmacenDX, True);
end;

procedure TForm2.btnEntradasClick(Sender: TObject);
begin
  IniciarForm(TFrmEntradaGeneral, FrmEntradaGeneral, False);
end;

procedure TForm2.btnEstadoClick(Sender: TObject);
begin
  IniciarForm(TFrmEstado, FrmEstado, False);
end;

procedure TForm2.btnEstadoInventarioGeneralClick(Sender: TObject);
begin
  EsGeneral := True;
  IniciarForm(TFrmEstadoInventarios, FrmEstadoInventarios, False);
end;

procedure TForm2.btnNuevaReceta1Click(Sender: TObject);
begin
  IdReceta := -9;
  TipoReceta := 'Receta';
  Secundaria := False;
  IniciarForm(TFrmRecetario, FrmRecetario, True);
end;

procedure TForm2.btnNuevaRecetaClick(Sender: TObject);
begin
  IdReceta := -9;
  Secundaria := False;
  IniciarForm(TFrmRecetario, FrmRecetario, True);
end;

procedure TForm2.btnNuevaSolicitudClick(Sender: TObject);
begin
  IdComisaria := -9;
  Application.CreateForm(TFrmSolicitudes, FrmSolicitudes);
  FrmSolicitudes.ShowModal;
end;

procedure TForm2.btnEstado1Click(Sender: TObject);
begin
  IniciarForm(TFrmEstadoMenu, FrmEstadoMenu, False);
end;

procedure TForm2.btnNuevoConsumibleClick(Sender: TObject);
begin
  IdReceta := -9;
  IniciarForm(TFrmConsumible, FrmConsumible, True);
end;

procedure TForm2.btnNuevoPeriodoClick(Sender: TObject);
begin
  IdRegistroConsumo := -9;
  IniciarForm(TFrmRegistroPeriodoConsumo, FrmRegistroPeriodoConsumo, False);
end;

procedure TForm2.btnPaisClick(Sender: TObject);
begin
  IniciarForm(TFrmPais, FrmPais, False);
end;

procedure TForm2.btnPeriodosConsumo1Click(Sender: TObject);
begin
  IniciarForm(TFrmPeriodosConsumo, FrmPeriodosConsumo, False);
end;

procedure TForm2.btnPeriodosConsumo2Click(Sender: TObject);
begin
  IniciarForm(TFrmPeriodosConsumo, FrmPeriodosConsumo, False);
end;

procedure TForm2.btnPeriodosConsumoClick(Sender: TObject);
begin
  IniciarForm(TFrmPeriodosConsumo, FrmPeriodosConsumo, False);
end;

procedure TForm2.btnPresentaciones1Click(Sender: TObject);
begin
  IniciarForm(TFrmPresentaciones, FrmPresentaciones, False);
end;

procedure TForm2.btnPresentaciones2Click(Sender: TObject);
begin
  IniciarForm(TFrmPresentaciones, FrmPresentaciones, False);
end;

procedure TForm2.btnPresentacionesClick(Sender: TObject);
begin
  IniciarForm(TFrmPresentaciones, FrmPresentaciones, False);
end;

procedure TForm2.btnProveedoresClick(Sender: TObject);
begin
  IniciarForm(TFrmProveedor, FrmProveedor, False);
end;

procedure TForm2.btnVentanaCascada1Click(Sender: TObject);
begin
  Self.Cascade;
end;

procedure TForm2.btnVentanaCascada2Click(Sender: TObject);
begin
  Self.Cascade;
end;

procedure TForm2.btnVentanaCascadaClick(Sender: TObject);
begin
  Self.Cascade;
end;

procedure TForm2.btnVentanaHorizontal1Click(Sender: TObject);
begin
  Self.TileMode := tbHorizontal;
  Self.Tile;
end;

procedure TForm2.btnVentanaVertical3Click(Sender: TObject);
begin
  Self.TileMode := tbVertical;
  Self.Tile;
end;

procedure TForm2.btnVentanaHorizontalClick(Sender: TObject);
begin
  Self.TileMode := tbHorizontal;
  Self.Tile;
end;

procedure TForm2.btnVentanaVertical1Click(Sender: TObject);
begin
  Self.TileMode := tbVertical;
  Self.Tile;
end;

procedure TForm2.btnVentanaHorizontal3Click(Sender: TObject);
begin
  Self.TileMode := tbHorizontal;
  Self.Tile;
end;

procedure TForm2.btnVentanaVerticalClick(Sender: TObject);
begin
  Self.TileMode := tbVertical;
  Self.Tile;
end;

procedure TForm2.btnImprimirRecetaClick(Sender: TObject);
begin
  TipoReceta := 'Receta';
  IniciarForm(TFrmImprimeRecetas, FrmImprimeRecetas, False);
end;

procedure TForm2.btnSalidasAlmacenClick(Sender: TObject);
begin
  NuevaSalida := nesNueva;
  Application.CreateForm(TFrmSalidasAlmacen, FrmSalidasAlmacen);
  FrmSalidasAlmacen.ShowModal;
  //IniciarForm(TFrmSalidasAlmacen, FrmSalidasAlmacen, False);
end;

procedure TForm2.btnSolCotizacionClick(Sender: TObject);
begin
  {Application.CreateForm(TFrmSolCotizacion, FrmSolCotizacion);
  FrmSolCotizacion.ShowModal;}
  IniciarForm(TFrmSolCotizacion, FrmSolCotizacion, False);
end;

procedure TForm2.btnSolicitudesClick(Sender: TObject);
begin
  IdComisaria := -5;
  Application.CreateForm(TFrmSolicitudes, FrmSolicitudes);
  FrmSolicitudes.ShowModal;
end;

procedure TForm2.dxBarLargeButton10Click(Sender: TObject);
var
  FormaUser: TForm;
  Dimension: TPoint;
begin
  try
    Dimension.X := pnlUsuarioPermisos.Width;
    Dimension.Y := pnlUsuarioPermisos.Height;
    CerrarFormaUser := True;
    reUsuario.Text := '';
    rePassword.Text := '';

    FormaUser := TForm.Create(Self);
    FormaUser.Width := pnlUsuarioPermisos.Width;
    FormaUser.Height := pnlUsuarioPermisos.Height;
    FormaUser.BorderStyle := bsDialog;
    FormaUser.Position := poMainFormCenter;
    FormaUser.OnCloseQuery := FormaUserCloseQuery;
    try
      pnlUsuarioPermisos.Parent := FormaUser;
      pnlUsuarioPermisos.Align := alClient;
      pnlUsuarioPermisos.Visible := True;
      if FormaUser.ShowModal = mrOk then
      begin
        Application.CreateForm(TFrmRolPermisos, FrmRolPermisos);
        FrmRolPermisos.ShowModal;
        ClientModule1.cdPermisos.Refresh;
      end;
    finally
      pnlUsuarioPermisos.Visible := False;
      pnlUsuarioPermisos.Align := alNone;
      pnlUsuarioPermisos.Parent := Self;

      pnlUsuarioPermisos.Width := Dimension.X;
      pnlUsuarioPermisos.Height := Dimension.Y;
    end;
  except
    on e:InteligentException do
      MessageDlg(e.Message, mtError, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TForm2.btnAlmacenes2Click(Sender: TObject);
begin
  IniciarForm(TFrmAlmacenes, FrmAlmacenes, False);
end;

procedure TForm2.dxBarLargeButton4Click(Sender: TObject);
begin
  EsGeneral := False;
  IniciarForm(TFrmEstadoInventarios, FrmEstadoInventarios, False);
end;

procedure TForm2.dxBarLargeButton5Click(Sender: TObject);
begin
  IniciarForm(TFrmInsumosPorPeriodos, FrmInsumosPorPeriodos, False);
end;

procedure TForm2.dxBarLargeButton6Click(Sender: TObject);
begin
   IniciarForm(TFrmPais, FrmPais, False);
end;

procedure TForm2.dxBarLargeButton7Click(Sender: TObject);
begin
  IdComisaria := -3;
  IniciarForm(TFrmSolicitudes, FrmSolicitudes, True);
end;

procedure TForm2.btnConsultaPreciosClick(Sender: TObject);
begin
  Application.CreateForm(TFrmPrecioBajo, FrmPrecioBajo);
  FrmPrecioBajo.ShowModal;
end;

procedure TForm2.btnReSeleccionarClick(Sender: TObject);
var
  i: Integer;
  LocCursor: TCursor;
  OldIdOrganizacion: Integer;
begin
  try
    VerificaPermisos('nuc_organizacion', [vpLeer], EADError);

    OldIdOrganizacion := Globales.Elemento('IdOrganizacion').AsInteger;
    Application.CreateForm(TFrmSeleccion, FrmSeleccion);
    if FrmSeleccion.ShowModal = mrOk then
    begin
      if ClientModule1.cdOrganizacion.FieldByName('IdOrganizacion').AsInteger <> OldIdOrganizacion then
      begin
        LocCursor := Screen.Cursor;

        if ClientModule1.cdEmbarcacion.Active then
          ClientModule1.cdEmbarcacion.Refresh;

        if ClientModule1.cdAutorizaciones.Active then
          ClientModule1.cdAutorizaciones.Refresh;

        if ClientModule1.cdSolicitantes.Active then
          ClientModule1.cdSolicitantes.Refresh;

        Globales.SetValue('IdOrganizacion', ClientModule1.cdOrganizacion.FieldByName('IdOrganizacion').AsInteger);
        Self.Caption := OrigCaption + ' - ' + ClientModule1.cdOrganizacion.FieldByName('NombreOrganizacion').AsString;
        StatusBar1.Panels[1].Text := ClientModule1.cdOrganizacion.FieldByName('CodigoOrganizacion').AsString;
        StatusBar1.Panels[2].Text := 'BD: ' + Globales.Elemento('DATABASE').AsString;
        StatusBar1.Panels[3].Text := 'Host: ' + ClientModule1.SQLConnection1.Params.Values['HostName'];

        // Cerrar todas las ventanas abiertas si se ha cambiado el contrato
        try
          try
            Screen.Cursor := crHourGlass;
            while Application.MainForm.MDIChildCount > 0 do
            begin
              Application.MainForm.MDIChildren[0].Close;
              Application.MainForm.MDIChildren[0].Destroy;
            end;
          finally
            Screen.Cursor := LocCursor;
          end;
        except
          ;
        end;

        InteliDialog.ShowModal('Cambio de Empresa', 'El sistema se ha configurado satisfactoriamente para la empresa:' + #10 + #10 +
                               ClientModule1.cdOrganizacion.FieldByName('CodigoOrganizacion').AsString + #10 +
                               ClientModule1.cdOrganizacion.FieldByName('NombreOrganizacion').AsString + #10 + #10 +
                               'Base de Datos: ' + Globales.Elemento('DATABASE').AsString + #10 +
                               'Host: ' + ClientModule1.SQLConnection1.Params.Values['HostName'], mtInformation, [mbOk], 0);
      end;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TForm2.btnGraficaConsumoClick(Sender: TObject);
begin
  Application.CreateForm(TFrmGraficaConsumos, FrmGraficaConsumos);
  FrmGraficaConsumos.ShowModal;
end;

procedure TForm2.btnAbrirBarraClick(Sender: TObject);
begin
  IdReceta := -5;
  TipoReceta := 'Barra';
  Secundaria := False;
  IniciarForm(TFrmRecetario, FrmRecetario, True);
end;

procedure TForm2.btnAbrirConsumiblesClick(Sender: TObject);
begin
  IdReceta := -5;
  IniciarForm(TFrmConsumible, FrmConsumible, True);
end;

procedure TForm2.btnNuevaBarraClick(Sender: TObject);
begin
  IdReceta := -9;
  TipoReceta := 'Barra';
  Secundaria := False;
  IniciarForm(TFrmRecetario, FrmRecetario, True);
end;

procedure TForm2.dxBtnConfiguracionClick(Sender: TObject);
begin
  application.CreateForm(TFrmCmtConfiguracion, FrmCmtConfiguracion);
  FrmCmtConfiguracion.ShowModal;
end;

procedure TForm2.btnAbrirPeriodo1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmMenuDX, FrmMenuDX);
  FrmMenuDX.ShowModal;
  //IniciarForm(TFrmMenuDX, FrmMenuDX, True);
end;

procedure TForm2.btnAbrirPeriodoClick(Sender: TObject);
begin
  IdRegistroConsumo := -5;
  IniciarForm(TFrmRegistroPeriodoConsumo, FrmRegistroPeriodoConsumo, True);
end;

procedure TForm2.AdvGlowButton1Click(Sender: TObject);
begin
  IniciarForm(TFrmInsumosPorPeriodos, FrmInsumosPorPeriodos, False);
end;

procedure TForm2.AdvGlowButton3Click(Sender: TObject);
begin
  IniciarForm(TFrmImprimeRecetas, FrmImprimeRecetas, False);
end;

procedure TForm2.AsignarDireccionServidor;
begin
  // Asignar el mismo host que se le especificó a la conexión del servidor datasnap
  DSClientCallbackChannelManager1.DSHostname := ClientModule1.SQLConnection1.Params.Values['HostName'];
  DSTCPIPClientCallbackChannelManager1.DSHostname := ClientModule1.SQLConnection1.Params.Values['HostName'];
end;

function TForm2.ReadWallpaper(TBackground: TJvBackground): Boolean;
begin
  //dandole lectura al path del fondo
  if FileExists(VarRegistry('\Ambiente', '\Principal\Fondo', 'Path')) then
  begin
   if ValidaExtencion(VarRegistry('\Ambiente', '\Principal\Fondo', 'Path')) then
     try
       TBackground.Image.Picture.LoadFromFile(VarRegistry('\Ambiente', '\Principal\Fondo', 'Path'));
     except
       ;
     end;
  end
  else
  begin
    try
      TBackground.Image.Picture.LoadFromFile(ExtractFilePath(application.ExeName) + 'images\wallpaper.png');
    except
     ;
    end;
  end;
end;

function TForm2.ValidaExtencion(path: string): Boolean;
var
  Resultado: Boolean;
begin
  Resultado := False;
  if (AnsiEndsText( '.gif', path )) or
     (AnsiEndsText( '.png', path )) or
     (AnsiEndsText( '.jpg', path )) or
     (AnsiEndsText( '.jpeg', path )) or
     (AnsiEndsText( '.bmp', path ))
  then
    Resultado := True;
  result := Resultado;
end;

end.
