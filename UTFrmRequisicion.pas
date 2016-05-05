unit UTFrmRequisicion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ClientModuleUnit1, URegistro, UInteliDialog, AdvGlowButton, StdCtrls,
  JvExControls, JvLabel, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
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
  cxNavigator, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  DBCtrls, DBClient, Menus, AdvMenus, cxCalc, frxClass, frxDBSet;

type
  TFrmRequisicion = class(TForm)
    Panel1: TPanel;
    JvLabel1: TJvLabel;
    CodigoCotizacion: TEdit;
    btnBuscar: TAdvGlowButton;
    btnNuevo: TAdvGlowButton;
    Panel2: TPanel;
    Splitter1: TSplitter;
    pnlGenerales: TPanel;
    Panel3: TPanel;
    JvLabel2: TJvLabel;
    Folio: TDBText;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    pnlFirmas: TPanel;
    pnlElabora: TPanel;
    JvLabel4: TJvLabel;
    NombreSolicita: TDBText;
    Panel9: TPanel;
    NombreAutoriza: TDBText;
    JvLabel5: TJvLabel;
    pnlPartidas: TPanel;
    Panel7: TPanel;
    btnCancelar: TAdvGlowButton;
    bntAceptar: TAdvGlowButton;
    cxGrid1: TcxGrid;
    tvDatos: TcxGridDBTableView;
    ColCodigoInsumo: TcxGridDBColumn;
    ColNombreInsumo: TcxGridDBColumn;
    ColhTituloMarca: TcxGridDBColumn;
    ColhTituloPresentacion: TcxGridDBColumn;
    ColCantidad: TcxGridDBColumn;
    ColsNombre: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    dsRequisicionDatos: TDataSource;
    cdRequisicionDatosUpt: TClientDataSet;
    dsRequisicion: TDataSource;
    cdRequisicionUpt: TClientDataSet;
    cdSolicita: TClientDataSet;
    cdAutoriza: TClientDataSet;
    cdBuscarRequisicion: TClientDataSet;
    JvLabel6: TJvLabel;
    Comentarios: TDBMemo;
    cdEmbarcacion: TClientDataSet;
    cdAlmacen: TClientDataSet;
    cdRequisicion: TClientDataSet;
    JvLabel3: TJvLabel;
    Fecha: TDBText;
    JvLabel7: TJvLabel;
    JvLabel8: TJvLabel;
    NombreEmbarcacion: TDBText;
    NombreAlmacen: TDBText;
    btnEncabezado: TAdvGlowButton;
    pmPartidas: TAdvPopupMenu;
    EditarPartida1: TMenuItem;
    EliminarPartida1: TMenuItem;
    cdRequisicionDatos: TClientDataSet;
    cdInsumo: TClientDataSet;
    cdMarca: TClientDataSet;
    cdPresentacion: TClientDataSet;
    cdVerificaRequisicion: TClientDataSet;
    Panel8: TPanel;
    IdInsumo: TEdit;
    Panel10: TPanel;
    JvLabel9: TJvLabel;
    Panel11: TPanel;
    NombreInsumo: TDBText;
    CodigoInsumo: TDBText;
    lblGuion: TJvLabel;
    dsInsumo: TDataSource;
    btnImprimir: TAdvGlowButton;
    RepRequisicion: TfrxReport;
    fdsRequisicion: TfrxDBDataset;
    fdsRequisicionDatos: TfrxDBDataset;
    procedure btnBuscarClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure pnlFirmasResize(Sender: TObject);
    procedure btnEncabezadoClick(Sender: TObject);
    procedure EditarPartida1Click(Sender: TObject);
    procedure cdRequisicionAfterClose(DataSet: TDataSet);
    procedure cdRequisicionAfterOpen(DataSet: TDataSet);
    procedure IdInsumoEnter(Sender: TObject);
    procedure IdInsumoExit(Sender: TObject);
    procedure IdInsumoKeyPress(Sender: TObject; var Key: Char);
    procedure EliminarPartida1Click(Sender: TObject);
    procedure tvDatosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnImprimirClick(Sender: TObject);
  private
    TextoOriginal: String;
    procedure EditarPartida(ItemIndex: Word);
    function AgregaPartida: LongInt;
    procedure EliminarPartida;
  public
    { Public declarations }
  end;

var
  FrmRequisicion: TFrmRequisicion;

implementation

{$R *.dfm}

Uses
  UTFrmBuscarRequisicion, UTFrmRequisicionDatos, UTFrmEditarRequisicionPartida,
  UTFrmSelInsumo;

procedure TFrmRequisicion.btnBuscarClick(Sender: TObject);
var
  LocCursor: TCursor;
begin
  try
    Application.CreateForm(TFrmBuscarRequisicion, FrmBuscarRequisicion);
    FrmBuscarRequisicion.dsBuscarRequisicion.DataSet := cdBuscarRequisicion;
    try
      if FrmBuscarRequisicion.ShowModal = mrOk then
      begin
        LocCursor := Screen.Cursor;
        try
          Screen.Cursor := crHourGlass;

          if Not CargarDatosFiltrados(cdRequisicion, 'IdRequisicion', [cdBuscarRequisicion.FieldByName('IdRequisicion').AsInteger]) then
            raise InteligentException.CreateByCode(6, ['Requisiciones', cdBuscarRequisicion.FieldByName('IdRequisicion').AsInteger, 'Id. Requisicion']);

          if Not CargarDatosFiltrados(cdRequisicionDatos, 'IdRequisicion', [cdBuscarRequisicion.FieldByName('IdRequisicion').AsInteger]) then
            raise InteligentException.CreateByCode(6, ['Partidas de Requisición', cdBuscarRequisicion.FieldByName('IdRequisicion').AsInteger, 'Id. Requisicion']);

          if cdRequisicion.Active then
            cdRequisicion.Refresh
          else
            cdRequisicion.Open;

          if cdRequisicionDatos.Active then
            cdRequisicionDatos.Refresh
          else
            cdRequisicionDatos.Open;

          IdInsumo.SetFocus;
        finally
          Screen.Cursor := LocCursor;
        end;
      end;
    finally
      cdBuscarRequisicion.Close;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmRequisicion.btnEncabezadoClick(Sender: TObject);
var
  LocCursor: TCursor;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      // Editar la cabecera
      if Not CargarDatosFiltrados(cdRequisicionUpt, 'IdRequisicion', [cdRequisicion.FieldByName('IdRequisicion').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Requisiciones', cdRequisicion.FieldByName('IdRequisicion').AsInteger, 'Id. Requisicion']);
      if cdRequisicionUpt.Active then
        cdRequisicionUpt.Refresh
      else
        cdRequisicionUpt.Open;

      if cdRequisicionUpt.RecordCount <> 1 then
        raise InteligentException.CreateByCode(14, ['Requisiciones']);

      cdRequisicionUpt.Edit;
    finally
      Screen.Cursor := LocCursor;
    end;

    Application.CreateForm(TFrmRequisicionDatos, FrmRequisicionDatos);
    FrmRequisicionDatos.dsRequisicionUpt.DataSet := cdRequisicionUpt;
    FrmRequisicionDatos.dsEmbarcacion.DataSet := cdEmbarcacion;
    FrmRequisicionDatos.dsAlmacen.DataSet := cdAlmacen;
    FrmRequisicionDatos.dsSolicita.DataSet := cdSolicita;
    FrmRequisicionDatos.dsAutoriza.DataSet := cdAutoriza;
    if FrmRequisicionDatos.ShowModal = mrOk then
    begin
      LocCursor := Screen.Cursor;
      try
        Screen.Cursor := crHourGlass;

        cdRequisicion.Refresh;
      finally
        Screen.Cursor := LocCursor;
      end;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmRequisicion.btnNuevoClick(Sender: TObject);
var
  LocCursor: TCursor;
  Id: LongInt;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      // Crear una nueva Requisición
      if Not CargarDatosFiltrados(cdRequisicionUpt, 'IdRequisicion', [-9]) then
        raise InteligentException.CreateByCode(16, ['*Requisicion']);

      if cdRequisicionUpt.Active then
        cdRequisicionUpt.Refresh
      else
        cdRequisicionUpt.Open;

      cdRequisicionUpt.Append;
      cdRequisicionUpt.FieldByName('IdRequisicion').AsInteger := 0;
      cdRequisicionUpt.FieldByName('Fecha').AsDateTime := Now;
      cdRequisicionUpt.FieldByName('Estado').AsString := 'ABIERTA';

      Application.CreateForm(TFrmRequisicionDatos, FrmRequisicionDatos);
      FrmRequisicionDatos.dsRequisicionUpt.DataSet := cdRequisicionUpt;
      FrmRequisicionDatos.dsSolicita.DataSet := cdSolicita;
      FrmRequisicionDatos.dsAutoriza.DataSet := cdAutoriza;
      FrmRequisicionDatos.dsEmbarcacion.DataSet := cdEmbarcacion;
      FrmRequisicionDatos.dsAlmacen.DataSet := cdAlmacen;
      if FrmRequisicionDatos.ShowModal = mrOk then
      begin
        Id := UltimoId;
        if Not CargarDatosFiltrados(cdRequisicion, 'IdRequisicion', [Id]) then
          raise InteligentException.CreateByCode(6, ['Requisiciones', Id, 'Id. Requisicion']);
        if cdRequisicion.Active then
          cdRequisicion.Refresh
        else
          cdRequisicion.Open;

        if cdRequisicion.RecordCount <> 1 then
        begin
          cdRequisicion.Close;
          raise InteligentException.CreateByCode(14, ['Requisiciones']);
        end;
      end;
    finally
      Screen.Cursor := LocCursor;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmRequisicion.cdRequisicionAfterClose(DataSet: TDataSet);
begin
  btnEncabezado.Enabled := False;
end;

procedure TFrmRequisicion.cdRequisicionAfterOpen(DataSet: TDataSet);
begin
  btnEncabezado.Enabled := True;
end;

procedure TFrmRequisicion.EditarPartida1Click(Sender: TObject);
begin
  EditarPartida(2);
end;

procedure TFrmRequisicion.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
begin
  EliminarConjunto([cdBuscarRequisicion, cdEmbarcacion, cdAlmacen, cdSolicita, cdAutoriza, cdRequisicionDatos, cdRequisicionDatosUpt, cdRequisicion, cdRequisicionUpt]);

  SetRegistry('\Ventanas', '\' + Self.Name, 'Top', IntToStr(Self.Top));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Left', IntToStr(Self.Left));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Width', IntToStr(Self.Width));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Height', IntToStr(Self.Height));
  for i:= 0 to tvDatos.ColumnCount -1 do
    SetRegistry('\Ventanas', '\' + Self.Name + '\tvDatos', 'Column' + IntToStr(i), IntToStr(tvDatos.Columns[i].Width));

  Action := caFree;
end;

procedure TFrmRequisicion.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
  i: Integer;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      try
        Self.Top := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Top'));
      except
        Self.Top := (Screen.Height - 300) Div 2;
      end;

      try
        Self.Left := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Left'));
      except
        Self.Left := (Screen.Width - 600) Div 2;
      end;

      try
        Self.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Width'));
      except
        ;
      end;

      try
        Self.Height := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Height'));
      except
        ;
      end;

      for i:= 0 to tvDatos.ColumnCount -1 do
        try
          tvDatos.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\tvDatos', 'Column'+ IntToStr(i)));
        except
          ;
        end;

      if Not CrearConjunto(cdEmbarcacion, 'cmt_embarcacion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Ubicaciones']);

      if Not CrearConjunto(cdAlmacen, 'cmt_almacen', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Almacenes']);

      if Not CrearConjunto(cdSolicita, 'usuarios', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Usuarios (Solicita)']);

      if Not CrearConjunto(cdAutoriza, 'usuarios', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Usuarios (Autoriza)']);

      if Not CrearConjunto(cdRequisicion, 'cmt_requisicion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Requisiciones']);

      if Not CrearConjunto(cdRequisicionDatos, 'cmt_requisiciondatos', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Partidas de Requisición']);

      if Not CrearConjunto(cdRequisicionUpt, 'cmt_requisicion', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['*Requisiciones']);

      if Not CrearConjunto(cdRequisicionDatosUpt, 'cmt_requisiciondatos', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['*Partidas de Requisición']);

      if Not CrearConjunto(cdInsumo, 'cmt_insumo_find', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Insumos']);

      if Not CrearConjunto(cdMarca, 'cmt_marca', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Marca']);

      if Not CrearConjunto(cdPresentacion, 'cmt_presentacion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Presentación']);

      if Not CrearConjunto(cdVerificaRequisicion, 'cmt_requisiciondatos', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Presentación']);

      cdSolicita.Open;
      if cdSolicita.RecordCount = 0 then
        raise InteligentException.CreateByCode(22, ['Usuarios (Elabora)']);

      cdAutoriza.Open;
      if cdAutoriza.RecordCount = 0 then
        raise InteligentException.CreateByCode(22, ['Usuarios (Autoriza)']);

      cdEmbarcacion.Open;
      if cdEmbarcacion.RecordCount = 0 then
        raise InteligentException.CreateByCode(22, ['Ubicaciones']);

      cdAlmacen.Open;
      if cdAlmacen.RecordCount = 0 then
        raise InteligentException.CreateByCode(22, ['Almacenes']);
    finally
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

procedure TFrmRequisicion.IdInsumoEnter(Sender: TObject);
begin
  IdInsumo.Text := TextoOriginal;
end;

procedure TFrmRequisicion.IdInsumoExit(Sender: TObject);
begin
  TextoOriginal := IdInsumo.Text;
  if dsInsumo.DataSet.Active and (dsInsumo.Dataset.RecordCount > 0) then
    IdInsumo.Text := dsInsumo.DataSet.FieldByName('CodigoInsumo').AsString + ' - ' + dsInsumo.DataSet.FieldByName('NombreInsumo').AsString;
end;

procedure TFrmRequisicion.IdInsumoKeyPress(Sender: TObject; var Key: Char);
var
  Valor: String;
  IdRegistroMovimientoGeneralPartida: LongInt;
begin
  if Key = #13 then
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

      try
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
              IdRegistroMovimientoGeneralPartida := AgregaPartida
            else
              dsInsumo.DataSet.Close;
          finally
            FrmSelInsumo.Destroy;
          end;
        end;

        if (dsInsumo.DataSet.RecordCount = 1) and (dsInsumo.DataSet.FieldByName('Cta').AsInteger = 1) then
          IdRegistroMovimientoGeneralPartida := AgregaPartida;

        if dsInsumo.DataSet.RecordCount = 0 then
          raise InteligentException.CreateByCode(24, ['No existen Insumos que coinsidan con el texto "' + Trim(IdInsumo.Text) + '"']);

        if Not cdMarca.Active then
          cdMarca.Open;

        if Not cdPresentacion.Active then
          cdPresentacion.Open;

        Application.CreateForm(TFrmEditarRequisicionPartida, FrmEditarRequisicionPartida);
        FrmEditarRequisicionPartida.IdxColumn := 2;
        FrmEditarRequisicionPartida.dsInsumo.DataSet := cdInsumo;
        FrmEditarRequisicionPartida.dsRequisicionDatos.DataSet := cdRequisicionDatosUpt;
        FrmEditarRequisicionPartida.dsPresentacion.DataSet := cdPresentacion;
        FrmEditarRequisicionPartida.dsMarca.DataSet := cdMarca;
        FrmEditarRequisicionPartida.dsVerificaRequisicion.DataSet := cdVerificaRequisicion;
        FrmEditarRequisicionPartida.CodigoInsumo.Text := cdInsumo.FieldByName('CodigoInsumo').AsString;
        if FrmEditarRequisicionPartida.ShowModal = mrOk then
        begin
          cdRequisicionDatosUpt.FieldByName('Surtido').AsFloat := cdRequisicionDatosUpt.FieldByName('Cantidad').AsFloat;
          cdRequisicionDatosUpt.Post;
          cdRequisicionDatosUpt.ApplyUpdates(-1);
          cdRequisicionDatos.Refresh;
        end
        else
          cdRequisicionDatosUpt.Cancel;

        cdRequisicionDatosUpt.Close;
      except
        cdRequisicionDatosUpt.Cancel;
        raise;
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
  end
  else
    dsInsumo.DataSet.Close;
end;

procedure TFrmRequisicion.pnlFirmasResize(Sender: TObject);
begin
  pnlElabora.Width := pnlFirmas.Width div 2;
end;

procedure TFrmRequisicion.tvDatosCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if AButton = mbLeft then
    EditarPartida(ACellViewInfo.Item.Index);
end;

procedure TFrmRequisicion.EditarPartida(ItemIndex: Word);
var
  LocCursor: TCursor;
begin
  if cdRequisicionDatos.RecordCount > 0 then
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      // Seleccionar la partida clicada y asignarla en el dataset del insumo
      if Not CargarDatosFiltrados(cdInsumo, 'IdInsumo', [cdRequisicionDatos.FieldByName('IdInsumo').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Partidas de Cotización', cdRequisicionDatos.FieldByName('IdInsumo').AsInteger, 'Id. Insumo']);
      if cdInsumo.Active then
        cdInsumo.Refresh
      else
        cdInsumo.Open;

      // Editar el registro seleccionado
      if Not CargarDatosFiltrados(cdRequisicionDatosUpt, 'IdRequisicionDatos', [cdRequisicionDatos.FieldByName('IdRequisicionDatos').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Partidas de Requisición', cdRequisicionDatos.FieldByName('IdRequisicionDatos').AsInteger, 'Id. Partida Requisición']);
    finally
      Screen.Cursor := LocCursor;
    end;

    try
      Screen.Cursor := crHourGlass;
      try
        if cdRequisicionDatosUpt.Active then
          cdRequisicionDatosUpt.Refresh
        else
          cdRequisicionDatosUpt.Open;

        if cdRequisicionDatosUpt.RecordCount = 0 then
          raise InteligentException.CreateByCode(13, [cdRequisicionDatos.FieldByName('CodigoInsumo').AsString, 'Partidas de Cotización']);

        cdRequisicionDatosUpt.Edit;

        Application.CreateForm(TFrmEditarRequisicionPartida, FrmEditarRequisicionPartida);
        FrmEditarRequisicionPartida.IdxColumn := ItemIndex;
        FrmEditarRequisicionPartida.dsInsumo.DataSet := cdInsumo;
        FrmEditarRequisicionPartida.dsRequisicionDatos.DataSet := cdRequisicionDatosUpt;
        FrmEditarRequisicionPartida.dsPresentacion.DataSet := cdPresentacion;
        FrmEditarRequisicionPartida.dsMarca.DataSet := cdMarca;
        FrmEditarRequisicionPartida.dsVerificaRequisicion.DataSet := cdVerificaRequisicion;
        FrmEditarRequisicionPartida.CodigoInsumo.Text := cdInsumo.FieldByName('CodigoInsumo').AsString;
      finally
        Screen.Cursor := LocCursor;
      end;

      if FrmEditarRequisicionPartida.ShowModal = mrOk then
      begin
        //cdCotizacionDatosUpt.FieldByName('IdPresentacion').AsInteger := 24;
        cdRequisicionDatosUpt.Post;
        cdRequisicionDatosUpt.ApplyUpdates(-1);
        cdRequisicionDatos.Refresh;
      end
      else
        cdRequisicionDatosUpt.Cancel;
    finally
      if cdRequisicionDatosUpt.Active then
        cdRequisicionDatosUpt.Close;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmRequisicion.btnImprimirClick(Sender: TObject);
begin
  ClientModule1.ImprimeReporte('Requisicion.fr3', repRequisicion);
end;

function TFrmRequisicion.AgregaPartida: LongInt;
var
  Resultado: LongInt;
begin
  Resultado := -9;

  if Not CargarDatosFiltrados(cdRequisicionDatosUpt, 'IdRequisicionDatos', [-9]) then
    raise InteligentException.CreateByCode(16, ['Partidas de Cotizacion']);

  if cdRequisicionDatosUpt.Active then
    cdRequisicionDatosUpt.Refresh
  else
    cdRequisicionDatosUpt.Open;

  try
    cdRequisicionDatosUpt.Append;
    cdRequisicionDatosUpt.FieldByName('IdRequisicionDatos').AsInteger := 0;
    cdRequisicionDatosUpt.FieldByName('IdRequisicion').AsInteger := cdRequisicion.FieldByName('IdRequisicion').AsInteger;
    cdRequisicionDatosUpt.FieldByName('IdInsumo').AsInteger := cdInsumo.FieldByName('IdInsumo').AsInteger;
    cdRequisicionDatosUpt.FieldByName('CodigoInsumo').AsString := cdInsumo.FieldByName('CodigoInsumo').AsString;
    cdRequisicionDatosUpt.FieldByName('NombreInsumo').AsString := cdInsumo.FieldByName('NombreInsumo').AsString;
    cdRequisicionDatosUpt.FieldByName('Cantidad').AsFloat := 0.00;
    cdRequisicionDatosUpt.FieldByName('iIdUnidad').AsInteger := cdInsumo.FieldByName('iIdUnidad').AsInteger;
    cdRequisicionDatosUpt.FieldByName('sNombre').AsString := cdInsumo.FieldByName('sNombre').AsString;
  except
    cdRequisicionDatosUpt.Cancel;
    raise;
  end;

  Resultado := UltimoId;
end;

procedure TFrmRequisicion.EliminarPartida;
var
  LocCursor: TCursor;
begin
  // Abrir el registro a eliminar en modo exclusivo
  LocCursor := Screen.Cursor;
  try
    Screen.Cursor := crHourGlass;

    if Not CargarDatosFiltrados(cdRequisicionDatosUpt, 'IdRequisicionDatos', [cdRequisicionDatos.FieldByName('IdRequisicionDatos').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Partidas de Requisición', cdRequisicionDatos.FieldByName('IdRequisicionDatos').AsInteger, 'Id. Requisición']);

    if cdRequisicionDatosUpt.Active then
      cdRequisicionDatosUpt.Refresh
    else
      cdRequisicionDatosUpt.Open;

    if cdRequisicionDatosUpt.RecordCount = 0 then
      raise InteligentException.CreateByCode(27, ['Partidas de Requisición', cdRequisicionDatos.FieldByName('NombreInsumo').AsString]);
  finally
    Screen.Cursor := LocCursor;
  end;

  try
    if InteliDialog.ShowModal('Borrar registro', 'Está a punto de eliminar la partida de Requisición:' + #10 + #10 +
                              cdRequisicionDatos.FieldByName('CodigoInsumo').AsString + ' - ' + cdRequisicionDatos.FieldByName('NombreInsumo').AsString + #10 +
                              'Cantidad: ' + cdRequisicionDatos.FieldByName('Cantidad').AsString + #10 +
                              'Presentacion: ' + cdRequisicionDatos.FieldByName('TituloPresentacion').AsString + #10 +
                              'Marca: ' + cdRequisicionDatos.FieldByName('TituloMarca').AsString + #10 +
                              '¿Está seguro que desea eliminarla en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        LocCursor := Screen.Cursor;
        try
          Screen.Cursor := crHourGlass;

          // Elimninar el regsitro
          cdRequisicionDatosUpt.Delete;
          cdRequisicionDatosUpt.ApplyUpdates(-1);
          cdRequisicionDatosUpt.Refresh;
        finally
          Screen.Cursor := LocCursor;
        end;
      except
        on e:Exception do
          InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      end;
    end;
  finally
    cdRequisicionDatosUpt.Close;
  end;
end;

procedure TFrmRequisicion.EliminarPartida1Click(Sender: TObject);
begin
  EliminarPartida;
end;

end.
