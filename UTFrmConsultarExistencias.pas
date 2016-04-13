unit UTFrmConsultarExistencias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, ClientModuleUnit1, URegistro, UInteliDialog,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
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
  dxSkinXmas2008Blue, cxContainer, cxEdit, cxCheckListBox, cxDBCheckListBox,
  StdCtrls, DBCtrls, CheckLst, ExtCtrls, JvExControls, JvLabel, AdvGlowButton,
  frxClass, frxDBSet, StrUtils, frxPreview;

type
  TCualesSeleccionar = (selTodos, selNinguno, selInvertir);

  TFrmConsultarExistencias = class(TForm)
    cdExistencias: TClientDataSet;
    dsExistencias: TDataSource;
    cdEmbarcacion: TClientDataSet;
    dsEmbarcacion: TDataSource;
    cdTipoInsumo: TClientDataSet;
    dsTipoInsumo: TDataSource;
    pnlTipoInsumo: TPanel;
    clbTipoInsumo: TCheckListBox;
    Panel1: TPanel;
    btnTodos: TButton;
    btnNinguno: TButton;
    btnInvertir: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    cbIdEmbarcacion: TComboBox;
    JvLabel1: TJvLabel;
    btnProceder: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    fdsExistencias: TfrxDBDataset;
    fdsEmbarcacion: TfrxDBDataset;
    frxExistencias: TfrxReport;
    cdLocExistencias: TClientDataSet;
    cdLocExistenciasFechaInventario: TDateField;
    cdLocExistenciasIdEmbarcacion: TIntegerField;
    cdLocExistenciasIdInsumo: TIntegerField;
    cdLocExistenciasIdTipoInsumo: TIntegerField;
    cdLocExistenciasCodigoTipoInsumo: TStringField;
    cdLocExistenciasNombreTipoInsumo: TStringField;
    cdLocExistenciasOrden: TIntegerField;
    cdLocExistenciasCodigoInsumo: TStringField;
    cdLocExistenciasNombreInsumo: TStringField;
    cdLocExistenciasDescripcionInsumo: TStringField;
    cdLocExistenciasiIdUnidad: TIntegerField;
    cdLocExistenciassNombre: TStringField;
    cdLocExistenciasInventario: TFloatField;
    cdLocExistenciasEntrada: TFloatField;
    cdLocExistenciasSalida: TFloatField;
    cdLocExistenciasExistencia: TFloatField;
    cdLocExistenciasStockMinimo: TFloatField;
    cdLocExistenciasStockMaximo: TFloatField;
    cdLocExistenciasAplicacionStock: TDateField;
    cdSalidaDetalle: TClientDataSet;
    pnlPreview: TPanel;
    Panel5: TPanel;
    frxDetalle: TfrxReport;
    frxPreview1: TfrxPreview;
    fdsDetalle: TfrxDBDataset;
    AdvGlowButton2: TAdvGlowButton;
    cdUltimoInventario: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure btnTodosClick(Sender: TObject);
    procedure btnNingunoClick(Sender: TObject);
    procedure btnInvertirClick(Sender: TObject);
    procedure btnProcederClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frxExistenciasDblClickObject(Sender: TfrxView;
      Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
    procedure AdvGlowButton2Click(Sender: TObject);
  private
    FormPreview: TForm;
    procedure CargarTiposInsumo;
    procedure CargarEmbarcaciones;
    procedure Seleccionar(Cual: TCualesSeleccionar);
  public
    { Public declarations }
  end;

var
  FrmConsultarExistencias: TFrmConsultarExistencias;

implementation

{$R *.dfm}

procedure TFrmConsultarExistencias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EliminarConjunto([cdEmbarcacion, cdTipoInsumo, cdExistencias, cdUltimoInventario]);
end;

procedure TFrmConsultarExistencias.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      cdLocExistencias.CreateDataSet;

      if Not CrearConjunto(cdUltimoInventario, 'cmt_ultimoinventario', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Inventarios']);

      if Not CrearConjunto(cdExistencias, 'cmt_existenciasdetalle', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Existencias']);

      if Not CrearCOnjunto(cdEmbarcacion, 'cmt_embarcacion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Localizaciones']);

      if Not CrearCOnjunto(cdTipoInsumo, 'cmt_tipoinsumo', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Tipos de Insumo']);

      cdEmbarcacion.Open;
      cdTipoInsumo.Open;

      // Cargar las ebarcaciones
      CargarEmbarcaciones;

      // Cargar los tipos de Insumo
      CargarTiposInsumo;
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

procedure TFrmConsultarExistencias.frxExistenciasDblClickObject(
  Sender: TfrxView; Button: TMouseButton; Shift: TShiftState;
  var Modified: Boolean);
var
  IdInsumo: Integer;
  FechaInventario: TDate;
  Cadena, Parte: String;
begin
  try
    if AnsiCompareText(Sender.Name, 'Consumido') = 0 then
    begin
      // Descomponer el texto en todos los elementos
      Cadena := Sender.TagStr + ';';
      Parte := Copy(Cadena, 1, Pos(';', Cadena) -1);
      Cadena := RightStr(Cadena, Length(Cadena) - (1 + Length(Parte)));
      IdInsumo := StrToInt(Parte);

      Parte := Copy(Cadena, 1, Pos(';', Cadena) -1);
      Cadena := RightStr(Cadena, Length(Cadena) - (1 + Length(Parte)));
      FechaInventario := StrToDate(Parte);

      if cdSalidaDetalle.ProviderName = '' then
        if not CrearConjunto(cdSalidaDetalle, 'cmt_detallemovimientos', ccSelect) then
          raise InteligentException.CreateByCode(5, ['Detalle de salidas de Almacén']);

      if Not CargarDatosFiltrados(cdSalidaDetalle, 'IdInsumo,FechaInventario,TipoMovimiento', [IdInsumo, ClientModule1.DateToStrSQL(FechaInventario), 'SALIDA']) then
        raise InteligentException.CreateByCode(6, ['Detalle de salidas de Almacén', IdInsumo, 'Id. Insumo']);

      if cdSalidaDetalle.Active then
        cdSalidaDetalle.Refresh
      else
        cdSalidaDetalle.Open;

      try
        FormPreview := TForm.Create(Self);
        FormPreview.Position := poDesigned;

        try
          FormPreview.Top := StrToInt(VarRegistry('\Ventanas', '\' + self.Name + '\FormPreview', 'Top'));
        except
          ;
        end;

        try
          FormPreview.Left := StrToInt(VarRegistry('\Ventanas', '\' + self.Name + '\FormPreview', 'Left'));
        except
          ;
        end;

        try
          FormPreview.Width := StrToInt(VarRegistry('\Ventanas', '\' + self.Name + '\FormPreview', 'Width'));
        except
          ;
        end;

        try
          FormPreview.Height := StrToInt(VarRegistry('\Ventanas', '\' + self.Name + '\FormPreview', 'Height'));
        except
          ;
        end;

        pnlPreview.Parent := FormPreview;
        pnlPreview.Align := alClient;
        pnlPreview.Visible := True;

        ClientModule1.ImprimeReporte('DetalleSalidas.fr3', frxDetalle, frxPreview1);
        FormPreview.ShowModal;

        SetRegistry('\Ventanas', '\' + self.Name + '\FormPreview', 'Top', IntToStr(FormPreview.Top));
        SetRegistry('\Ventanas', '\' + self.Name + '\FormPreview', 'Left', IntToStr(FormPreview.Left));
        SetRegistry('\Ventanas', '\' + self.Name + '\FormPreview', 'Width', IntToStr(FormPreview.Width));
        SetRegistry('\Ventanas', '\' + self.Name + '\FormPreview', 'Height', IntToStr(FormPreview.Height));
      finally
        pnlPreview.Visible := False;
        pnlPreview.Align := alNone;
        pnlPreview.Parent := Self;
        FormPreview.Free;
      end;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmConsultarExistencias.Seleccionar(Cual: TCualesSeleccionar);
var
  i: Integer;
begin
  for i := 0 to clbTipoInsumo.Items.Count -1 do
    clbTipoInsumo.Checked[i] := ((Cual = selTodos) and True) or ((Cual = selNinguno) and False) or ((Cual = selInvertir) and Not clbTipoInsumo.Checked[i]);
end;

procedure TFrmConsultarExistencias.AdvGlowButton2Click(Sender: TObject);
begin
  FormPreview.Close;
end;

procedure TFrmConsultarExistencias.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmConsultarExistencias.btnInvertirClick(Sender: TObject);
begin
  Seleccionar(selInvertir);
end;

procedure TFrmConsultarExistencias.btnNingunoClick(Sender: TObject);
begin
  Seleccionar(selNinguno);
end;

procedure TFrmConsultarExistencias.btnProcederClick(Sender: TObject);
var
  i: Integer;
  ListaTipo: String;
  LocUltimoInventario: String;
  LocIdEmbarcacion: Integer;
  LocAplicacion: String;
begin
  try
    try
      ListaTipo := '';
      for i := 0 to clbTipoInsumo.Items.Count -1 do
        if clbTipoInsumo.Checked[i] then
          ListaTipo := ListaTipo + IntToStr(Integer(clbTipoInsumo.Items.Objects[i])) + ',';

      if ListaTipo = '' then
        raise InteligentException.CreateByCode(8, ['Debe seleccionar al menos un tipo de Insumo para poder generar el reporte de existencias.']);

      ListaTipo := Copy(ListaTipo, 1, Length(ListaTipo) -1);

      if Not CargarDatosFiltrados(cdUltimoInventario, 'IdEmbarcacion', [Integer(cbIdEmbarcacion.Items.Objects[cbIdEmbarcacion.ItemIndex])]) then
        raise InteligentException.CreateByCode(6, ['Inventario', Integer(cbIdEmbarcacion.Items.Objects[cbIdEmbarcacion.ItemIndex]), 'Id. Localizacion']);

      if cdUltimoInventario.Active then
        cdUltimoInventario.Refresh
      else
        cdUltimoInventario.Open;

      if cdUltimoInventario.FieldByName('UltimoInventario').IsNull then
      begin
        if Not CargarDatosFiltrados(cdExistencias, 'IdEmbarcacion,Aplicacion,TiposInsumo', [Integer(cbIdEmbarcacion.Items.Objects[cbIdEmbarcacion.ItemIndex]), ClientModule1.DatetoStrSql(Now), ListaTipo]) then
          raise InteligentException.CreateByCode(6, ['Existencias', IntToStr(Integer(cbIdEmbarcacion.Items.Objects[cbIdEmbarcacion.ItemIndex])) + '/' + ClientModule1.DatetoStrSql(Now) + '/' + ListaTipo, 'Id. Embarcacion/Aplicacion/Lista Id. Tipo Insumo']);
      end
      else
      begin
        LocIdEmbarcacion := Integer(cbIdEmbarcacion.Items.Objects[cbIdEmbarcacion.ItemIndex]);
        LocUltimoInventario := ClientModule1.DateToStrSql(cdUltimoInventario.FieldByName('UltimoInventario').AsDateTime);
        LocAplicacion := ClientModule1.DatetoStrSql(Now);

        if Not CargarDatosFiltrados(cdExistencias, 'IdEmbarcacion,FechaInventario,Aplicacion,TiposInsumo', [LocIdEmbarcacion, LocUltimoInventario, LocAplicacion, ListaTipo]) then
          raise InteligentException.CreateByCode(6, ['Existencias', IntToStr(Integer(cbIdEmbarcacion.Items.Objects[cbIdEmbarcacion.ItemIndex])) + '/' + ClientModule1.DatetoStrSql(Now) + '/' + ListaTipo, 'Id. Embarcacion/Aplicacion/Lista Id. Tipo Insumo']);
      end;

      //ProcedimientoAlmacenado(cdExistencias, 'Res_Existencias', 'pIdEmbarcacion,pAplicacion,pTiposInsumo,pIdInsumo', [Integer(cbIdEmbarcacion.Items.Objects[cbIdEmbarcacion.ItemIndex]), ClientModule1.DatetoStrSql(Now), ListaTipo, -1]);
      if cdExistencias.Active then
        cdExistencias.Refresh
      else
        cdExistencias.Open;

      cdExistencias.First;

      if cdExistencias.RecordCount = 0 then
        raise InteligentException.CreateByCode(30, ['Existencias por Tipo de Insumo']);

      cdLocExistencias.Open;

      // Llenar el DataSet
      while Not cdExistencias.Eof do
      begin
        cdLocExistencias.Append;
        cdLocExistencias.FieldByName('FechaInventario').AsVariant := cdExistencias.FieldByName('FechaInventario').AsVariant;
        cdLocExistencias.FieldByName('IdEmbarcacion').AsInteger := cdExistencias.FieldByName('IdEmbarcacion').AsInteger;
        cdLocExistencias.FieldByName('IdInsumo').AsInteger := cdExistencias.FieldByName('IdInsumo').AsInteger;
        cdLocExistencias.FieldByName('IdTipoInsumo').AsInteger := cdExistencias.FieldByName('IdTipoInsumo').AsInteger;
        cdLocExistencias.FieldByName('CodigoTipoInsumo').AsString := cdExistencias.FieldByName('CodigoTipoInsumo').AsString;
        cdLocExistencias.FieldByName('NombreTipoInsumo').AsString := cdExistencias.FieldByName('NombreTipoInsumo').AsString;
        cdLocExistencias.FieldByName('Orden').AsInteger := cdExistencias.FieldByName('Orden').AsInteger;
        cdLocExistencias.FieldByName('CodigoInsumo').AsString := cdExistencias.FieldByName('CodigoInsumo').AsString;
        cdLocExistencias.FieldByName('NombreInsumo').AsString := cdExistencias.FieldByName('NombreInsumo').AsString;
        cdLocExistencias.FieldByName('DescripcionInsumo').AsString := cdExistencias.FieldByName('DescripcionInsumo').AsString;
        cdLocExistencias.FieldByName('iIdUnidad').AsInteger := cdExistencias.FieldByName('iIdUnidad').AsInteger;
        cdLocExistencias.FieldByName('sNombre').AsString := cdExistencias.FieldByName('sNombre').AsString;
        cdLocExistencias.FieldByName('Inventario').AsFloat := cdExistencias.FieldByName('Inventario').AsFloat;
        cdLocExistencias.FieldByName('Entrada').AsFloat := cdExistencias.FieldByName('Entrada').AsFloat;
        cdLocExistencias.FieldByName('Salida').AsFloat := cdExistencias.FieldByName('Salida').AsFloat;
        cdLocExistencias.FieldByName('Existencia').AsFloat := cdExistencias.FieldByName('Inventario').AsFloat + cdExistencias.FieldByName('Entrada').AsFloat - cdExistencias.FieldByName('Salida').AsFloat;
        cdLocExistencias.FieldByName('StockMinimo').AsFloat := cdExistencias.FieldByName('Minimo').AsFloat;
        cdLocExistencias.FieldByName('StockMaximo').AsFloat := cdExistencias.FieldByName('Maximo').AsFloat;
        cdLocExistencias.FieldByName('AplicacionStock').AsDateTime := cdExistencias.FieldByName('AplicacionStock').AsDateTime;
        cdLocExistencias.Post;

        cdExistencias.Next;
      end;
{,
  rmp.,
  ins.,
  tins.,
  tins.,
  tins.,
  ins.,
  ins.,
  ins.,
  ins.,
  u.}
      // Ubicar el registro de Embarcación
      cdEmbarcacion.Locate('IdEmbarcacion', Integer(cbIdEmbarcacion.Items.Objects[cbIdEmbarcacion.ItemIndex]), []);

      ClientModule1.ImprimeReporte('Existencias.fr3', frxExistencias);
    except
      on e:InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e:Exception do
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  finally
    Close;
  end;
end;

procedure TFrmConsultarExistencias.btnTodosClick(Sender: TObject);
begin
  Seleccionar(selTodos);
end;

procedure TFrmConsultarExistencias.CargarTiposInsumo;
begin
  cdTipoInsumo.First;
  clbTipoInsumo.Items.Clear;
  while Not cdTipoInsumo.Eof do
  begin
    clbTipoInsumo.Items.AddObject(cdTipoInsumo.FieldByName('NombreTipoInsumo').AsString, TObject(cdTipoInsumo.FieldByName('IdTipoInsumo').AsInteger));
    //clbTipoInsumo.Items.Objects
    cdTipoInsumo.Next;
  end;
end;

procedure TFrmConsultarExistencias.CargarEmbarcaciones;
begin
  if cdEmbarcacion.Active then
    cdEmbarcacion.Refresh
  else
    cdEmbarcacion.Open;

  cdEmbarcacion.First;
  cbIdEmbarcacion.Items.Clear;
  while Not cdEmbarcacion.Eof do
  begin
    cbIdEmbarcacion.Items.AddObject(cdEmbarcacion.FieldByName('NombreEmbarcacion').AsString, TObject(cdEmbarcacion.FieldByName('IdEmbarcacion').AsInteger));
    cdEmbarcacion.Next;
  end;

  if cbIdEmbarcacion.Items.Count = 0 then
    raise InteligentException.CreateByCode(22, ['Localizaciones']);

  cbIdEmbarcacion.ItemIndex := 0;
end;

end.
