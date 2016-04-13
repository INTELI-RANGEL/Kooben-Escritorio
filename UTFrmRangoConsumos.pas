unit UTFrmRangoConsumos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvExControls, JvLabel, AdvGlowButton, JvDBControls, DB,
  DBClient, ClientModuleUnit1, URegistro, UInteliDialog, ExtCtrls, ComCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid;

type
  TSolicitudDatos = class
    IdSolicitudDatos: Integer;
    IdSolicitud: Integer;
  end;

  TFrmRangoConsumos = class(TForm)
    GroupBox1: TGroupBox;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    FechaInicio: TJvDBDateEdit;
    FechaFin: TJvDBDateEdit;
    dsSolicitud: TDataSource;
    cdSolicitud: TClientDataSet;
    cdSolicitudUpt: TClientDataSet;
    cdBuscarSolicitud: TClientDataSet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Splitter1: TSplitter;
    cdRegistroConsumoRango: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure GroupBox1DblClick(Sender: TObject);
  private
    Titulo: String;
    IdSolicitud: LongInt;
    procedure VerificaDataSet(DataSet: TClientDataSet);
    function BuscarRegistroConsumo: Integer;
    procedure EditarRegistroConsumo(IdRegistroConsumo: Integer);
    procedure CrearConjuntosNuevaSolicitud;
  public
    { Public declarations }
  end;

var
  FrmRangoConsumos: TFrmRangoConsumos;

implementation

uses Unit2, UTFrmBuscarSolicitud, UTFrmSolicitudDatos;

{$R *.dfm}

procedure TFrmRangoConsumos.FormShow(Sender: TObject);
var
  i: Integer;
  LocCursor: TCursor;
begin
  Try
    Self.Top := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Top'));
  Except
    ;
  End;

  Try
    Self.Left := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Left'));
  Except
    ;
  End;

  Try
    Self.Height := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Height'));
  Except
    ;
  End;

  Try
    Self.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Width'));
  Except
    ;
  End;

  IniciarTransaccion;

  Try
    LocCursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      // Crear los dataset necesarios
      VerificaDataSet(cdSolicitud);

      Titulo := 'Seleccionar un Registro de Consumo';
    Finally
      Screen.Cursor := LocCursor;
    End;

    // Se va a abrir una receta
    if Form2.IdSolicitud = -5 then
    begin
      LocCursor := Screen.Cursor;
      Try
        Screen.Cursor := crAppStart;

        Titulo := 'Abrir Solicitud';

        BuscarRegistroConsumo;

        EditarRegistroConsumo(cdSolicitud.FieldByName('IdSolicitud').AsInteger);
      Finally
        Screen.Cursor := LocCursor;
      End;
    end;

    // Se va a crear un nuevo Registro de Consumo
    if Form2.IdSolicitud = -9 then
    begin
      CrearConjuntosNuevaSolicitud;

      if Not CargarDatosFiltrados(cdSolicitudUpt, 'IdSolicitud', [-9]) then
        raise InteligentException.CreateByCode(16, ['Solicuitud de Insumos']);

      Try
        cdSolicitudUpt.Open;

        Application.CreateForm(TFrmSolicitudDatos, FrmSolicitudDatos);
        FrmSolicitudDatos.dsSolicitud.DataSet := cdSolicitudUpt;
        FrmSolicitudDatos.Caption := Titulo;
        FrmSolicitudDatos.pIdSolicitud := -9;
        case FrmSolicitudDatos.ShowModal of
          mrCancel: raise InteligentException.Create('*');
          mrOk, mrIgnore: begin
                      if Not CargarDatosFiltrados(cdSolicitud, 'IdRegistroConsumo', [FrmSolicitudDatos.pIdSolicitud]) then
                        raise InteligentException.CreateByCode(6, ['Solicitud de Insumos', FrmSolicitudDatos.pIdSolicitud, 'Id. Solicitud']);

                      if cdSolicitud.Active then
                        cdSolicitud.Refresh
                      else
                        cdSolicitud.Open;

                      EditarRegistroConsumo(cdSolicitud.FieldByName('IdRegistroConsumo').AsInteger);
                    end;
        end;

        IdSolicitud := UltimoId;
      Finally
        cdSolicitudUpt.Close;
      end;
    end;

    // Se va a borrar una receta
    if Form2.IdSolicitud = -9 then
    begin

    end;
  Except
    on e:InteligentException do
    begin
      if e.Message <> '*' then
        InteliDialog.ShowModal(e.Title, e.Message, mtError, [mbOk], 0);

      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmRangoConsumos.GroupBox1DblClick(Sender: TObject);
var
  Codigo: String;
begin
  Try
    CrearConjuntosNuevaSolicitud;

    Application.CreateForm(TFrmSolicitudDatos, FrmSolicitudDatos);
    FrmSolicitudDatos.pIdSolicitud := cdSolicitud.FieldByName('IdSolicitud').AsInteger;
    FrmSolicitudDatos.dsSolicitud.DataSet := cdSolicitudUpt;
    if FrmSolicitudDatos.ShowModal = mrOk then
    begin
      Codigo := cdSolicitud.FieldByName('CodigoSolicitud').AsString;

      cdSolicitud.Refresh;
      if cdSolicitud.RecordCount <> 1 then
        raise InteligentException.CreateByCode(13, [Codigo, 'Solicitudes de Insumos']);
    end;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, mtError, [mbOk], 0);
      Close;
    end;

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmRangoConsumos.VerificaDataSet(DataSet: TClientDataSet);
begin
  if DataSet.ProviderName = '' then
    if Not CrearConjunto(DataSet, 'cmt_solicitud', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Solicitud de Insumos']);
end;

function TFrmRangoConsumos.BuscarRegistroConsumo: Integer;
begin
  VerificaDataSet(cdBuscarSolicitud);

  if Not cdBuscarSolicitud.Active then
    cdBuscarSolicitud.Open;

  Application.CreateForm(TFrmBuscarSolicitud, FrmBuscarSolicitud);
  FrmBuscarSolicitud.dsSolicitud.DataSet := cdBuscarSolicitud;
  if FrmBuscarSolicitud.ShowModal = mrCancel then
    raise InteligentException.Create('*');

  if Not CargarDatosFiltrados(cdSolicitud, 'IdSolicitud', [cdBuscarSolicitud.FieldByName('IdSolicitud').AsInteger]) then
    raise InteligentException.CreateByCode(6, ['Solicitud de Insumos', cdBuscarSolicitud.FieldByName('IdSolicitud').AsInteger, 'Id. Solicitud de Insumos']);

  if cdSolicitud.Active then
    cdSolicitud.Refresh
  else
    cdSolicitud.Open;

  if cdSolicitud.RecordCount = 0 then
    raise InteligentException.CreateByCode(13, [cdBuscarSolicitud.FieldByName('Referencia').AsString, 'Solicitud de Insumos']);
end;

procedure TFrmRangoConsumos.EditarRegistroConsumo(IdRegistroConsumo: Integer);
var
  Ancho: Integer;
  Panel, Panel2: TPanel;
  InPanel: TPanel;
  Elemento: TListView;
  Nodo: TListItem;
  Splitter: TSplitter;
  rcDatos: TSolicitudDatos;
begin
  Self.Caption := cdSolicitud.FieldByName('Referencia').AsString;
(*
  CrearPartidasRegistroConsumo;

  //IdRegistroConsumo := ;

  if Not CargarDatosFiltrados(cdRegistroConsumoInsumoLista, 'IdRegistroConsumo', [IdRegistroConsumo]) then
    raise InteligentException.CreateByCode(6, ['Registro de Consumos', IdRegistroConsumo, 'Id. Registro de Consumo']);

  cdRegistroConsumoInsumoLista.Open;

  // Cargar los datos de los periodos de consumo registrados
  if cdPeriodoConsumo.Active then
    cdPeriodoConsumo.Refresh
  else
    cdPeriodoConsumo.Open;

  Ancho := 0;
  cdPeriodoConsumo.First;
  while not cdPeriodoConsumo.Eof do
  begin
    dsRegistroConsumoInsumoLista.DataSet.Filtered := False;
    Try
      dsRegistroConsumoInsumoLista.DataSet.Filter := 'IdPeriodoConsumo = ' + cdPeriodoConsumo.FieldByName('IdPeriodoConsumo').AsString;
      dsRegistroConsumoInsumoLista.DataSet.Filtered := True;

      Panel := TPanel.Create(Self);
      Panel.Parent := sbPeriodo;
      Panel.Name := 'pnl_' + cdPeriodoConsumo.FieldByName('IdPeriodoConsumo').AsString;

      InPanel := TPanel.Create(Self);
      InPanel.Parent := Panel;
      InPanel.Align := alTop;
      InPanel.Name := 'inpnl_' + cdPeriodoConsumo.FieldByName('IdPeriodoConsumo').AsString;
      InPanel.Caption := cdPeriodoConsumo.FieldByName('TituloPeriodoConsumo').AsString;

      Elemento := TListView.Create(Self);
      Elemento.Parent := Panel;
      Elemento.Align := alClient;
      Elemento.Columns.Add.Caption := '';
      Elemento.Columns.Add.Caption := 'Descripción';
      Elemento.Name := 'lv_' + cdPeriodoConsumo.FieldByName('IdPeriodoConsumo').AsString;
      Elemento.OnKeyDown := ElementoKeyDown;
      Elemento.OnClick := GlobalPanelClick;
      Elemento.OnColumnClick := GlobalColumnClick;
      Elemento.OnDblClick := GlobalPanelDblClick;
      Elemento.OnDragDrop := ElementoDragDrop;
      Elemento.OnDragOver := ElementoDragOver;
      Elemento.ViewStyle := vsReport;
      Elemento.ReadOnly := True;
      Elemento.RowSelect := True;
      Elemento.Tag := cdPeriodoConsumo.FieldByName('IdPeriodoConsumo').AsInteger;

      cdRegistroConsumoInsumoLista.First;

      Elemento.Items.Clear;
      Elemento.Groups.Clear;
      while Not cdRegistroConsumoInsumoLista.Eof do
      begin
        rcDatos := TRegistroConsumoDatos.Create;
        rcDatos.IdRegistroConsumoDatos := cdRegistroConsumoInsumoLista.FieldByName('IdRegistroConsumoDatos').AsInteger;
        rcDatos.IdReceta := cdRegistroConsumoInsumoLista.FieldByName('IdReceta').AsInteger;

        Nodo := Elemento.Items.Add;
        Nodo.Caption := cdRegistroConsumoInsumoLista.FieldByName('NombreReceta').AsString;
        Nodo.ImageIndex := 11;
        Nodo.SubItems.Add(cdRegistroConsumoInsumoLista.FieldByName('DescripcionReceta').AsString);
        Nodo.Data := rcDatos;
        //Nodo.Data := TObject(cdRegistroConsumoInsumoLista.FieldByName('IdReceta').AsInteger);

        cdRegistroConsumoInsumoLista.Next;
      end;

      Ancho := Ancho + Panel.Width;
      Panel.Left := Ancho;
      Panel.Align := alLeft;

      Splitter := TSplitter.Create(Self);
      Splitter.Parent := sbPeriodo;
      Splitter.Align := alNone;
      Splitter.Width := 3;
      Splitter.ResizeStyle := rsUpdate;
      //Splitter.Color := clRed;
      Splitter.MinSize := 80;

      Ancho := Ancho + Splitter.Width;

      Splitter.Left := Ancho;
      Splitter.Align := alLeft;
    Finally
      cdRegistroConsumoInsumoLista.Filtered := False;
    End;

    cdPeriodoConsumo.Next;
  end;*)
end;

procedure TFrmRangoConsumos.CrearConjuntosNuevaSolicitud;
begin
  if cdSolicitudUpt.ProviderName = '' then
    if Not CrearConjunto(cdSolicitudUpt, 'cmt_solicitud', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Solicitud de Insumos']);
end;

end.
