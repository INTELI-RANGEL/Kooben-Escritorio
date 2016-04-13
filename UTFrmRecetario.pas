unit UTFrmRecetario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, ClientModuleUnit1, UInteliDialog, ExtCtrls, StdCtrls,
  DBCtrls, JvExControls, JvLabel, cxGraphics, cxControls, cxLookAndFeels,
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
  URegistro, AdvPicture, frxClass, frxDBSet, cxContainer, cxImage,
  dxSkinsdxBarPainter, dxBar, dxSkinsForm, cxGroupBox, cxDBEdit, cxSplitter,
  dxRibbon, cxTextEdit, cxMemo;

type
  TFrmRecetario = class(TForm)
    cdReceta: TClientDataSet;
    cdBuscarReceta: TClientDataSet;
    cdRecetaUpt: TClientDataSet;
    cdTipoReceta: TClientDataSet;
    cdRecetaInsumo: TClientDataSet;
    cdInsumo: TClientDataSet;
    cdRecetaInsumoLista: TClientDataSet;
    dsReceta: TDataSource;
    dsRecetaInsumoLista: TDataSource;
    pmInsumos: TPopupMenu;
    Nuevo1: TMenuItem;
    EliminarSeleccionado1: TMenuItem;
    EditarInsumo1: TMenuItem;
    cdImagen: TClientDataSet;
    pmCabecera: TPopupMenu;
    ModificarcabeceradeReceta1: TMenuItem;
    ImprimirReceta1: TMenuItem;
    Verimagendetamaooriginal1: TMenuItem;
    cdRecetaImagen: TClientDataSet;
    cdRecetaPda: TClientDataSet;
    repReceta: TfrxReport;
    N1: TMenuItem;
    ImprimirReceta2: TMenuItem;
    fdsRecetaPda: TfrxDBDataset;
    fdsReceta: TfrxDBDataset;
    dsRecetaImagen: TDataSource;
    pmImagen: TPopupMenu;
    CerrarImagen1: TMenuItem;
    N2: TMenuItem;
    ActualizardatosdelaReceta1: TMenuItem;
    ActualizardatosdelaReceta2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    PreparacionReceta: TcxDBMemo;
    pnlReceta: TPanel;
    NombreReceta: TDBText;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    DescripcionReceta: TDBText;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    tvPartidas: TcxGridDBTableView;
    CodigoInsumo: TcxGridDBColumn;
    NombreInsumo: TcxGridDBColumn;
    Cantidad: TcxGridDBColumn;
    sCodigo: TcxGridDBColumn;
    glNivel1: TcxGridLevel;
    AdvPicture1: TAdvPicture;
    jvlbl1: TJvLabel;
    jvlbl2: TJvLabel;
    DxManager1: TdxBarManager;
    dxSkinController1: TdxSkinController;
    dxbrDxManager1Bar1: TdxBar;
    dxSubInsertar: TdxBarSubItem;
    DxBtnInserta: TdxBarButton;
    DxBtnEditar: TdxBarButton;
    DxBtnEliminar: TdxBarButton;
    DxBtnActualizar: TdxBarButton;
    DxBtnImprimir: TdxBarButton;
    Imagen: TcxDBImage;
    dsImagen: TDataSource;
    DxBtnEditReceta: TdxBarButton;
    cxspltr1: TcxSplitter;
    dxPopupIMG: TdxRibbonPopupMenu;
    DxBtnLoadImg: TdxBarButton;
    dxBtnCopyImg: TdxBarLargeButton;
    pnlModoPreparacion: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    CodigoReceta: TDBText;
    Panel4: TPanel;
    JvLabel1: TJvLabel;
    pnlComensales: TPanel;
    Splitter1: TSplitter;
    JvLabel4: TJvLabel;
    DBText1: TDBText;
    pnlRelativo: TPanel;
    Leyenda_Relativo: TDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure pnlRecetaDblClick(Sender: TObject);
    procedure tvPartidasEditDblClick(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure tvPartidasEditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure EliminarSeleccionado1Click(Sender: TObject);
    procedure Nuevo1Click(Sender: TObject);
    procedure cdRecetaAfterOpen(DataSet: TDataSet);
    procedure ImagenDblClick(Sender: TObject);
    procedure FormImageKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ModificarcabeceradeReceta1Click(Sender: TObject);
    procedure Verimagendetamaooriginal1Click(Sender: TObject);
    procedure ImprimirReceta2Click(Sender: TObject);
    procedure ImprimirReceta1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CerrarImagen1Click(Sender: TObject);
    procedure ActualizardatosdelaReceta1Click(Sender: TObject);
    procedure ActualizardatosdelaReceta2Click(Sender: TObject);
    procedure imagenMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DxBtnEditRecetaClick(Sender: TObject);
    procedure DxBtnLoadImgClick(Sender: TObject);
    procedure dxBtnCopyImgClick(Sender: TObject);
    procedure DxBtnEditarClick(Sender: TObject);
    procedure tvPartidasCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Leyenda_RelativoExit(Sender: TObject);
    procedure Leyenda_RelativoEnter(Sender: TObject);
  private
    Titulo: String;
    IdReceta: Integer;
    FormImage: TForm;
    OriginalPos: TPoint;
    function BuscarReceta: Integer;
    procedure VerificaDataSet(DataSet: TClientDataSet);
    procedure CrearPartidasInsumos;
    procedure CrearInsumos;
    procedure CrearConjuntosNuevaReceta;
    procedure EliminarPartida;
    procedure EditarPartida;
    procedure ImprimirReceta;
    procedure FormImageShow(Sender: TObject);
    procedure FormImageClose(Sender: TObject; var Action: TCloseAction);
    procedure ActualizarReceta;
  public
    {}
  end;

var
  FrmRecetario: TFrmRecetario;

implementation

{$R *.dfm}

Uses
  Unit2, UTFrmBuscarReceta, UTFrmNuevaReceta, UTFrmRecetaInsumo;

const
  LeyReceta: Array[False..True] of String = ('Receta', 'Barra');

procedure TFrmRecetario.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
begin
  SetRegistry('\Ventanas', '\' + Self.Name + '\Panel2', 'Height', IntToStr(Panel2.Height));
  SetRegistry('\Ventanas', '\' + Self.Name + '\pnlComensales', 'Width', IntToStr(pnlComensales.Width));
  SetRegistry('\Ventanas', '\' + Self.Name + '\pnlRelativo', 'Width', IntToStr(pnlRelativo.Width));

  for i:= 0 to tvPartidas.ColumnCount -1 do
    SetRegistry('\Ventanas', '\' + self.Name + '\tvPartidas', 'Column' + IntToStr(i), IntToStr(tvPartidas.Columns[i].Width));

  EliminarConjunto([cdReceta, cdBuscarReceta, cdRecetaUpt, cdTipoReceta, cdRecetaInsumo, cdRecetaInsumoLista]);
  Action := caFree;
end;

procedure TFrmRecetario.FormImageKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
    TForm(Sender).Close;
end;

procedure TFrmRecetario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    80: if ssCtrl in Shift then
          ImprimirReceta;
    116: ActualizarReceta;
  end;
end;

procedure TFrmRecetario.FormShow(Sender: TObject);
var
  i: Integer;
  ListaBorrar: Array of Variant;
begin
  try
    Panel2.Height := StrToInt(VarRegistry('\Ventanas', '\' + self.Name + '\Panel2', 'Height'));
  Except
    ;
  end;

  try
    pnlComensales.Width := StrToInt(VarRegistry('\Ventanas', '\' + self.Name + '\pnlComensales', 'Width'));
  Except
    ;
  end;

  try
    pnlRelativo.Width := StrToInt(VarRegistry('\Ventanas', '\' + self.Name + '\pnlRelativo', 'Width'));
  Except
    ;
  end;

  for i:= 0 to tvPartidas.ColumnCount -1 do
    try
      tvPartidas.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + self.Name + '\tvPartidas', 'Column'+ IntToStr(i)));
    except
      ;
    end;

  pnlModoPreparacion.Visible := AnsiCompareText(Form2.TipoReceta, 'Barra') <> 0;

  Try
    case Form2.IdReceta of
      -3: VerificaPermisos('cmt_receta', [vpBorrar], EADError);
      -5: VerificaPermisos('cmt_receta', [vpLeer], EADError);
      -9: VerificaPermisos('cmt_receta', [vpInsertar], EADError);
    end;

    // Crear los dataset necesarios
    VerificaDataSet(cdReceta);

    // Se va a abrir una receta
    if Form2.IdReceta = -5 then
    begin
      Titulo := 'Abrir ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0];
      try
        imagen.Picture.LoadFromFile(ExtractFilePath(application.ExeName) + 'images\receta.png' );
      except
        ;
      end;

      BuscarReceta;

      Self.Caption := LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0] + ' ' + cdReceta.FieldByName('NombreReceta').AsString;

      CrearPartidasInsumos;

      IdReceta := cdReceta.FieldByName('IdReceta').AsInteger;

      if Not CargarDatosFiltrados(cdRecetaInsumoLista, 'IdReceta', [IdReceta]) then
        raise InteligentException.CreateByCode(6, ['Ingredientes por ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0], IdReceta, 'Id. ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0]]);

      cdRecetaInsumoLista.Open;

      // Visualizar el panel del Personal adecuado
      pnlRelativo.Visible := Not cdReceta.FieldByName('IdRecetaPartida').IsNull;
      if pnlRelativo.Visible then
      begin
        pnlRelativo.Parent := Panel1;
        pnlRelativo.Align := alRight;
      end;
      pnlComensales.Visible := cdReceta.FieldByName('IdRecetaPartida').IsNull;
    end;

    // Se va a crear una nueva receta
    if Form2.IdReceta = -9 then
    begin
      CrearConjuntosNuevaReceta;

      if Not CargarDatosFiltrados(cdRecetaUpt, 'IdReceta', [-9]) then
        raise InteligentException.CreateByCode(6, [LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0], -9, 'Id. ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0]]);

      cdRecetaUpt.Open;
      cdTipoReceta.Open;

      Application.CreateForm(TFrmNuevaReceta, FrmNuevaReceta);
      FrmNuevaReceta.dsReceta.DataSet := cdRecetaUpt;
      FrmNuevaReceta.dsTipoReceta.DataSet := cdTipoReceta;
      FrmNuevaReceta.pIdReceta := -9;
      FrmNuevaReceta.pCodigoReceta := '';
      FrmNuevaReceta.TipoReceta := Form2.TipoReceta;
      if FrmNuevaReceta.ShowModal = mrCancel then
        raise InteligentException.Create('*');

      Self.Caption := LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0] + ' ' + cdRecetaUpt.FieldByName('NombreReceta').AsString;

      IdReceta := UltimoId;

      // Preguntar si quiere meterle insumos ahora
      if InteliDialog.ShowModal('Captura de Insumos', '¿Desea dar de alta los insumos para esta ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0] + ' en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        // Crear el dataset de las partidas de insumo
        CrearPartidasInsumos;

        if Not CargarDatosFiltrados(cdRecetaInsumoLista, 'IdReceta', [IdReceta]) then
          raise InteligentException.CreateByCode(6, ['Insumos por ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0], IdReceta, 'Id. ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0]]);

        if Not CargarDatosFiltrados(cdRecetaInsumo, 'IdReceta', [-9]) then
          raise InteligentException.CreateByCode(6, ['Insumos por ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0], -9, 'Id. ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0]]);

        cdRecetaInsumoLista.Open;
        cdRecetaInsumo.Open;

        // Crear el dataset de los insumos
        CrearInsumos;
        cdInsumo.Open;

        // Abrir ventana de partidas de insumos
        Application.CreateForm(TFrmRecetaInsumo, FrmRecetaInsumo);
        FrmRecetaInsumo.dsReceta.DataSet := cdRecetaUpt;
        FrmRecetaInsumo.dsRecetaInsumo.DataSet := cdRecetaInsumo;
        FrmRecetaInsumo.dsInsumo.DataSet := cdInsumo;
        FrmRecetaInsumo.dsRecetaInsumoLista.DataSet := cdRecetaInsumoLista;

        FrmRecetaInsumo.IdReceta := IdReceta;

        cdRecetaInsumo.Append;
        cdRecetaInsumo.FieldByName('IdReceta').AsInteger := IdReceta;
        cdRecetaInsumo.FieldByName('IdRecetaPartida').AsInteger := 0;
        FrmRecetaInsumo.ShowModal;
      end;

      // Abrir la receta y sus partidas
      if Not CargarDatosFiltrados(cdReceta, 'IdReceta', [IdReceta]) then
        raise InteligentException.CreateByCode(6, [LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0] + 's', IdReceta, 'Id. ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0]]);
      cdReceta.Open;
    end;

    // Se va a borrar una receta
    if Form2.IdReceta = -3 then
    begin
      Try
        Titulo := 'Eliminar ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0];

        BuscarReceta;

        // Preguntar si se desea eliminar la receta
        if InteliDialog.ShowModal('Eliminar Receta', 'Está a punto de eliminar la ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0] + ':' + #10 + #10 +
                                  cdReceta.FieldByName('CodigoReceta').AsString + ' - ' + cdReceta.FieldByName('NombreReceta').AsString + #10 +
                                  cdReceta.FieldByName('DescripcionReceta').AsString + #10 + #10 +

                                  '¿Está seguro de eliminarla de manera definitiva?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        Begin
          Try
            IniciarTransaccion;

            CrearPartidasInsumos;

            IdReceta := cdReceta.FieldByName('IdReceta').AsInteger;

            if Not CargarDatosFiltrados(cdRecetaInsumoLista, 'IdReceta', [IdReceta]) then
              raise InteligentException.CreateByCode(6, ['Insumos por ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0], IdReceta, 'Id. ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0]]);

            cdRecetaInsumoLista.Open;

            // Eliminar las partidas primero
            cdRecetaInsumoLista.First;
            SetLength(ListaBorrar, cdRecetaInsumoLista.RecordCount);
            while Not cdRecetaInsumoLista.Eof do
            begin
              ListaBorrar[cdRecetaInsumoLista.RecNo -1] := cdRecetaInsumoLista.FieldByName('IdRecetaPartida').AsInteger;
              cdRecetaInsumoLista.Next;
            end;

            if cdRecetaInsumoLista.RecordCount > 0 then
            begin
              if EliminarRegistro(cdRecetaInsumoLista, ListaBorrar) = 0 then
                raise InteligentException.CreateByCode(32, ['Registro de Ingredientes', 'de la ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0] + ' indicada', 'Consumos']);
            end;

            if EliminarRegistro(cdReceta, [cdReceta.FieldByName('IdReceta').AsInteger]) = 1 then
              InteliDialog.ShowModal(LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0] + ' eliminada', 'La ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0] + ' seleccionada ha sido eliminada satisfactoriamente.', mtInformation, [mbOk], 0);

            ConcretarTransaccion;

            PostMessage(Self.Handle, WM_CLOSE, 0, 0);
          Except
            on e:InteligentException do
            begin
              CancelarTransaccion;
              InteliDialog.ShowModal(e.Title, e.Message, mtError, [mbOk], 0);
            end;

            on e:Exception do
            begin
              CancelarTransaccion;
              InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
            end;
          End;
        End else PostMessage(Self.Handle, WM_CLOSE, 0, 0);

        cdReceta.Close;
        cdRecetaInsumoLista.Close;
      Finally
        //PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      End;
    end;
  Except
    on e:InteligentException do
    begin
      if e.Message <> '*' then
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      if self.Showing then
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:InteligentWarning do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, mtWarning, [mbOk], 0);
      if self.Showing then
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmRecetario.ImagenDblClick(Sender: TObject);
var
  OldParent: TWinControl;
  LocPanelImage: TPanel;
  Continua: Boolean;
begin
  Continua := True;

  // Verificar primero si la receta cuenta con una imagen
  if Imagen.Picture.Height = 0 then
  begin
    Continua := False;
    if InteliDialog.ShowModal('No hay imagen asignada', 'No se ha asignado una imagen para esta ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0] + ', puede asignar una imagen modificando el encabezado de la receta.' + #10 +
                              '¿Desea editar el encabezado en este momento para asignar una imagen?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      pnlRecetaDblClick(pnlReceta);
      Continua := Imagen.Picture.Height > 0;
  end;

  if Continua then
  Try
    OldParent := Imagen.Parent;
    imagen.OnDblClick := Nil;
    // Mostrar la imagen en grande
    FormImage := TForm.Create(Self);
    FormImage.Name := 'FormImage';
    FormImage.Position := poScreenCenter;
    formImage.WindowState := wsMaximized;
    FormImage.Caption := cdReceta.FieldByName('NombreReceta').AsString;
    FormImage.OnKeyDown := FormImageKeyDown;
    FormImage.OnShow := FormImageShow;
    FormImage.OnClose := FormImageClose;
    FormImage.BorderStyle := bsSizeable;
    FormImage.Width := 320;
    FormImage.Height := 200;

    LocPanelImage := TPanel.Create(FormImage);
    LocPanelImage.Parent := FormImage;
    LocPanelImage.Align := alClient;
    LocPanelImage.BorderWidth := 3;

    Imagen.Parent := LocPanelImage;
    imagen.Align := AlClient;
    //Imagen.StretchMode := smNever;
    //Imagen.OnMouseDown := ImagenMouseDown;
    Imagen.PopupMenu := pmImagen;

    GetCursorPos(OriginalPos);

    FormImage.ShowModal;
  Finally
    SetCursorPos(OriginalPos.X, OriginalPos.Y);
    Imagen.Parent := OldParent;
    //Imagen.StretchMode := smShrink;
    imagen.OnDblClick := ImagenDblClick;
    Imagen.PopupMenu := Nil;
    imagen.Align := AlLeft;
    imagen.Width := 195;
    imagen.Height := 158;
    FormImage.Destroy;
    FormImage := Nil;
  End;
end;

procedure TFrmRecetario.imagenMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Assigned(FormImage) then
  begin
    ReleaseCapture;
    SendMessage(FormImage.Handle, WM_SYSCOMMAND, 61458, 0);
  end;
end;

procedure TFrmRecetario.ImprimirReceta1Click(Sender: TObject);
begin
  ImprimirReceta;
end;

procedure TFrmRecetario.ImprimirReceta2Click(Sender: TObject);
begin
  ImprimirReceta;
end;

procedure TFrmRecetario.Leyenda_RelativoEnter(Sender: TObject);
begin
  //
end;

procedure TFrmRecetario.Leyenda_RelativoExit(Sender: TObject);
begin
  //
end;

procedure TFrmRecetario.ModificarcabeceradeReceta1Click(Sender: TObject);
begin
  pnlRecetaDblClick(pnlReceta);
end;

procedure TFrmRecetario.Nuevo1Click(Sender: TObject);
begin
  Try
    VerificaPermisos('cmt_receta', [vpInsertar], EADError);

    CrearPartidasInsumos;
    CrearInsumos;

    Application.CreateForm(TFrmRecetaInsumo, FrmRecetaInsumo);
    FrmRecetaInsumo.dsReceta.DataSet := cdReceta;
    FrmRecetaInsumo.dsRecetaInsumo.DataSet := cdRecetaInsumo;
    FrmRecetaInsumo.dsInsumo.DataSet := cdInsumo;
    FrmRecetaInsumo.dsRecetaInsumoLista.DataSet := cdRecetaInsumoLista;

    FrmRecetaInsumo.IdReceta := IdReceta;

    cdRecetaInsumo.Close;
    if Not CargarDatosFiltrados(cdRecetaInsumo, 'IdRecetaPartida', [-9]) then
      raise InteligentException.CreateByCode(16, ['Insumos por ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0]]);
    cdRecetaInsumo.Open;

    if Not cdInsumo.Active then
      cdInsumo.Open;

    cdRecetaInsumo.Append;
    cdRecetaInsumo.FieldByName('IdReceta').AsInteger := IdReceta;
    cdRecetaInsumo.FieldByName('IdRecetaPartida').AsInteger := 0;
    if FrmRecetaInsumo.ShowModal = mrOk then
      cdRecetaInsumoLista.Refresh;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmRecetario.pnlRecetaDblClick(Sender: TObject);
begin
  try
    VerificaPermisos('cmt_receta', [vpEscribir], EADError);

    // Editar el encabezado de la receta
    CrearConjuntosNuevaReceta;

    Application.CreateForm(TFrmNuevaReceta, FrmNuevaReceta);
    FrmNuevaReceta.dsReceta.DataSet := cdRecetaUpt;
    FrmNuevaReceta.dsTipoReceta.DataSet := cdTipoReceta;
    FrmNuevaReceta.pIdReceta := cdReceta.FieldByName('IdReceta').AsInteger;
    FrmNuevaReceta.pCodigoReceta := cdReceta.FieldByName('CodigoReceta').AsString;
    if FrmNuevaReceta.ShowModal = mrOk then
    begin
      cdReceta.Refresh;
      cdRecetaAfterOpen(cdReceta);
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmRecetario.tvPartidasCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  DxBtnEditar.Click;
end;

procedure TFrmRecetario.tvPartidasEditDblClick(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
begin
  EditarPartida;
end;

procedure TFrmRecetario.tvPartidasEditKeyDown(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState);
begin
  Try
    case Key of
      46: EliminarPartida;
    end;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  End;
end;

function TFrmRecetario.BuscarReceta: Integer;
var
  i, ii: Integer;
  YaAbierto: Boolean;
  LocForm: TForm;
  LocDataSet: TClientDataSet;
begin
  VerificaDataSet(cdBuscarReceta);

  if Form2.Secundaria then
  begin
    if Not CargarDatosFiltrados(cdBuscarReceta, 'Ingredientes,Tipo,Secundaria', ['Si', Form2.TipoReceta, 'Si']) then
      raise InteligentException.CreateByCode(6, ['Recetas Secundarias', 'Si', 'Ingredientes']);
  end
  else
    if Not CargarDatosFiltrados(cdBuscarReceta, 'Ingredientes,Tipo', ['Si', Form2.TipoReceta]) then
      raise InteligentException.CreateByCode(6, [LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0] + 's', 'Si', 'Ingredientes']);

  cdBuscarReceta.Open;

  Application.CreateForm(TFrmBuscarReceta, FrmBuscarReceta);
  FrmBuscarReceta.dsReceta.DataSet := cdBuscarReceta;
  FrmBuscarReceta.Caption := Titulo;

  if Form2.IdReceta = -3 then
    FrmBuscarReceta.btnAbrir.Caption := '&Eliminar'
  else
    FrmBuscarReceta.btnAbrir.Caption := '&Abrir';

  if FrmBuscarReceta.ShowModal = mrCancel then
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
        if LocForm.Components[ii].ClassNameIs('TClientDataSet') and (AnsiCompareText(LocForm.Components[ii].Name, 'cdReceta') = 0) then
        begin
          LocDataSet := TClientDataSet(LocForm.Components[ii]);
          YaAbierto := (LocDataSet.ProviderName <> '') and (LocDataSet.Active) and (LocDataSet.RecordCount > 0) and (LocDataSet.FieldByName('IdReceta').AsInteger = cdBuscarReceta.FieldByName('IdReceta').AsInteger);
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
    raise InteligentWarning.CreateByCode(24, ['La ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0] + ' de ' + cdBuscarReceta.FieldByName('NombreReceta').AsString + ' ya se encuentra abierta en el sistema, no es posible abrir dos veces la misma ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0] + '.']);
    //InteliDialog.ShowModal('La receta ya está abierta', 'La receta de ' + cdBuscarReceta.FieldByName('NombreReceta').AsString + ' ya se encuentra abierta en el sistema, no es posible abrir dos veces la misma receta.', mtConfirmation, [mbOk], 0);
  end
  else
  begin
    if Not CargarDatosFiltrados(cdReceta, 'IdReceta', [cdBuscarReceta.FieldByName('IdReceta').AsInteger]) then
      raise InteligentException.CreateByCode(6, [LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0] + 's', cdBuscarReceta.FieldByName('IdReceta').AsInteger, 'Id. ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0]]);

    if cdReceta.Active then
      cdReceta.Refresh
    else
      cdReceta.Open;

    if cdReceta.RecordCount = 0 then
      raise InteligentException.CreateByCode(13, [cdBuscarReceta.FieldByName('CodigoReceta').AsString, LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0] + 's']);
  end;
end;

procedure TFrmRecetario.VerificaDataSet(DataSet: TClientDataSet);
begin
  if DataSet.ProviderName = '' then
    if Not CrearConjunto(DataSet, 'cmt_receta', ccCatalog) then
      raise InteligentException.CreateByCode(5, [LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0] + 's']);
end;

procedure TFrmRecetario.Verimagendetamaooriginal1Click(Sender: TObject);
begin
  ImagenDblClick(Imagen);
end;

procedure TFrmRecetario.CrearPartidasInsumos;
begin
  if cdRecetaInsumo.ProviderName = '' then
    if Not CrearConjunto(cdRecetaInsumo, 'cmt_recetapartida', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Ingredientes de ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0]]);

  if cdRecetaInsumoLista.ProviderName = '' then
    if Not CrearConjunto(cdRecetaInsumoLista, 'cmt_recetapartida', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Ingredientes de ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0]]);
end;

procedure TFrmRecetario.dxBtnCopyImgClick(Sender: TObject);
begin
  TcxImage(Imagen).CopyToClipboard;
end;

procedure TFrmRecetario.DxBtnEditarClick(Sender: TObject);
begin
  if cdRecetaInsumoLista.RecordCount > 0 then
  Try
    VerificaPermisos('cmt_receta', [vpEscribir], EADError);

    CrearPartidasInsumos;
    CrearInsumos;

    Application.CreateForm(TFrmRecetaInsumo, FrmRecetaInsumo);
    FrmRecetaInsumo.dsReceta.DataSet := cdReceta;
    FrmRecetaInsumo.dsRecetaInsumo.DataSet := cdRecetaInsumo;
    FrmRecetaInsumo.dsInsumo.DataSet := cdInsumo;
    FrmRecetaInsumo.dsRecetaInsumoLista.DataSet := cdRecetaInsumoLista;

    FrmRecetaInsumo.IdReceta := IdReceta;

    cdRecetaInsumo.Close;
    if Not CargarDatosFiltrados(cdRecetaInsumo, 'IdRecetaPartida', [cdRecetaInsumoLista.FieldByName('IdRecetaPartida').AsInteger]) then
      raise InteligentException.CreateByCode(16, ['Insumos por ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0]]);
    cdRecetaInsumo.Open;

    if Not cdInsumo.Active then
      cdInsumo.Open;

    if cdRecetaInsumo.RecordCount = 0 then
      raise InteligentException.CreateByCode(12, [cdRecetaInsumoLista.FieldByName('NombreInsumo').AsString, 'Partidas de Receta']);

    cdRecetaInsumo.Edit;
    if FrmRecetaInsumo.ShowModal = mrOk then
      cdRecetaInsumoLista.Refresh;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmRecetario.DxBtnEditRecetaClick(Sender: TObject);
begin
  pnlRecetaDblClick(pnlReceta);
end;

procedure TFrmRecetario.DxBtnLoadImgClick(Sender: TObject);
begin
  pnlRecetaDblClick(pnlReceta);
end;

procedure TFrmRecetario.CrearInsumos;
begin
  if cdInsumo.ProviderName = '' then
    if Not CrearConjunto(cdInsumo, 'cmt_insumo', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Insumos']);

  if Not CargarDatosFiltrados(cdInsumo, 'Orden', ['Nombre']) then
    raise InteligentException.CreateByCode(16, ['Insumos']);
end;

procedure TFrmRecetario.cdRecetaAfterOpen(DataSet: TDataSet);
var
  //s: TMemoryStream;
  g: TGraphic;
  Field: TBlobField;
  Stream: TMemoryStream;
begin
  // Abrir el dataset de las imagenes para mostrar la suya
  if cdImagen.ProviderName = '' then
    if Not CrearConjunto(cdImagen, 'cmt_receta_soloimagen', ccSelect) then
      raise InteligentException.CreateByCode(5, ['Imagenes de ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0] + 's']);

  if Not CargarDatosFiltrados(cdImagen, 'IdReceta', [cdReceta.FieldByName('IdReceta').AsInteger]) then
    raise InteligentException.CreateByCode(6, ['Imagenes de ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0] + 's', cdReceta.FieldByName('IdReceta').AsInteger, 'Id. ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0]]);

  if cdImagen.Active then
    cdImagen.Refresh
  else
    cdImagen.Open;
end;

procedure TFrmRecetario.CerrarImagen1Click(Sender: TObject);
begin
  if Assigned(FormImage) then
    FormImage.Close;
end;

procedure TFrmRecetario.CrearConjuntosNuevaReceta;
begin
  if cdRecetaUpt.ProviderName = '' then
    if Not CrearConjunto(cdRecetaUpt, 'cmt_receta', ccUpdate) then
      raise InteligentException.CreateByCode(5, [LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0] + 's']);

  if cdTipoReceta.ProviderName = '' then
    if Not CrearConjunto(cdTipoReceta, 'cmt_tiporeceta', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Tipos ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0]]);
end;

procedure TFrmRecetario.EliminarPartida;
var
  myRes: Integer;
begin
  if (cdRecetaInsumoLista.Active) and (cdRecetaInsumoLista.RecordCount > 0) and VerificaPermisos('cmt_receta', [vpBorrar], EADMessage) then
    if InteliDialog.ShowModal('Eliminar Insumo', 'Está a punto de eliminar el Insumo ' + cdRecetaInsumoLista.FieldByName('CodigoInsumo').AsString + ' - ' + cdRecetaInsumoLista.FieldByName('NombreInsumo').AsString + ' ' +
                              'de la ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0] + ' ' + cdReceta.FieldByName('NombreReceta').AsString + #10 + #10 +
                              '¿Está seguro que desea eliminarlo en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      myRes := EliminarRegistro(cdRecetaInsumoLista, [cdRecetaInsumoLista.FieldByName('IdRecetaPartida').AsInteger]);
      if myRes = 1 then
        cdRecetaInsumoLista.Refresh
      else
        raise InteligentException.CreateByCode(9, ['registro de Insumo ' + cdRecetaInsumoLista.FieldByName('NombreInsumo').AsString, 'de la ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0] + ' ' + cdReceta.FieldByName('NombreReceta').AsString]);
    end;
end;

procedure TFrmRecetario.EditarPartida;
var
  AltoGrid: Integer;
begin
  CrearPartidasInsumos;
  CrearInsumos;

  Application.CreateForm(TFrmRecetaInsumo, FrmRecetaInsumo);
  FrmRecetaInsumo.dsReceta.DataSet := cdRecetaUpt;
  FrmRecetaInsumo.dsRecetaInsumo.DataSet := cdRecetaInsumo;
  FrmRecetaInsumo.dsInsumo.DataSet := cdInsumo;
  FrmRecetaInsumo.dsRecetaInsumoLista.DataSet := cdRecetaInsumoLista;

  FrmRecetaInsumo.IdReceta := IdReceta;

  if Not CargarDatosFiltrados(cdRecetaInsumo, 'IdRecetaPartida', [cdRecetaInsumoLista.FieldByName('IdRecetaPartida').AsInteger]) then
    raise InteligentException.CreateByCode(12, [cdRecetaInsumoLista.FieldByName('CodigoInsumo').AsString, 'Insumos por ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0]]);
  if cdRecetaInsumo.Active then
    cdRecetaInsumo.Refresh
  else
    cdRecetaInsumo.Open;

  if cdRecetaInsumo.RecordCount <> 1 then
    raise InteligentException.CreateByCode(27, ['Insumos por ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0], cdRecetaInsumoLista.FieldByName('CodigoInsumo').AsString]);

  if cdInsumo.Active then
    cdInsumo.Refresh
  else
    cdInsumo.Open;

  cdRecetaInsumo.Edit;
  Try
    AltoGrid := FrmRecetaInsumo.GridInsumos.Height;
    FrmRecetaInsumo.btnNuevo.Enabled := False;
    FrmRecetaInsumo.GridInsumos.Visible := False;
    FrmRecetaInsumo.Panel1.Align := alClient;
    FrmRecetaInsumo.Height := FrmRecetaInsumo.Height - AltoGrid;
    FrmRecetaInsumo.dsReceta.DataSet := cdReceta;
    FrmRecetaInsumo.dsRecetaInsumo.DataSet := cdRecetaInsumo;
    FrmRecetaInsumo.ShowModal;
  Finally
    FrmRecetaInsumo.Height := FrmRecetaInsumo.Height + AltoGrid;
    FrmRecetaInsumo.Panel1.Align := alTop;
    FrmRecetaInsumo.GridInsumos.Visible := True;
  End;
end;

procedure TFrmRecetario.EliminarSeleccionado1Click(Sender: TObject);
begin
  EliminarPartida;
end;

procedure TFrmRecetario.ImprimirReceta;
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      VerificaPermisos('cmt_receta', [vpImprimir], EADError);

      // Imprimir en este momento la receta abierta
      if cdRecetaImagen.ProviderName = '' then
        if not CrearConjunto(cdRecetaImagen, 'cmt_receta_imagen', ccSelect) then
          raise InteligentException.CreateByCode(5, [LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0] + 's']);

      if cdRecetaPda.ProviderName = '' then
        if not CrearConjunto(cdRecetaPda, 'cmt_recetapartida', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Ingredientes por ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0]]);

      if not CargarDatosFiltrados(cdRecetaImagen, 'IdReceta', [cdReceta.FieldByName('IdReceta').AsInteger]) then
        raise InteligentException.CreateByCode(6, [LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0] + 's', cdReceta.FieldByName('IdReceta').AsInteger, 'Id. ' + LeyReceta[AnsiCompareText(Form2.TipoReceta, 'Barra') = 0]]);

      if cdRecetaImagen.Active then
        cdRecetaImagen.Refresh
      else
        cdRecetaImagen.Open;

      if cdRecetaPda.Active then
        cdRecetaPda.Refresh
      else
        cdRecetaPda.Open;

      ClientModule1.ImprimeReporte('Recetas.fr3', RepReceta);
    Finally
      Screen.Cursor := Cursor;
    End;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmRecetario.FormImageShow(Sender: TObject);
begin
  TForm(Sender).Height := Imagen.Picture.Height + 4;
  TForm(Sender).Width := Imagen.Picture.Width + 4;

  Try
    FormImage.Top := StrToInt(VarRegistry('\Ventanas', '\' + FormImage.Name, 'Top'));
  Except
    ;
  End;

  Try
    FormImage.Left := StrToInt(VarRegistry('\Ventanas', '\' + FormImage.Name, 'Left'));
  Except
    ;
  End;

  SetCursorPos(FormImage.Left + Trunc(FormImage.Width / 2), FormImage.Top + Trunc(FormImage.Height / 2));
end;



procedure TFrmRecetario.FormImageClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SetRegistry('\Ventanas', '\' + FormImage.Name, 'Top', IntToStr(FormImage.Top));
  SetRegistry('\Ventanas', '\' + FormImage.Name, 'Left', IntToStr(FormImage.Left));
end;

procedure TFrmRecetario.ActualizardatosdelaReceta1Click(Sender: TObject);
begin
  ActualizarReceta;
end;

procedure TFrmRecetario.ActualizardatosdelaReceta2Click(Sender: TObject);
begin
  ActualizarReceta;
end;

procedure TFrmRecetario.ActualizarReceta;
var
  Cursor: TCursor;
begin
  if cdReceta.Active and cdRecetaInsumoLista.Active then
  begin
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;
      cdReceta.Refresh;
      cdRecetaInsumoLista.Refresh;
    Finally
      Screen.Cursor := Cursor;
    End;
  end;
end;

end.
