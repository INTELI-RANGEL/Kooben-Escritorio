unit UTFrmBuscarCotizacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExControls, JvLabel, ExtCtrls, DateUtils, URegistro,
  UInteliDialog, ClientModuleUnit1, DB, DBClient, AdvGlowButton, cxGraphics,
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
  cxGrid, AdvPicture;

type
  TFrmBuscarCotizacion = class(TForm)
    Panel1: TPanel;
    JvLabel1: TJvLabel;
    Anio: TComboBox;
    dsBuscarCotizacion: TDataSource;
    cdAnios: TClientDataSet;
    cbMes: TComboBox;
    JvLabel2: TJvLabel;
    btnBuscar: TAdvGlowButton;
    Panel2: TPanel;
    btnCancelar: TAdvGlowButton;
    btnAceptar: TAdvGlowButton;
    tvBuscar: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    picAviso: TAdvPicture;
    ColCodigoCotizacion: TcxGridDBColumn;
    ColsRazonSocial: TcxGridDBColumn;
    ColFecha: TcxGridDBColumn;
    ColNombreElabora: TcxGridDBColumn;
    ColNombreAutoriza: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AnioChange(Sender: TObject);
    procedure cbMesChange(Sender: TObject);
    procedure tvBuscarCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    procedure AbrirDatos;
  public
    { Public declarations }
  end;

var
  FrmBuscarCotizacion: TFrmBuscarCotizacion;

implementation

{$R *.dfm}

procedure TFrmBuscarCotizacion.AnioChange(Sender: TObject);
begin
  picAviso.Visible := True;
end;

procedure TFrmBuscarCotizacion.btnBuscarClick(Sender: TObject);
begin
  AbrirDatos;
end;

procedure TFrmBuscarCotizacion.cbMesChange(Sender: TObject);
begin
  picAviso.Visible := True;
end;

procedure TFrmBuscarCotizacion.FormClose(Sender: TObject;
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

procedure TFrmBuscarCotizacion.FormShow(Sender: TObject);
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

      if Not CrearConjunto(cdAnios, 'cmt_cotizacion_anio', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Años de Cotizaciones']);

      if TClientDataSet(dsBuscarCotizacion.DataSet).ProviderName = '' then
        if Not CrearConjunto(TClientDataSet(dsBuscarCotizacion.DataSet), 'cmt_cotizacion', ccSelect) then
          raise InteligentException.CreateByCode(5, ['Cotizaciones']);

      cdAnios.Open;
      if cdAnios.RecordCount = 0 then
        raise InteligentException.CreateByCode(22, ['Cotizaciones']);

      // Llenar el combo de los años
      Anio.Items.Clear;
      cdAnios.First;
      while Not cdAnios.Eof do
      begin
        Anio.Items.Add(cdAnios.FieldByName('Anio').AsString);
        cdAnios.Next;
      end;

      if Anio.Items.IndexOf(IntToStr(YearOf(Now))) >= 0 then
        Anio.ItemIndex := Anio.Items.IndexOf(IntToStr(YearOf(Now)));
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

procedure TFrmBuscarCotizacion.tvBuscarCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnAceptar.Click;
end;

procedure TFrmBuscarCotizacion.AbrirDatos;
var
  iMes: Integer;
begin
  picAviso.Visible := True;
  try
    if Anio.ItemIndex = -1 then
      raise InteligentException.CreateByCode(24, ['Debe seleccionar un año para proceder a realizar la busqueda de Cotizaciones']);

    if cbMes.ItemIndex = 0 then
      iMes := -1
    else
      iMes := cbMes.ItemIndex;

    if Not CargarDatosFiltrados(TClientDataSet(dsBuscarCotizacion.DataSet), 'Anio,Mes', [Anio.Text, iMes]) then
      raise InteligentException.CreateByCode(6, ['Buscador de Cotizaciones', Anio.Text + '/' + IntToStr(iMes), 'Anio/Mes']);

    if dsBuscarCotizacion.DataSet.Active then
      dsBuscarCotizacion.DataSet.Refresh
    else
      dsBuscarCotizacion.DataSet.Open;
    picAviso.Visible := False;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

end.
