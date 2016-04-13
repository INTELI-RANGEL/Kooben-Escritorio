unit UTFrmConsultaPrecios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, ClientModuleUnit1, UInteliDialog, ExtCtrls,
  AdvOfficePager, StdCtrls, frxClass, frxDBSet, frxChart, cxGraphics,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, URegistro,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, AdvGlowButton, CheckLst, JvExControls, JvLabel,
  frxPreview, Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit;

type
  TEmpresa = class
    Nombre: String;
  end;

  TDatos = class
    Id: Integer;
    Titulo: String;
  End;

  TOldDim = class
    Width: Integer;
    Height: Integer;
  end;

  TFrmConsultaPrecios = class(TForm)
    cdHistorial: TClientDataSet;
    cdHistorialPrecios: TClientDataSet;
    AdvOfficePager1: TAdvOfficePager;
    Insumo: TAdvOfficePage;
    opPorProveedor: TAdvOfficePage;
    Panel1: TPanel;
    edtCodigoInsumo: TEdit;
    frxHistorialPrecios: TfrxReport;
    fdsHistorialPrecios: TfrxDBDataset;
    pnlGrafica: TPanel;
    Panel3: TPanel;
    cdInsumoBuscar: TClientDataSet;
    pnlSelInsumo: TPanel;
    Panel6: TPanel;
    btnSelOk: TAdvGlowButton;
    btnSelCancelar: TAdvGlowButton;
    cxGrid1: TcxGrid;
    tvInsumoBuscar: TcxGridDBTableView;
    selCodigoInsumo: TcxGridDBColumn;
    selNombreInsumo: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    dsInsumoBuscar: TDataSource;
    cdInsumo1: TClientDataSet;
    cdInsumo2: TClientDataSet;
    cdInsumo3: TClientDataSet;
    cdInsumo4: TClientDataSet;
    cdInsumo5: TClientDataSet;
    clbEmpresa: TCheckListBox;
    lblInsumo: TJvLabel;
    fdsInsumo1: TfrxDBDataset;
    fdsInsumo2: TfrxDBDataset;
    fdsInsumo3: TfrxDBDataset;
    fdsInsumo4: TfrxDBDataset;
    fdsInsumo5: TfrxDBDataset;
    cdInsumo0: TClientDataSet;
    cdInsumo6: TClientDataSet;
    fdsInsumo6: TfrxDBDataset;
    fdsInsumo7: TfrxDBDataset;
    cdInsumo7: TClientDataSet;
    cdInsumo8: TClientDataSet;
    fdsInsumo8: TfrxDBDataset;
    fdsInsumo9: TfrxDBDataset;
    cdInsumo9: TClientDataSet;
    cdInsumo10: TClientDataSet;
    fdsInsumo10: TfrxDBDataset;
    cbMarca: TComboBox;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    lblMarca: TJvLabel;
    JvLabel3: TJvLabel;
    cbPresentacion: TComboBox;
    lblPresentacion: TJvLabel;
    btnBuscar: TAdvGlowButton;
    Panel2: TPanel;
    frxPreview: TfrxPreview;
    Panel4: TPanel;
    cdDatosReporte: TClientDataSet;
    fdsDatosReporte: TfrxDBDataset;
    btnImprimir: TAdvGlowButton;
    opPorLocalizacion: TAdvOfficePage;
    JvLabel4: TJvLabel;
    Aplicacion: TJvDatePickerEdit;
    procedure FormShow(Sender: TObject);
    procedure edtCodigoInsumoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtCodigoInsumoChange(Sender: TObject);
    procedure FormaSelClose(Sender: TObject; var Action: TCloseAction);
    procedure FormaSelShow(Sender: TObject);
    procedure btnSelCancelarClick(Sender: TObject);
    procedure btnSelOkClick(Sender: TObject);
    procedure tvInsumoBuscarCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure clbEmpresaClickCheck(Sender: TObject);
    procedure cbMarcaChange(Sender: TObject);
    procedure cbPresentacionChange(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure cdInsumoBuscarAfterClose(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel4Resize(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure tvInsumoBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AplicacionChange(Sender: TObject);
  private
    FormaSelResult: TModalResult;
    IdInsumo: Integer;
    ListaE: TStringList;
  public
    { Public declarations }
  end;

var
  FrmConsultaPrecios: TFrmConsultaPrecios;

implementation

{$R *.dfm}

procedure TFrmConsultaPrecios.edtCodigoInsumoChange(Sender: TObject);
begin
  if cdInsumoBuscar.Active then
    cdInsumoBuscar.Close;
end;

procedure TFrmConsultaPrecios.edtCodigoInsumoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  FormaSel: TForm;
  Valores: TDatos;
  OldDim: TOldDim;

begin
  if Key = 13 then
  begin
    try
      // Localizar el insumo
      if Not CargarDatosFiltrados(cdInsumoBuscar, 'CodigoBuscar', [edtCodigoInsumo.Text]) then
        raise InteligentException.CreateByCode(6, ['Insumos', edtCodigoInsumo.Text, 'Codigo Insumo']);

      if cdInsumoBuscar.Active then
        cdInsumoBuscar.Refresh
      else
        cdInsumoBuscar.Open;

      if cdInsumoBuscar.RecordCount > 0 then
      begin
        IdInsumo := -1;
        if cdInsumoBuscar.RecordCount = 1 then
          // Si se trata solo de uno registro
          IdInsumo := cdInsumoBuscar.FieldByName('IdInsumo').AsInteger
        else
        begin
          // Si se tratan de varios registros entonces se deberá mostrar una ventana con ellos para seleccionar el indicado
          FormaSel := TForm.Create(Self);
          OldDim := TOldDim.Create;
          OldDim.Width := pnlSelInsumo.Width;
          OldDim.Height := pnlSelInsumo.Height;
          try
            FormaSel.Width := pnlSelInsumo.Width;
            FormaSel.OnClose := FormaSelClose;
            FormaSel.OnShow := FormaSelShow;
            FormaSel.OnClose := FormaSelClose;
            FormaSel.Height := pnlSelInsumo.Height;
            pnlSelInsumo.Parent := FormaSel;
            pnlSelInsumo.Align := alClient;
            pnlSelInsumo.Visible := True;

            if FormaSel.ShowModal = mrOk Then
              IdInsumo := cdInsumoBuscar.FieldByName('IdInsumo').AsInteger;
          finally
            pnlSelInsumo.Visible := False;
            pnlSelInsumo.Align := alNone;
            pnlSelInsumo.Parent := Self;
            pnlSelInsumo.Width := OldDim.Width;
            pnlSelInsumo.Height := OldDim.Height;
          end;
        end;

        if IdInsumo > 0 then
        begin
          lblInsumo.Caption := cdInsumoBuscar.FieldByName('CodigoInsumo').AsString + ' - ' + cdInsumoBuscar.FieldByName('NombreInsumo').AsString;

          // Seleccionar los precios
          if Not CargarDatosFiltrados(cdHistorial, 'IdInsumo,Aplicacion', [IdInsumo, ClientModule1.DatetoStrSql(Aplicacion.Date)]) then
            raise InteligentException.CreateByCode(6, ['Historial de Precios', IdInsumo, 'Id. Insumo']);

          if cdHistorial.Active then
            cdHistorial.Refresh
          else
            cdHistorial.Open;

          if cdHistorial.RecordCount = 0 then
          begin
            Aplicacion.SetFocus;
            raise InteligentException.CreateByCode(24, ['No existen registros de precios a partir de la fecha indicada (' + DateToStr(Aplicacion.Date) + ')']);
          end;

          cdHistorial.First;
          while Not cdHistorial.Eof do
          begin
            // Agregar las marcas involucradas
            if cbMarca.Items.IndexOf(cdHistorial.FieldByName('CodigoMarca').AsString) = -1 then
            begin
              Valores := TDatos.Create;
              Valores.Id := cdHistorial.FieldByName('IdMarca').AsInteger;
              Valores.Titulo := cdHistorial.FieldByName('TituloMarca').AsString;
              cbMarca.Items.AddObject(cdHistorial.FieldByName('CodigoMarca').AsString, Valores);
            end;

            // Agregar las presentaciones involucradas
            if cbPresentacion.Items.IndexOf(cdHistorial.FieldByName('CodigoPresentacion').AsString) = -1 then
            begin
              Valores := TDatos.Create;
              Valores.Id := cdHistorial.FieldByName('IdPresentacion').AsInteger;
              Valores.Titulo := cdHistorial.FieldByName('TituloPresentacion').AsString;
              cbPresentacion.Items.AddObject(cdHistorial.FieldByName('CodigoPresentacion').AsString, Valores);
            end;

{            if (ListaE.IndexOf(cdHistorial.FieldByName('iIdEmpresa').AsString) < 0) and (ListaE.Count < 5) then
            begin
              Id := cdHistorial.FieldByName('iIdEmpresa').AsInteger;
              Empresa := TEmpresa.Create;
              Empresa.Nombre := cdHistorial.FieldByName('sNombreCorto').AsString;
              ListaE.AddObject(IntToStr(Id), Empresa);
            end;

            case ListaE.IndexOf(cdHistorial.FieldByName('iIdEmpresa').AsString) of
              0: CargarDatos(cdInsumo1);
              1: CargarDatos(cdInsumo2);
              2: CargarDatos(cdInsumo3);
              3: CargarDatos(cdInsumo4);
              4: CargarDatos(cdInsumo5);
              5: CargarDatos(cdInsumo6);
              6: CargarDatos(cdInsumo7);
              7: CargarDatos(cdInsumo8);
              8: CargarDatos(cdInsumo9);
              9: CargarDatos(cdInsumo10);
            end;}

            cdHistorial.Next;
          end;
        end;
      end;
    except
      on e:InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e:Exception do
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmConsultaPrecios.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
  i: Integer;
begin
  lblInsumo.Caption := '';
  Aplicacion.Date := IncMonth(Now(), -1);

  try
    Self.Top := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Top'));
  Except
    ;
  end;

  try
    Self.Left := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Left'));
  Except
    ;
  end;

  try
    Self.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Width'));
  Except
    ;
  end;

  try
    Self.Height := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Height'));
  Except
    ;
  end;

  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      if Not CrearConjunto(cdHistorial, 'cmt_detalleprecios', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Detalle de Precios por Insumo']);

      if not CrearConjunto(cdInsumoBuscar, 'cmt_insumo', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Insumos']);

      if Not CargarDatosFiltrados(cdHistorial, 'IdInsumo', [-9]) then
        raise InteligentException.CreateByCode(16, ['Detalle de Precios por Insumo']);

      cdHistorial.Open;
      for i := 0 to cdHistorial.FieldDefs.Count -1 do
      begin
        cdInsumo0.FieldDefs.Add(cdHistorial.FieldDefs.Items[i].Name, cdHistorial.FieldDefs.Items[i].DataType, cdHistorial.FieldDefs.Items[i].Size);
        cdInsumo1.FieldDefs.Add(cdHistorial.FieldDefs.Items[i].Name, cdHistorial.FieldDefs.Items[i].DataType, cdHistorial.FieldDefs.Items[i].Size);
        cdInsumo2.FieldDefs.Add(cdHistorial.FieldDefs.Items[i].Name, cdHistorial.FieldDefs.Items[i].DataType, cdHistorial.FieldDefs.Items[i].Size);
        cdInsumo3.FieldDefs.Add(cdHistorial.FieldDefs.Items[i].Name, cdHistorial.FieldDefs.Items[i].DataType, cdHistorial.FieldDefs.Items[i].Size);
        cdInsumo4.FieldDefs.Add(cdHistorial.FieldDefs.Items[i].Name, cdHistorial.FieldDefs.Items[i].DataType, cdHistorial.FieldDefs.Items[i].Size);
        cdInsumo5.FieldDefs.Add(cdHistorial.FieldDefs.Items[i].Name, cdHistorial.FieldDefs.Items[i].DataType, cdHistorial.FieldDefs.Items[i].Size);
        cdInsumo6.FieldDefs.Add(cdHistorial.FieldDefs.Items[i].Name, cdHistorial.FieldDefs.Items[i].DataType, cdHistorial.FieldDefs.Items[i].Size);
        cdInsumo7.FieldDefs.Add(cdHistorial.FieldDefs.Items[i].Name, cdHistorial.FieldDefs.Items[i].DataType, cdHistorial.FieldDefs.Items[i].Size);
        cdInsumo8.FieldDefs.Add(cdHistorial.FieldDefs.Items[i].Name, cdHistorial.FieldDefs.Items[i].DataType, cdHistorial.FieldDefs.Items[i].Size);
        cdInsumo9.FieldDefs.Add(cdHistorial.FieldDefs.Items[i].Name, cdHistorial.FieldDefs.Items[i].DataType, cdHistorial.FieldDefs.Items[i].Size);
        cdInsumo10.FieldDefs.Add(cdHistorial.FieldDefs.Items[i].Name, cdHistorial.FieldDefs.Items[i].DataType, cdHistorial.FieldDefs.Items[i].Size);

        cdDatosReporte.FieldDefs.Add(cdHistorial.FieldDefs.Items[i].Name, cdHistorial.FieldDefs.Items[i].DataType, cdHistorial.FieldDefs.Items[i].Size);
      end;

      cdInsumo0.CreateDataSet;
      cdInsumo0.Open;

      cdInsumo1.CreateDataSet;
      cdInsumo1.Open;

      cdInsumo2.CreateDataSet;
      cdInsumo2.Open;

      cdInsumo3.CreateDataSet;
      cdInsumo3.Open;

      cdInsumo4.CreateDataSet;
      cdInsumo4.Open;

      cdInsumo5.CreateDataSet;
      cdInsumo5.Open;

      cdInsumo6.CreateDataSet;
      cdInsumo6.Open;

      cdInsumo7.CreateDataSet;
      cdInsumo7.Open;

      cdInsumo8.CreateDataSet;
      cdInsumo8.Open;

      cdInsumo9.CreateDataSet;
      cdInsumo9.Open;

      cdInsumo10.CreateDataSet;
      cdInsumo10.Open;

      cdDatosReporte.CreateDataSet;
      cdDatosReporte.Open;
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

procedure TFrmConsultaPrecios.Panel4Resize(Sender: TObject);
begin
  btnImprimir.Left := (Panel4.Width - btnImprimir.Width) div 2;
  frxHistorialPrecios.PreviewOptions.ZoomMode := zmWholePage;
end;

procedure TFrmConsultaPrecios.tvInsumoBuscarCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnSelOk.Click;
end;

procedure TFrmConsultaPrecios.tvInsumoBuscarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = 13) and (cdInsumoBuscar.RecordCount > 0) then
    btnSelOk.Click;
end;

procedure TFrmConsultaPrecios.FormaSelClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TForm(Sender).ModalResult := FormaSelResult;
end;

procedure TFrmConsultaPrecios.FormaSelShow(Sender: TObject);
begin
  FormaSelResult := mrCancel;
end;

procedure TFrmConsultaPrecios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SetRegistry('\Ventanas', '\' + Self.Name, 'Top', IntToStr(Self.Top));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Left', IntToStr(Self.Left));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Width', IntToStr(Self.Width));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Height', IntToStr(Self.Height));

  Action := caFree;
end;

procedure TFrmConsultaPrecios.AplicacionChange(Sender: TObject);
begin
  if cdInsumoBuscar.Active then
    cdInsumoBuscar.Close;
end;

procedure TFrmConsultaPrecios.btnBuscarClick(Sender: TObject);
var
  LocCursor: TCursor;
  i: Integer;
  Id: Integer;
  Empresa: TEmpresa;
  IdMarca,
  IdPresentacion: Integer;
  Ubicar: TWinControl;

procedure CargarDatos(var DataSet: TClientDataSet);
var
  ii: Integer;
  FieldName: String;
begin
  DataSet.Append;

  for ii := 0 to cdHistorial.FieldDefs.Count -1 do
  begin
    FieldName := cdHistorial.FieldDefs.Items[ii].Name;
    DataSet.FieldByName(FieldName).AsVariant := cdHistorial.FieldByName(FieldName).AsVariant;
  end;

  DataSet.Post;
end;

begin
  // Verificar la integridad de los datos antes de proceder con la generación de la gráfica
  try
    LocCursor := Screen.Cursor;
    pnlGrafica.Visible := False;
    try
      Screen.Cursor := crHourGlass;
      Ubicar := Nil;

      if Not cdInsumoBuscar.Active then
      begin
        Ubicar := edtCodigoInsumo;
        raise InteligentWarning.CreateByCode(8, ['Debe especificar un criterio de busqueda y hacer <Enter> para localizar un Insumo antes de proceder a graficar.']);
      end;

      if cbMarca.ItemIndex = -1 then
      begin
        Ubicar := cbMarca;
        raise InteligentWarning.CreateByCode(8, ['Debe seleccionar una Marca para poder continuar con la graficación']);
      end;

      if cbPresentacion.ItemIndex = -1 then
      begin
        Ubicar := cbPresentacion;
        raise InteligentWarning.CreateByCode(8, ['Debe seleccionar una Presentación para poder continuar con la graficación']);
      end;

      cdInsumo1.EmptyDataSet;
      cdInsumo2.EmptyDataSet;
      cdInsumo3.EmptyDataSet;
      cdInsumo4.EmptyDataSet;
      cdInsumo5.EmptyDataSet;
      cdInsumo6.EmptyDataSet;
      cdInsumo7.EmptyDataSet;
      cdInsumo8.EmptyDataSet;
      cdInsumo9.EmptyDataSet;
      cdInsumo10.EmptyDataSet;
      cdDatosReporte.EmptyDataSet;

      ListaE := TStringList.Create;
      ListaE.Clear;
      cdHistorial.First;
      while (Not cdHistorial.Eof) and (ListaE.Count < 10) do
      begin
        // Verificar si esta madre corresponde a la marca y la presentacion seleccionada
        IdMarca := TDatos(cbMarca.Items.Objects[cbMarca.ItemIndex]).Id;
        IdPresentacion := TDatos(cbPresentacion.Items.Objects[cbPresentacion.ItemIndex]).Id;
        if (cdHistorial.FieldByName('IdMarca').AsInteger = IdMarca) and (cdHistorial.FieldByName('IdPresentacion').AsInteger = IdPresentacion) then
        begin
          if (ListaE.IndexOf(cdHistorial.FieldByName('iIdEmpresa').AsString) < 0) and (ListaE.Count < 5) then
          begin
            Id := cdHistorial.FieldByName('iIdEmpresa').AsInteger;
            Empresa := TEmpresa.Create;
            Empresa.Nombre := cdHistorial.FieldByName('sNombreCorto').AsString;
            ListaE.AddObject(IntToStr(Id), Empresa);
          end;

          CargarDatos(cdDatosReporte);

          case ListaE.IndexOf(cdHistorial.FieldByName('iIdEmpresa').AsString) of
            0: CargarDatos(cdInsumo1);
            1: CargarDatos(cdInsumo2);
            2: CargarDatos(cdInsumo3);
            3: CargarDatos(cdInsumo4);
            4: CargarDatos(cdInsumo5);
            5: CargarDatos(cdInsumo6);
            6: CargarDatos(cdInsumo7);
            7: CargarDatos(cdInsumo8);
            8: CargarDatos(cdInsumo9);
            9: CargarDatos(cdInsumo10);
          end;
        end;

        cdHistorial.Next;
      end;

      // Armar el checklist con los nombres de la empresa
      clbEmpresa.Clear;
      for i := 0 to ListaE.Count -1 do
      begin
        Id := StrToInt(ListaE[i]);
        Empresa := TEmpresa.Create;
        Empresa := TEmpresa(ListaE.Objects[i]);
        clbEmpresa.Items.AddObject(Empresa.Nombre, TObject(Id));
        clbEmpresa.Checked[i] := True;
      end;

      ClientModule1.ImprimeReporte('HistorialPreciosDX.fr3', frxHistorialPrecios, frxPreview);
      pnlGrafica.Visible := True;
    finally
      Screen.Cursor := LocCursor;
    end;
  except
    on e:InteligentWarning do
    begin
      if (Assigned(Ubicar)) and (Ubicar.CanFocus) then
        Ubicar.SetFocus;

      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmConsultaPrecios.btnImprimirClick(Sender: TObject);
begin
  frxHistorialPrecios.Print;
end;

procedure TFrmConsultaPrecios.btnSelCancelarClick(Sender: TObject);
begin
  TForm(TWinControl(Sender).Parent.Parent.Parent).Close;
end;

procedure TFrmConsultaPrecios.btnSelOkClick(Sender: TObject);
begin
  FormaSelResult := mrOk;
  TForm(TWinControl(Sender).Parent.Parent.Parent).Close;
  if cbMarca.CanFocus then
    cbMarca.SetFocus;
end;

procedure TFrmConsultaPrecios.cbMarcaChange(Sender: TObject);
begin
  lblMarca.Caption := TDatos(cbMarca.Items.Objects[cbMarca.ItemIndex]).Titulo;
  pnlGrafica.Visible := False;
end;

procedure TFrmConsultaPrecios.cbPresentacionChange(Sender: TObject);
begin
  lblPresentacion.Caption := TDatos(cbPresentacion.Items.Objects[cbPresentacion.ItemIndex]).Titulo;
  pnlGrafica.Visible := False;
end;

procedure TFrmConsultaPrecios.cdInsumoBuscarAfterClose(DataSet: TDataSet);
begin
  pnlGrafica.Visible := False;
  cbMarca.Items.Clear;
  cbPresentacion.Items.Clear;
  lblInsumo.Caption := '';
  lblMarca.Caption := '';
  lblPresentacion.Caption := '';
end;

procedure TFrmConsultaPrecios.clbEmpresaClickCheck(Sender: TObject);
var
  i: Integer;
  Filtro: String;
  Id: Integer;
begin
  case clbEmpresa.ItemIndex of
    0: if clbEmpresa.Checked[0] then fdsInsumo1.DataSet := cdInsumo1 Else fdsInsumo1.DataSet := cdInsumo0;
    1: if clbEmpresa.Checked[1] then fdsInsumo2.DataSet := cdInsumo2 Else fdsInsumo2.DataSet := cdInsumo0;
    2: if clbEmpresa.Checked[2] then fdsInsumo3.DataSet := cdInsumo3 Else fdsInsumo3.DataSet := cdInsumo0;
    3: if clbEmpresa.Checked[3] then fdsInsumo4.DataSet := cdInsumo4 Else fdsInsumo4.DataSet := cdInsumo0;
    4: if clbEmpresa.Checked[4] then fdsInsumo5.DataSet := cdInsumo5 Else fdsInsumo5.DataSet := cdInsumo0;
    5: if clbEmpresa.Checked[5] then fdsInsumo6.DataSet := cdInsumo6 Else fdsInsumo6.DataSet := cdInsumo0;
    6: if clbEmpresa.Checked[6] then fdsInsumo7.DataSet := cdInsumo7 Else fdsInsumo7.DataSet := cdInsumo0;
    7: if clbEmpresa.Checked[7] then fdsInsumo8.DataSet := cdInsumo8 Else fdsInsumo8.DataSet := cdInsumo0;
    8: if clbEmpresa.Checked[8] then fdsInsumo9.DataSet := cdInsumo9 Else fdsInsumo9.DataSet := cdInsumo0;
    9: if clbEmpresa.Checked[9] then fdsInsumo10.DataSet := cdInsumo10 Else fdsInsumo10.DataSet := cdInsumo0;
  end;

  // Armar el filtro de acuerdo a lo que se está especificando
  Filtro := '';
  for i := 0 to clbEmpresa.Items.Count -1 do
    if clbEmpresa.Checked[i] then
    begin
      Id := Integer(clbEmpresa.Items.Objects[i]);
      if Length(Filtro) > 0 then
        Filtro := Filtro + ' OR ';
      Filtro := Filtro + 'iIdEmpresa = ' + IntToStr(Id);
    end;

  cdDatosReporte.Filtered := False;
  if Filtro = '' then
    cdDatosReporte.Filter := 'iIdEmpresa = -9'
  else
    cdDatosReporte.Filter := Filtro;
  cdDatosReporte.Filtered := True;

  ClientModule1.ImprimeReporte('HistorialPreciosDX.fr3', frxHistorialPrecios, frxPreview);
end;

end.
