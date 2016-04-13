unit UTFrmDatosProveedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Menus,
  AppEvnts, ExtCtrls, DB, DBClient, StdCtrls, cxButtons, cxGroupBox, Mask,
  DBCtrls, JvExControls, JvLabel, cxTextEdit, cxMemo, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ClientModuleUnit1,
  UInteliDialog, cxImage, ExtDlgs, AdvGlowButton;

type
  TFrmDatosProveedor = class(TFrmDatosCatalogo)
    JvLabel2: TJvLabel;
    sRazonSocial: TDBEdit;
    sRFC: TDBEdit;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    JvLabel8: TJvLabel;
    JvLabel10: TJvLabel;
    JvLabel11: TJvLabel;
    mComentarios: TcxDBMemo;
    eTipoEmpresa: TDBComboBox;
    sNombreCorto: TDBEdit;
    JvLabel1: TJvLabel;
    eRegimenFiscal: TDBComboBox;
    dsPais: TDataSource;
    cdPais: TClientDataSet;
    dsCiudad: TDataSource;
    cdCiudad: TClientDataSet;
    dsEstado: TDataSource;
    cdEstado: TClientDataSet;
    sDomicilio: TDBEdit;
    JvLabel9: TJvLabel;
    sCiudad: TDBEdit;
    JvLabel12: TJvLabel;
    sCp: TDBEdit;
    JvLabel13: TJvLabel;
    opdImagen: TOpenPictureDialog;
    PanelPicture: TPanel;
    imagen: TcxDBImage;
    IdMunicipio: TDBLookupComboBox;
    cbEstado: TComboBox;
    cbPais: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure imagenDblClick(Sender: TObject);
    procedure cbPaisChange(Sender: TObject);
    procedure cbEstadoChange(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosProveedor: TFrmDatosProveedor;

implementation

{$R *.dfm}

procedure TFrmDatosProveedor.BtnCancelClick(Sender: TObject);
begin

  EliminarConjunto([cdPais, cdEstado, cdCiudad]);
  inherited;
end;

procedure TFrmDatosProveedor.BtnRecClick(Sender: TObject);
begin
  dsDatos.DataSet.FieldByName('iIdPais').AsInteger := cdEstado.FieldByName('IdPais').AsInteger;
  dsDatos.DataSet.FieldByName('iIdEstado').AsInteger := cdEstado.FieldByName('IdEstado').AsInteger;
  inherited;
end;

procedure TFrmDatosProveedor.cbEstadoChange(Sender: TObject);
var
  LocCursor: TCursor;
begin
  inherited;

  // Obtener las ciudades correspondientes al estado seleccionado
  LocCursor := Screen.Cursor;
  try
    Screen.Cursor := crHourGlass;

    if cdEstado.Locate('IdEstado', Integer(cbEstado.Items.Objects[cbEstado.ItemIndex]), []) then
    begin
      if Not CargarDatosFiltrados(cdCiudad, 'IdEstado', [cdEstado.FieldByName('IdEstado').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Ciudades', cdPais.FieldByName('IdEstado').AsInteger, 'Id. Estado']);

      if cdCiudad.Active then
        cdCiudad.Refresh
      else
        cdCiudad.Open;

      if Not cdCiudad.Locate('IdCiudad', IdMunicipio.KeyValue, []) then
        IdMunicipio.KeyValue := Null;
    end;
  finally
    Screen.Cursor := LocCursor;
  end;
end;

procedure TFrmDatosProveedor.cbPaisChange(Sender: TObject);
var
  LocCursor: TCursor;
begin
  inherited;

  // Obtener los estados correspondientes al país seleccionado
  LocCursor := Screen.Cursor;
  try
    Screen.Cursor := crHourGlass;

    if cdPais.Locate('IdPais', Integer(cbPais.Items.Objects[cbPais.ItemIndex]), []) then
    begin
      if Not CargarDatosFiltrados(cdEstado, 'IdPais', [cdPais.FieldByName('IdPais').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Estados', cdPais.FieldByName('IdPais').AsInteger, 'Id. Pais']);

      if cdEstado.Active then
        cdEstado.Refresh
      else
        cdEstado.Open;

      cdCiudad.Close;

      cbEstado.Clear;
      cdEstado.First;
      while Not cdEstado.Eof do
      begin
        cbEstado.Items.AddObject(cdEstado.FieldByName('TituloEstado').AsString, TObject(cdEstado.FieldByName('IdEstado').AsInteger));

        cdEstado.Next;
      end;
    end;
  finally
    Screen.Cursor := LocCursor;
  end;
end;

procedure TFrmDatosProveedor.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
  i: Integer;
begin
  FormResult := mrCancel;

  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      if Not CrearConjunto(cdPais, 'nuc_pais', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Paises']);

      if not CrearConjunto(cdEstado, 'nuc_estado', ccCatalog) then
        raise inteligentException.CreateByCode(5, ['Estados']);

      if not CrearConjunto(cdCiudad, 'nuc_ciudad', ccCatalog) then
        raise inteligentException.CreateByCode(5, ['Ciudades']);

      if Not CargarDatosFiltrados(cdPais, 'Hijos', ['Si']) then
        raise InteligentException.CreateByCode(6, ['Paises', 'Si', 'Hijos']);

      cdPais.Open;
      if cdPais.RecordCount = 0 then
        raise InteligentException.CreateByCode(24, ['El catálogo de Paises se encuentra vacío o bien ninguno de los Paises existentes contiene un Estado con sus correspondientes Ciudades.' + #10 + #10 + 'Verifique que la captura de Paises/Estados/Ciudades esté completa en su base de datos.']);

      // Llenar el combo con los paises
      while not cdPais.Eof do
      begin
        cbPais.Items.AddObject(cdPais.FieldByName('TituloPais').AsString, TObject(cdPais.FieldByName('IdPais').AsInteger));

        cdPais.Next;
      end;

      cdEstado.Open;
      if cdEstado.RecordCount = 0 then
        raise InteligentException.CreateByCode(24, ['El catálogo de Estados se encuentra vacío o bien ninguno de los Estados existentes con sus correspondientes Ciudades.' + #10 + #10 + 'Verifique que la captura de Paises/Estados/Ciudades esté completa en su base de datos.']);

      cdCiudad.Open;
      if cdCiudad.RecordCount = 0 then
        raise InteligentException.CreateByCode(24, ['El catálogo de Ciudades se encuentra vacío.' + #10 + #10 + 'Verifique que la captura de Paises/Estados/Ciudades esté completa en su base de datos.']);

      if dsDatos.DataSet.State = dsEdit then
      begin
        // Localizar el estado y el pais en base al DSomicilio existente
        if Not cdCiudad.Locate('IdCiudad', dsDatos.DataSet.FieldByName('iIdMunicipio').AsInteger, []) then
          raise InteligentException.CreateByCode(24, ['No existe la Ciudad correspondiente.']);

        if Not cdEstado.Locate('IdEstado', cdCiudad.FieldByName('IdEstado').AsInteger, []) then
          raise InteligentException.CreateByCode(24, ['No existe el Estado correspondiente.']);

        i := 0;
        while (i < cbPais.Items.Count) and (Integer(cbPais.Items.Objects[i]) <> dsDatos.DataSet.FieldByName('iIdPais').AsInteger) do
          inc(i);
        if cbPais.Items.Count > i then
        begin
          cbPais.ItemIndex := i;
          cbPais.OnChange(Nil);
        end;

        i := 0;
        while (i < cbEstado.Items.Count) and (Integer(cbEstado.Items.Objects[i]) <> dsDatos.DataSet.FieldByName('iIdEstado').AsInteger) do
          inc(i);
        if cbEstado.Items.Count > i then
        begin
          cbEstado.ItemIndex := i;
          cbEstado.OnChange(Nil);
        end;

        //cbEstado.ItemIndex := cdEstado.RecNo -1;
      end;
    finally
      Screen.Cursor := LocCursor;
    end;

    inherited;
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

procedure TFrmDatosProveedor.imagenDblClick(Sender: TObject);
var
  NombreArchivo: String;
begin
  // Seleccionar el archivo de imagen
  if opdImagen.Execute(Self.Handle) then
  begin
    NombreArchivo := opdImagen.FileName;

    // Cargar la imagen en la base de datos
    TBlobField(dsDatos.DataSet.FieldByName('bLogo')).LoadFromFile(NombreArchivo);

    // Cargar la imagen visualmente
    Imagen.Picture.LoadFromFile(NombreArchivo);
  end;

  if dsDatos.DataSet.FieldByName('bLogo').IsNull then
    PanelPicture.Caption := '< Doble click para seleccionar Imagen >'
  else
    PanelPicture.Caption := '';
end;

end.
