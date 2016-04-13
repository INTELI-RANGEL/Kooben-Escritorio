unit UTFrmConsumible;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB,
  cxDBData, cxContainer, cxImage, cxDBEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  AdvPicture, StdCtrls, dxBar, ExtCtrls, JvExControls, JvLabel, DBCtrls,
  DBClient, ClientModuleUnit1, UInteliDialog, URegistro, Menus, frxClass;

type
  TFrmConsumible = class(TForm)
    pnlReceta: TPanel;
    NombreReceta: TDBText;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    DescripcionReceta: TDBText;
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel3: TPanel;
    CodigoReceta: TDBText;
    Panel4: TPanel;
    JvLabel1: TJvLabel;
    Panel5: TPanel;
    JvLabel4: TJvLabel;
    DBText1: TDBText;
    DxManager1: TdxBarManager;
    dxbrDxManager1Bar1: TdxBar;
    dxSubInsertar: TdxBarSubItem;
    DxBtnInserta: TdxBarButton;
    DxBtnEditar: TdxBarButton;
    DxBtnEliminar: TdxBarButton;
    DxBtnActualizar: TdxBarButton;
    DxBtnImprimir: TdxBarButton;
    DxBtnEditReceta: TdxBarButton;
    DxBtnLoadImg: TdxBarButton;
    dxBtnCopyImg: TdxBarLargeButton;
    GroupBox1: TGroupBox;
    AdvPicture1: TAdvPicture;
    Panel2: TPanel;
    jvlbl1: TJvLabel;
    cxGrid1: TcxGrid;
    tvPartidas: TcxGridDBTableView;
    CodigoInsumo: TcxGridDBColumn;
    NombreInsumo: TcxGridDBColumn;
    Cantidad: TcxGridDBColumn;
    sCodigo: TcxGridDBColumn;
    Precio_Insumo: TcxGridDBColumn;
    sCodigo_Insumo: TcxGridDBColumn;
    Cantidad_Insumo: TcxGridDBColumn;
    Costo_Insumo: TcxGridDBColumn;
    glNivel1: TcxGridLevel;
    Imagen: TcxDBImage;
    cdBuscarReceta: TClientDataSet;
    cdReceta: TClientDataSet;
    cdRecetaInsumoLista: TClientDataSet;
    cdRecetaUpt: TClientDataSet;
    cdTipoReceta: TClientDataSet;
    pmInsumos: TPopupMenu;
    Nuevo1: TMenuItem;
    EditarInsumo1: TMenuItem;
    EliminarSeleccionado1: TMenuItem;
    N3: TMenuItem;
    ActualizardatosdelaReceta2: TMenuItem;
    N1: TMenuItem;
    ImprimirReceta2: TMenuItem;
    pmCabecera: TPopupMenu;
    ModificarcabeceradeReceta1: TMenuItem;
    Verimagendetamaooriginal1: TMenuItem;
    N4: TMenuItem;
    ActualizardatosdelaReceta1: TMenuItem;
    N2: TMenuItem;
    ImprimirReceta1: TMenuItem;
    pmImagen: TPopupMenu;
    CerrarImagen1: TMenuItem;
    cdRecetaInsumo: TClientDataSet;
    cdInsumo: TClientDataSet;
    cdImagen: TClientDataSet;
    cdRecetaImagen: TClientDataSet;
    cdRecetaPda: TClientDataSet;
    repReceta: TfrxReport;
    dsReceta: TDataSource;
    dsRecetaInsumoLista: TDataSource;
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
    procedure ImagenMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DxBtnEditRecetaClick(Sender: TObject);
    procedure DxBtnInsertaClick(Sender: TObject);
    procedure DxBtnEliminarClick(Sender: TObject);
    procedure DxBtnActualizarClick(Sender: TObject);
    procedure DxBtnImprimirClick(Sender: TObject);
    procedure DxBtnLoadImgClick(Sender: TObject);
    procedure dxBtnCopyImgClick(Sender: TObject);
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
    { Public declarations }
  end;

var
  FrmConsumible: TFrmConsumible;

implementation

{$R *.dfm}

Uses
  Unit2, UTFrmNuevoConsumible, UTFrmRecetaInsumo, UTFrmBuscarReceta;

function TFrmConsumible.BuscarReceta: Integer;
var
  i, ii: Integer;
  YaAbierto: Boolean;
  LocForm: TForm;
  LocDataSet: TClientDataSet;
begin
  VerificaDataSet(cdBuscarReceta);

  if Not CargarDatosFiltrados(cdBuscarReceta, 'Ingredientes,Cual', ['Si', 'CONSUMIBLE']) then
    raise InteligentException.CreateByCode(6, ['Paquetes de Consumibles', 'Si', 'Insumos']);

  cdBuscarReceta.Open;

  Application.CreateForm(TFrmBuscarReceta, FrmBuscarReceta);
  FrmBuscarReceta.dsReceta.DataSet := cdBuscarReceta;
  FrmBuscarReceta.Caption := Titulo;

  if Form2.IdReceta = -3 then
    FrmBuscarReceta.btnAbrir.Caption := '&Eliminar'
  else
    FrmBuscarReceta.btnAbrir.Caption := '&Abrir';

  FrmBuscarReceta.TsRecientes.Caption := 'Paquetes recientes';
  FrmBuscarReceta.TsTodas.Caption := 'Todos los paquetes';

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
    raise InteligentWarning.CreateByCode(24, ['El Paquete de Consumibles ' + cdBuscarReceta.FieldByName('NombreReceta').AsString + ' ya se encuentra abierto en el sistema, no es posible abrir dos veces el mismo Paquete de Consumibles.']);
    //InteliDialog.ShowModal('La receta ya está abierta', 'La receta de ' + cdBuscarReceta.FieldByName('NombreReceta').AsString + ' ya se encuentra abierta en el sistema, no es posible abrir dos veces la misma receta.', mtConfirmation, [mbOk], 0);
  end
  else
  begin
    if Not CargarDatosFiltrados(cdReceta, 'IdReceta,Cual', [cdBuscarReceta.FieldByName('IdReceta').AsInteger, 'CONSUMIBLE']) then
      raise InteligentException.CreateByCode(6, ['Paquetes de Consumibles', cdBuscarReceta.FieldByName('IdReceta').AsInteger, 'Id. Paquete de Consumibles']);

    if cdReceta.Active then
      cdReceta.Refresh
    else
      cdReceta.Open;

    if cdReceta.RecordCount = 0 then
      raise InteligentException.CreateByCode(13, [cdBuscarReceta.FieldByName('CodigoReceta').AsString, 'Paquetes de Consumibles']);
  end;
end;

procedure TFrmConsumible.cdRecetaAfterOpen(DataSet: TDataSet);
var
  g: TGraphic;
  Field: TBlobField;
  Stream: TMemoryStream;
begin
  // Abrir el dataset de las imagenes para mostrar la suya
  if cdImagen.ProviderName = '' then
    if Not CrearConjunto(cdImagen, 'cmt_receta_soloimagen', ccSelect) then
      raise InteligentException.CreateByCode(5, ['Imagenes de Paquetes de Consumibles']);

  if Not CargarDatosFiltrados(cdImagen, 'IdReceta', [cdReceta.FieldByName('IdReceta').AsInteger]) then
    raise InteligentException.CreateByCode(6, ['Imagenes de Paquetes de Consumibles', cdReceta.FieldByName('IdReceta').AsInteger, 'Id. Paquete de Consumibles']);

  if cdImagen.Active then
    cdImagen.Refresh
  else
    cdImagen.Open;
end;

procedure TFrmConsumible.VerificaDataSet(DataSet: TClientDataSet);
begin
  if DataSet.ProviderName = '' then
    if Not CrearConjunto(DataSet, 'cmt_receta', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Paquetes de Consumibles']);
end;

procedure TFrmConsumible.Verimagendetamaooriginal1Click(Sender: TObject);
begin
  ImagenDblClick(Imagen);
end;

procedure TFrmConsumible.CrearPartidasInsumos;
begin
  if cdRecetaInsumo.ProviderName = '' then
    if Not CrearConjunto(cdRecetaInsumo, 'cmt_recetapartida', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Ingredientes de Paquetes de Consumibles']);

  if cdRecetaInsumoLista.ProviderName = '' then
    if Not CrearConjunto(cdRecetaInsumoLista, 'cmt_recetapartida', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Ingredientes de Paquetes de Consumibles']);
end;

procedure TFrmConsumible.DxBtnActualizarClick(Sender: TObject);
begin
  ActualizarReceta;
end;

procedure TFrmConsumible.dxBtnCopyImgClick(Sender: TObject);
begin
  TcxImage(Imagen).CopyToClipboard;
end;

procedure TFrmConsumible.DxBtnEditRecetaClick(Sender: TObject);
begin
  pnlRecetaDblClick(pnlReceta);
end;

procedure TFrmConsumible.DxBtnEliminarClick(Sender: TObject);
begin
  EliminarPartida;
end;

procedure TFrmConsumible.DxBtnImprimirClick(Sender: TObject);
begin
  ImprimirReceta;
end;

procedure TFrmConsumible.DxBtnInsertaClick(Sender: TObject);
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

    if Not CargarDatosFiltrados(cdRecetaInsumo, 'IdRecetaPartida', [-9]) then
      raise InteligentException.CreateByCode(16, ['Insumos por Paquete de Consumibles']);
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

procedure TFrmConsumible.DxBtnLoadImgClick(Sender: TObject);
begin
  pnlRecetaDblClick(pnlReceta);
end;

procedure TFrmConsumible.CrearInsumos;
begin
  if cdInsumo.ProviderName = '' then
    if Not CrearConjunto(cdInsumo, 'cmt_insumo', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Insumos']);
end;

procedure TFrmConsumible.CerrarImagen1Click(Sender: TObject);
begin
  if Assigned(FormImage) then
    FormImage.Close;
end;

procedure TFrmConsumible.CrearConjuntosNuevaReceta;
begin
  if cdRecetaUpt.ProviderName = '' then
    if Not CrearConjunto(cdRecetaUpt, 'cmt_receta', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Paquetes de Consumibles']);

  if cdTipoReceta.ProviderName = '' then
    if Not CrearConjunto(cdTipoReceta, 'cmt_tiporeceta', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Tipos de Paquetes de Consumibles']);
end;

procedure TFrmConsumible.EliminarPartida;
var
  myRes: Integer;
begin
  if (cdRecetaInsumoLista.Active) and (cdRecetaInsumoLista.RecordCount > 0) and VerificaPermisos('cmt_receta', [vpBorrar], EADMessage) then
    if InteliDialog.ShowModal('Eliminar Insumo', 'Está a punto de eliminar el Insumo ' + cdRecetaInsumoLista.FieldByName('CodigoInsumo').AsString + ' - ' + cdRecetaInsumoLista.FieldByName('NombreInsumo').AsString + ' ' +
                              'del Paquete de Consumibles ' + cdReceta.FieldByName('NombreReceta').AsString + #10 + #10 +
                              '¿Está seguro que desea eliminarlo en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      myRes := EliminarRegistro(cdRecetaInsumoLista, [cdRecetaInsumoLista.FieldByName('IdRecetaPartida').AsInteger]);
      if myRes = 1 then
        cdRecetaInsumoLista.Refresh
      else
        raise InteligentException.CreateByCode(9, ['registro de Insumo ' + cdRecetaInsumoLista.FieldByName('NombreInsumo').AsString, 'del Paquete de Consumibles ' + cdReceta.FieldByName('NombreReceta').AsString]);
    end;
end;

procedure TFrmConsumible.EliminarSeleccionado1Click(Sender: TObject);
begin
  EliminarPartida;
end;

procedure TFrmConsumible.EditarPartida;
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
    raise InteligentException.CreateByCode(12, [cdRecetaInsumoLista.FieldByName('CodigoInsumo').AsString, 'Insumos por Paquete de Consumibles']);
  if cdRecetaInsumo.Active then
    cdRecetaInsumo.Refresh
  else
    cdRecetaInsumo.Open;

  if cdRecetaInsumo.RecordCount <> 1 then
    raise InteligentException.CreateByCode(27, ['Insumos por Paquetes de Consumibles', cdRecetaInsumoLista.FieldByName('CodigoInsumo').AsString]);

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

procedure TFrmConsumible.ImagenDblClick(Sender: TObject);
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
    if InteliDialog.ShowModal('No hay imagen asignada', 'No se ha asignado una imagen para este Paquete de Consumibles, puede asignar una imagen modificando el encabezado del Paquete de Consumibles.' + #10 +
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

procedure TFrmConsumible.ImagenMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Assigned(FormImage) then
  begin
    ReleaseCapture;
    SendMessage(FormImage.Handle, WM_SYSCOMMAND, 61458, 0);
  end;
end;

procedure TFrmConsumible.ImprimirReceta;
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
          raise InteligentException.CreateByCode(5, ['Paquetes de Consumibles']);

      if cdRecetaPda.ProviderName = '' then
        if not CrearConjunto(cdRecetaPda, 'cmt_recetapartida', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Ingredientes por Paquetes de Consumibles']);

      if not CargarDatosFiltrados(cdRecetaImagen, 'IdReceta', [cdReceta.FieldByName('IdReceta').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Paquetes de Consumibles', cdReceta.FieldByName('IdReceta').AsInteger, 'Id. Paquete de Consumibles']);

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

  end;
end;

procedure TFrmConsumible.ImprimirReceta1Click(Sender: TObject);
begin
  ImprimirReceta;
end;

procedure TFrmConsumible.ImprimirReceta2Click(Sender: TObject);
begin
  ImprimirReceta;
end;

procedure TFrmConsumible.ModificarcabeceradeReceta1Click(Sender: TObject);
begin
  pnlRecetaDblClick(pnlReceta);
end;

procedure TFrmConsumible.Nuevo1Click(Sender: TObject);
begin
  Try
    CrearPartidasInsumos;
    CrearInsumos;

    Application.CreateForm(TFrmRecetaInsumo, FrmRecetaInsumo);
    FrmRecetaInsumo.dsReceta.DataSet := cdReceta;
    FrmRecetaInsumo.dsRecetaInsumo.DataSet := cdRecetaInsumo;
    FrmRecetaInsumo.dsInsumo.DataSet := cdInsumo;
    FrmRecetaInsumo.dsRecetaInsumoLista.DataSet := cdRecetaInsumoLista;

    FrmRecetaInsumo.IdReceta := IdReceta;

    if Not CargarDatosFiltrados(cdRecetaInsumo, 'IdRecetaPartida', [-9]) then
      raise InteligentException.CreateByCode(16, ['Insumos por Paquetes de Consumibles']);
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

procedure TFrmConsumible.pnlRecetaDblClick(Sender: TObject);
var
  locCursor: TCursor;
begin
  try
    locCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      VerificaPermisos('cmt_receta', [vpEscribir], EADError);

      // Editar el encabezado de la receta
      CrearConjuntosNuevaReceta;

      Application.CreateForm(TFrmNuevoConsumible, FrmNuevoConsumible);
      FrmNuevoConsumible.dsReceta.DataSet := cdRecetaUpt;
      FrmNuevoConsumible.dsTipoReceta.DataSet := cdTipoReceta;
      FrmNuevoConsumible.pIdReceta := cdReceta.FieldByName('IdReceta').AsInteger;
      FrmNuevoConsumible.pCodigoReceta := cdReceta.FieldByName('CodigoReceta').AsString;
      if FrmNuevoConsumible.ShowModal = mrOk then
      begin
        cdReceta.Refresh;
        cdRecetaAfterOpen(cdReceta);
      end;
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

procedure TFrmConsumible.tvPartidasEditDblClick(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
begin
  EditarPartida;
end;

procedure TFrmConsumible.tvPartidasEditKeyDown(Sender: TcxCustomGridTableView;
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

procedure TFrmConsumible.FormImageShow(Sender: TObject);
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

procedure TFrmConsumible.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    80: if ssCtrl in Shift then
          ImprimirReceta;
    116: ActualizarReceta;
  end;
end;

procedure TFrmConsumible.FormShow(Sender: TObject);
var
  i: Integer;
  ListaBorrar: Array of Variant;
begin
  for i:= 0 to tvPartidas.ColumnCount -1 do
    try
      tvPartidas.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + self.Name + '\tvPartidas', 'Column'+ IntToStr(i)));
    except
      ;
    end;

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
      Titulo := 'Abrir Paquete de Consumibles';
      try
        imagen.Picture.LoadFromFile(ExtractFilePath(application.ExeName) + 'images\receta.png' );
      except
        ;
      end;

      BuscarReceta;

      Self.Caption := 'Paquete de Consumibles ' + cdReceta.FieldByName('NombreReceta').AsString;

      CrearPartidasInsumos;

      IdReceta := cdReceta.FieldByName('IdReceta').AsInteger;

      if Not CargarDatosFiltrados(cdRecetaInsumoLista, 'IdReceta', [IdReceta]) then
        raise InteligentException.CreateByCode(6, ['Ingredientes por Paquete de Consumibles', IdReceta, 'Id. Paquete de Consumibles']);

      cdRecetaInsumoLista.Open;
    end;

    // Se va a crear una nueva receta
    if Form2.IdReceta = -9 then
    begin
      CrearConjuntosNuevaReceta;

      if Not CargarDatosFiltrados(cdRecetaUpt, 'IdReceta', [-9]) then
        raise InteligentException.CreateByCode(6, ['Paquete de Consumibles', -9, 'Id. Paquete de Consumibles']);

      if Not CargarDatosFiltrados(cdTipoReceta, 'Cual', ['CONSUMIBLE']) then
        raise InteligentException.CreateByCode(6, ['Tipo de Paquetes de Consumibles', 'Cual', 'CONSUMIBLE']);

      cdRecetaUpt.Open;
      cdTipoReceta.Open;

      // Verificar si existen Tipos de Paquetes de Consumibles
      if cdTipoReceta.RecordCount = 0 then
        raise InteligentException.CreateByCode(29, ['No existen Tipos de Paquetes de Consumibles, no es posible dar de alta un Paquete de Consumibles sin especificar su tipo.']);

      Application.CreateForm(TFrmNuevoConsumible, FrmNuevoConsumible);
      FrmNuevoConsumible.dsReceta.DataSet := cdRecetaUpt;
      FrmNuevoConsumible.dsTipoReceta.DataSet := cdTipoReceta;
      FrmNuevoConsumible.pIdReceta := -9;
      FrmNuevoConsumible.pCodigoReceta := '';
      //FrmNuevoConsumible.TipoReceta := Form2.TipoReceta;
      if FrmNuevoConsumible.ShowModal = mrCancel then
        raise InteligentException.Create('*');

      Self.Caption := 'Paquete de Consumibles ' + cdRecetaUpt.FieldByName('NombreReceta').AsString;

      IdReceta := UltimoId;

      // Preguntar si quiere meterle insumos ahora
      if InteliDialog.ShowModal('Captura de Insumos', '¿Desea dar de alta los insumos para este Paquete de Consumibles en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        // Crear el dataset de las partidas de insumo
        CrearPartidasInsumos;

        if Not CargarDatosFiltrados(cdRecetaInsumoLista, 'IdReceta', [IdReceta]) then
          raise InteligentException.CreateByCode(6, ['Insumos por Paquete de Consumibles', IdReceta, 'Id. Paquete de Consumibles']);

        if Not CargarDatosFiltrados(cdRecetaInsumo, 'IdReceta', [-9]) then
          raise InteligentException.CreateByCode(6, ['Insumos por Paquete de Consumibles', -9, 'Id. Paquete de Consumibles']);

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
      if Not CargarDatosFiltrados(cdReceta, 'IdReceta,Cual', [IdReceta, 'CONSUMIBLE']) then
        raise InteligentException.CreateByCode(6, ['Paquetes de Consumibles', IdReceta, 'Id. Paquete de Consumible']);
      cdReceta.Open;
    end;

    // Se va a borrar una receta
    if Form2.IdReceta = -3 then
    begin
      Try
        Titulo := 'Eliminar Paquete de Consumibles';

        BuscarReceta;

        // Preguntar si se desea eliminar la receta
        if InteliDialog.ShowModal('Eliminar Receta', 'Está a punto de eliminar el Paquete de Consumibles:' + #10 + #10 +
                                  cdReceta.FieldByName('CodigoReceta').AsString + ' - ' + cdReceta.FieldByName('NombreReceta').AsString + #10 +
                                  cdReceta.FieldByName('DescripcionReceta').AsString + #10 + #10 +

                                  '¿Está seguro de eliminarla de manera definitiva?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        Begin
          Try
            IniciarTransaccion;

            CrearPartidasInsumos;

            IdReceta := cdReceta.FieldByName('IdReceta').AsInteger;

            if Not CargarDatosFiltrados(cdRecetaInsumoLista, 'IdReceta', [IdReceta]) then
              raise InteligentException.CreateByCode(6, ['Insumos por Paquete de Consumibles', IdReceta, 'Id. Paquete de Consumibles']);

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
                raise InteligentException.CreateByCode(32, ['Registro de Ingredientes', 'del Paquete de Consumibles indicado', 'Consumos']);
            end;

            if EliminarRegistro(cdReceta, [cdReceta.FieldByName('IdReceta').AsInteger]) = 1 then
              InteliDialog.ShowModal('Paquete de Consumibles eliminado', 'El Paquete de Consumibles seleccionado ha sido eliminado satisfactoriamente.', mtInformation, [mbOk], 0);

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
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
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

procedure TFrmConsumible.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
begin
  SetRegistry('\Ventanas', '\' + Self.Name + '\Panel2', 'Height', IntToStr(Panel2.Height));

  for i:= 0 to tvPartidas.ColumnCount -1 do
    SetRegistry('\Ventanas', '\' + self.Name + '\tvPartidas', 'Column' + IntToStr(i), IntToStr(tvPartidas.Columns[i].Width));

  EliminarConjunto([cdReceta, cdBuscarReceta, cdRecetaUpt, cdTipoReceta, cdRecetaInsumo, cdRecetaInsumoLista]);
  Action := caFree;
end;

procedure TFrmConsumible.FormImageClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SetRegistry('\Ventanas', '\' + FormImage.Name, 'Top', IntToStr(FormImage.Top));
  SetRegistry('\Ventanas', '\' + FormImage.Name, 'Left', IntToStr(FormImage.Left));
end;

procedure TFrmConsumible.ActualizardatosdelaReceta1Click(Sender: TObject);
begin
  ActualizarReceta;
end;

procedure TFrmConsumible.ActualizardatosdelaReceta2Click(Sender: TObject);
begin
  ActualizarReceta;
end;

procedure TFrmConsumible.ActualizarReceta;
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

procedure TFrmConsumible.FormImageKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
    TForm(Sender).Close;
end;

end.
