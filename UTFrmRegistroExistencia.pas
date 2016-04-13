unit UTFrmRegistroExistencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, JvExControls, JvLabel, StdCtrls, Mask, DBCtrls, JvExMask,
  JvToolEdit, JvDBControls, ClientModuleUnit1, URegistro, UInteliDialog,
  AdvGlowButton, DB, DBClient, cxGraphics, cxControls, cxLookAndFeels,
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
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Menus,
  AdvMenus, JvBaseEdits, frxClass, frxDBSet;

type
  TEstadoEncabezado = Class
    AltoEncabezado: Integer;
    AltoTextos: Integer;
  End;

  TGenerar = (gVacio, gCeroExistencia, gConExistencia, gCeroTodos, gTodos);

  TFrmRegistroExistencia = class(TForm)
    pnlEncabezado: TPanel;
    Panel1: TPanel;
    JvLabel3: TJvLabel;
    IdElaboro: TDBLookupComboBox;
    Elaboracion: TJvDBDateEdit;
    JvLabel4: TJvLabel;
    IdAutorizo: TDBLookupComboBox;
    pnlTextos: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    JvLabel2: TJvLabel;
    Panel4: TPanel;
    Descripcion: TDBMemo;
    Panel7: TPanel;
    Panel8: TPanel;
    JvLabel6: TJvLabel;
    Panel9: TPanel;
    Comentarios: TDBMemo;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    Panel10: TPanel;
    pnlCodigoExistencia: TPanel;
    JvLabel1: TJvLabel;
    CodigoExistencia: TDBEdit;
    cdExistencia: TClientDataSet;
    cdElaboro: TClientDataSet;
    cdAutorizo: TClientDataSet;
    dsExistencia: TDataSource;
    dsElaboro: TDataSource;
    dsAutorizo: TDataSource;
    cdBuscarExistencia: TClientDataSet;
    pnlSelTipo: TPanel;
    Panel11: TPanel;
    JvLabel7: TJvLabel;
    Panel12: TPanel;
    rgOpcion: TRadioGroup;
    Panel13: TPanel;
    btnSelAceptar: TAdvGlowButton;
    btnSelCancelar: TAdvGlowButton;
    cdExistenciaPartidaUpt: TClientDataSet;
    cdRegistroExistencia: TClientDataSet;
    pnlBotones: TPanel;
    btnEncabezadoGrabar: TAdvGlowButton;
    btnEncabezadoCancel: TAdvGlowButton;
    IdEmbarcacion: TDBLookupComboBox;
    lblUbicacion: TJvLabel;
    dsEmbarcacion: TDataSource;
    cdExistenciaPartida: TClientDataSet;
    dsExistenciaPartida: TDataSource;
    pmPartidas: TAdvPopupMenu;
    InsertarInsumo1: TMenuItem;
    cdInsumo: TClientDataSet;
    EditarInsumo1: TMenuItem;
    EliminarInsumo1: TMenuItem;
    pnlEditCantidad: TPanel;
    JvLabel9: TJvLabel;
    edtCodigoInsumo: TDBText;
    dsExistenciaPartidaUpt: TDataSource;
    JvLabel10: TJvLabel;
    edtNombreInsumo: TDBText;
    Panel6: TPanel;
    JvLabel11: TJvLabel;
    editCantidad: TJvDBCalcEdit;
    btnEditAceptar: TAdvGlowButton;
    btnEdtCancelar: TAdvGlowButton;
    pnlPartidas: TPanel;
    gridExistenciaPartida: TcxGrid;
    tvExistenciaPartida: TcxGridDBTableView;
    NombreTipoInsumo: TcxGridDBColumn;
    NombreInsumo: TcxGridDBColumn;
    Cantidad: TcxGridDBColumn;
    sNombre: TcxGridDBColumn;
    gridExistenciaPartidaLevel1: TcxGridLevel;
    btnGrabar: TAdvGlowButton;
    btnCerrar: TAdvGlowButton;
    pnlBotonesPartidas: TPanel;
    Aplicacion: TJvDBDateEdit;
    JvLabel5: TJvLabel;
    N1: TMenuItem;
    Imprimir1: TMenuItem;
    reportInventario: TfrxReport;
    cdEmbarcacion: TClientDataSet;
    fdsExistencia: TfrxDBDataset;
    fdsExistenciaPartida: TfrxDBDataset;
    fdsEmbarcacion: TfrxDBDataset;
    fdsElaboro: TfrxDBDataset;
    fdsAutorizo: TfrxDBDataset;
    lblEncabezado: TJvLabel;
    cdAlmacen: TClientDataSet;
    dsAlmacen: TDataSource;
    lblDomicilio: TJvLabel;
    procedure Panel10Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormaEditShow(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure btnEncabezadoCancelClick(Sender: TObject);
    procedure FormaSelClose(Sender: TObject; var Action: TCloseAction);
    procedure FormaEditClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSelCancelarClick(Sender: TObject);
    procedure btnSelAceptarClick(Sender: TObject);
    procedure btnEncabezadoGrabarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGrabarClick(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure InsertarInsumo1Click(Sender: TObject);
    procedure EditarInsumo1Click(Sender: TObject);
    procedure btnEditAceptarClick(Sender: TObject);
    procedure btnEdtCancelarClick(Sender: TObject);
    procedure tvExistenciaPartidaCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure IdEmbarcacionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Imprimir1Click(Sender: TObject);
    procedure EliminarInsumo1Click(Sender: TObject);
    procedure tvExistenciaPartidaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdAlmacenAfterScroll(DataSet: TDataSet);
  private
    EstadoEncabezado: TEstadoEncabezado;
    FormaSel: TForm;
    FormaSelResult: TModalResult;
    FormaEditResult: TModalResult;
    FormaGeneral: TForm;
    FormaGeneralResult: TModalResult;
    CualGenerar: TGenerar;
    pIdExistencia: String;
    pIdExistenciaPartida: String;
    pIdEmbarcacion: String;
    procedure BuscarExistencia;
    procedure Generar(Cual: TGenerar);
    procedure MostrarCabecera;
  public
    { Public declarations }
  end;

var
  FrmRegistroExistencia: TFrmRegistroExistencia;

implementation

{$R *.dfm}

Uses
  UTFrmBuscarExistencia, UTFrmSeleccionarInsumo, Unit2;

procedure TFrmRegistroExistencia.btnEditAceptarClick(Sender: TObject);
begin
  FormaEditResult := mrOk;
  TForm(TWinControl(Sender).Parent.Parent.Parent).Close;
end;

procedure TFrmRegistroExistencia.btnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmRegistroExistencia.btnEdtCancelarClick(Sender: TObject);
begin
  TForm(TWinControl(Sender).Parent.Parent.Parent).Close;
end;

procedure TFrmRegistroExistencia.btnEncabezadoCancelClick(Sender: TObject);
begin
  pnlEncabezado.Font.Color := clGray;
  pnlBotones.Visible := False;

  if Not cdExistenciaPartida.Active then
    Close;
end;

procedure TFrmRegistroExistencia.FormaSelClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TForm(Sender).ModalResult := FormaSelResult;
  Action := caFree;
end;

procedure TFrmRegistroExistencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CancelarTransaccion;
  EliminarConjunto([cdExistencia, cdExistenciaPartidaUpt, cdExistenciaPartida, cdEmbarcacion, cdAlmacen, cdElaboro, cdAutorizo, cdBuscarExistencia, cdRegistroExistencia, cdInsumo]);
  Action := caFree;
end;

procedure TFrmRegistroExistencia.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
  Procesado: Integer;
begin
  IniciarTransaccion;

  lblDomicilio.Caption := '';

  if Form2.EsGeneral then
  begin
    pIdExistencia := 'IdExistenciaGeneral';
    pIdExistenciaPartida := 'IdExistenciaGeneralPartida';
    pIdEmbarcacion := 'IdAlmacen';
    lblUbicacion.Caption := 'Almacén:';
    lblUbicacion.Left := 51;

    Self.Caption := 'Registro de Existencias (Inventario Almacén General)';
    lblEncabezado.Caption := 'INVENTARIO ALMACÉN GENERAL';
    lblEncabezado.Font.Color := clBlue;
    IdEmbarcacion.DataField := 'IdAlmacen';
    IdEmbarcacion.ListSource := dsAlmacen;
    IdEmbarcacion.ListField := 'NombreAlmacen';
    IdEmbarcacion.KeyField := 'IdAlmacen';
  end
  else
  begin
    pIdExistencia := 'IdExistencia';
    pIdExistenciaPartida := 'IdExistenciaPartida';
    pIdEmbarcacion := 'IdEmbarcacion';
    lblUbicacion.Caption := 'Ubicación:';
    lblUbicacion.Left := 46;

    Self.Caption := 'Registro de Existencias (Inventario Almacén de Tránsito)';
    lblEncabezado.Caption := 'INVENTARIO ALMACÉN DE TRÁNSITO';
    lblEncabezado.Font.Color := clGreen;
    IdEmbarcacion.DataField := 'IdEmbarcacion';
    IdEmbarcacion.ListSource := dsEmbarcacion;
    IdEmbarcacion.ListField := 'NombreEmbarcacion';
    IdEmbarcacion.KeyField := 'IdEmbarcacion';
  end;

  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      if Form2.BorrarInventario then
      begin
        if Form2.EsGeneral then
          VerificaPermisos('cmt_existenciageneral', [vpLeer, vpBorrar], EADError)
        else
          VerificaPermisos('cmt_existencia', [vpLeer, vpBorrar], EADError);
      end
      else
      begin
        if Form2.EsGeneral then
          VerificaPermisos('cmt_existenciageneral', [vpLeer], EADError)
        else
          VerificaPermisos('cmt_existencia', [vpLeer], EADError);
      end;

      EstadoEncabezado := TEstadoEncabezado.Create;

      if Form2.BorrarInventario then
        // Ir directamente a la selección de Inventario
        rgOpcion.ItemIndex := 0
      else
      begin
        // Solicitar el tipo de registro que desea abrir
        FormaSel := TForm.Create(Self);
        try
          FormaSelResult := mrCancel;
          FormaSel.OnClose := FormaSelClose;
          FormaSel.Height := pnlSelTipo.Height;
          FormaSel.Width := pnlSelTipo.Width;
          pnlSelTipo.Parent := FormaSel;
          pnlSelTipo.Align := alClient;
          pnlSelTipo.Visible := True;
          if FormaSel.ShowModal = mrCancel then
            raise InteligentException.Create('*');
        finally
          pnlSelTipo.Visible := False;
          pnlSelTipo.Align := alNone;
          pnlSelTipo.Parent := Self;
        end;
      end;

      if Form2.EsGeneral then
      begin
        if Not CrearConjunto(cdExistencia, 'cmt_existenciageneral', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Registros de Existencias (Inventarios)']);

        if Not CrearConjunto(cdRegistroExistencia, 'cmt_registroexistenciageneral', ccSelect) then
          raise InteligentException .CreateByCode(5, ['Registro de Existencias Generales']);

        if Not CrearConjunto(cdExistenciaPartida, 'cmt_existenciageneralpartida', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Registros de Existencias (Inventarios)']);

        if Not CrearConjunto(cdExistenciaPartidaUpt, 'cmt_existenciageneralpartida', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Registros de Existencias (Inventarios)']);
      end
      else
      begin
        if Not CrearConjunto(cdExistencia, 'cmt_existencia', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Registros de Existencias (Inventarios)']);

        if Not CrearConjunto(cdRegistroExistencia, 'cmt_registroexistencia', ccSelect) then
          raise InteligentException .CreateByCode(5, ['Registro de Existencias']);

        if Not CrearConjunto(cdExistenciaPartida, 'cmt_existenciapartida', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Registros de Existencias (Inventarios)']);

        if Not CrearConjunto(cdExistenciaPartidaUpt, 'cmt_existenciapartida', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Registros de Existencias (Inventarios)']);
      end;

      if Not CrearConjunto(cdInsumo, 'cmt_insumo', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Insumos']);

      if Not CrearConjunto(cdElaboro, 'usuarios', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Usuarios para campo "Elabora"']);

      if Not CrearConjunto(cdAutorizo, 'usuarios', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Usuarios para campo "Autoriza"']);

      if Not CargarDatosFiltrados(cdExistencia, pIdExistencia, [-9]) then
        raise InteligentException.CreateByCode(16, ['Registros de Existencias (Inventarios)']);

      if Form2.EsGeneral then
      begin
        if Not CrearConjunto(cdAlmacen, 'cmt_almacen', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Almacenes']);

        cdAlmacen.Open;
        if cdAlmacen.RecordCount = 0 then
          raise InteligentException.CreateByCode(22, ['Almacenes']);
      end
      else
      begin
        if Not CrearConjunto(cdEmbarcacion, 'cmt_embarcacion', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Localizaciones']);

        cdEmbarcacion.Open;
        if cdEmbarcacion.RecordCount = 0 then
          raise InteligentException.CreateByCode(22, ['Localizaciones']);
      end;

      cdElaboro.Open;
      cdAutorizo.Open;

      case rgOpcion.ItemIndex of
        0: BuscarExistencia;
        1: Generar(gVacio);
        2: Generar(gCeroExistencia);
        3: Generar(gConExistencia);
        4: Generar(gCeroTodos);
        5: Generar(gTodos);
      end;

      if Form2.BorrarInventario then
      begin
        if cdExistencia.FieldByName('Estado').AsString = 'AUTORIZADO' then
          raise InteligentException.CreateByCode(24, ['El Registro de Existencia (Inventario) seleccionado no puede ser eliminado debido a que se encuentra en modo de AUTORIZADO, verifique esto e intente de nuevo.']);

        if InteliDialog.ShowModal('Borrar Inventario', 'Está a punto de eliminar el registro de Inventario.' + #10 + #10 + '¿Está seguro de hacerlo en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
          raise InteligentException.Create('*');

        if Not CargarDatosFiltrados(cdExistenciaPartidaUpt, pIdExistencia, [cdExistencia.FieldByName(pIdExistencia).AsInteger]) then
          raise InteligentException.CreateByCode(6, ['Partidas del Registro de Existencias (Inventario)', cdExistencia.FieldByName(pIdExistencia).AsInteger, 'Id. Existencia']);

        cdExistenciaPartidaUpt.Open;

        // Borrar registros de partida
        Procesado := 0;
        cdExistenciaPartidaUpt.First;
        while not cdExistenciaPartidaUpt.Eof do
        begin
          cdExistenciaPartidaUpt.Delete;
          Inc(Procesado);
        end;
        if Procesado > 0 then
          cdExistenciaPartidaUpt.ApplyUpdates(-1);

        cdExistencia.Delete;
        cdExistencia.ApplyUpdates(-1);

        ConcretarTransaccion;
        raise InteligentException.CreateByCode(24, ['El registro de Existencias (Inventario) ha sido eliminado de manera correcta.']);

        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end
      else
      begin
        // Si se ha seleccionado la creación de una nueva exitencia se deberá entrar directamente al encabezado
        if rgOpcion.ItemIndex = 0 then
        begin
          pnlPartidas.Enabled := True;
          gridExistenciaPartida.SetFocus;
          Panel10Click(Panel10);
        end
        else
          Panel1DblClick(CodigoExistencia);
      end;
    finally
      Screen.Cursor := LocCursor;
    end;
  Except
    on e:InteligentException do
    begin
      if e.Message <> '*' then
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

procedure TFrmRegistroExistencia.FormaEditShow(Sender: TObject);
begin
  EditCantidad.SetFocus;
end;

procedure TFrmRegistroExistencia.Panel10Click(Sender: TObject);
const
  MenosHeight = 74;
var
  Posicion: TPoint;
begin
  pnlTextos.Visible := Not pnlTextos.Visible;
  if pnlTextos.Visible then
  begin
    GetCursorPos(Posicion);
    Posicion.Y := Posicion.Y + (EstadoEncabezado.AltoEncabezado - MenosHeight);
    SetCursorPos(Posicion.X, Posicion.Y);

    pnlEncabezado.Height := EstadoEncabezado.AltoEncabezado;
    pnlTextos.Height := EstadoEncabezado.AltoTextos;
    Splitter3.Enabled := True;
    pnlPartidas.Enabled := False;
  end
  else
  begin
    GetCursorPos(Posicion);
    Posicion.Y := Posicion.Y - (pnlEncabezado.Height - MenosHeight);
    SetCursorPos(Posicion.X, Posicion.Y);

    EstadoEncabezado.AltoEncabezado := pnlEncabezado.Height;
    EstadoEncabezado.AltoTextos := pnlTextos.Height;

    pnlEncabezado.Height := MenosHeight;
    Splitter3.Enabled := False;
    pnlPartidas.Enabled := True;
  end;
end;

procedure TFrmRegistroExistencia.Panel1DblClick(Sender: TObject);
var
  Posicion: TPoint;
begin
  if pnlEncabezado.Font.Color = clGray then
  begin
    if Not pnlTextos.Visible then
    begin
      pnlTextos.Visible := True;

      GetCursorPos(Posicion);
      Posicion.Y := Posicion.Y + (EstadoEncabezado.AltoEncabezado - 80);
      SetCursorPos(Posicion.X, Posicion.Y);

      pnlEncabezado.Height := EstadoEncabezado.AltoEncabezado;
      pnlTextos.Height := EstadoEncabezado.AltoTextos;
      Splitter3.Enabled := True;
    end;

    pnlEncabezado.Font.Color := clBlack;
    pnlBotones.Visible := True;

    // Habilitar los campos
    CodigoExistencia.ReadOnly := False;
    Aplicacion.ReadOnly := False;
    IdElaboro.ReadOnly := False;
    Elaboracion.ReadOnly := False;
    IdAutorizo.ReadOnly := False;
    Descripcion.ReadOnly := False;
    Comentarios.ReadOnly := False;

    CodigoExistencia.SetFocus;
  end;
end;

procedure TFrmRegistroExistencia.tvExistenciaPartidaCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  EditarInsumo1.Click;
end;

procedure TFrmRegistroExistencia.tvExistenciaPartidaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  LocCursor: TCursor;
begin
  if (Key = 116) and (cdExistenciaPartida.Active) then
  begin
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      cdExistenciaPartida.Refresh;
    finally
      Screen.Cursor := LocCursor;
    end;
  end;
end;

procedure TFrmRegistroExistencia.btnEncabezadoGrabarClick(Sender: TObject);
var
  LastId: Integer;
  Obj: TWinControl;
  OrigState: TDataSetState;
  locCursor: TCursor;
  AcumPorce: Integer;
  IdUnica: String;
begin
  try
    locCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      // Verificar si los datos se han capturado de manera correcta
      Obj := CodigoExistencia;
      if Trim(CodigoExistencia.Text) = '' then
        raise InteligentWarning.CreateByCode(18, ['Código Registro']);

      Obj := IdEmbarcacion;
      if Form2.EsGeneral then
      begin
        if cdExistencia.FieldByName('IdAlmacen').IsNull then
          raise InteligentWarning.CreateByCode(18, ['Almacén'])
      end
      else
      begin
        if cdExistencia.FieldByName('IdEmbarcacion').IsNull then
          raise InteligentWarning.CreateByCode(18, ['Localización']);
      end;

      Obj := IdElaboro;
      if cdExistencia.FieldByName('IdElaboro').IsNull then
        raise InteligentWarning.CreateByCode(18, ['Elabora']);

      Obj := IdAutorizo;
      if cdExistencia.FieldByName('IdAutorizo').IsNull then
        raise InteligentWarning.CreateByCode(18, ['Autoriza']);

      Obj := Descripcion;
      if Trim(Descripcion.Text) = '' then
        raise InteligentWarning.CreateByCode(18, ['Descripción']);

      OrigState := cdExistencia.State;

      cdExistencia.Post;
      cdExistencia.ApplyUpdates(-1);

      if rgOpcion.ItemIndex > 0 then
      begin
        // Si se trata de un nuevo registro de existencias se deberá actualizar la información de cabecera
        LastId := UltimoId;

        if Not CargarDatosFiltrados(cdExistencia, pIdExistencia, [LastId]) then
          raise InteligentException.CreateByCode(6, ['Registro de Existencias', LastId, 'Id. Existencia']);

        cdExistencia.Refresh;
      end;

      if Form2.EsGeneral then
        IdUnica := cdAlmacen.FieldByName('IdAlmacen').AsString
      else
        IdUnica := cdEmbarcacion.FieldByName('IdEmbarcacion').AsString;

      if (OrigState = dsInsert) and (Not cdRegistroExistencia.Active) then
      begin
        case CualGenerar of
          gVacio: if Not CargarDatosFiltrados(cdRegistroExistencia, pIdEmbarcacion + ',IdOmitir,Modo', [IdUnica, LastId, 'Vacio']) then
                    raise InteligentException.CreateByCode(6, ['Registro de Existencias', IdUnica + ' - ' + IntToStr(LastId) + ' - Vacio', 'Id. Embarcacion - Omitir - Modo']);
          gCeroExistencia: if Not CargarDatosFiltrados(cdRegistroExistencia, pIdEmbarcacion + ',IdOmitir,Modo', [IdUnica, LastId, 'CeroConExistencia']) then
                             raise InteligentException.CreateByCode(6, ['Registro de Existencias', IdUnica + ' - ' + IntToStr(LastId) + ' - CeroConExistencia', 'Id. Embarcacion - Omitir - Modo']);
          gConExistencia: if Not CargarDatosFiltrados(cdRegistroExistencia, pIdEmbarcacion + ',IdOmitir,Modo', [IdUnica, LastId, 'ValorConExistencia']) then
                            raise InteligentException.CreateByCode(6, ['Registro de Existencias', IdUnica + ' - ' + IntToStr(LastId) + ' - ValorConExistencia', 'Id. Embarcacion - Omitir - Modo']);
          gCeroTodos: if Not CargarDatosFiltrados(cdRegistroExistencia, pIdEmbarcacion + ',IdOmitir,Modo', [IdUnica, LastId, 'CeroTodos']) then
                        raise InteligentException.CreateByCode(6, ['Registro de Existencias', IdUnica + ' - ' + IntToStr(LastId) + ' - CeroTodos', 'Id. Embarcacion - Omitir - Modo']);
          gTodos: if Not CargarDatosFiltrados(cdRegistroExistencia, pIdEmbarcacion + ',IdOmitir,Modo', [IdUnica, LastId, 'Todos']) then
                    raise InteligentException.CreateByCode(6, ['Registro de Existencias', IdUnica + ' - ' + IntToStr(LastId) + ' - Todos', 'Id. Embarcacion - Omitir - Modo']);
        end;

        if cdRegistroExistencia.Active then
          cdRegistroExistencia.Refresh
        else
          cdRegistroExistencia.Open;

        if cdExistenciaPartidaUpt.Active then
          cdExistenciaPartidaUpt.Refresh
        else
          cdExistenciaPartidaUpt.Open;

        try
          while Not cdRegistroExistencia.Eof do
          begin
            AcumPorce := Trunc((cdRegistroExistencia.RecNo / cdRegistroExistencia.RecordCount) * 100);
            Form2.StatusBar1.Panels.Items[0].Text := 'Procesando: ' + IntToStr(AcumPorce) + '%';
            Form2.StatusBar1.Repaint;

            cdExistenciaPartidaUpt.Append;
            cdExistenciaPartidaUpt.FieldByName(pIdExistenciaPartida).AsInteger := 0;
            cdExistenciaPartidaUpt.FieldByName(pIdExistencia).AsInteger := cdExistencia.FieldByName(pIdExistencia).AsInteger;
            cdExistenciaPartidaUpt.FieldByName('IdInsumo').AsInteger := cdRegistroExistencia.FieldByName('IdInsumo').AsInteger;
            cdExistenciaPartidaUpt.FieldByName('iIdUnidad').AsInteger := cdRegistroExistencia.FieldByName('iIdUnidad').AsInteger;
            cdExistenciaPartidaUpt.FieldByName('Cantidad').AsFloat := cdRegistroExistencia.FieldByName('Cantidad').AsFloat;
            cdExistenciaPartidaUpt.FieldByName('Cuenta').AsFloat := cdRegistroExistencia.FieldByName('Cantidad').AsFloat;
            cdExistenciaPartidaUpt.Post;

            cdRegistroExistencia.Next;
          end;

          Form2.StatusBar1.Panels.Items[0].Text := 'Cargando datos, espere...';
          Form2.StatusBar1.Repaint;

          if cdExistenciaPartidaUpt.ChangeCount > 0 then
            cdExistenciaPartidaUpt.ApplyUpdates(-1);

          if cdExistenciaPartidaUpt.ChangeCount > 0 then
            raise InteligentException.CreateByCode(17, ['Partida de Existencia', cdExistenciaPartidaUpt.FieldByName(pIdExistenciaPartida).AsInteger]);

          if Not CargarDatosFiltrados(cdExistenciaPartida, pIdExistencia, [cdExistencia.FieldByName(pIdExistencia).AsInteger]) then
            raise InteligentException.CreateByCode(6, ['Partidas del Registro de Existencias (Inventario)', cdExistencia.FieldByName(pIdExistencia).AsInteger, 'Id. Existencia']);

          cdExistenciaPartida.Open;
        finally
          Form2.StatusBar1.Panels.Items[0].Text := '';
          Form2.StatusBar1.Repaint;
        end;
      end;

      pnlEncabezado.Font.Color := clGray;
      pnlBotones.Visible := False;

      // Habilitar los campos
      CodigoExistencia.ReadOnly := True;
      Aplicacion.ReadOnly := True;
      IdElaboro.ReadOnly := True;
      Elaboracion.ReadOnly := True;
      IdAutorizo.ReadOnly := True;
      Descripcion.ReadOnly := True;
      Comentarios.ReadOnly := True;

      Panel10Click(Panel10);

      if gridExistenciaPartida.CanFocus then
        gridExistenciaPartida.SetFocus;
    finally
      Screen.Cursor := locCursor;
    end;
  except
    on e:InteligentWarning do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      Obj.SetFocus;
    end;

    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      Close;
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      Close;
    end;
  end;
end;

procedure TFrmRegistroExistencia.btnGrabarClick(Sender: TObject);
var
  Lista: Array of Variant;
  Cta: Integer;
begin
  try
    if cdExistenciaPartida.Locate('Cantidad', 0, []) then
    begin
      // Preguntar si desea eliminar los valores en cero
      case InteliDialog.ShowModal('Existen valores cero', '¿Desea eliminar los registos con cantidad en cero antes de grabar?', mtConfirmation, [mbYes, mbCancel], 0) of
        mrYes: begin
          // Eliminar los registros en cero
          cdExistenciaPartida.Filtered := False;
          cdExistenciaPartida.Filter := 'Cantidad = 0';
          cdExistenciaPartida.Filtered := True;
          cdExistenciaPartida.First;
          while Not cdExistenciaPartida.Eof do
          begin
            Cta := 0;
            repeat
              SetLength(Lista, Cta +1);
              Lista[Cta] := cdExistenciaPartida.FieldByName(pIdExistenciaPartida).AsInteger;
              Inc(Cta);

              cdexistenciaPartida.Next;
            until (cdExistencia.Eof) or (Cta = 100);

            if Cta > 0 then
              EliminarRegistro(cdExistenciaPartida, Lista);
          end;

          cdExistenciaPartida.Refresh;
        end;
      end;
    end;

    ConcretarTransaccion;

    InteliDialog.ShowModal('Datos grabados', 'Los datos han sido grabados correctamente.', mtInformation, [mbOk], 0);

    IniciarTransaccion;
  Except
    on e:InteligentWarning do
      ;

    on e:Exception do
    begin
      CancelarTransaccion;
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      Close;
    end;
  end;
end;

procedure TFrmRegistroExistencia.btnSelAceptarClick(Sender: TObject);
begin
  FormaSelResult := mrOk;
  if rgOpcion.ItemIndex > 0 then
    if Not VerificaPermisos('cmt_existencia', [vpInsertar], EADMessage) then
      FormaSelResult := mrCancel;

  FormaSel.Close;
end;

procedure TFrmRegistroExistencia.btnSelCancelarClick(Sender: TObject);
begin
  FormaSel.Close;
end;

procedure TFrmRegistroExistencia.BuscarExistencia;
var
  i, ii: Integer;
  YaAbierto: Boolean;
  LocForm: TForm;
  LocDataSet: TClientDataSet;
begin
  if cdBuscarExistencia.ProviderName = '' then
    if Form2.EsGeneral then
    begin
      if Not CrearConjunto(cdBuscarExistencia, 'cmt_existenciageneral', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Registros de Existencias (Inventarios Generales)']);
    end
    else
    begin
      if Not CrearConjunto(cdBuscarExistencia, 'cmt_existencia', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Registros de Existencias (Inventarios)']);
    end;

  cdBuscarExistencia.Open;

  Application.CreateForm(TFrmBuscarExistencia, FrmBuscarExistencia);
  FrmBuscarExistencia.pIdExistencia := pIdExistencia;
  FrmBuscarExistencia.dsExistencia.DataSet := cdBuscarExistencia;

  if FrmBuscarExistencia.ShowModal = mrCancel then
    raise InteligentException.Create('*');

  // Verificar si el registro de Existencia ya está abierto
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
        if LocForm.Components[ii].ClassNameIs('TClientDataSet') and (AnsiCompareText(LocForm.Components[ii].Name, 'cdExistencia') = 0) then
        begin
          LocDataSet := TClientDataSet(LocForm.Components[ii]);
          YaAbierto := (LocDataSet.ProviderName <> '') and (LocDataSet.Active) and (LocDataSet.RecordCount > 0) and (LocDataSet.FieldByName(pIdExistencia).AsInteger = cdBuscarExistencia.FieldByName(pIdExistencia).AsInteger);
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
    raise InteligentWarning.CreateByCode(24, ['El registro de Existencias (Inventario) ya se encuentra abierto en el sistema, no es posible abrir dos veces el mismo registro de Existencias.']);
  end
  else
  begin
    if Not CargarDatosFiltrados(cdExistencia, pIdExistencia, [cdBuscarExistencia.FieldByName(pIdExistencia).AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Registros de Existencia (Inventarios)', cdBuscarExistencia.FieldByName(pIdExistencia).AsInteger, 'Id. Registro de Exitencia']);

    if Not CargarDatosFiltrados(cdExistenciaPartida, pIdExistencia, [cdBuscarExistencia.FieldByName(pIdExistencia).AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Partidas de Registro de Existencia (Inventarios)', cdBuscarExistencia.FieldByName(pIdExistencia).AsInteger, 'Id. Registro de Exitencia']);

    if cdExistencia.Active then
      cdExistencia.Refresh
    else
      cdExistencia.Open;

    if cdExistenciaPartida.Active then
      cdExistenciaPartida.Refresh
    else
      cdExistenciaPartida.Open;

    if cdExistencia.RecordCount = 0 then
      raise InteligentException.CreateByCode(13, [cdBuscarExistencia.FieldByName('CodigoExistencia').AsString, 'Registro de Existencias (Inventario)']);
  end;
end;

procedure TFrmRegistroExistencia.cdAlmacenAfterScroll(DataSet: TDataSet);
begin
  if (Form2.EsGeneral) and (IdEmbarcacion.KeyValue <> Null) then
    lblDomicilio.Caption := cdAlmacen.FieldByName('Calle').AsString + ' NO. ' + cdAlmacen.FieldByName('Numero').AsString + ', COLONIA: ' + cdAlmacen.FieldByName('Colonia').AsString + '; ' + cdAlmacen.FieldByName('TituloCiudad').AsString + ', ' + cdAlmacen.FieldByName('TituloEstado').AsString + ', ' + cdAlmacen.FieldByName('TituloPais').AsString;
end;

procedure TFrmRegistroExistencia.EditarInsumo1Click(Sender: TObject);
var
  FormaEdit: TForm;
  LocCursor: TCursor;
begin
  // Verificar si hay registros seleccionados
  if tvExistenciaPartida.Controller.SelectedRowCount > 0 then
  begin
    //SelectedRecords[0]; then

    FormaEdit := TForm.Create(Self);
    Try
      FormaEditResult := mrCancel;
      FormaEdit.OnClose := FormaEditClose;
      pnlEditCantidad.Parent := FormaEdit;
      pnlEditCantidad.Align := alClient;
      pnlEditCantidad.Visible := True;

      LocCursor := Screen.Cursor;
      try
        Screen.Cursor := crHourGlass;

        // Localizar el registo seleccionado en modo de edición
        if not CargarDatosFiltrados(cdExistenciaPartidaUpt, pIdExistencia + ',IdInsumo', [cdExistencia.FieldByName(pIdExistencia).AsInteger, cdExistenciaPartida.FieldByName('IdInsumo').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['Partidas de registro de Existencia', cdExistencia.FieldByName(pIdExistencia).AsString + ' - ' + cdExistenciaPartida.FieldByName('IdInsumo').AsString, 'Id. Existencia - Id. Insumo']);

        if cdExistenciaPartidaUpt.Active then
          cdExistenciaPartidaUpt.Refresh
        else
          cdExistenciaPartidaUpt.Open;

        if cdExistenciaPartidaUpt.RecordCount = 0 then
          raise InteligentException.CreateByCode(12, [cdExistenciaPartida.FieldByName('NombreInsumo').AsString, 'Partidas de registro de Existencias']);

        cdExistenciaPartidaUpt.Edit;
      finally
        Screen.Cursor := LocCursor;
      end;

      if FormaEdit.ShowModal = mrOk then
      begin
        cdExistenciaPartidaUpt.Post;
        cdExistenciaPartidaUpt.ApplyUpdates(-1);
        cdExistenciaPartida.Refresh;
      end
      else
        cdExistenciaPartidaUpt.Cancel;
    Finally
      pnlEditCantidad.Visible := False;
      pnlEditCantidad.Align := alNone;
      pnlEditCantidad.Parent := Self;
    End;
  end;
end;

procedure TFrmRegistroExistencia.EliminarInsumo1Click(Sender: TObject);
var
  LocCursor: TCursor;
begin
  // Verificar si hay registros seleccionados
  if tvExistenciaPartida.Controller.SelectedRowCount > 0 then
  begin
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      // Localizar el registo seleccionado en modo de edición
      if not CargarDatosFiltrados(cdExistenciaPartidaUpt, pIdExistencia + ',IdInsumo', [cdExistencia.FieldByName(pIdExistencia).AsInteger, cdExistenciaPartida.FieldByName('IdInsumo').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Partidas de registro de Existencia', cdExistencia.FieldByName(pIdExistencia).AsString + ' - ' + cdExistenciaPartida.FieldByName('IdInsumo').AsString, 'Id. Existencia - Id. Insumo']);

      if cdExistenciaPartidaUpt.Active then
        cdExistenciaPartidaUpt.Refresh
      else
        cdExistenciaPartidaUpt.Open;

      if cdExistenciaPartidaUpt.RecordCount = 0 then
        raise InteligentException.CreateByCode(27, ['Partidas de registro de Existencias (Insumo)', cdExistenciaPartida.FieldByName('NombreInsumo').AsString]);

      if InteliDialog.ShowModal('Eliminar registro', 'Está a punto de eliminar el Insumo:' + #10 + #10 + cdExistenciaPartida.FieldByName('NombreInsumo').AsString + #10 + #10 + '¿Está seguro de eliminarlo en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        cdExistenciaPartidaUpt.Delete;
        cdExistenciaPartidaUpt.ApplyUpdates(-1);

        cdExistenciaPartida.Refresh;
      end;
    finally
      Screen.Cursor := LocCursor;
    end;
  end;
end;

procedure TFrmRegistroExistencia.Generar(Cual: TGenerar);
begin
  // Crear el registro de los datos generales
  if Not CargarDatosFiltrados(cdExistencia, pIdExistencia, [-9]) then
    raise InteligentException.CreateByCode(16, ['Registro de Existencias (Inventarios)']);

  if Not CargarDatosFiltrados(cdExistenciaPartidaUpt, pIdExistenciaPartida, [-9]) then
    raise InteligentException.CreateByCode(16, ['Registro de Partidas de Existencias (Inventarios)']);

  cdExistencia.Open;
  cdExistencia.Append;
  cdExistencia.FieldByName(pIdExistencia).AsInteger := 0;
  cdExistencia.FieldByName('CodigoExistencia').AsString := '';
  cdExistencia.FieldByName('Elaboracion').AsDateTime := Now();
  cdExistencia.FieldByName('Aplicacion').AsDateTime := Now();
  cdExistencia.FieldByName('Estado').AsString := 'ABIERTO';

  CualGenerar := Cual;
end;

procedure TFrmRegistroExistencia.IdEmbarcacionKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  LocCursor: TCursor;
begin
  if Key = 116 then
  begin
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;
      cdEmbarcacion.Refresh;
    finally
      Screen.Cursor := LocCursor;
    end;
  end;
end;

procedure TFrmRegistroExistencia.Imprimir1Click(Sender: TObject);
begin
  ClientModule1.ImprimeReporte('Inventario.fr3', reportInventario);
end;

procedure TFrmRegistroExistencia.InsertarInsumo1Click(Sender: TObject);
begin
  try
    // Verificar si la ventana de selección de Insumos ya ha sido abierta
    if Not Assigned(FrmSeleccionarInsumo) then
    begin
      cdInsumo.Open;
      FrmSeleccionarInsumo := TFrmSeleccionarInsumo.Create(Self);
      FrmSeleccionarInsumo.dsInsumo.DataSet := cdInsumo;
    end;

    try
      if FrmSeleccionarInsumo.ShowModal = mrOk Then
      begin
        // Verificar si ya existe un registro para este ingrediente
        if cdExistenciaPartida.Locate('IdInsumo', cdInsumo.FieldByName('IdInsumo').AsInteger, []) then
          raise InteligentException.CreateByCode(24, ['El Insumo ' + cdInsumo.FieldByName('NombreInsumo').AsString + ' ya existen dentro del registro de insumo que se está trabajando.' + #10 + #10 + 'Verifique esto e intente de nuevo.']);

        if Not CargarDatosFiltrados(cdExistenciaPartidaUpt, pIdExistenciaPartida, [-9]) then
          raise InteligentException.CreateByCode(16, ['Partidas de Registro de Existencias']);

        if cdExistenciaPartidaUpt.Active then
          cdExistenciaPartidaUpt.Refresh
        else
          cdExistenciaPartidaUpt.Open;

        cdExistenciaPartidaUpt.Append;
        cdExistenciaPartidaUpt.FieldByName(pIdExistenciaPartida).AsInteger := 0;
        cdExistenciaPartidaUpt.FieldByName(pIdExistencia).AsInteger := cdExistencia.FieldByName(pIdExistencia).AsInteger;
        cdExistenciaPartidaUpt.FieldByName('IdInsumo').AsInteger := cdInsumo.FieldByName('IdInsumo').AsInteger;
        cdExistenciaPartidaUpt.FieldByName('iIdUnidad').AsInteger := cdInsumo.FieldByName('iIdUnidad').AsInteger;
        cdExistenciaPartidaUpt.FieldByName('Cantidad').AsFloat := 0;
        cdExistenciaPartidaUpt.FieldByName('Cuenta').AsFloat := 0;
        cdExistenciaPartidaUpt.Post;
        cdExistenciaPartidaUpt.ApplyUpdates(-1);

        cdExistenciaPartida.Refresh;
        tvExistenciaPartida.DataController.Groups.FullExpand;
      end;
    finally
      FrmSeleccionarInsumo := Nil;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:InteligentException do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmRegistroExistencia.MostrarCabecera;
begin
  // Mostrar la ventana de captura de datos generales
  FormaGeneral := TForm.Create(Self);
  try

  finally

  end;
end;

procedure TFrmRegistroExistencia.FormaEditClose(Sender: TObject; var Action: TCloseAction);
begin
  TForm(Sender).ModalResult := FormaEditResult;
  Action := caFree;
end;

end.
