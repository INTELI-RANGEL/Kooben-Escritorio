unit UTFrmSolCotizacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ClientModuleUnit1, URegistro, UInteliDialog, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxCalc, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  StdCtrls, DBCtrls, ExtCtrls, AdvGlowButton, JvExControls, JvLabel, Menus,
  AdvMenus, DBClient, Mask, frxClass, frxDBSet;

type
  TFrmSolCotizacion = class(TForm)
    Panel1: TPanel;
    JvLabel1: TJvLabel;
    CodigoCotizacion: TEdit;
    btnBuscar: TAdvGlowButton;
    btnNuevo: TAdvGlowButton;
    btnEncabezado: TAdvGlowButton;
    Panel2: TPanel;
    Splitter1: TSplitter;
    pnlPartidas: TPanel;
    Panel7: TPanel;
    btnCancelar: TAdvGlowButton;
    bntAceptar: TAdvGlowButton;
    btnImprimir: TAdvGlowButton;
    cxGrid1: TcxGrid;
    tvDatos: TcxGridDBTableView;
    ColCodigoInsumo: TcxGridDBColumn;
    ColNombreInsumo: TcxGridDBColumn;
    ColCantidad: TcxGridDBColumn;
    ColTituloPresentacion: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel8: TPanel;
    IdInsumo: TEdit;
    Panel10: TPanel;
    JvLabel9: TJvLabel;
    Panel11: TPanel;
    NombreInsumo: TDBText;
    CodigoInsumo: TDBText;
    lblGuion: TJvLabel;
    pmPartidas: TAdvPopupMenu;
    EditarPartida1: TMenuItem;
    EliminarPartida1: TMenuItem;
    cdBuscarSolCotizacion: TClientDataSet;
    cdSolCotizacion: TClientDataSet;
    dsSolCotizacion: TDataSource;
    cdSolCotizacionDatos: TClientDataSet;
    cdSolCotizacionUpt: TClientDataSet;
    cdSolCotizacionDatosUpt: TClientDataSet;
    dsSolCotizacionDatos: TDataSource;
    cdInsumo: TClientDataSet;
    dsInsumo: TDataSource;
    cdMarca: TClientDataSet;
    cdPresentacion: TClientDataSet;
    ColTituloMarca: TcxGridDBColumn;
    Panel12: TPanel;
    cdSolCotizacionxProveedor: TClientDataSet;
    Panel13: TPanel;
    pnlGenerales: TPanel;
    Panel3: TPanel;
    JvLabel2: TJvLabel;
    CodigoSolCotizacion: TDBText;
    Panel4: TPanel;
    Panel5: TPanel;
    JvLabel6: TJvLabel;
    Comentarios: TDBMemo;
    pnlProveedores: TPanel;
    tvListaProveedores: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Panel15: TPanel;
    btnProveedores: TAdvGlowButton;
    Splitter2: TSplitter;
    pnlFirmas: TPanel;
    pnlElabora: TPanel;
    JvLabel4: TJvLabel;
    NombreSolicita: TDBText;
    Panel9: TPanel;
    JvLabel3: TJvLabel;
    Fecha: TDBText;
    dsSolCotizacionxProveedor: TDataSource;
    ColsNombreCorto: TcxGridDBColumn;
    ColFecha: TcxGridDBColumn;
    cdSolCotizacionxProveedorUpt: TClientDataSet;
    cdProveedores: TClientDataSet;
    RepSolCotizacion: TfrxReport;
    fdsSolCotizacion: TfrxDBDataset;
    fdsSolCotizacionDatos: TfrxDBDataset;
    fdsSolCotizacionxProveedor: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnEncabezadoClick(Sender: TObject);
    procedure IdInsumoEnter(Sender: TObject);
    procedure IdInsumoExit(Sender: TObject);
    procedure IdInsumoKeyPress(Sender: TObject; var Key: Char);
    procedure tvDatosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure EditarPartida1Click(Sender: TObject);
    procedure EliminarPartida1Click(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure pnlFirmasResize(Sender: TObject);
    procedure cdSolCotizacionAfterClose(DataSet: TDataSet);
    procedure cdSolCotizacionAfterOpen(DataSet: TDataSet);
    procedure Edit1DblClick(Sender: TObject);
    procedure btnProveedoresClick(Sender: TObject);
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
  FrmSolCotizacion: TFrmSolCotizacion;

implementation

{$R *.dfm}

Uses
  UTFrmBuscarSolCotizacion, UTFrmSolCotizacionDatos, UTFrmEditarSolCotizacionPartida,
  UTFrmSelInsumo, UTFrmSolCotizacionxProveedor;

procedure TFrmSolCotizacion.btnBuscarClick(Sender: TObject);
var
  LocCursor: TCursor;
begin
  try
    Application.CreateForm(TFrmBuscarSolCotizacion, FrmBuscarSolCotizacion);
    FrmBuscarSolCotizacion.dsBuscarSolCotizacion.DataSet := cdBuscarSolCotizacion;
    try
      if FrmBuscarSolCotizacion.ShowModal = mrOk then
      begin
        LocCursor := Screen.Cursor;
        try
          Screen.Cursor := crHourGlass;

          if Not CargarDatosFiltrados(cdSolCotizacion, 'IdSolCotizacion', [cdBuscarSolCotizacion.FieldByName('IdSolCotizacion').AsInteger]) then
            raise InteligentException.CreateByCode(6, ['Solicitudes de Cotización', cdBuscarSolCotizacion.FieldByName('IdSolCotizacion').AsInteger, 'Id. Solicitud de Cotizaciones']);

          if Not CargarDatosFiltrados(cdSolCotizacionDatos, 'IdSolCotizacion', [cdBuscarSolCotizacion.FieldByName('IdSolCotizacion').AsInteger]) then
            raise InteligentException.CreateByCode(6, ['*Solicitudes de Cotización', cdBuscarSolCotizacion.FieldByName('IdSolCotizacion').AsInteger, 'Id. Solicitud de Cotizacion']);

          if cdSolCotizacion.Active then
            cdSolCotizacion.Refresh
          else
            cdSolCotizacion.Open;

          if cdSolCotizacionDatos.Active then
            cdSolCotizacionDatos.Refresh
          else
            cdSolCotizacionDatos.Open;

          IdInsumo.SetFocus;
        finally
          Screen.Cursor := LocCursor;
        end;
      end;
    finally
      cdBuscarSolCotizacion.Close;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmSolCotizacion.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSolCotizacion.btnEncabezadoClick(Sender: TObject);
var
  LocCursor: TCursor;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      // Editar la cabecera
      if Not CargarDatosFiltrados(cdSolCotizacionUpt, 'IdSolCotizacion', [cdSolCotizacion.FieldByName('IdSolCotizacion').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Cotizaciones', cdSolCotizacion.FieldByName('IdSolCotizacion').AsInteger, 'Id. Requisicion']);
      if cdSolCotizacionUpt.Active then
        cdSolCotizacionUpt.Refresh
      else
        cdSolCotizacionUpt.Open;

      if cdSolCotizacionUpt.RecordCount <> 1 then
        raise InteligentException.CreateByCode(14, ['Cotizaciones']);

      cdSolCotizacionUpt.Edit;
    finally
      Screen.Cursor := LocCursor;
    end;

    Application.CreateForm(TFrmSolCotizacionDatos, FrmSolCotizacionDatos);
    FrmSolCotizacionDatos.dsSolCotizacionUpt.DataSet := cdSolCotizacionUpt;
    if FrmSolCotizacionDatos.ShowModal = mrOk then
    begin
      LocCursor := Screen.Cursor;
      try
        Screen.Cursor := crHourGlass;

        cdSolCotizacion.Refresh;
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

procedure TFrmSolCotizacion.btnImprimirClick(Sender: TObject);
begin
  ClientModule1.ImprimeReporte('SolCotizacion.fr3', RepSolCotizacion);
end;

procedure TFrmSolCotizacion.btnNuevoClick(Sender: TObject);
var
  LocCursor: TCursor;
  Id: LongInt;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      // Crear una nueva Solicitud de Cotización
      if Not CargarDatosFiltrados(cdSolCotizacionUpt, 'IdSolCotizacion', [-9]) then
        raise InteligentException.CreateByCode(16, ['*Solicitud de Cotización']);

      if cdSolCotizacionUpt.Active then
        cdSolCotizacionUpt.Refresh
      else
        cdSolCotizacionUpt.Open;

      cdSolCotizacionUpt.Append;
      cdSolCotizacionUpt.FieldByName('IdSolCotizacion').AsInteger := 0;
      cdSolCotizacionUpt.FieldByName('Fecha').AsDateTime := Now;
      cdSolCotizacionUpt.FieldByName('IdSolicita').AsInteger := Globales.Elemento('IdUsuario').AsInteger;

      Application.CreateForm(TFrmSolCotizacionDatos, FrmSolCotizacionDatos);
      FrmSolCotizacionDatos.dsSolCotizacionUpt.DataSet := cdSolCotizacionUpt;
      if FrmSolCotizacionDatos.ShowModal = mrOk then
      begin
        Id := UltimoId;
        if Not CargarDatosFiltrados(cdSolCotizacion, 'IdSolCotizacion', [Id]) then
          raise InteligentException.CreateByCode(6, ['Solicitudes de Cotización', Id, 'Id. Solicitud de Cotización']);
        if cdSolCotizacion.Active then
          cdSolCotizacion.Refresh
        else
          cdSolCotizacion.Open;

        if cdSolCotizacion.RecordCount <> 1 then
        begin
          cdSolCotizacion.Close;
          raise InteligentException.CreateByCode(14, ['Solicitudes de Cotización']);
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

procedure TFrmSolCotizacion.btnProveedoresClick(Sender: TObject);
begin
  Application.CreateForm(TFrmSolCotizacionxProveedor, FrmSolCotizacionxProveedor);
  FrmSolCotizacionxProveedor.dsSolCotizacionxProveedor.DataSet := cdSolCotizacionxProveedor;
  FrmSolCotizacionxProveedor.dsSolCotizacionxProveedorUpt.DataSet := cdSolCotizacionxProveedorUpt;
  FrmSolCotizacionxProveedor.dsSolCotizacion.DataSet := cdSolCotizacion;
  FrmSolCotizacionxProveedor.dsProveedores.DataSet := cdProveedores;
  if FrmSolCotizacionxProveedor.ShowModal = mrOk then
    cdSolCotizacionxProveedor.Refresh;
end;

procedure TFrmSolCotizacion.cdSolCotizacionAfterClose(DataSet: TDataSet);
begin
  btnEncabezado.Enabled := False;
  btnImprimir.Enabled := False;
  btnProveedores.Enabled := False;
  pnlProveedores.Enabled := False;
  cdSolCotizacionxProveedor.Close;
end;

procedure TFrmSolCotizacion.cdSolCotizacionAfterOpen(DataSet: TDataSet);
begin
  btnEncabezado.Enabled := True;
  btnImprimir.Enabled := True;
  btnProveedores.Enabled := True;
  pnlProveedores.Enabled := True;

  CargarDatosFiltrados(cdSolCotizacionxProveedor, 'IdSolCotizacion', [cdSolCotizacion.FieldByName('IdSolCotizacion').AsInteger]);

  if cdSolCotizacionxProveedor.Active then
    cdSolCotizacionxProveedor.Refresh
  else
    cdSolCotizacionxProveedor.Open;
end;

procedure TFrmSolCotizacion.EditarPartida1Click(Sender: TObject);
begin
  EditarPartida(2);
end;

procedure TFrmSolCotizacion.EliminarPartida1Click(Sender: TObject);
begin
  EliminarPartida;
end;

procedure TFrmSolCotizacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
  EliminarConjunto([cdBuscarSolCotizacion, cdSolCotizacionDatos, cdSolCotizacionxProveedor, cdSolCotizacionDatosUpt, cdSolCotizacion, cdSolCotizacionUpt, cdSolCotizacionxProveedorUpt, cdProveedores]);

  SetRegistry('\Ventanas', '\' + Self.Name, 'Top', IntToStr(Self.Top));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Left', IntToStr(Self.Left));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Width', IntToStr(Self.Width));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Height', IntToStr(Self.Height));
  SetRegistry('\Ventanas', '\' + Self.Name + '\pnlGenerales', 'Width', IntToStr(pnlGenerales.Width));
  for i:= 0 to tvDatos.ColumnCount -1 do
    SetRegistry('\Ventanas', '\' + Self.Name + '\tvDatos', 'Column' + IntToStr(i), IntToStr(tvDatos.Columns[i].Width));

  for i:= 0 to tvListaProveedores.ColumnCount -1 do
    SetRegistry('\Ventanas', '\' + Self.Name + '\tvListaProveedores', 'Column' + IntToStr(i), IntToStr(tvListaProveedores.Columns[i].Width));

  Action := caFree;
end;

procedure TFrmSolCotizacion.FormShow(Sender: TObject);
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

      try
        pnlGenerales.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\pnlGenerales', 'Width'));
      except
        ;
      end;

      for i:= 0 to tvDatos.ColumnCount -1 do
        try
          tvDatos.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\tvDatos', 'Column'+ IntToStr(i)));
        except
          ;
        end;

      for i:= 0 to tvListaProveedores.ColumnCount -1 do
        try
          tvListaProveedores.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\tvListaProveedores', 'Column'+ IntToStr(i)));
        except
          ;
        end;

      if Not CrearConjunto(cdSolCotizacion, 'cmt_solcotizacion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Solicitudes de Cotización']);

      if Not CrearConjunto(cdSolCotizacionDatos, 'cmt_solcotizacionpartida', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Partidas de Solicitud de Cotización']);

      if Not CrearConjunto(cdSolCotizacionUpt, 'cmt_solcotizacion', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['*Solicitudes de Cotización']);

      if Not CrearConjunto(cdSolCotizacionDatosUpt, 'cmt_solcotizacionpartida', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['*Partidas de Solicitud de Cotización']);

      if Not CrearConjunto(cdInsumo, 'cmt_insumo_find', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Insumos']);

      if Not CrearConjunto(cdMarca, 'cmt_marca', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Marca']);

      if Not CrearConjunto(cdPresentacion, 'cmt_presentacion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Presentación']);

      if Not CrearConjunto(cdSolCotizacionxProveedor, 'cmt_solcotizacionxproveedor', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Proveedores de Solicitud de Cotización']);

      if Not CrearConjunto(cdSolCotizacionxProveedorUpt, 'cmt_solcotizacionxproveedor', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['*Proveedores de Solicitud de Cotización']);

      if Not CrearConjunto(cdProveedores, 'nuc_empresas', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Proveedores']);
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

procedure TFrmSolCotizacion.IdInsumoEnter(Sender: TObject);
begin
  IdInsumo.Text := TextoOriginal;
end;

procedure TFrmSolCotizacion.IdInsumoExit(Sender: TObject);
begin
  TextoOriginal := IdInsumo.Text;
  if dsInsumo.DataSet.Active and (dsInsumo.Dataset.RecordCount > 0) then
    IdInsumo.Text := dsInsumo.DataSet.FieldByName('CodigoInsumo').AsString + ' - ' + dsInsumo.DataSet.FieldByName('NombreInsumo').AsString;
end;

procedure TFrmSolCotizacion.IdInsumoKeyPress(Sender: TObject; var Key: Char);
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

        Application.CreateForm(TFrmEditarSolCotizacionPartida, FrmEditarSolCotizacionPartida);
        FrmEditarSolCotizacionPartida.IdxColumn := 2;
        FrmEditarSolCotizacionPartida.dsInsumo.DataSet := cdInsumo;
        FrmEditarSolCotizacionPartida.dsSolCotizacionDatos.DataSet := cdSolCotizacionDatosUpt;
        FrmEditarSolCotizacionPartida.dsPresentacion.DataSet := cdPresentacion;
        FrmEditarSolCotizacionPartida.dsMarca.DataSet := cdMarca;
        FrmEditarSolCotizacionPartida.CodigoInsumo.Text := cdInsumo.FieldByName('CodigoInsumo').AsString;
        if FrmEditarSolCotizacionPartida.ShowModal = mrOk then
        begin
          cdSolCotizacionDatosUpt.FieldByName('Precio').AsFloat := 0;
          cdSolCotizacionDatosUpt.FieldByName('Fecha').AsDateTime := Now;
          cdSolCotizacionDatosUpt.Post;
          cdSolCotizacionDatosUpt.ApplyUpdates(-1);
          cdSolCotizacionDatos.Refresh;
        end
        else
          cdSolCotizacionDatosUpt.Cancel;

        cdSolCotizacionDatosUpt.Close;
      except
        cdSolCotizacionDatosUpt.Cancel;
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

procedure TFrmSolCotizacion.pnlFirmasResize(Sender: TObject);
begin
  pnlElabora.Width := pnlFirmas.Width div 3;
end;

procedure TFrmSolCotizacion.tvDatosCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if AButton = mbLeft then
    EditarPartida(ACellViewInfo.Item.Index);
end;

procedure TFrmSolCotizacion.Edit1DblClick(Sender: TObject);
begin
  ShowMessage('Rangel');
end;

procedure TFrmSolCotizacion.EditarPartida(ItemIndex: Word);
var
  LocCursor: TCursor;
begin
  if cdSolCotizacionDatos.RecordCount > 0 then
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      // Seleccionar la partida clicada y asignarla en el dataset del insumo
      if Not CargarDatosFiltrados(cdInsumo, 'IdInsumo', [cdSolCotizacionDatos.FieldByName('IdInsumo').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Partidas de Cotización', cdSolCotizacionDatos.FieldByName('IdInsumo').AsInteger, 'Id. Insumo']);
      if cdInsumo.Active then
        cdInsumo.Refresh
      else
        cdInsumo.Open;

      // Editar el registro seleccionado
      if Not CargarDatosFiltrados(cdSolCotizacionDatosUpt, 'IdSolCotizacionPartida', [cdSolCotizacionDatos.FieldByName('IdSolCotizacionPartida').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Partidas de Solicitud de Cotización', cdSolCotizacionDatos.FieldByName('IdSolCotizacionPartida').AsInteger, 'Id. Partida de Solicitud de Cotización']);
    finally
      Screen.Cursor := LocCursor;
    end;

    try
      Screen.Cursor := crHourGlass;
      try
        if cdSolCotizacionDatosUpt.Active then
          cdSolCotizacionDatosUpt.Refresh
        else
          cdSolCotizacionDatosUpt.Open;

        if cdSolCotizacionDatosUpt.RecordCount = 0 then
          raise InteligentException.CreateByCode(13, [cdSolCotizacionDatos.FieldByName('CodigoInsumo').AsString, 'Partidas de Solicitud de Cotización']);

        cdSolCotizacionDatosUpt.Edit;

        Application.CreateForm(TFrmEditarSolCotizacionPartida, FrmEditarSolCotizacionPartida);
        FrmEditarSolCotizacionPartida.IdxColumn := ItemIndex;
        FrmEditarSolCotizacionPartida.dsInsumo.DataSet := cdInsumo;
        FrmEditarSolCotizacionPartida.dsSolCotizacionDatos.DataSet := cdSolCotizacionDatosUpt;
        FrmEditarSolCotizacionPartida.dsPresentacion.DataSet := cdPresentacion;
        FrmEditarSolCotizacionPartida.dsMarca.DataSet := cdMarca;
        FrmEditarSolCotizacionPartida.CodigoInsumo.Text := cdInsumo.FieldByName('CodigoInsumo').AsString;
      finally
        Screen.Cursor := LocCursor;
      end;

      if FrmEditarSolCotizacionPartida.ShowModal = mrOk then
      begin
        cdSolCotizacionDatosUpt.Post;
        cdSolCotizacionDatosUpt.ApplyUpdates(-1);
        cdSolCotizacionDatos.Refresh;
      end
      else
        cdSolCotizacionDatosUpt.Cancel;
    finally
      if cdSolCotizacionDatosUpt.Active then
        cdSolCotizacionDatosUpt.Close;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmSolCotizacion.EliminarPartida;
var
  LocCursor: TCursor;
begin
  // Abrir el registro a eliminar en modo exclusivo
  LocCursor := Screen.Cursor;
  try
    Screen.Cursor := crHourGlass;

    if Not CargarDatosFiltrados(cdSolCotizacionDatosUpt, 'IdSolCotizacionDatos', [cdSolCotizacionDatos.FieldByName('IdSolCotizacionDatos').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Partidas de Solicitud de Cotización', cdSolCotizacionDatos.FieldByName('IdSolCotizacionDatos').AsInteger, 'Id. Solicitud de Cotización']);

    if cdSolCotizacionDatosUpt.Active then
      cdSolCotizacionDatosUpt.Refresh
    else
      cdSolCotizacionDatosUpt.Open;

    if cdSolCotizacionDatosUpt.RecordCount = 0 then
      raise InteligentException.CreateByCode(27, ['Partidas de Solicitud de Cotización', cdSolCotizacionDatos.FieldByName('NombreInsumo').AsString]);
  finally
    Screen.Cursor := LocCursor;
  end;

  try
    if InteliDialog.ShowModal('Borrar registro', 'Está a punto de eliminar la partida de Solicitud de Cotización:' + #10 + #10 +
                              cdSolCotizacionDatos.FieldByName('CodigoInsumo').AsString + ' - ' + cdSolCotizacionDatos.FieldByName('NombreInsumo').AsString + #10 +
                              'Cantidad: ' + cdSolCotizacionDatos.FieldByName('Cantidad').AsString + #10 +
                              'Presentacion: ' + cdSolCotizacionDatos.FieldByName('TituloPresentacion').AsString + #10 +
                              'Marca: ' + cdSolCotizacionDatos.FieldByName('TituloMarca').AsString + #10 +
                              '¿Está seguro que desea eliminarla en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        LocCursor := Screen.Cursor;
        try
          Screen.Cursor := crHourGlass;

          // Elimninar el regsitro
          cdSolCotizacionDatosUpt.Delete;
          cdSolCotizacionDatosUpt.ApplyUpdates(-1);
          cdSolCotizacionDatos.Refresh;
        finally
          Screen.Cursor := LocCursor;
        end;
      except
        on e:Exception do
          InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      end;
    end;
  finally
    cdSolCotizacionDatosUpt.Close;
  end;
end;

function TFrmSolCotizacion.AgregaPartida: LongInt;
var
  Resultado: LongInt;
begin
  Resultado := -9;

  if Not CargarDatosFiltrados(cdSolCotizacionDatosUpt, 'IdSolCotizacionPartida', [-9]) then
    raise InteligentException.CreateByCode(16, ['Partidas de Solicitud de Cotizacion']);

  if cdSolCotizacionDatosUpt.Active then
    cdSolCotizacionDatosUpt.Refresh
  else
    cdSolCotizacionDatosUpt.Open;

  try
    cdSolCotizacionDatosUpt.Append;
    cdSolCotizacionDatosUpt.FieldByName('IdSolCotizacionPartida').AsInteger := 0;
    cdSolCotizacionDatosUpt.FieldByName('IdSolCotizacion').AsInteger := cdSolCotizacion.FieldByName('IdSolCotizacion').AsInteger;
    cdSolCotizacionDatosUpt.FieldByName('IdInsumo').AsInteger := cdInsumo.FieldByName('IdInsumo').AsInteger;
    cdSolCotizacionDatosUpt.FieldByName('Cantidad').AsFloat := 0.00;
    cdSolCotizacionDatosUpt.FieldByName('CantidadPropuesta').AsFloat := 0.00;
    {cdSolCotizacionDatosUpt.FieldByName('Precio').AsFloat := 0.00;
    cdSolCotizacionDatosUpt.FieldByName('Fecha').AsFloat := 0.00;
    cdSolCotizacionDatosUpt.FieldByName('IdMarca').AsInteger := 0.00;
    cdSolCotizacionDatosUpt.FieldByName('IdPresentacion').AsInteger := 0.00;}
  except
    cdSolCotizacionDatosUpt.Cancel;
    raise;
  end;

  Resultado := UltimoId;
end;

end.
