unit UTFrmPrecioBajo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExControls, JvLabel, ExtCtrls, DB, DBClient,
  ClientModuleUnit1, UInteliDialog, cxGraphics, cxControls, cxLookAndFeels,
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
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, AdvGlowButton, Grids,
  DBGrids, cxContainer, cxImage;

type
  TDatos = class
    Id: Integer;
    Titulo: String;
  End;

  TOldDim = class
    Width: Integer;
    Height: Integer;
  end;

  TEmpresa = class(TPanel)
    Fondo: TPanel;
    Datos: TPanel;
    Imagen: TcxImage;
    lblNombreEmpresa: TJvLabel;
    lblLocalizacion: TJvLabel;
    lblMarca: TJvLabel;
    lblPrecio: TJvLabel;
    procedure PreciosEnter(Sender: TObject);
    procedure PreciosExit(Sender: TObject);
  private
    procedure WriteValorPrecio(Valor: Real);
  public
    property ValorPrecio: Real write WriteValorPrecio;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

  TFrmPrecioBajo = class(TForm)
    cdInsumoBuscar: TClientDataSet;
    Panel1: TPanel;
    JvLabel2: TJvLabel;
    edtCodigoInsumo: TEdit;
    lblInsumo: TJvLabel;
    pnlSelInsumo: TPanel;
    Panel6: TPanel;
    btnSelOk: TAdvGlowButton;
    btnSelCancelar: TAdvGlowButton;
    cb: TcxGrid;
    tvInsumoBuscar: TcxGridDBTableView;
    selCodigoInsumo: TcxGridDBColumn;
    selNombreInsumo: TcxGridDBColumn;
    cbLevel1: TcxGridLevel;
    cdDatos: TClientDataSet;
    pnlDatos: TPanel;
    Panel3: TPanel;
    cbEmpresa: TComboBox;
    JvLabel1: TJvLabel;
    dsInsumoBuscar: TDataSource;
    cbMarca: TComboBox;
    JvLabel3: TJvLabel;
    lblEmpresa: TJvLabel;
    lblMarca: TJvLabel;
    dsDatos: TDataSource;
    sbPrecios: TScrollBox;
    btnBuscar: TAdvGlowButton;
    JvLabel4: TJvLabel;
    cbPresentacion: TComboBox;
    lblPresentacion: TJvLabel;
    cdComparaImagen: TClientDataSet;
    cbOrden: TComboBox;
    JvLabel5: TJvLabel;
    procedure edtCodigoInsumoChange(Sender: TObject);
    procedure edtCodigoInsumoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormaSelClose(Sender: TObject;
      var Action: TCloseAction);
    procedure FormaSelShow(Sender: TObject);
    procedure btnSelOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSelCancelarClick(Sender: TObject);
    procedure tvInsumoBuscarCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cbEmpresaChange(Sender: TObject);
    procedure cbMarcaChange(Sender: TObject);
    procedure cbPresentacionChange(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure cdInsumoBuscarAfterClose(DataSet: TDataSet);
    procedure cdInsumoBuscarAfterOpen(DataSet: TDataSet);
    procedure cdInsumoBuscarAfterRefresh(DataSet: TDataSet);
    procedure cbOrdenChange(Sender: TObject);
  private
    IdInsumo: Integer;
    FormaSelResult: TModalResult;
    Directorio: String;
    procedure CambiarElPedo;
    procedure EliminarObjetos;
    procedure VerificarImagenes(Lista: TStringList);
  public
    { Public declarations }
  end;

var
  FrmPrecioBajo: TFrmPrecioBajo;

implementation

{$R *.dfm}

constructor TEmpresa.Create(AOwner: TComponent);
const
  Altura = 160;
begin
  inherited;

  if TFrmPrecioBajo(AOwner).cbOrden.ItemIndex in [0, 2] then
    Self.Top := Aowner.ComponentCount * (Altura +1)
  else
    Self.Top := 0;

  Self.Align := alTop;
  Self.Height := Altura;
  Self.Padding.Top := 4;
  Self.Padding.Left := 4;
  Self.Padding.Right := 4;
  Self.Padding.Bottom := 4;
  Self.Color := clWhite;
  Self.BevelOuter := bvNone;
  Self.TabStop := True;

  Fondo := TPanel.Create(Self);
  Fondo.Parent := Self;
  Fondo.Align := alClient;
  Fondo.ParentBackground := False;
  Fondo.ParentColor := False;
  Fondo.Color := clWhite;
  Fondo.BevelInner := bvLowered;
  Fondo.BevelKind := TBevelKind.bkNone;
  Fondo.BevelOuter := bvRaised;
  Fondo.Padding.Top := 4;
  Fondo.Padding.Left := 4;
  Fondo.Padding.Right := 4;
  Fondo.Padding.Bottom := 4;
  {Fondo.OnEnter := PreciosEnter;
  Fondo.OnExit := PreciosExit;}

  Imagen := TcxImage.Create(AOwner);
  Imagen.Parent := Fondo;
  Imagen.Align := alLeft;

  lblNombreEmpresa := TJvLabel.Create(Self);
  lblNombreEmpresa.Parent := Fondo;
  lblNombreEmpresa.Left := Imagen.Width + 12;
  lblNombreEmpresa.Top := 6;
  lblNombreEmpresa.Font.Size := 10;
  lblNombreEmpresa.Font.Style := [fsBold];
  lblNombreEmpresa.Font.Color := clGreen;

  lblLocalizacion := TJvLabel.Create(Self);
  lblLocalizacion.Parent := Fondo;
  lblLocalizacion.Left := lblNombreEmpresa.Left;
  lblLocalizacion.Top := 24;
  lblLocalizacion.Font.Size := 8;
  lblLocalizacion.Font.Style := [fsItalic];
  lblLocalizacion.Font.Color := clBlack;

  lblMarca := TJvLabel.Create(Self);
  lblMarca.Parent := Fondo;
  lblMarca.Left := lblNombreEmpresa.Left;
  lblMarca.Top := 104;
  lblMarca.Font.Size := 8;
  lblMarca.Font.Style := [fsBold, fsItalic];
  lblMarca.Font.Color := clBlue;

  lblPrecio := TJvLabel.Create(Self);
  lblPrecio.Parent := Fondo;
  lblPrecio.Left := lblNombreEmpresa.Left;
  lblPrecio.Top := 120;
  lblPrecio.Font.Size := 14;
  lblPrecio.Font.Style := [fsBold];
  lblPrecio.Font.Color := clMaroon;
end;

destructor TEmpresa.Destroy;
begin
  inherited;

end;

procedure TEmpresa.WriteValorPrecio(Valor: Real);
begin
  lblPrecio.Caption := 'Su precio es de: ' + FloatToStrF(Valor, ffCurrency, 12, 2);
end;

procedure TFrmPrecioBajo.btnBuscarClick(Sender: TObject);
var
  Valores: TDatos;
  LocCursor: TCursor;
  ListaEmpresa: TStringList;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      if IdInsumo > 0 then
      begin
        // Seleccionar los precios
        if Not CargarDatosFiltrados(cdDatos, 'IdInsumo', [IdInsumo]) then
          raise InteligentException.CreateByCode(6, ['Precios', IdInsumo, 'Id. Insumo']);

        if cdDatos.Active then
          cdDatos.Refresh
        else
          cdDatos.Open;

        if cdDatos.RecordCount = 0 then
          raise InteligentException.CreateByCode(30, ['Precios']);

        cdDatos.First;

        Valores := TDatos.Create;
        Valores.Id := -1;
        Valores.Titulo := 'TODOS LOS PROVEEDORES';
        cbEmpresa.Items.AddObject('< TODOS LOS PROVEEDORES >', Valores);

        Valores := TDatos.Create;
        Valores.Id := -1;
        Valores.Titulo := 'TODAS LAS MARCAS';
        cbMarca.Items.AddObject('< TODAS LAS MARCAS >', Valores);

        ListaEmpresa := TStringList.Create;
        ListaEmpresa.Clear;

        while Not cdDatos.Eof do
        begin
          // Agregar las presentaciones del insumo
          if cbPresentacion.Items.IndexOf(cdDatos.FieldByName('CodigoPresentacion').AsString) = -1 then
          begin
            Valores := TDatos.Create;
            Valores.Id := cdDatos.FieldByName('IdPresentacion').AsInteger;
            Valores.Titulo := cdDatos.FieldByName('TituloPresentacion').AsString;
            cbPresentacion.Items.AddObject(cdDatos.FieldByName('CodigoPresentacion').AsString, Valores);
          end;

          // Agregar los proveedires involucrados
          if cbEmpresa.Items.IndexOf(cdDatos.FieldByName('sNombreCorto').AsString) = -1 then
          begin
            Valores := TDatos.Create;
            Valores.Id := cdDatos.FieldByName('iIdEmpresa').AsInteger;
            Valores.Titulo := cdDatos.FieldByName('sRazonSocial').AsString;
            cbEmpresa.Items.AddObject(cdDatos.FieldByName('sNombreCorto').AsString, Valores);

            ListaEmpresa.Add(cdDatos.FieldByName('iIdEmpresa').AsString);
          end;

          // Agregar las marcas involucradas
          if cbMarca.Items.IndexOf(cdDatos.FieldByName('CodigoMarca').AsString) = -1 then
          begin
            Valores := TDatos.Create;
            Valores.Id := cdDatos.FieldByName('IdMarca').AsInteger;
            Valores.Titulo := cdDatos.FieldByName('TituloMarca').AsString;
            cbMarca.Items.AddObject(cdDatos.FieldByName('CodigoMarca').AsString, Valores);
          end;

          cdDatos.Next;
        end;

        if Not CargarDatosFiltrados(cdComparaImagen, 'IdEmpresa', [ListaEmpresa.CommaText]) then
          raise InteligentException.CreateByCode(6, ['Busqueda de Imagenes', ListaEmpresa.CommaText, 'Id. Organizacion']);

        if cdComparaImagen.Active then
          cdComparaImagen.Refresh
        else
          cdComparaImagen.Open;

        VerificarImagenes(ListaEmpresa);

        cbPresentacion.ItemIndex := 0;
        lblPresentacion.Caption := TDatos(cbPresentacion.Items.Objects[0]).Titulo;

        cbEmpresa.ItemIndex := 0;
        lblEmpresa.Caption := TDatos(cbEmpresa.Items.Objects[0]).Titulo;

        cbMarca.ItemIndex := 0;
        cbMarca.OnChange(Sender);
      end;

      pnlDatos.Visible := True;
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

procedure TFrmPrecioBajo.btnSelCancelarClick(Sender: TObject);
begin
  TForm(TWinControl(Sender).Parent.Parent.Parent).Close;
end;

procedure TFrmPrecioBajo.btnSelOkClick(Sender: TObject);
begin
  FormaSelResult := mrOk;
  TForm(TWinControl(Sender).Parent.Parent.Parent).Close;
  if cbEmpresa.CanFocus then
    cbEmpresa.SetFocus;
end;

procedure TFrmPrecioBajo.cbEmpresaChange(Sender: TObject);
begin
  lblEmpresa.Caption := TDatos(cbEmpresa.Items.Objects[cbEmpresa.ItemIndex]).Titulo;
  CambiarElPedo;
end;

procedure TFrmPrecioBajo.cbMarcaChange(Sender: TObject);
begin
  lblMarca.Caption := TDatos(cbMarca.Items.Objects[cbMarca.ItemIndex]).Titulo;
  CambiarElPedo;
end;

procedure TFrmPrecioBajo.cbPresentacionChange(Sender: TObject);
begin
  lblPresentacion.Caption := TDatos(cbPresentacion.Items.Objects[cbPresentacion.ItemIndex]).Titulo;
  CambiarElPedo;
end;

procedure TFrmPrecioBajo.cdInsumoBuscarAfterClose(DataSet: TDataSet);
begin
  btnBuscar.Enabled := False;
end;

procedure TFrmPrecioBajo.cdInsumoBuscarAfterOpen(DataSet: TDataSet);
begin
  btnBuscar.Enabled := cdInsumoBuscar.RecordCount > 0;
end;

procedure TFrmPrecioBajo.cdInsumoBuscarAfterRefresh(DataSet: TDataSet);
begin
  btnBuscar.Enabled := cdInsumoBuscar.RecordCount > 0;
end;

procedure TFrmPrecioBajo.cbOrdenChange(Sender: TObject);
begin
  CambiarElPedo;
end;

procedure TFrmPrecioBajo.edtCodigoInsumoChange(Sender: TObject);
begin
  if cdInsumoBuscar.Active then
    cdInsumoBuscar.Close;

  pnlDatos.Visible := False;
end;

procedure TFrmPrecioBajo.edtCodigoInsumoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  FormaSel: TForm;
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
          lblInsumo.Caption := cdInsumoBuscar.FieldByName('CodigoInsumo').AsString + ' - ' + cdInsumoBuscar.FieldByName('NombreInsumo').AsString;

        lblEmpresa.Caption := '';
        lblMarca.Caption := '';
      end;
    except
      on e:InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e:Exception do
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmPrecioBajo.FormaSelClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TForm(Sender).ModalResult := FormaSelResult;
end;

procedure TFrmPrecioBajo.FormaSelShow(Sender: TObject);
begin
  FormaSelResult := mrCancel;
end;

procedure TFrmPrecioBajo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EliminarObjetos;
  EliminarConjunto([cdInsumoBuscar, cdDatos, cdComparaImagen]);

  Action := caFree;
end;

procedure TFrmPrecioBajo.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
begin
  lblInsumo.Caption := '';

  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      if Not CrearConjunto(cdInsumoBuscar, 'cmt_insumo', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Insumos']);

      if Not CrearConjunto(cdDatos, 'cmt_comparaprecios', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Comparativa de precios']);

      if Not CrearConjunto(cdComparaImagen, 'nuc_empresacomparaimagen', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Comparativa de Imagenes']);

      Directorio := ExtractFilePath(Application.ExeName) + 'TEMP\Imagenes\';
      ForceDirectories(Directorio);
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

procedure TEmpresa.PreciosEnter(Sender: TObject);
begin
  TPanel(Sender).BevelWidth := 6;
end;

procedure TEmpresa.PreciosExit(Sender: TObject);
begin
  TPanel(Sender).BevelWidth := 1;
end;

procedure TFrmPrecioBajo.tvInsumoBuscarCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnSelOk.Click;
end;

procedure TFrmPrecioBajo.CambiarElPedo;
const
  TiposImagen: array[0..5, 0..4] of Byte = ((137, 80, 78, 71, 13), (255, 216, 255, 224, 0), (71, 73, 70, 56, 57), (66, 77, 118, 130, 5), (66, 77, 94, 178, 0), (73, 73, 42, 0, 124));
  Extensiones: array[0..5] of String = ('.png', '.jpg', '.gif', '.bmp', '.bmp', '.tif');
var
  Filtro: String;
  Empresa: TEmpresa;
  Nombre: String;
  Tipo: TMemoryStream;
  Arreglo: Array[0..4] of Byte;
  cUno, cDos: String;
  i: Integer;
  Extension: String;
  OldNombre: String;
begin
  // Filtrar los datos de acuerdo a lo configurado
  cdDatos.Filtered := False;
  Filtro := 'IdPresentacion = ' + IntToStr(TDatos(cbPresentacion.Items.Objects[cbPresentacion.ItemIndex]).Id);

  if TDatos(cbEmpresa.Items.Objects[cbEmpresa.ItemIndex]).Id > 0 then
  begin
    Filtro := Filtro + ' AND iIdEmpresa = ' + IntToStr(TDatos(cbEmpresa.Items.Objects[cbEmpresa.ItemIndex]).Id);
  end;

  if TDatos(cbMarca.Items.Objects[cbMarca.ItemIndex]).Id > 0 then
  begin
    Filtro := Filtro + ' AND IdMarca = ' + IntToStr(TDatos(cbMarca.Items.Objects[cbMarca.ItemIndex]).Id);
  end;

  cdDatos.Filter := Filtro;

  cdDatos.Filtered := True;

  EliminarObjetos;

  // Generar los objetos
  cdDatos.First;
  while Not cdDatos.Eof do
  begin
    Nombre := Directorio + 'IdEmpresa' + cdDatos.FieldByName('iIdEmpresa').AsString;

    try
      Tipo := TMemoryStream.Create;
      try
        Tipo.LoadFromFile(Nombre);
        Tipo.ReadBuffer(Arreglo, 5);

        SetString(cUno, PAnsiChar(@Arreglo[0]), Length(Arreglo));
        Extension := '';
        i := 0;
        while (i <= 5) and (Extension = '') do
        begin
          SetString(cDos, PAnsiChar(@TiposImagen[i,0]), Length(TiposImagen[i]));
          if cUno = cDos then
            Extension := Extensiones[i];

          Inc(i);
        end;

        if Extension <> '' then
        begin
          OldNombre := Nombre;
          Nombre := Nombre + Extension;
          try
            RenameFile(OldNombre, Nombre);
          except
            ;
          end;
        end;
      finally
        Tipo.Free;
      end;

      Empresa := TEmpresa.Create(Self);
      Empresa.Parent := sbPrecios;
      Empresa.lblNombreEmpresa.Caption := cdDatos.FieldByName('sRazonSocial').AsString;
      Empresa.lblLocalizacion.Caption := cdDatos.FieldByName('sDomicilio').AsString + #10 +
                                         'CP/Loc.: ' + cdDatos.FieldByName('sCp').AsString + ' - ' + cdDatos.FieldByName('sCiudad').AsString + #10 +
                                         'Ciudad: ' + cdDatos.FieldByName('TituloCiudad').AsString + #10 +
                                         'Entidad Federativa: ' + cdDatos.FieldByName('TituloEstado').AsString + #10 +
                                         'País: ' + cdDatos.FieldByName('TituloPais').AsString;
      Empresa.lblMarca.Caption := 'Marca: ' + cdDatos.FieldByName('TituloMarca').AsString + ', en presentación de: ' + cdDatos.FieldByName('TituloPresentacion').AsString;
      Empresa.Imagen.Picture.LoadFromFile(Nombre);
      Empresa.ValorPrecio := cdDatos.FieldByName('PrecioCompra').AsFloat;
    Finally
      try
        RenameFile(Nombre, OldNombre);
      Except
        ;
      end;
    end;
    cdDatos.Next;
  end;
end;

procedure TFrmPrecioBajo.EliminarObjetos;
begin
  try
    while sbPrecios.ControlCount > 0 do
      TEmpresa(sbPrecios.Controls[0]).Destroy;
  Except
    ;
  end;
end;

procedure TFrmPrecioBajo.VerificarImagenes(Lista: TStringList);
var
  Nombre: String;
  Resultado: TStringList;
  i, ii: Integer;
  Stream: TFileStream;
  cdImagenes: TClientDataSet;
  EnDisco: TMemoryStream;
  BufComp: Array[0..99] Of Byte;
  Iguales: Boolean;
begin
  Resultado := TStringList.Create;
  Resultado.Clear;

  // Buscar los prefijos de las imagenes para compararlas
  for i := 0 to Lista.Count -1 do
  begin
    // Primero verificar si existe la imagen
    Nombre := Directorio + 'IdEmpresa' + Lista[i];
    if FileExists(Nombre) then
    begin
      // Obtener el Stream del archivo en disco
      EnDisco := TMemoryStream.Create;
      EnDisco.LoadFromFile(Nombre);
      EnDisco.ReadBuffer(BufComp, 100);

      ii := 1;
      Iguales := True;
      while (ii < 100) and (Iguales) do
      begin
        Iguales := Ord(cdComparaImagen.FieldByName('CienBytes').AsString[ii +1]) = Ord(BufComp[ii]);

        Inc(ii);
      end;

      if Not Iguales then
        Resultado.Add(Lista[i]);
    end
    else
      Resultado.Add(Lista[i]);
  end;

  // Llamar las imagenes de las organizaciones que se deben actualizas/crear
  try
    cdImagenes := TClientDataSet.Create(Nil);
    if Not CrearConjunto(cdImagenes, 'nuc_empresa_imagen', ccSelect) then
      raise InteligentException.CreateByCode(5, ['Imagenes de Empresas']);

    if Not CargarDatosFiltrados(cdImagenes, 'IdEmpresa', [Resultado.CommaText]) then
      raise InteligentException.CreateByCode(6, ['Imagenes de Empresas', Resultado.CommaText, 'Id. Organizacion']);

    cdImagenes.Open;

    while not cdImagenes.Eof do
    begin
      Nombre := Directorio + 'IdEmpresa' + cdImagenes.FieldByName('iIdEmpresa').AsString;

      // Bajar la imagen a un archivo
      try
        Stream := TFileStream.Create(Nombre, fmCreate or fmOpenWrite);
        TBlobField(cdImagenes.FieldByName('bLogo')).SaveToStream(Stream);
      Finally
        Stream.Free;
      end;

      cdImagenes.Next;
    end;
  finally
    if (cdImagenes.ProviderName <> '') and (cdImagenes.Active) then
      cdImagenes.Close;

    EliminarConjunto(cdImagenes);
    cdImagenes.Free;
  end;
end;

end.
