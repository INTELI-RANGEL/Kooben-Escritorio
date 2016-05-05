unit UTFrmSolCotizacionxProveedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
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
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView, cxGrid,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, ExtCtrls,
  ClientModuleUnit1, URegistro, UInteliDialog, AdvGlowButton, DBClient;

type
  TFrmSolCotizacionxProveedor = class(TForm)
    dsSolCotizacionxProveedorUpt: TDataSource;
    dsProveedores: TDataSource;
    pnlProveedores: TPanel;
    pnlBotones: TPanel;
    tvProveedores: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ColsNombreCorto: TcxGridDBColumn;
    ColsRazonSocial: TcxGridDBColumn;
    Panel3: TPanel;
    Splitter1: TSplitter;
    tvProveedoresxSolicitud: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    ColsNombreCorto1: TcxGridDBColumn;
    ColsRazonSocial1: TcxGridDBColumn;
    dsSolCotizacionxProveedor: TDataSource;
    btnAgregar: TAdvGlowButton;
    btnQuitar: TAdvGlowButton;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    dsSolCotizacion: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnQuitarClick(Sender: TObject);
    procedure btnAgregarClick(Sender: TObject);
    procedure tvProveedoresCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tvProveedoresxSolicitudCellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSolCotizacionxProveedor: TFrmSolCotizacionxProveedor;

implementation

{$R *.dfm}

procedure TFrmSolCotizacionxProveedor.btnAgregarClick(Sender: TObject);
var
  LocCursor: TCursor;
  Paso: TClientDataSet;
begin
  if dsProveedores.DataSet.RecordCount > 0 then
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      // Verificar si el proveedor no ha sido agregado
      Paso := TClientDataSet(dsSolCotizacionxProveedorUpt.DataSet);
      Paso.Cancel;
      Paso.Close;
      if Not CargarDatosFiltrados(Paso, 'IdSolCotizacion,IdProveedor', [dsSolCotizacionxProveedor.DataSet.FieldByName('IdSolCotizacion').AsInteger, dsProveedores.DataSet.FieldByName('iIdEmpresa').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Proveedores por Solicitud de Cotización', dsSolCotizacionxProveedor.DataSet.FieldByName('IdSolCotizacion').AsString + '/' + dsProveedores.DataSet.FieldByName('iIdEmpresa').AsString, 'Id. Solicitud de Cotización / Id. Proveedor']);

      //dsSolCotizacionxProveedorUpt.DataSet.Modified
      if Paso.Active then
        Paso.Refresh
      else
        Paso.Open;

      if Paso.RecordCount = 1 then
        raise InteligentException.CreateByCode(17, ['Proveedores por Solicitud de Cotización', dsSolCotizacionxProveedor.DataSet.FieldByName('sNombreCorto').AsString]);

      Paso.Append;
      try
        Paso.FieldByName('IdSolCotizacionxProveedor').AsInteger := 0;
        Paso.FieldByName('IdSolCotizacion').AsInteger := dsSolCotizacion.DataSet.FieldByName('IdSolCotizacion').AsInteger;
        Paso.FieldByName('IdProveedor').AsInteger := dsProveedores.DataSet.FieldByName('iIdEmpresa').AsInteger;
        Paso.FieldByName('Fecha').AsDateTime := Now;
        Paso.FieldByName('Estado').AsString := 'ACTIVO';
        Paso.Post;
        Paso.ApplyUpdates(-1);
        dsSolCotizacionxProveedor.DataSet.Refresh;
      finally
        Paso.Cancel;
        Paso.Close;
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

procedure TFrmSolCotizacionxProveedor.btnQuitarClick(Sender: TObject);
var
  LocCursor: TCursor;
  Paso: TClientDataSet;
begin
  if dsSolCotizacionxProveedor.DataSet.RecordCount > 0 then
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      // Eliminar el proveedor de la lista
      if Not CargarDatosFiltrados(TClientDataSet(dsSolCotizacionxProveedorUpt.DataSet), 'IdSolCotizacion,IdProveedor', [dsSolCotizacionxProveedor.DataSet.FieldByName('IdSolCotizacion').AsInteger, dsSolCotizacionxProveedor.DataSet.FieldByName('IdProveedor').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Proveedores por Solicitud de Cotización', dsSolCotizacionxProveedor.DataSet.FieldByName('IdSolCotizacion').AsString + '/' + dsSolCotizacionxProveedor.DataSet.FieldByName('IdProveedor').AsString, 'Id. Solicitud de Cotización / Id. Proveedor']);

      if dsSolCotizacionxProveedorUpt.DataSet.Active then
        dsSolCotizacionxProveedorUpt.DataSet.Refresh
      else
        dsSolCotizacionxProveedorUpt.DataSet.Open;

      if dsSolCotizacionxProveedorUpt.DataSet.RecordCount <> 1 then
        raise InteligentException.CreateByCode(13, [dsSolCotizacionxProveedor.DataSet.FieldByName('sNombreCorto').AsString, 'Proveedores de Solicitud de Cotización']);
    finally
      Screen.Cursor := LocCursor;
    end;

    if InteliDialog.ShowModal('Eliminar registro', '¿Está seguro que desea quitar este proveedor de la lista?' + #10 + #10 + dsSolCotizacionxProveedor.DataSet.FieldByName('sNombreCorto').AsString + ' - ' + dsSolCotizacionxProveedor.DataSet.FieldByName('sRazonSocial').AsString, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      Paso := TClientDataSet(dsSolCotizacionxProveedorUpt.DataSet);
      Paso.Delete;
      Paso.ApplyUpdates(-1);
      dsSolCotizacionxProveedor.DataSet.Refresh;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmSolCotizacionxProveedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
  if ModalResult = mrOk then
    ConcretarTransaccion
  else
    CancelarTransaccion;

  SetRegistry('\Ventanas', '\' + Self.Name, 'Top', IntToStr(Self.Top));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Left', IntToStr(Self.Left));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Width', IntToStr(Self.Width));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Height', IntToStr(Self.Height));
  SetRegistry('\Ventanas', '\' + Self.Name + '\pnlProveedores', 'Width', IntToStr(pnlProveedores.Width));

  for i:= 0 to tvProveedores.ColumnCount -1 do
    SetRegistry('\Ventanas', '\' + Self.Name + '\tvProveedores', 'Column' + IntToStr(i), IntToStr(tvProveedores.Columns[i].Width));

  for i:= 0 to tvProveedoresxSolicitud.ColumnCount -1 do
    SetRegistry('\Ventanas', '\' + Self.Name + '\tvProveedoresxSolicitud', 'Column' + IntToStr(i), IntToStr(tvProveedoresxSolicitud.Columns[i].Width));

  Action := caFree;
end;

procedure TFrmSolCotizacionxProveedor.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
  i: Integer;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      IniciarTransaccion;

      try
        Self.Top := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Top'));
      except
        ;
      end;

      try
        Self.Left := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Left'));
      except
        ;
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
        pnlProveedores.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\pnlProveedores', 'Width'));
      except
        ;
      end;

      for i:= 0 to tvProveedores.ColumnCount -1 do
        try
          tvProveedores.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\tvProveedores', 'Column'+ IntToStr(i)));
        except
          ;
        end;

      for i:= 0 to tvProveedoresxSolicitud.ColumnCount -1 do
        try
          tvProveedoresxSolicitud.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\tvProveedoresxSolicitud', 'Column'+ IntToStr(i)));
        except
          ;
        end;

      if Not dsProveedores.DataSet.Active then
        dsProveedores.DataSet.Open;
    finally
      Screen.Cursor := LocCursor;
    end;
  except
    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmSolCotizacionxProveedor.tvProveedoresCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnAgregar.Click;
end;

procedure TFrmSolCotizacionxProveedor.tvProveedoresxSolicitudCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnQuitar.Click;
end;

end.
