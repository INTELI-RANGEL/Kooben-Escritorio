unit UTFrmMenuDX;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, ClientModuleUnit1, UInteliDialog, cxGraphics,
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
  cxGrid, DateUtils, ComCtrls, ExtCtrls, cxGridDBDataDefinitions, Menus,
  AdvGlowButton, StrUtils, StdCtrls, JvExControls, JvLabel, AdvPicture,
  dxGDIPlusClasses, AdvOfficePager, Grids, JvExGrids, JvStringGrid, frxClass,
  frxDBSet, Mask, DBCtrls, URegistro, JvComponentBase, JvBalloonHint;

type
  TFecha = class
    IdEmbarcacion: LongInt;
    Fecha: TDate;
    FechaInicio: TDate;
    FechaFinal: TDate;
  end;

  TRegistroConsumoDatos = class
    IdRegistroConsumoDatos: Integer;
    IdReceta: Integer;
  end;

  TFrmMenuDX = class(TForm)
    cdcmt_Configuracion: TClientDataSet;
    cdMenu: TClientDataSet;
    cdMenuDatosListado: TClientDataSet;
    ProgressBar1: TProgressBar;
    Panel1: TPanel;
    Panel2: TPanel;
    cdReceta: TClientDataSet;
    dsReceta: TDataSource;
    cdRecetasRecientes: TClientDataSet;
    dsRecetasRecientes: TDataSource;
    cdRegistroConsumo: TClientDataSet;
    cdRegistroConsumoInsumo: TClientDataSet;
    Panel3: TPanel;
    lvPeriodosConsumo: TListView;
    Panel4: TPanel;
    btnSubAceptar: TAdvGlowButton;
    Panel5: TPanel;
    JvLabel1: TJvLabel;
    cbFechas: TComboBox;
    pnlQuitar: TPanel;
    imgQuitar1: TImage;
    imgQuitar2: TImage;
    imgQuitar3: TImage;
    cdBorrador: TClientDataSet;
    cdIngredientes: TClientDataSet;
    cdExplosion: TClientDataSet;
    dsExplosion: TDataSource;
    opMain: TAdvOfficePager;
    opMenu: TAdvOfficePage;
    opIngredientes: TAdvOfficePage;
    cxGrid2: TcxGrid;
    tvExplosion: TcxGridDBTableView;
    NombreTipoInsumo: TcxGridDBColumn;
    CodigoInsumo: TcxGridDBColumn;
    NombreInsumo: TcxGridDBColumn;
    DescripcionInsumo: TcxGridDBColumn;
    Cantidad: TcxGridDBColumn;
    sNombre: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    tvPartidas: TcxGridDBTableView;
    colCodigoReceta: TcxGridDBColumn;
    colNombreReceta: TcxGridDBColumn;
    colPersonasxReceta: TcxGridDBColumn;
    colPersonas: TcxGridDBColumn;
    colFactorReceta: TcxGridDBColumn;
    tvRecientes: TcxGridDBTableView;
    colCodigoRecetaReciente: TcxGridDBColumn;
    colNombreRecetaReciente: TcxGridDBColumn;
    colPersonasRecientes: TcxGridDBColumn;
    glNivel1: TcxGridLevel;
    glNivel2: TcxGridLevel;
    Splitter1: TSplitter;
    cdExplosionReceta: TClientDataSet;
    dsExplosionReceta: TDataSource;
    opIngredientesReceta: TAdvOfficePage;
    tvIngredientesxReceta: TcxGridDBTableView;
    gridIngredientesxRecetaLevel1: TcxGridLevel;
    gridIngredientesxReceta: TcxGrid;
    rNombreTipoInsumo: TcxGridDBColumn;
    rNombreInsumo: TcxGridDBColumn;
    rNombreReceta: TcxGridDBColumn;
    rCodigoReceta: TcxGridDBColumn;
    rCantidad: TcxGridDBColumn;
    rsNombre: TcxGridDBColumn;
    rTituloPeriodoConsumo: TcxGridDBColumn;
    rFecha: TcxGridDBColumn;
    sbComensales: TScrollBox;
    sgComensales: TJvStringGrid;
    Panel6: TPanel;
    JvLabel2: TJvLabel;
    Panel7: TPanel;
    btnComAceptar: TAdvGlowButton;
    btComCancel: TAdvGlowButton;
    frxMenuPeriodico: TfrxReport;
    frxdsEncabMenu: TfrxDBDataset;
    cdEncabMenu: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    cdMenuDatos: TClientDataSet;
    dsMenuDatos: TDataSource;
    frxdsMenuDatos: TfrxDBDataset;
    cdRecetaImagen: TClientDataSet;
    frxdsExplosion: TfrxDBDataset;
    frxdsExplosionReceta: TfrxDBDataset;
    pnlDetalle: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    cpReceta: TEdit;
    DBEdit6: TDBEdit;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    ciDia: TEdit;
    JvLabel8: TJvLabel;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Panel8: TPanel;
    btnPrevisualizar: TAdvGlowButton;
    btnModComen: TAdvGlowButton;
    Panel10: TPanel;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    tvBarras: TcxGridDBTableView;
    colCodigoBarra: TcxGridDBColumn;
    colNombreBarra: TcxGridDBColumn;
    glNivelBarras: TcxGridLevel;
    cdBarra: TClientDataSet;
    dsBarra: TDataSource;
    Panel9: TPanel;
    Comentarios: TDBMemo;
    dsMenu: TDataSource;
    JvLabel9: TJvLabel;
    JvLabel10: TJvLabel;
    dsEmbarcacion: TDataSource;
    btnGenerarPedido: TAdvGlowButton;
    Panel11: TPanel;
    gCalendario: TcxGrid;
    tvDatos: TcxGridDBTableView;
    gCalendarioLevel1: TcxGridLevel;
    glNivelConsumibles: TcxGridLevel;
    cdConsumibles: TClientDataSet;
    dsConsumibles: TDataSource;
    tvConsumibles: TcxGridDBTableView;
    ConCodigoReceta: TcxGridDBColumn;
    Panel13: TPanel;
    cdRenglonesMenu: TClientDataSet;
    RepReceta: TfrxReport;
    fdsReceta: TfrxDBDataset;
    cdContrato: TClientDataSet;
    NombreEmbarcacion: TDBText;
    MsgBorrado: TJvBalloonHint;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tvPartidasMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure tvDatosDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure tvDatosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure btnSubAceptarClick(Sender: TObject);
    procedure cbFechasChange(Sender: TObject);
    procedure tvDatosEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure tvDatosMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure tvDatosStartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure imgQuitar3DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure cxGlobalDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure imgQuitar3DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure tvDatosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure tvDatosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btComCancelClick(Sender: TObject);
    procedure btnComAceptarClick(Sender: TObject);
    procedure sgComensalesExitCell(Sender: TJvStringGrid; AColumn,
      ARow: Integer; const EditText: string);
    procedure tvDatosDblClick(Sender: TObject);
    procedure btnModComenClick(Sender: TObject);
    procedure opMainChange(Sender: TObject);
    procedure btnPrevisualizarClick(Sender: TObject);
    procedure frxMenuPeriodicoDblClickObject(Sender: TfrxView;
      Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
    procedure tvDatosCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnGenerarPedidoClick(Sender: TObject);
    procedure opConsumiblesShow(Sender: TObject);
    procedure cxGrid1ActiveTabChanged(Sender: TcxCustomGrid;
      ALevel: TcxGridLevel);
    procedure tvConsumiblesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tvConsumiblesDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure tvConsumiblesMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure tvDatosGroupRowCollapsed(Sender: TcxGridTableView;
      AGroup: TcxGridGroupRow);
  private
    SelIdPeriodoConsumo: Integer;
    Forma: TForm;
    IdPeriodoConsumo: LongInt;
    FormResultado: TModalResult;
    ColumnaNombre: String;
    ImagenNombre: String;
    Pulsado: Boolean;
    CambiosRealizados: Boolean;
    FormaModalResult: TModalResult;
    NeedRefresh1: Boolean;
    NeedRefresh2: Boolean;
    Estado: TDataSetState;
    Periodo: TFecha;
    Panel3Height: Integer;
    procedure ArmarMenu(pFecha: TDate);
    procedure MenuItemClick(Sender: TObject);
    procedure SubFormClose(Sender: TObject; var Action: TCloseAction);
    procedure LlenarIngredientesCompleto;
    procedure FormaClose(Sender: TObject; var Action: TCloseAction);
    procedure MostrarComensales;
    procedure ArmarReporte;
    procedure GenerarPedido;
  public
    PedidoBorrado: Boolean;
  end;

const
  Separador = ' - ';
  nDia: Array[1..7] Of String = ('Lúnes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sábado', 'Domingo');
  nMes: Array[1..12] Of String = ('Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio',
                                  'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre');

var
  FrmMenuDX: TFrmMenuDX;

implementation

{$R *.dfm}

Uses
  UTFrmSelPeriodoMenu, UTFrmInsumoPedido;

procedure TFrmMenuDX.btComCancelClick(Sender: TObject);
begin
  if TWInControl(Sender).Parent.Parent.Parent is TForm then
  begin
    FormaModalResult := mrCancel;
    Forma.Close;
  end;
end;

procedure TFrmMenuDX.btnAceptarClick(Sender: TObject);
var
  locCursor: TCursor;
begin
  locCursor := Screen.Cursor;
  try
    Screen.Cursor := crAppStart;
    ConcretarTransaccion;

    if CambiosRealizados then
      InteliDialog.ShowModal('Menú grabado', 'Los cambios al menú de consumo han sido realizados', mtInformation, [mbOk], 0);

    CambiosRealizados := False;
  Except
    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      CambiosRealizados := False;
      Close;
    end;
  end;
end;

procedure TFrmMenuDX.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmMenuDX.btnComAceptarClick(Sender: TObject);
begin
  if TWInControl(Sender).Parent.Parent.Parent is TForm then
  begin
    FormaModalResult := mrOk;
    Forma.Close;
  end;
end;

procedure TFrmMenuDX.btnGenerarPedidoClick(Sender: TObject);
begin
  GenerarPedido;
end;

procedure TFrmMenuDX.btnModComenClick(Sender: TObject);
begin
  Try
    VerificaPermisos('cmt_menu', [vpEscribir], EADError);
    MostrarComensales;
  Except
    on e:InteligentWarning do
    begin
      if e.Message <> '*' then
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmMenuDX.btnPrevisualizarClick(Sender: TObject);
begin
  if VerificaPermisos('cmt_menu', [vpImprimir], EADMessage) then
    case opMain.ActivePageIndex of
      0: begin
        ArmarReporte;
        ClientModule1.ImprimeReporte('MenuPeriodico.fr3', frxMenuPeriodico);
      end;
      1: begin
           Try
             cdExplosion.DisableControls;
             ClientModule1.ImprimeReporte('ExplosionIngredientesDX.fr3', frxMenuPeriodico);
           Finally
             cdExplosion.EnableControls;
           End;
         end;
      2: begin
           Try
             cdExplosionReceta.DisableControls;
             ClientModule1.ImprimeReporte('ExplosionIngredientesRecetaDX.fr3', frxMenuPeriodico);
           Finally
             cdExplosionReceta.EnableControls;
           End;
         end;
    end;
end;

procedure TFrmMenuDX.btnSubAceptarClick(Sender: TObject);
begin
  Try
    if (lvPeriodosConsumo.Visible) and (lvPeriodosConsumo.ItemIndex < 0) then
      raise InteligentException.CreateByCode(24, ['Debe seleccionar un periodo de consumo para poder registrar en él la Receta seleccionada']);

    if lvPeriodosConsumo.Visible then
      IdPeriodoConsumo := Integer(lvPeriodosConsumo.Items[lvPeriodosConsumo.ItemIndex].Data);

    FormResultado := mrOk;
    Forma.Close;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmMenuDX.cbFechasChange(Sender: TObject);
var
  RecNo: LongInt;
begin
  if (cdRegistroConsumo.ProviderName <> '') and (cdRegistroConsumo.Active) then
  begin
    RecNo := Integer(cbFechas.Items.Objects[cbFechas.ItemIndex]);
    cdRegistroConsumo.RecNo := RecNo;
    ColumnaNombre := 'Dia' + IntToStr(RecNo);
    ImagenNombre := 'Imagen' + IntToStr(RecNo);
  end;
end;

procedure TFrmMenuDX.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
begin
  SetRegistry('\Ventanas', '\' + Self.Name + '\cxGrid1', 'Width', IntToStr(cxGrid1.Width));

  for i := 0 to tvDatos.ColumnCount -1 do
    SetRegistry('\Ventanas', '\' + Self.Name + '\tvDatos\Col' + IntToStr(i), 'Width', IntToStr(tvDatos.Columns[i].Width));

  for i := 0 to tvPartidas.ColumnCount -1 do
    SetRegistry('\Ventanas', '\' + Self.Name + '\tvPartidas\Col' + IntToStr(i), 'Width', IntToStr(tvPartidas.Columns[i].Width));

  for i := 0 to tvRecientes.ColumnCount -1 do
    SetRegistry('\Ventanas', '\' + Self.Name + '\tvRecientes\Col' + IntToStr(i), 'Width', IntToStr(tvRecientes.Columns[i].Width));

  for i := 0 to tvBarras.ColumnCount -1 do
    SetRegistry('\Ventanas', '\' + Self.Name + '\tvBarras\Col' + IntToStr(i), 'Width', IntToStr(tvBarras.Columns[i].Width));

  for i := 0 to tvConsumibles.ColumnCount -1 do
    SetRegistry('\Ventanas', '\' + Self.Name + '\tvConsumibles\Col' + IntToStr(i), 'Width', IntToStr(tvConsumibles.Columns[i].Width));

  EliminarConjunto([cdMenu, cdMenuDatosListado, cdReceta, cdRecetasRecientes, cdConsumibles, cdRecetaImagen, cdBarra, cdRegistroConsumo, cdRegistroConsumoInsumo, cdBorrador, cdExplosion, cdExplosionReceta, cdRenglonesMenu, cdContrato]);
  Action := caFree;
end;

procedure TFrmMenuDX.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if CambiosRealizados then
  begin
    case InteliDialog.ShowModal('Cerrar ventana', 'Exiten cambios realizados que no han sido grabados, si cierra la ventana dichos cambios se perderán' + #10 + #10 + '¿Desea grabar estos cambios antes de cerrar la ventana?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
      mrYes: begin
               ConcretarTransaccion;
               CanClose := True;
             end;
      mrNo: begin
              CancelarTransaccion;
              CanClose := True;
            end;
      mrCancel: CanClose := False;
    end;
  end
  else
  begin
    CancelarTransaccion;
    CanClose := True;
  end;
end;

procedure TFrmMenuDX.FormShow(Sender: TObject);
var
  Cursor: TCursor;
  Periodo: TFecha;
  Item: TListItem;
  Labelx: TJvLabel;
  i: Integer;
  myFecha: TDate;
begin
  IniciarTransaccion;
  PedidoBorrado := False;
  CambiosRealizados := False;
  NeedRefresh1 := True;
  NeedRefresh2 := True;
  opMain.ActivePageIndex := 0;
  btnModComen.Visible := True;
  cdEncabMenu.CreateDataSet;
  Panel3Height := Panel3.Height;

  Try
    cxGrid1.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\cxGrid1', 'Width'));
  Except
    ;
  End;

  for i := 0 to tvDatos.ColumnCount -1 do
    Try
      tvDatos.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\tvDatos\Col' + IntToStr(i), 'Width'));
    Except
      ;
    End;

  for i := 0 to tvPartidas.ColumnCount -1 do
    Try
      tvPartidas.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\tvPartidas\Col' + IntToStr(i), 'Width'));
    Except
      ;
    End;

  for i := 0 to tvRecientes.ColumnCount -1 do
    Try
      tvRecientes.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\tvRecientes\Col' + IntToStr(i), 'Width'));
    Except
      ;
    End;

  for i := 0 to tvBarras.ColumnCount -1 do
    Try
      tvBarras.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\tvBarras\Col' + IntToStr(i), 'Width'));
    Except
      ;
    End;

  for i := 0 to tvConsumibles.ColumnCount -1 do
    Try
      tvConsumibles.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\tvConsumibles\Col' + IntToStr(i), 'Width'));
    Except
      ;
    End;

  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      VerificaPermisos('cmt_menu', [vpLeer], EADError);

      Try
        if Not CrearConjunto(cdcmt_Configuracion, 'cmt_periodoconsumo', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Periodos de Consumo']);

        cdcmt_Configuracion.Open;

        lvPeriodosConsumo.Items.Clear;
        while Not cdcmt_Configuracion.Eof do
        begin
          lvPeriodosConsumo.AddItem(cdcmt_Configuracion.FieldByName('TituloPeriodoConsumo').AsString, TObject(cdcmt_Configuracion.FieldByName('IdPeriodoConsumo').AsInteger));

          cdcmt_Configuracion.Next;
        end;
      Finally
        if cdcmt_Configuracion.ProviderName <> '' then
          cdcmt_Configuracion.Close;
        EliminarConjunto(cdcmt_Configuracion);
        cdcmt_Configuracion.ProviderName := '';
      End;

      // Abrir los datos de configuración
      if not CrearConjunto(cdcmt_Configuracion, 'cmt_configuracion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Configuración']);

      Try
        cdcmt_Configuracion.Open;

        if cdcmt_COnfiguracion.RecordCount = 0 then
          raise InteligentException.CreateByCode(22, ['Configuración de Comisaria']);

        VerificaDataSetEmbarcacion; // Verificar si es necesario crear el conjunto de datos de las embarcaciones
        dsEmbarcacion.DataSet.Open;
        if dsEmbarcacion.DataSet.RecordCount = 0 then
          raise InteligentException.CreateByCode(22, ['Localidades']);
        
        Application.CreateForm(TFrmSelPeriodoMenu, FrmSelPeriodoMenu);
        FrmSelPeriodoMenu.dsConfiguracion.DataSet := cdcmt_Configuracion;
        If FrmSelPeriodoMenu.ShowModal <> mrOk Then
          raise InteligentWarning.Create('*');

        // Obtener los datos seleccionados
        Periodo := TFecha(FrmSelPeriodoMenu.lvPeriodos.Items[FrmSelPeriodoMenu.lvPeriodos.ItemIndex].Data);

        // Crear los conjuntos de datos necesarios
        if Not CrearConjunto(cdMenu, 'cmt_menu', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Menú Periódico']);

        if Not CargarDatosFiltrados(cdMenu, 'IdEmbarcacion,Desde,Hasta', [Periodo.IdEmbarcacion, ClientModule1.DateToStrSQL(Periodo.Fecha), ClientModule1.DateToStrSQL(Periodo.FechaFinal)]) then
          raise InteligentException.CreateByCode(16, ['Menú Periódico']);

        if Not CrearConjunto(cdExplosion, 'cmt_explosion', ccSelect) then
          raise InteligentException.CreateByCode(5, ['Explosión de Ingredientes']);

        if Not CrearConjunto(cdExplosionReceta, 'cmt_explosion', ccSelect) then
          raise InteligentException.CreateByCode(5, ['Explosión de Ingredientes por Receta']);

        if Not CrearConjunto(cdMenuDatosListado, 'cmt_menudatos_listado', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Recetas en el Periodo']);

        if Not CrearConjunto(cdReceta, 'cmt_receta', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Recetas']);

        if Not CargarDatosFiltrados(cdReceta, 'Tipo', ['Receta']) then
          raise InteligentException.CreateByCode(6, ['Recetas', 'Receta', 'Tipo']);

        if Not CrearConjunto(cdRecetasRecientes, 'cmt_recetasrecientes', ccSelect) then
          raise InteligentExcePtion.CreateByCode(5, ['Recetas Recientes']);

        if Not CrearConjunto(cdRecetaImagen, 'cmt_receta_imagen', ccSelect) then
          raise InteligentException.CreateByCode(5, ['Imagenes de Recetas']);

        if Not CrearConjunto(cdBarra, 'cmt_receta', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Barras']);

        if Not CargarDatosFiltrados(cdBarra, 'Tipo', ['Barra']) then
          raise InteligentException.CreateByCode(6, ['Barras', 'Barra', 'Tipo']);

        if Not CargarDatosFiltrados(cdReceta, 'OrdenCodigo', ['No']) then
          raise InteligentException.CreateByCode(16, ['Recetas']);

        if Not CrearConjunto(cdContrato, 'cmt_contrato', ccUpdate) then
          raise InteligentException.CreateByCode(16, ['Contratos']);

        // Verificar si existe un contrato para este barco en las fechas indicadas
        if Not CargarDatosFiltrados(cdContrato, 'IdEmbarcacion,FechaI,FechaF', [Periodo.IdEmbarcacion, ClientModule1.DateToStrSQL(Periodo.Fecha), ClientModule1.DateToStrSQL(Periodo.FechaFinal)]) then
          raise InteligentException.CreateByCode(6, ['Contratos', Periodo.IdEmbarcacion, 'Id. Embarcacion']);

        cdContrato.Open;
        cdReceta.Open;
        cdRecetasRecientes.Open;
        cdBarra.Open;

        if Not CrearConjunto(cdRegistroConsumo, 'cmt_registroconsumo', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Registro de Consumo']);

        if Not CrearConjunto(cdRegistroConsumoInsumo, 'cmt_registroconsumodatos', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Platillos del Registro de Consumo']);

        if Not CargarDatosFiltrados(cdRegistroConsumo, 'IdEmbarcacion,FechaI,FechaF', [Periodo.IdEmbarcacion, ClientModule1.DateToStrSQL(Periodo.Fecha), ClientModule1.DateToStrSQL(Periodo.FechaFinal)]) then
          raise InteligentException.CreateByCode(16, ['Registros de Consumo']);

        cdRegistroConsumo.Open;

        // Llenar el grid de los comensales
        sgComensales.ColCount := 1 + Trunc(Periodo.FechaFinal - Periodo.Fecha);
        sgComensales.DefaultColWidth := 90;  // 90
        for i := 0 to Trunc(Periodo.FechaFinal - Periodo.Fecha) do
        begin
          myFecha := Periodo.Fecha + i;

          sgComensales.Cells[i, 0] := Copy(nDia[DayOfTheWeek(myFecha)], 1, 3) + ' ' + IntToStr(DayOfTheMonth(myFecha)) + ' ' + Copy(nMes[MonthOfTheYear(myFecha)], 1, 3) + ' ' + IntToStr(YearOf(myFecha));

          if cdRegistroConsumo.Locate('Fecha', ClientModule1.DatetoStrSql(myFecha), []) then
            sgComensales.Cells[i, 1] := cdRegistroConsumo.FieldByName('Personas').AsString
          else
            sgComensales.Cells[i, 1] := '';
        end;

        // Verificar si el menú del periodo seleccionado ya existe
        cdMenu.Open;
        if cdMenu.RecordCount = 1 then
        begin
          // Verificar si el menú está autorizado
          if AnsiCompareText(cdMenu.FieldByName('Estado').AsString, 'Activo') = 0 then
          begin
            cdMenu.Edit;   // Editar el registro ya existente
            Caption := 'MENU ' + cdMenu.FieldByName('CodigoMenu').AsString + ' DEL ' + cdMenu.FieldByName('Desde').AsString + ' AL ' + cdMenu.FieldByName('Hasta').AsString;
          end
          else
            Caption := 'MENU ' + cdMenu.FieldByName('CodigoMenu').AsString + ' DEL ' + cdMenu.FieldByName('Desde').AsString + ' AL ' + cdMenu.FieldByName('Hasta').AsString + '[AUTORIZADO]';

          Estado := cdMenu.State;   // dsEdit o dsBrowse
        end
        else
        begin
          // Si es un periodo nuevo, verificar si este wey tiene permiso para agregar registros
          VerificaPermisos('cmt_menu', [vpInsertar], EADError);

          Caption := 'CAPTURA DATOS DE NUEVO MENÚ DEL ' + cdMenu.FieldByName('Desde').AsString + ' AL ' + cdMenu.FieldByName('Hasta').AsString;
          Estado := dsInsert;

          // Verificar si existe un contrato para esta embarcacion
          if cdContrato.RecordCount = 0 then
            InteliDialog.ShowModal('No existe contrato', 'No existe un contrato para la Ubicación ' + dsEmbarcacion.DataSet.FieldByname('NombreEmbarcacion').AsString + ' para el periodo seleccionado (' + DateToStr(Periodo.Fecha) + ' - ' + DateToStr(Periodo.FechaFinal) + ')' + #10 + #10 + 'Los avisos de cantidades de personal no estarán en funcionamiento para este menú.', mtInformation, [mbOk], 0)
          else
            // Preguntar si desea poner los datos por default
            if InteliDialog.ShowModal('Crear Menú Periódico', '¿Desea asignar los valores por default del personal diario?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              for i := 0 to sgComensales.ColCount -1 do
                sgComensales.Cells[i, 1] := cdContrato.FieldByName('Personal').AsString;

          // Generar el registro de menú
          cdMenu.Append;
          cdMenu.FieldByName('IdMenu').AsInteger := 0;
          cdMenu.FieldByName('CodigoMenu').AsString := '';
          cdMenu.FieldByName('Comentarios').AsString := '';
          cdMenu.FieldByName('Desde').AsDateTime := Periodo.Fecha;
          cdMenu.FieldByName('Hasta').AsDateTime := Periodo.FechaFinal;
          cdMenu.FieldByName('Estado').AsString := 'Activo';
          cdMenu.FieldByName('IdEmbarcacion').AsInteger := dsEmbarcacion.DataSet.FieldByName('IdEmbarcacion').AsInteger;
          cdMenu.Post;
          cdMenu.ApplyUpdates(-1);
          cdMenu.Refresh;
          cdMenu.Edit;

          MostrarComensales;
        end;

        Caption := Caption + ' - ' + cdMenu.FieldByName('Estado').AsString;

        // Abrir la explosión de insumos
        if not CargarDatosFiltrados(cdExplosion, 'IdMenu', [cdMenu.FieldByName('IdMenu').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['Explosión de Ingredientes', cdMenu.FieldByName('IdMenu').AsInteger, 'Id. Menu']);

        //cdExplosion.Open;

        // Abrir la explosión de insumos por recetas
        if not CargarDatosFiltrados(cdExplosionReceta, 'IdMenu,CorteReceta', [cdMenu.FieldByName('IdMenu').AsInteger, 'Si']) then
          raise InteligentException.CreateByCode(6, ['Explosión de Ingredientes por Receta', cdMenu.FieldByName('IdMenu').AsInteger, 'Id. Menu']);

        //cdExplosionReceta.Open;

        if Not CargarDatosFiltrados(cdMenuDatosListado, 'IdMenu', [cdMenu.FieldByName('IdMenu').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['Recetas por Menú', cdMenu.FieldByName('IdMenu').AsInteger, 'Id. Menu']);

        cdMenuDatosListado.Open;

        cxGrid1.Visible := Estado in [dsEdit, dsInsert];
        Splitter1.Visible := Estado in [dsEdit, dsInsert];
        btnModComen.Visible := Estado in [dsEdit, dsInsert];
        btnGenerarPedido.Visible := Not btnModComen.Visible;
        if cdMenu.FieldByName('IdInsumoPedido').IsNull then
          btnGenerarPedido.Caption := '&Generar Pedido'
        else
          btnGenerarPedido.Caption := '&Abrir Pedido';

        // Armar el menú
        ArmarMenu(Periodo.Fecha);
      Finally
        cdcmt_Configuracion.Close;
        EliminarConjunto(cdcmt_Configuracion);
      End;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:InteligentWarning do
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);

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

procedure TFrmMenuDX.frxMenuPeriodicoDblClickObject(Sender: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
var
  IdReceta: LongInt;
  Fecha: TDate;
  SubCad, TituloPeriodo: String;
  IdInsumo: LongInt;
  i,x: Integer;
  detForma: TForm;
  OldWidth, OldHeight: Integer;
  OldPos: LongInt;
  Punto: TPoint;
begin
  if Sender.Name = 'Cantidad' then
  begin
    i := 0;
    x := 0;
    SubCad := '';
    while i < Length(Sender.TagStr) do
    begin
      Inc(i);

      if Sender.TagStr[i] = ';' then
      begin
        case x of
          0: IdReceta := StrToInt(SubCad);
          1: Fecha := EncodeDate(StrToInt(Copy(SubCad, 7, 4)), StrToInt(Copy(SubCad, 4, 2)), StrToInt(Copy(SubCad, 1, 2)));
          2: begin
               IdInsumo := StrToInt(SubCad);
               TituloPeriodo := Copy(Sender.TagStr, i +1, Length(Sender.TagStr));
               i := Length(Sender.TagStr);
             end;
        end;

        Inc(x);
        SubCad := '';
      end
      else
        SubCad := SubCad + Sender.TagStr[i];
    end;

    if cdExplosionReceta.Locate('IdReceta;IdInsumo;TituloPeriodoConsumo;Fecha', VarArrayOf([IdReceta, IdInsumo, TituloPeriodo, ClientModule1.DatetoStrSql(Fecha)]), []) then
    begin
      Try
        OldWidth := pnlDetalle.Width;
        OldHeight := pnlDetalle.Height;
        OldPos := cdExplosionReceta.RecNo;

        DetForma := TForm.Create(Self);
        DetForma.Position := poDesigned;
        pnlDetalle.Parent := DetForma;
        pnlDetalle.Visible := True;
        pnlDetalle.Align := alClient;
        DetForma.Height := pnlDetalle.Height + (GetSystemMetrics(SM_CXBORDER) * 2) + GetSystemMetrics(SM_CYCAPTION);
        DetForma.Width := pnlDetalle.Width;

        // Realizar los cálculos
        cpReceta.Text := FloatToStr(cdExplosionReceta.FieldByName('CantidadxReceta').AsFloat / cdExplosionReceta.FieldByName('PersonasxReceta').AsInteger);
        ciDia.Text := FloatToStr(StrToFloat(cpReceta.Text) * cdExplosionReceta.FieldByName('PersonasxDia').AsInteger);
        cdExplosionReceta.EnableControls;

        DetForma.Caption := cdExplosionReceta.FieldByName('NombreInsumo').AsString;
        Punto := Mouse.CursorPos;
        DetForma.Left := Punto.X - (DetForma.Width Div 2);
        DetForma.Top := Punto.Y;
        DetForma.ShowModal;
      Finally
        cdExplosionReceta.RecNo := OldPos;
        pnlDetalle.Parent := FrmMenuDX;
        pnlDetalle.Width := OldWidth;
        pnlDetalle.Height := OldHeight;
        pnlDetalle.Visible := False;
        pnlDetalle.Align := alNone;
        DetForma.Free;
      End;
    end;
  end;
end;

procedure TFrmMenuDX.imgQuitar3DragDrop(Sender, Source: TObject; X, Y: Integer);
var
  Rec, Registro: TcxCustomGridRecord;
  iColumna: Integer;
  pIdPeriodoConsumo,
  pIdMenuDatos: LongInt;
  CodigoReceta: String;
  DataSet: TDataSet;
begin
  Rec := tvDatos.Controller.SelectedRecords[0];
  Registro := Rec.ViewData.GetRecordByRecordIndex(Rec.RecordIndex);

  try
    pIdPeriodoConsumo := StrToInt(Copy(Registro.Values[1], 1, Pos(':', Registro.Values[1]) -1));
  Except
    pIdPeriodoConsumo := 0;
  end;
  pIdMenuDatos := StrToInt(Copy(Registro.Values[1], Pos(':', Registro.Values[1]) +1, Length(Registro.Values[1])));

  iColumna := StrToInt(Copy(ColumnaNombre, 4, Length(ColumnaNombre)));
  CodigoReceta := Registro.Values[iColumna +1];
  CodigoReceta := Copy(CodigoReceta, 1, Pos(Separador, CodigoReceta) -1);
  if Copy(CodigoReceta, 1, 3) = '(b)' then
    CodigoReceta := Copy(CodigoReceta, 5, Length(CodigoReceta));
  if Copy(CodigoReceta, 1, 3) = '(c)' then
    CodigoReceta := Copy(CodigoReceta, 5, Length(CodigoReceta));

  // Eliminar el registro
  if cdBorrador.ProviderName = '' then
  begin
    if Not CrearConjunto(cdBorrador, 'cmt_registroconsumodatos', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Datos del Registro de Consumo']);
  end;

  if Not CargarDatosFiltrados(cdBorrador, 'IdPeriodoConsumo,IdRegistroConsumo,CodigoReceta', [pIdPeriodoConsumo, cdRegistroConsumo.FieldByName('IdRegistroConsumo').AsInteger, CodigoReceta]) then
    raise InteligentException.CreateByCode(6, ['Datos del Registro de Consumo', '*', '*']);

  if cdBorrador.Active then
    cdBorrador.Refresh
  else
    cdBorrador.Open;

  if cdBorrador.RecordCount = 1 then
  begin
    cdBorrador.Delete;
    cdBorrador.ApplyUpdates(-1);
    CambiosRealizados := True;
  end;

  DataSet := TcxGridDBDataController(tvDatos.DataController).DataSet;
  DataSet.Edit;
  DataSet.FieldByName(ColumnaNombre).AsString := '';
  DataSet.FieldByName(ImagenNombre).Clear;
  DataSet.Post;
end;

procedure TFrmMenuDX.imgQuitar3DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  if (Sender is TImage) and (Source is TcxDragControlObject) then
    with TcxDragControlObject(Source) do
      if (Control is TcxGridSite) or (Control is TcxGrid) then
      begin
        imgQuitar3.Picture := imgQuitar2.Picture;
        Accept := True;
      end;
end;

procedure TFrmMenuDX.MenuItemClick(Sender: TObject);
begin
  SelIdPeriodoConsumo := TMenuItem(Sender).Tag;
end;

procedure TFrmMenuDX.sgComensalesExitCell(Sender: TJvStringGrid; AColumn,
  ARow: Integer; const EditText: string);
var
  Valor: Integer;
begin
  // Verificar si el texto es numérico
  Try
    Valor := StrToInt(EditText);
    if Valor < 0 then
      Valor := 0;
  Except
    Valor := 0;
  End;

  sgComensales.Cells[AColumn, ARow] := IntToStr(Valor);
end;

procedure TFrmMenuDX.tvConsumiblesDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  imgQuitar3.Picture := imgQuitar1.Picture;
end;

procedure TFrmMenuDX.tvConsumiblesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if cdConsumibles.ProviderName <> '' then
    if cdConsumibles.Active then
      cdConsumibles.Refresh
    else
      cdConsumibles.Open;
end;

procedure TFrmMenuDX.tvConsumiblesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if TcxGridSite (Sender).ViewInfo.GetHitTest(X, Y).HitTestCode in [htCell, htRecord] then
    TcxGridSite(Sender).BeginDrag(False);
end;

procedure TFrmMenuDX.tvDatosCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  // Pintar las barras de alimentos
  if Copy(AViewInfo.Text, 1, 3) = '(b)' then
  begin
    ACanvas.Font.Color := clYellow;
    ACanvas.Brush.Color := clHotLight;
  end;

  // Pintar los paquetes de consumibles diarios
  if Copy(AViewInfo.Text, 1, 3) = '(c)' then
  begin
    ACanvas.Font.Color := clWhite;
    ACanvas.Brush.Color := clTeal;
  end;
end;

procedure TFrmMenuDX.tvDatosDblClick(Sender: TObject);
var
  Ruta: String;
  DataSetItem: TfrxDataSetItem;
begin
  TcxGridSite(Sender).EndDrag(False);
  {
  //Try
    //RepReceta.
    Ruta := '';
    ClientModule1.ImprimeReporte('Recetas.fr3', RepReceta, Ruta);   // Mostrar la receta completa

    DataSetItem := RepReporte.DataSets.Items[1];
    DataSetItem.DataSet := FrmMenuDX.fdsReceta;
    ShowMessage(DataSetItem.DataSetName);


    ShowMessage(Ruta);
  {Except
    ;
  End;}
end;

procedure TFrmMenuDX.tvDatosDragDrop(Sender, Source: TObject; X, Y: Integer);
const
  ListaVistas: Array[0..3] of String = ('cdReceta', 'cdRecetasRecientes', 'cdBarra', 'cdConsumibles');
var
  Control: TControl;
  DataSet: TDataSet;
  i: Integer;
  Selec : Integer;
  Nodo: TListItem;
  Elemento: TListView;
  LocCursor: TCursor;
  rcDatos: TRegistroConsumoDatos;
  ListaDatos: TStringList;

  Site: TcxGridSite;
  HitTest: TcxCustomGridHitTest;
  Item: TcxCustomGridTableItem;
  Rec: TcxCustomGridRecord;
  AColumn: TcxGridDBColumn;
  Registro: tcxCustomGridRecord;
  TituloPeriodoConsumo: String;
  Crear: Boolean;
  OldIdPeriodoConsumo: LongInt;
  CurRecord: LongInt;
  OrHeight, OrWidth: Integer;
  Tabla: TcxGridDBTableView;

  IdReceta: Integer;
  NombreReceta: String;
  Tipo: String;
  ResultB: Boolean;

function IndexOf(Arreglo: Array Of String; Buscar: String): Integer;
var
  Resultado, i: Integer;
begin
  Resultado := 0;

  i := low(Arreglo);
  Resultado := -1;
  while i <= High(Arreglo) do
  begin
    if AnsiCompareText(Arreglo[i], Buscar) = 0 then
    begin
      Resultado := i;
      i := High(Arreglo);
    end;

    Inc(i);
  end;

  Result := Resultado;
end;

begin
  Control := TcxDragControlObject(Source).Control;
  if (Control is TcxGridSite) then
  begin
    DataSet := TcxGridDBDataController(TcxGridSite(Control).GridView.DataController).DataSet;

    if CompareText(DataSet.Name, 'cdMenuDatos') <> 0 then
    Try
      Try
        Screen.Cursor := crAppStart;
        ListaDatos := TStringList.Create;
        ListaDatos.Clear;
        i := 0;

        // Identificar de donde viene el drag (Recetas o recetas recientes)'
        case IndexOf(ListaVistas, DataSet.Name) of
          0: Tabla := tvPartidas;
          1: Tabla := tvRecientes;
          2: Tabla := tvBarras;
          3: Tabla := tvConsumibles;
        end;

        Selec := Tabla.Controller.SelectedRowCount;

        if Selec <> 0 then
        begin
          // Permitir al usuario seleccionar en que periodo de consumo se dejó el registro
          Site := Sender as TcxGridSite;
          HitTest := Site.GridView.ViewInfo.GetHitTest(X, Y);

          IdPeriodoConsumo := -1;
          if HitTest is TcxGridRecordCellHitTest then
          begin
            Item := TcxGridRecordCellHitTest(HitTest).Item;
            Rec := TcxGridRecordCellHitTest(HitTest).GridRecord;
            AColumn := TcxGridDBColumn(Item);

            if cdRegistroConsumo.RecNo < AColumn.Index then
              cdRegistroConsumo.RecNo := AColumn.Index -1;

            Registro := Rec.ViewData.GetRecordByRecordIndex(Rec.RecordIndex);
            if cdMenuDatos.Locate('Ren', Registro.Values[1], []) and (Tabla <> tvConsumibles) then
              IdPeriodoConsumo := cdMenuDatos.FieldByName('IdPeriodoConsumo').AsInteger;

            if IdPeriodoConsumo > 0 then
            begin
              for i := 0 to lvPeriodosConsumo.Items.Count -1 do
                if Integer(lvPeriodosConsumo.Items[i].Data) = IdPeriodoConsumo then
                  lvPeriodosConsumo.ItemIndex := i;
            end;

            // Localizar el registroconsumo adecuado
            cbFechas.ItemIndex := AColumn.Index -2;
            cbFechas.OnChange(cbFechas);
          end
          else
          begin
            lvPeriodosConsumo.ItemIndex := 0;     // Primer periodo de consumo
            cbFechas.ItemIndex := 0;              // Primer día del periodo
            cbFechas.OnChange(cbFechas);
          end;

          OrHeight := Panel3.Height;
          OrWidth := Panel3.Width;
          Panel3.Height := Panel3Height;
          Try
            Forma := TForm.Create(Self);
            Forma.Width := Panel3.Width;
            Forma.Height := Panel3.Height;
            Forma.OnClose := SubFormClose;
            //Forma.Caption := 'Agregar Receta';
            Panel3.Parent := Forma;
            Panel3.Visible := True;
            Panel3.Align := alClient;
            FormResultado := mrCancel;

            // Poner el Caption adecuado en el formulario de selección de Periodo
            case IndexOf(ListaVistas, DataSet.Name) of
              0: Forma.Caption := 'Agregar Receta';
              1: Forma.Caption := 'Agregar Receta';
              2: Forma.Caption := 'Agregar Barra de Alimentos';
              3: begin
                   Forma.Caption := 'Agregar Paquete de Consumibles';
                   Forma.Height := Panel3Height + Panel4.Height - lvPeriodosConsumo.Height;
                 end;
            end;

            // Verificar si se está moviendo un paquete de Consumibles, si es así el registro deberá tener
            // un valor Null en el campo IdPeriodoConsumo y el usuario no deberá poder seleccionar otro valor
            lvPeriodosConsumo.Visible := CompareText(DataSet.Name, 'cdConsumibles') <> 0;

            if Forma.ShowModal = mrCancel Then
              raise InteligentWarning.Create('Error Message');

            if lvPeriodosConsumo.Visible then
              TituloPeriodoConsumo := lvPeriodosConsumo.Items[lvPeriodosConsumo.ItemIndex].Caption
            else
              TituloPeriodoConsumo := '';
          Finally
            Panel3.Align := alNone;
            Panel3.Visible := False;
            Panel3.Parent := Self;
            Panel3.Height := OrHeight;
            Panel3.Width := OrWidth;
            Forma.Free;
          End;

          i := 0;
          while i < Tabla.Controller.SelectedRowCount do
          begin
            // Localizar el registro para obtener sus datos generales
            if ((CompareText(DataSet.Name, 'cdReceta') = 0) and (cdReceta.Locate('CodigoReceta', Tabla.Controller.SelectedRows[i].Values[0], []))) or
               ((CompareText(DataSet.Name, 'cdRecetasRecientes') = 0) and (cdRecetasRecientes.Locate('CodigoReceta', Tabla.Controller.SelectedRows[i].Values[0], []))) or
               ((CompareText(DataSet.Name, 'cdConsumibles') = 0) and (cdConsumibles.Locate('CodigoReceta', Tabla.Controller.SelectedRows[i].Values[0], []))) or
               ((CompareText(DataSet.Name, 'cdBarra') = 0) and (cdBarra.Locate('CodigoReceta', Tabla.Controller.SelectedRows[i].Values[0], []))) then
            begin
              LocCursor := Screen.Cursor;
              if Not cdRegistroConsumoInsumo.Active then
              begin
                if Not CargarDatosFiltrados(cdRegistroConsumoInsumo, 'IdRegistroConsumo', [-9]) then
                  raise InteligentException.CreateByCode(16, ['Registros de Consumo']);

                cdRegistroConsumoInsumo.Open;
              end;

              case IndexOf(ListaVistas, DataSet.Name) of
                0: begin
                     IdReceta := cdReceta.FieldByName('IdReceta').AsInteger;
                     NombreReceta := cdReceta.FieldByName('NombreReceta').AsString;
                     Tipo := cdReceta.FieldByName('Tipo').AsString;
                   end;
                1: begin
                     IdReceta := cdRecetasRecientes.FieldByName('IdReceta').AsInteger;
                     NombreReceta := cdRecetasRecientes.FieldByName('NombreReceta').AsString;
                     Tipo := cdRecetasRecientes.FieldByName('Tipo').AsString;
                   end;
                2: begin
                     IdReceta := cdBarra.FieldByName('IdReceta').AsInteger;
                     NombreReceta := cdBarra.FieldByName('NombreReceta').AsString;
                     Tipo := cdBarra.FieldByName('Tipo').AsString;
                   end;
                3: begin
                     IdReceta := cdConsumibles.FieldByName('IdReceta').AsInteger;
                     NombreReceta := cdConsumibles.FieldByName('NombreReceta').AsString;
                     Tipo := cdConsumibles.FieldByName('Tipo').AsString;
                   end;
              end;

              // Verificar si el registro ya existe
              if IdPeriodoConsumo > -1 then
                ResultB := cdMenuDatosListado.Locate('IdRegistroConsumo;IdPeriodoConsumo;IdReceta', VarArrayOf([cdRegistroConsumo.FieldByName('IdRegistroConsumo').AsInteger, IdPeriodoConsumo, IdReceta]), [])
              else
                ResultB := cdMenuDatosListado.Locate('IdRegistroConsumo;IdReceta', VarArrayOf([cdRegistroConsumo.FieldByName('IdRegistroConsumo').AsInteger, IdReceta]), []);

              if ResultB then
                raise InteligentException.CreateByCode(24, ['La siguiente receta ya ha sido asignada al Periodo de Consumo ' + TituloPeriodoConsumo + ':' + #10 + #10 + NombreReceta + #10 + #10 +
                                                            'No es posible registrar dos o más veces la misma receta en un mismo Periodo de Consumo, verifique esto e intente de nuevo.']);

              // Verificar si la columna seleccionada tiene un espacio para registrar la nueva receta
              Crear := True;
              CurRecord := cdMenuDatos.RecNo;
              if ((IdPeriodoConsumo = -1) and cdMenuDatos.Locate('IdPeriodoConsumo', Null, [])) or (cdMenuDatos.Locate('IdPeriodoConsumo', IdPeriodoConsumo, [])) then
              begin
                // Si el registro existe se deberá localizar la primer celda vacía de dicha columna
                Try
                  OldIdPeriodoConsumo := IdPeriodoConsumo;
                  while (Not cdMenuDatos.Eof) and (Crear) do
                  begin
                    if (OldIdPeriodoConsumo = cdMenuDatos.FieldByName('IdPeriodoConsumo').AsInteger) or ((IdPeriodoConsumo = -1) and cdMenuDatos.FieldByName('IdPeriodoConsumo').IsNull) then
                      if Assigned(AColumn) then
                        Crear := cdMenuDatos.FieldByName(AColumn.DataBinding.FieldName).AsString <> ''
                      else
                        Crear := cdMenuDatos.FieldByName('Dia' + IntToStr(cbFechas.ItemIndex +1)).AsString <> '';

                    if Crear then
                      cdMenuDatos.Next;
                  end;
                Finally
                  if Crear then
                    cdMenuDatos.RecNo := CurRecord;
                End;
              end;

              // Crear el conjunto de datos

              if Crear then
              begin
                cdMenuDatos.Append;
                cdMenuDatos.FieldByName('Ren').AsString := IntToStr(IdPeriodoConsumo) + ':' + IntToStr(IdReceta);
                cdMenuDatos.FieldByName('IdPeriodoConsumo').AsInteger := IdPeriodoConsumo;
                cdMenuDatos.FieldByName('TituloPeriodoConsumo').AsString := TituloPeriodoConsumo;

                if IdPeriodoConsumo = -1 then
                  cdMenuDatos.FieldByName('PeriodoConsumo').AsString := 'Paquete Consumibles'
                else
                  cdMenuDatos.FieldByName('PeriodoConsumo').AsString := RightStr('0000' + IntToStr(IdPeriodoConsumo), 5) + '-' + TituloPeriodoConsumo;
              end
              else
                cdMenuDatos.Edit;

              case IndexOf(ListaVistas, DataSet.Name) of
                0: cdMenuDatos.FieldByName(ColumnaNombre).AsString := cdReceta.FieldByName('CodigoReceta').AsString + Separador + cdReceta.FieldByName('NombreReceta').AsString + #10 + #10 + cdReceta.FieldByName('DescripcionReceta').AsString;
                1: cdMenuDatos.FieldByName(ColumnaNombre).AsString := cdRecetasRecientes.FieldByName('CodigoReceta').AsString + Separador + cdRecetasRecientes.FieldByName('NombreReceta').AsString + #10 + #10 + cdRecetasRecientes.FieldByName('DescripcionReceta').AsString;
                2: cdMenuDatos.FieldByName(ColumnaNombre).AsString := '(b) ' + cdBarra.FieldByName('CodigoReceta').AsString + Separador + cdBarra.FieldByName('NombreReceta').AsString + #10 + #10 + cdBarra.FieldByName('DescripcionReceta').AsString;
                3: cdMenuDatos.FieldByName(ColumnaNombre).AsString := '(c) ' + cdConsumibles.FieldByName('CodigoReceta').AsString + Separador + cdConsumibles.FieldByName('NombreReceta').AsString + #10 + #10 + cdConsumibles.FieldByName('DescripcionReceta').AsString;
              end;

              {if Tipo = 'Barra' then
                cdMenuDatos.FieldByName(ColumnaNombre).AsString := '*' + cdBarra.FieldByName('CodigoReceta').AsString + Separador + cdBarra.FieldByName('NombreReceta').AsString + #10 + #10 + cdBarra.FieldByName('DescripcionReceta').AsString
              else
                cdMenuDatos.FieldByName(ColumnaNombre).AsString := cdReceta.FieldByName('CodigoReceta').AsString + Separador + cdReceta.FieldByName('NombreReceta').AsString + #10 + #10 + cdReceta.FieldByName('DescripcionReceta').AsString;}

              if CargarDatosFiltrados(cdRecetaImagen, 'IdReceta', [IdReceta]) then
              begin
                if cdRecetaImagen.Active then
                  cdRecetaImagen.Refresh
                else
                  cdRecetaImagen.Open;

                if cdRecetaImagen.RecordCount = 1 then
                  cdMenuDatos.FieldByName(ImagenNombre).AsBytes := cdRecetaImagen.FieldByName('Imagen').AsBytes;
              end;

              cdMenuDatos.Post;

              // Grabar los datos en la tabla de consumos
              cdRegistroConsumoInsumo.Append;
              cdRegistroConsumoInsumo.FieldByName('IdRegistroConsumoDatos').AsInteger := 0;
              cdRegistroConsumoInsumo.FieldByName('IdRegistroConsumo').AsInteger := cdRegistroConsumo.FieldByName('IdRegistroConsumo').AsInteger;
              if IdPeriodoConsumo > -1 then
                cdRegistroConsumoInsumo.FieldByName('IdPeriodoConsumo').AsInteger := IdPeriodoConsumo;
              cdRegistroConsumoInsumo.FieldByName('IdReceta').AsInteger := IdReceta;
              cdRegistroConsumoInsumo.FieldByName('Activo').AsString := 'Si';
              cdRegistroConsumoInsumo.Post;
              cdRegistroConsumoInsumo.ApplyUpdates(-1);
              CambiosRealizados := True;
(*
              rcDatos := TRegistroConsumoDatos.Create;
              rcDatos.IdRegistroConsumoDatos := UltimoId;
              rcDatos.IdReceta := cdReceta.FieldByName('IdReceta').AsInteger;

              ListaDatos.AddObject(IntToStr(i), rcDatos);
*)
            end;
            Inc(i);
          end;
          cdMenuDatosListado.Refresh;
        end;
      Finally
        Screen.Cursor := LocCursor;
        ListaDatos.Free;
        tvDatos.DataController.Groups.FullExpand;
      End;
    Except
      On e:InteligentWarning do
        ;

      On e:InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e:Exception do
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    End;
  end;
end;

procedure TFrmMenuDX.tvDatosDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  imgQuitar3.Picture := imgQuitar1.Picture;
  Accept := False;

  if (Sender is TcxGridSite) and (Source is TcxDragControlObject) then
    with TcxDragControlObject(Source) do
      if (Control is TcxGridSite) or (Control is TcxGrid) then
        Accept := True;
end;

procedure TFrmMenuDX.tvDatosEndDrag(Sender, Target: TObject; X, Y: Integer);
begin
  pnlQuitar.Visible := False;
end;

procedure TFrmMenuDX.tvDatosGroupRowCollapsed(Sender: TcxGridTableView;
  AGroup: TcxGridGroupRow);
begin
  AGroup.Expand(True);
end;

procedure TFrmMenuDX.tvDatosMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Site: TcxGridSite;
  HitTest: TcxCustomGridHitTest;
  Item: TcxCustomGridTableItem;
  Rec: TcxCustomGridRecord;
  AColumn: TcxGridDBColumn;
begin
  if (TcxGridSite(Sender).ViewInfo.GetHitTest(X, Y).HitTestCode in [htCell, htRecord]) and (Estado <> dsBrowse) then
  begin
    Pulsado := True;

    Site := Sender as TcxGridSite;
    HitTest := Site.GridView.ViewInfo.GetHitTest(X, Y);
    if HitTest is TcxGridRecordCellHitTest then
    begin
      Item := TcxGridRecordCellHitTest(HitTest).Item;
      Rec := TcxGridRecordCellHitTest(HitTest).GridRecord;
      AColumn := TcxGridDBColumn(Item);

      // Localizar el registroconsumo adecuado
      cbFechas.ItemIndex := AColumn.Index -2;
      cbFechas.OnChange(cbFechas);
    end;
  end;
end;

procedure TFrmMenuDX.tvDatosMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if (Pulsado) and (Not TcxGridSite(Sender).Dragging) then
    TcxGridSite(Sender).BeginDrag(False);
end;

procedure TFrmMenuDX.tvDatosMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Pulsado := False;
  //TcxGridSite(Sender).EndDrag(False);
end;

procedure TFrmMenuDX.tvDatosStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  pnlQuitar.Visible := True;
  imgQuitar3.Picture := imgQuitar1.Picture;
end;

procedure TFrmMenuDX.tvPartidasMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if TcxGridSite (Sender).ViewInfo.GetHitTest(X, Y).HitTestCode in [htCell, htRecord] then
    TcxGridSite(Sender).BeginDrag(False);
end;

procedure TFrmMenuDX.SubFormClose(Sender: TObject; var Action: TCloseAction);
begin
  Forma.ModalResult := FormResultado;
end;

procedure TFrmMenuDX.opConsumiblesShow(Sender: TObject);
begin
  // Verificar si ya se ha registrado los consumibles para este menú

end;

procedure TFrmMenuDX.opMainChange(Sender: TObject);
var
  myCursor: TCursor;
begin
  myCursor := Screen.Cursor;
  Try
    Screen.Cursor := crAppStart;
    btnModComen.Visible := (opMain.ActivePageIndex = 0) and (Estado in [dsEdit, dsInsert]);
    btnGenerarPedido.Visible := (opMain.ActivePageIndex = 0) and (Not (Estado in [dsEdit, dsInsert]));

    case opMain.ActivePageIndex of
      1: if NeedRefresh1 then
         begin
           NeedRefresh1 := False;
           if cdExplosion.Active then
             cdExplosion.Refresh
           else
             cdExplosion.Open;

           tvExplosion.DataController.Groups.FullExpand;
         end;
      2: if NeedRefresh2 then
         begin
           NeedRefresh2 := False;
           if cdExplosionReceta.Active then
             cdExplosionReceta.Refresh
           else
             cdExplosionReceta.Open;
         end;
    end;
  Finally
    Screen.Cursor := myCursor;
  End;
end;

procedure TFrmMenuDX.ArmarMenu(pFecha: TDate);
var
  Columna: tcxGridDBColumn;
  Cta: Word;
  OldId, RealId: LongInt;
  InRen, MaxRen, nRen, nCol: Integer;
  OldFecha: TDate;
  OldLlave: String;
  Forma: TForm;
  NeedUpdate: Boolean;
  mFecha: TDate;
  ConjuntoLlaves: TStringList;
  Cuentas: TStringList;

procedure CrearCampo(Nombre: String; Tipo: TFieldType);
begin
  With cdMenuDatos.FieldDefs.AddFieldDef do
  begin
    DataType := Tipo;
    Name := Nombre;
  end;
end;

procedure IncrementaProgress;
begin
  ProgressBar1.Position := ProgressBar1.Position +1;
  ProgressBar1.Repaint;
end;

begin
  Forma := TForm.Create(Self);
  Forma.BorderStyle := bsNone;
  Forma.Position := poScreenCenter;
  Forma.Width := ProgressBar1.Width + (GetSystemMetrics(SM_CXEDGE) * 2) + 2;
  ProgressBar1.Parent := Forma;
  ProgressBar1.Min := 0;
  ProgressBar1.Max := (((cdcmt_Configuracion.FieldByName('Semanas').AsInteger * 7) + cdMenuDatosListado.RecordCount) * 2);
  ProgressBar1.Position := 0;
  ProgressBar1.Top := 0;
  ProgressBar1.Left := 0;

  Try
    Forma.Show;

    // Armar el calendario de captura
    tvDatos.BeginUpdate;
    tvDatos.ClearItems;

    // Crear las columnas necesarias
    if cdMenuDatos.Active Then
      cdMenuDatos.Close
    else
    begin
      CrearCampo('Ren', ftString);
      CrearCampo('IdPeriodoConsumo', ftInteger);
      CrearCampo('TituloPeriodoConsumo', ftString);
      CrearCampo('PeriodoConsumo', ftString);

      for nCol := 1 to (cdcmt_Configuracion.FieldByName('Semanas').AsInteger * 7) do
      begin
        CrearCampo('Dia' + IntToStr(nCol), ftWideMemo);
        CrearCampo('Imagen' + IntToStr(nCol), ftBlob);
        CrearCampo('Id' + IntToStr(nCol), ftInteger);
        IncrementaProgress;
      end;

      cdMenuDatos.CreateDataSet;
      cdMenuDatos.Open;
    end;
    cdMenuDatos.EmptyDataSet;

    // Crear los encabezados
    Columna := tvDatos.CreateColumn;
    Columna.DataBinding.ValueTypeClass := TcxIntegerValueType;
    Columna.Caption := '';
    Columna.Name := 'PeriodoConsumo';
    Columna.DataBinding.FieldName := 'PeriodoConsumo';
    Columna.Width := 64;
    Columna.MinWidth := 64;
    Columna.GroupIndex := 0;
    Columna.Visible := False;

    Columna := tvDatos.CreateColumn;
    Columna.DataBinding.ValueTypeClass := TcxWideStringValueType;
    Columna.Caption := '';
    Columna.Name := 'Ren';
    Columna.DataBinding.FieldName := 'Ren';
    Columna.Visible := False;

    NeedUpdate := False;
    for Cta := 1 to (cdcmt_Configuracion.FieldByName('Semanas').AsInteger * 7) do
    begin
      Columna := tvDatos.CreateColumn;
      Columna.DataBinding.ValueTypeClass := TcxWideStringValueType;
      Columna.Caption := nDia[DayOfTheWeek(pFecha + Cta -1)] + ' ' + IntToStr(DayOfTheMonth(pFecha + Cta -1)) + ' de ' + nMes[MonthOfTheYear(pFecha + Cta -1)] + ' de ' + IntToStr(YearOf(pFecha + Cta -1)) + ' - Personas: ' + sgComensales.Cells[Cta -1, 1];
      Columna.Name := 'Dia' + IntToStr(Cta);
      Columna.DataBinding.FieldName := 'Dia' + IntToStr(Cta);
      Columna.Width := 300;
      Columna.MinWidth := 200;

      // Verificar si hacen falta registros de consumos
      if Not cdRegistroConsumo.Locate('Fecha', pFecha + Cta -1, []) then
      begin
        NeedUpdate := True;
        cdRegistroConsumo.Append;
        cdRegistroConsumo.FieldByName('IdRegistroConsumo').AsInteger := 0;
        cdRegistroConsumo.FieldByName('IdEmbarcacion').AsInteger := ClientModule1.cdEmbarcacion.FieldByName('IdEmbarcacion').AsInteger;
        cdRegistroConsumo.FieldByName('Fecha').AsDateTime := pFecha + Cta -1;
        try
          cdRegistroConsumo.FieldByName('Personas').AsInteger := StrToInt(sgComensales.Cells[Cta -1, 1]);
        Except
          cdRegistroConsumo.FieldByName('Personas').AsInteger := 0;
        end;
        cdRegistroConsumo.FieldByName('Estado').AsString := 'ABIERTO';
        cdRegistroConsumo.Post;
      end;

      IncrementaProgress;
    end;

    if NeedUpdate then
    begin
      try
        cdRegistroConsumo.ApplyUpdates(-1);
        cdRegistroConsumo.Refresh;
        CambiosRealizados := True;
      Except
        CambiosRealizados := False;
        raise;
      end;
    end;

    // Llenar el combo de las fechas
    cbFechas.Items.Clear;
    Try
      cdRegistroConsumo.First;
      while Not cdRegistroConsumo.Eof do
      begin
        mFecha := cdRegistroConsumo.FieldByName('Fecha').AsDateTime;
        cbFechas.Items.AddObject(nDia[DayOfTheWeek(mFecha)] + ' ' + IntToStr(DayOfTheMonth(mFecha)) + ' de ' + nMes[MonthOfTheYear(mFecha)] + ' de ' + IntToStr(YearOf(mFecha)), TObject(cdRegistroConsumo.RecNo));

        cdRegistroConsumo.Next;
      end;
    Finally
      cdRegistroConsumo.First;
    end;

    // Establecer el número de registros que debe contener este menú
    OldLlave := '';
    OldFecha := cdMenuDatosListado.FieldByName('Fecha').AsDateTime;
    if cdMenuDatosListado.FieldByName('IdPeriodoConsumo').IsNull then
      RealId := -1
    else
      RealId := cdMenuDatosListado.FieldByName('IdPeriodoConsumo').AsInteger;
    OldId := 0;
    nRen := 0;
    InRen := 0;
    MaxRen := 0;
    Cuentas := TStringList.Create;
    Cuentas.Clear;
    cdMenuDatosListado.First;

    // Verificar cuantos registros se necesitan para alojar todo el menú
    if cdRenglonesMenu.ProviderName = '' then
      if Not CrearConjunto(cdRenglonesMenu, 'cmt_renglonesmenu', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Menu']);

    if Not CargarDatosFiltrados(cdRenglonesMenu, 'IdMenu', [cdMenu.FieldByName('IdMenu').AsInteger]) then
      raise InteligentException.CreateByCode(16, ['Menu']);

    if cdRenglonesMenu.Active then
      cdRenglonesMenu.Refresh
    else
      cdRenglonesMenu.Open;

    OldId := -1;
    while Not cdRenglonesMenu.Eof do
    begin
      if (cdRenglonesMenu.FieldByName('IdPeriodoConsumo').AsInteger <> OldId) then
        MaxRen := MaxRen + cdRenglonesMenu.FieldByName('Cuenta').AsInteger;

      OldId := cdRenglonesMenu.FieldByName('IdPeriodoConsumo').AsInteger;
      cdRenglonesMenu.Next;
    end;

{    while Not cdMenuDatosListado.Eof do
    begin
      // Si ya cambió el Periodo de consumo o la fecha o ya es el ultimo registro
      if (OldFecha <> cdMenuDatosListado.FieldByName('Fecha').AsDateTime) or (OldId <> RealId) or (cdMenuDatosListado.RecNo = cdMenuDatosListado.RecordCount) then
      begin
        if ((OldFecha = cdMenuDatosListado.FieldByName('Fecha').AsDateTime) and (OldId = RealId)) and (cdMenuDatosListado.RecNo = cdMenuDatosListado.RecordCount) then
          Inc(InRen);

        if nRen < InRen then
          nRen := InRen;

        if (OldId <> RealId) or (cdMenuDatosListado.RecNo = cdMenuDatosListado.RecordCount) then
        begin
          MaxRen := MaxRen + nRen;
          nRen := 0;
        end;

        InRen := 0;
      end;

      OldFecha := cdMenuDatosListado.FieldByName('Fecha').AsDateTime;
      OldId := RealId;
      Inc(InRen);

      cdMenuDatosListado.Next;

      if Not cdMenuDatosListado.Eof then
      begin
        if cdMenuDatosListado.FieldByName('IdPeriodoConsumo').IsNull then
          RealId := -1
        else
          RealId := cdMenuDatosListado.FieldByName('IdPeriodoConsumo').AsInteger;
      end;

      IncrementaProgress;
    end;
}
    nRen := MaxRen;

    // Generar los registros necesarios
    for InRen := 1 to nRen do
    begin
      cdMenuDatos.Append;
      cdMenuDatos.Post;
    end;

    // Obtener todas las imagenes de una sola vez
    ConjuntoLlaves := TStringList.Create;
    cdMenuDatosListado.First;
    while Not cdMenuDatosListado.Eof do
    begin
      if ConjuntoLlaves.IndexOf(cdMenuDatosListado.FieldByName('IdReceta').AsString) < 0 then
        ConjuntoLlaves.Add(cdMenuDatosListado.FieldByName('IdReceta').AsString);

      cdMenuDatosListado.Next;
    end;

    if CargarDatosFiltrados(cdRecetaImagen, 'GrupoIds', [ConjuntoLlaves.CommaText]) then
      if cdRecetaImagen.Active then
        cdRecetaImagen.Refresh
      else
        cdRecetaImagen.Open;

    // Llenar el dataset
    cdMenuDatosListado.First;
    OldFecha := cdMenuDatosListado.FieldByName('Fecha').AsDateTime;
    if cdMenuDatosListado.FieldByName('IdPeriodoConsumo').IsNull then
      RealId := -1
    else
      RealId := cdMenuDatosListado.FieldByName('IdPeriodoConsumo').AsInteger;
    OldId := RealId;
    nRen := 1;
    MaxRen := 0;
    InRen := 1;
    while Not cdMenuDatosListado.Eof do
    begin
      if OldId <> RealId then
      begin
        InRen := MaxRen;
        MaxRen := 0;
      end;

      if (OldId <> RealId) OR (OldFecha <> cdMenuDatosListado.FieldByName('Fecha').AsDateTime) then
        nRen := InRen;

      // Calcular la columna
      nCol := 1 + Trunc(cdMenuDatosListado.FieldByName('Fecha').AsDateTime) - Trunc(cdMenu.FieldByName('Desde').AsDateTime);

      cdMenuDatos.RecNo := nRen;
      cdMenuDatos.Edit;

      // Localizar el registro que se va a modificar
      cdMenuDatos.FieldByName('Ren').AsString := cdMenuDatosListado.FieldByName('IdPeriodoConsumo').AsString + ':' + cdMenuDatosListado.FieldByName('IdReceta').AsString;
      cdMenuDatos.FieldByName('IdPeriodoConsumo').AsVariant := cdMenuDatosListado.FieldByName('IdPeriodoConsumo').AsVariant;
      cdMenuDatos.FieldByName('TituloPeriodoConsumo').AsString := cdMenuDatosListado.FieldByName('TituloPeriodoConsumo').AsString;

      if cdMenuDatosListado.FieldByName('IdPeriodoConsumo').IsNull then
        cdMenuDatos.FieldByName('PeriodoConsumo').AsString := 'Paquete Consumibles'
      else
//        cdMenuDatos.FieldByName('PeriodoConsumo').AsString := RightStr('0000' + IntToStr(IdPeriodoConsumo), 5) + '-' + TituloPeriodoConsumo;
      cdMenuDatos.FieldByName('PeriodoConsumo').AsString := cdMenuDatosListado.FieldByName('PeriodoConsumo').AsString;

      if cdMenuDatosListado.FieldByName('Tipo').AsString = 'Barra' then
        cdMenuDatos.FieldByName('Dia' + IntToStr(nCol)).AsString := '(b) ' + cdMenuDatosListado.FieldByName('CodigoReceta').AsString + Separador + cdMenuDatosListado.FieldByName('NombreReceta').AsString + #10 + #10 + cdMenuDatosListado.FieldByName('DescripcionReceta').AsString
      else
        if cdMenuDatosListado.FieldByName('Cual').AsString = 'CONSUMIBLE' then
          cdMenuDatos.FieldByName('Dia' + IntToStr(nCol)).AsString := '(c) ' + cdMenuDatosListado.FieldByName('CodigoReceta').AsString + Separador + cdMenuDatosListado.FieldByName('NombreReceta').AsString + #10 + #10 + cdMenuDatosListado.FieldByName('DescripcionReceta').AsString
        else
          cdMenuDatos.FieldByName('Dia' + IntToStr(nCol)).AsString := cdMenuDatosListado.FieldByName('CodigoReceta').AsString + Separador + cdMenuDatosListado.FieldByName('NombreReceta').AsString + #10 + #10 + cdMenuDatosListado.FieldByName('DescripcionReceta').AsString;

      if (cdRecetaImagen.Active) and (cdRecetaImagen.Locate('IdReceta', cdMenuDatosListado.FieldByName('IdReceta').AsInteger, [])) then
        cdMenuDatos.FieldByName('Imagen' + IntToStr(nCol)).AsBytes := cdRecetaImagen.FieldByName('Imagen').AsBytes;

      cdMenuDatos.Post;

      Inc(nRen);
      if MaxRen< nRen then
        MaxRen := nRen;
      OldFecha := cdMenuDatosListado.FieldByName('Fecha').AsDateTime;
      OldId := RealId;
      cdMenuDatosListado.Next;

      if cdMenuDatosListado.FieldByName('IdPeriodoConsumo').IsNull then
        RealId := -1
      else
        RealId := cdMenuDatosListado.FieldByName('IdPeriodoConsumo').AsInteger;

      IncrementaProgress;
    end;

    tvDatos.ViewData.Expand(True);
  //  tvDatos.DataController.CreateAllItems;
    tvDatos.EndUpdate;
    tvDatos.DataController.Groups.FullExpand;
  Finally
    if Assigned(ConjuntoLlaves) then
      ConjuntoLlaves.Clear;
    Forma.Close;
    Forma.Free;
  end;
end;

procedure TFrmMenuDX.cxGlobalDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  imgQuitar3.Picture := imgQuitar1.Picture;
end;

procedure TFrmMenuDX.cxGrid1ActiveTabChanged(Sender: TcxCustomGrid;
  ALevel: TcxGridLevel);
var
  locCursor: TCursor;
begin
  try
    locCursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      if ALevel.GridView = tvConsumibles then
      begin
        if cdConsumibles.ProviderName = '' then
        begin
          if Not CrearConjunto(cdConsumibles, 'cmt_receta', ccCatalog) then
            raise InteligentException.CreateByCode(5, ['Paquetes de Consumibles']);

          if Not CargarDatosFiltrados(cdConsumibles, 'Cual', ['Consumible']) then
            raise InteligentException.CreateByCode(6, ['Paquetes de Consumibles', 'Consumible', 'Cual']);

          cdConsumibles.Open;
        end;
      end;
    finally
      Screen.Cursor := locCursor;
    end;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmMenuDX.LlenarIngredientesCompleto;
begin
  //
end;

procedure TFrmMenuDX.FormaClose(Sender: TObject; var Action: TCloseAction);
begin
  Forma.ModalResult := FormaModalResult;
end;

procedure TFrmMenuDX.MostrarComensales;
var
  Valor: Integer;
  NeedUpdate: Boolean;
  myCaption, NewCaption: String;
  myCursor: TCursor;
  tValor,
  i, OldHeight: Integer;
  EsCero: Boolean;
  ListaAvisos: TStringList;
  CadAvisos: String;
begin
  myCursor := Screen.Cursor;
  Forma := TForm.Create(Self);
  Try
    Screen.Cursor := crAppStart;

    OldHeight := sbComensales.Height;
    Forma.Caption := 'Datos Generales';
    Forma.ModalResult := mrCancel;
    Forma.Width := sbComensales.Width + (GetSystemMetrics(SM_CXBORDER) *2);
    Forma.Height := sbComensales.Height + GetSystemMetrics(SM_CYCAPTION) + (GetSystemMetrics(SM_CYBORDER) *2);
    Forma.OnClose := FormaClose;
    FormaModalResult := mrCancel;
    sbComensales.Parent := Forma;
    sbComensales.Align := alClient;
    sbComensales.Visible := True;

    if Forma.ShowModal = mrCancel then
      raise InteligentWarning.Create('*')
    else
    begin
      // Verificar si hay valores en cero
      EsCero := False;
      tValor := 0;
      ListaAvisos := TStringList.Create;
      ListaAvisos.Clear;
      while i < sgComensales.ColCount do
      begin
        try
          Valor := StrToInt(sgComensales.Cells[i, 1]);
        except
          Valor := 0;
        end;

        if (cdContrato.RecordCount > 0) and (Valor > 0) and (Valor < cdContrato.FieldByName('PersonalMinimo').AsInteger) then
          ListaAvisos.Add(sgComensales.Cells[i, 0] + ' número de comensales: ' + sgComensales.Cells[i, 1]);

        tValor := tValor + Valor;

        if Not EsCero then
          EsCero := Valor = 0;

        Inc(i);
      end;

      if (EsCero) and (tValor > 0) and (ListaAvisos.Count = 0) then
        InteliDialog.ShowModal('Valores cero', 'Existen días del periodo que tienen número de comensales en cero.', mtInformation, [mbOk], 0);

      if (EsCero) and (tValor > 0) and (ListaAvisos.Count <> 0) then
      begin
        CadAvisos := StringReplace(ListaAvisos.CommaText, ',', #10, [rfReplaceAll]);
        InteliDialog.ShowModal('Valores cero y valores inferiores al mínimo', 'Existen días del periodo que tienen número de comensales en cero y los siguientes días tienen comensales inferiores al mínimo (' + cdContrato.FieldByName('PersonalMinimo').AsString + '):' + #10 + #10 + CadAvisos, mtInformation, [mbOk], 0);
      end;

      if (Not EsCero) and (tValor > 0) and (ListaAvisos.Count <> 0) then
      begin
        CadAvisos := StringReplace(ListaAvisos.CommaText, ',', #10, [rfReplaceAll]);
        InteliDialog.ShowModal('Valores inferiores al mínimo', 'Los siguientes días tienen comensales inferiores al mínimo (' + cdContrato.FieldByName('PersonalMinimo').AsString + '):' + #10 + #10 + CadAvisos, mtInformation, [mbOk], 0);
      end;

      // Verificar si se ha modificado los datos generales
      if cdMenu.FieldByName('Comentarios').AsString <> Comentarios.Text then
        cdMenu.FieldByName('Comentarios').AsString := Comentarios.Text;

      if cdMenu.Modified then
      begin
        cdMenu.Post;
        cdMenu.ApplyUpdates(-1);
        CambiosRealizados := True;
      end;

      // Verificar si se han capturado comensales en al menos un día
      if tValor = 0 then
        raise InteligentException.CreateByCode(8, ['Debe capturar el número de comensales al menos para un día en el periódo para poder registrar Recetas de alimentos.']);

      // Modificar el registro de acuerdo a los datos del grid
      cdRegistroConsumo.First;
      NeedUpdate := False;
      while Not cdRegistroConsumo.Eof do
      begin
        Try
          Valor := StrToInt(sgComensales.Cells[cdRegistroConsumo.RecNo -1, 1]);
        Except
          Valor := 0;
        End;

        if cdRegistroConsumo.FieldByName('Personas').AsInteger <> Valor then
        begin
          // Modificar el registro en la base de datos
          cdRegistroConsumo.Edit;
          cdRegistroConsumo.FieldByName('Personas').AsInteger := Valor;
          cdRegistroConsumo.Post;

          // Modificar el encabezado del grid
          myCaption := tvDatos.Columns[cdRegistroConsumo.RecNo +1].Caption;
          NewCaption := '';
          while (myCaption <> NewCaption) and (myCaption[Length(myCaption) - Length(NewCaption)] <> ':') do
            NewCaption := myCaption[Length(myCaption) - Length(NewCaption)] + NewCaption;

          tvDatos.Columns[cdRegistroConsumo.RecNo +1].Caption := Copy(myCaption, 1, Length(myCaption) - Length(NewCaption)) + ' ' + IntToStr(Valor);

          NeedUpdate := True;
        end;

        cdRegistroConsumo.Next;
      end;

      if NeedUpdate then
      begin
        cdRegistroConsumo.ApplyUpdates(-1);
        CambiosRealizados := True;
        NeedRefresh1 := True;
        NeedRefresh2 := True;
      end;
    end;
  Finally
    sbComensales.Height := OldHeight;
    Screen.Cursor := myCursor;
    sbComensales.Visible := False;
  End;
end;

procedure TFrmMenuDX.ArmarReporte;
var
  c: Integer;
begin
  cdEncabMenu.EmptyDataSet;

  // Generar los encabezados en el dataset
  cdEncabMenu.Append;
  for c := 1 to sgComensales.ColCount do
    cdEncabMenu.FieldByName('Receta' + IntToStr(c)).AsString := sgComensales.Cells[c -1, 0];
  cdEncabMenu.Post;
end;

procedure TFrmMenuDX.GenerarPedido;
var
  vpCual: TClasePermisos;
begin
  if (cdMenu.FieldByName('IdInsumoPedido').IsNull and VerificaPermisos('cmt_comisaria', [vpEscribir], EADMessage)) or (Not cdMenu.FieldByName('IdInsumoPedido').IsNull and VerificaPermisos('cmt_comisaria', [vpLeer], EADMessage)) then
  begin
    // Generar los registros del pedido de ingredientes
    Application.CreateForm(TFrmInsumoPedido, FrmInsumoPedido);
    FrmInsumoPedido.IdMenu := cdMenu.FieldByName('IdMenu').AsInteger; // Indicar el número del menú
    FrmInsumoPedido.Generar := True;
    FrmInsumoPedido.dsExplosion.DataSet := cdExplosion;
    FrmInsumoPedido.dsMenu.DataSet := cdMenu;
    FrmInsumoPedido.dsIngredientes.DataSet := cdIngredientes;
    FrmInsumoPedido.Caption := 'Menú ' + cdMenu.FieldByName('Desde').AsString + ' a ' + cdMenu.FieldByName('Hasta').AsString;
    CambiosRealizados := FrmInsumoPedido.ShowModal = mrOk;
    if CambiosRealizados then
      if PedidoBorrado then
      begin
        MsgBorrado.ActivateHint(btnGenerarPedido, 'El Pedido ha sido eliminado de manera satisfactoria.');
        btnGenerarPedido.Caption := '&Generar Pedido';
      end
      else
        btnGenerarPedido.Caption := '&Abrir Pedido';

    PedidoBorrado := False;
  end;
end;

end.
