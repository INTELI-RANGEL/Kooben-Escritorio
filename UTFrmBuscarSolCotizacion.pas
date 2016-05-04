unit UTFrmBuscarSolCotizacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ClientModuleUnit1, UInteliDialog, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, URegistro,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxGridLevel, cxGridCustomTableView, DBClient,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  AdvGlowButton, StdCtrls, AdvPicture, JvExControls, JvLabel, ExtCtrls,
  DateUtils, cxCalendar;

type
  TFrmBuscarSolCotizacion = class(TForm)
    Panel1: TPanel;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    picAviso: TAdvPicture;
    Anio: TComboBox;
    cbMes: TComboBox;
    btnBuscar: TAdvGlowButton;
    cxGrid1: TcxGrid;
    tvBuscar: TcxGridDBTableView;
    ColCodigoSolCotizacion: TcxGridDBColumn;
    ColFecha: TcxGridDBColumn;
    ColNombreSolicita: TcxGridDBColumn;
    ColComentarios: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel2: TPanel;
    btnCancelar: TAdvGlowButton;
    btnAceptar: TAdvGlowButton;
    cdAnios: TClientDataSet;
    dsBuscarSolCotizacion: TDataSource;
    procedure AnioChange(Sender: TObject);
    procedure cbMesChange(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tvBuscarCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    procedure AbrirDatos;
  public
    { Public declarations }
  end;

var
  FrmBuscarSolCotizacion: TFrmBuscarSolCotizacion;

implementation

{$R *.dfm}

procedure TFrmBuscarSolCotizacion.AnioChange(Sender: TObject);
begin
  picAviso.Visible := True;
end;

procedure TFrmBuscarSolCotizacion.btnBuscarClick(Sender: TObject);
begin
  AbrirDatos;
end;

procedure TFrmBuscarSolCotizacion.cbMesChange(Sender: TObject);
begin
  picAviso.Visible := True;
end;

procedure TFrmBuscarSolCotizacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
  EliminarConjunto(cdAnios);

  SetRegistry('\Ventanas', '\' + Self.Name, 'Top', IntToStr(Self.Top));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Left', IntToStr(Self.Left));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Width', IntToStr(Self.Width));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Height', IntToStr(Self.Height));
  for i:= 0 to tvBuscar.ColumnCount -1 do
    SetRegistry('\Ventanas', '\' + Self.Name + '\tvBuscar', 'Column' + IntToStr(i), IntToStr(tvBuscar.Columns[i].Width));
  Action := caFree;
end;

procedure TFrmBuscarSolCotizacion.FormShow(Sender: TObject);
var
  i: Integer;
  LocCursor: TCursor;
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
        Self.Width := 600;
      end;

      try
        Self.Height := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Height'));
      except
        Self.Height := 300;
      end;

      for i:= 0 to tvBuscar.ColumnCount -1 do
        try
          tvBuscar.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\tvBuscar', 'Column'+ IntToStr(i)));
        except
          tvBuscar.Columns[i].Width := 100;
        end;

      if Not CrearConjunto(cdAnios, 'cmt_solcotizacion_anio', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Años de Requisiciones']);

      if TClientDataSet(dsBuscarSolCotizacion.DataSet).ProviderName = '' then
        if Not CrearConjunto(TClientDataSet(dsBuscarSolCotizacion.DataSet), 'cmt_solcotizacion', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Solicitudes de Cotización']);

      cdAnios.Open;
      if cdAnios.RecordCount = 0 then
        raise InteligentException.CreateByCode(22, ['Solicitudes de Cotización']);

      // Llenar el combo de los años
      Anio.Items.Clear;
      cdAnios.First;
      while Not cdAnios.Eof do
      begin
        Anio.Items.Add(cdAnios.FieldByName('Anio').AsString);
        cdAnios.Next;
      end;

      if Anio.Items.IndexOf(IntToStr(YearOf(Now))) >= 0 then
      begin
        Anio.ItemIndex := 0;
        Anio.OnChange(Anio);
      end;
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

procedure TFrmBuscarSolCotizacion.tvBuscarCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnAceptar.Click;
end;

procedure TFrmBuscarSolCotizacion.AbrirDatos;
var
  iMes: Integer;
begin
  picAviso.Visible := True;
  try
    if Anio.ItemIndex = -1 then
      raise InteligentException.CreateByCode(24, ['Debe seleccionar un año para proceder a realizar la busqueda de Requisiciones']);

    if cbMes.ItemIndex = 0 then
      iMes := -1
    else
      iMes := cbMes.ItemIndex;

    if Not CargarDatosFiltrados(TClientDataSet(dsBuscarSolCotizacion.DataSet), 'Anio,Mes', [Anio.Text, iMes]) then
      raise InteligentException.CreateByCode(6, ['Buscador de Requisiciones', Anio.Text + '/' + IntToStr(iMes), 'Anio/Mes']);

    if dsBuscarSolCotizacion.DataSet.Active then
      dsBuscarSolCotizacion.DataSet.Refresh
    else
      dsBuscarSolCotizacion.DataSet.Open;
    picAviso.Visible := False;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

end.
