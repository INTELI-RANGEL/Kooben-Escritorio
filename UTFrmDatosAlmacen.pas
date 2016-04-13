unit UTFrmDatosAlmacen;

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
  AppEvnts, ExtCtrls, DB, DBClient, StdCtrls, cxButtons, AdvGlowButton,
  cxGroupBox, JvExControls, JvLabel, DBCtrls, Mask, UInteliDialog;

type
  TFrmDatosAlmacen = class(TFrmDatosCatalogo)
    CodigoAlmacen: TDBEdit;
    NombreAlmacen: TDBEdit;
    IdCiudad: TDBLookupComboBox;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    Calle: TDBEdit;
    Numero: TDBEdit;
    Colonia: TDBEdit;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    IdPais: TComboBox;
    IdEstado: TComboBox;
    dsCiudad: TDataSource;
    dsPais: TDataSource;
    dsEstado: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure IdPaisChange(Sender: TObject);
    procedure IdEstadoChange(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosAlmacen: TFrmDatosAlmacen;

implementation

uses ClientModuleUnit1, xDatabase;

{$R *.dfm}

procedure TFrmDatosAlmacen.BtnAddNewClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(CodigoAlmacen, 'Código') = False then
    exit;

  if ClientModule1.VerificaVacio(NombreAlmacen, 'Nombre') = False then
    exit;

  if ClientModule1.VerificaVacio(Calle, 'Código') = False then
    exit;

  if ClientModule1.VerificaVacio(Numero, 'Nombre') = False then
    exit;

  if ClientModule1.VerificaVacio(Colonia, 'Nombre') = False then
    exit;

{  if IdCiudad.KeyValue = Null then
  begin
    InteliDialog.ShowModal('Error de captura', 'Seleccione una ciudad (utilice los campos de estado y país para ello)', mtWarning, [mbOk], 0);
  end;}

  inherited;
  CodigoAlmacen.Text := '';
  NombreAlmacen.Text := '';
  Calle.Text := '';
  Numero.Text := '';
  Colonia.Text := '';
  IdPais.ItemIndex := -1;
  IdEstado.ItemIndex := -1;
  IdCiudad.KeyValue := Null;
end;

procedure TFrmDatosAlmacen.BtnRecClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(CodigoAlmacen, 'Código') = False then
    exit;

  if ClientModule1.VerificaVacio(NombreAlmacen, 'Nombre') = False then
    exit;

  if ClientModule1.VerificaVacio(Calle, 'Código') = False then
    exit;

  if ClientModule1.VerificaVacio(Numero, 'Nombre') = False then
    exit;

  if ClientModule1.VerificaVacio(Colonia, 'Nombre') = False then
    exit;

{  if IdCiudad.KeyValue = Null then
  begin
    InteliDialog.ShowModal('Error de captura', 'Seleccione una ciudad (utilice los campos de estado y país para ello)', mtWarning, [mbOk], 0);
  end;}

  inherited;
end;

procedure TFrmDatosAlmacen.FormShow(Sender: TObject);
begin
  inherited;

  try
    dsPais.DataSet.First;
    while Not dsPais.DataSet.Eof do
    begin
      IdPais.Items.Add(dsPais.DataSet.FieldByName('TituloPais').AsString);

      dsPais.DataSet.Next;
    end;

    inherited;

    dsDatos.DataSet.FieldByName('IdOrganizacion').AsInteger := 0;
    CodigoAlmacen.SetFocus;
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

procedure TFrmDatosAlmacen.IdEstadoChange(Sender: TObject);
begin
  try
    if Not CargarDatosFiltrados(TClientDataSet(dsCiudad.DataSet), 'IdEstado', [dsEstado.DataSet.FieldByName('IdEstado').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Ciudades', dsEstado.DataSet.FieldByName('IdEstado').AsInteger, 'Id. Estado']);

    if dsCiudad.DataSet.Active then
      dsCiudad.DataSet.Refresh
    else
      dsCiudad.DataSet.Open;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmDatosAlmacen.IdPaisChange(Sender: TObject);
begin
  try
    if IdPais.ItemIndex = -1 then
      raise InteligentWarning.Create('*');

    dsPais.DataSet.RecNo := IdPais.ItemIndex +1;

    if Not CargarDatosFiltrados(TClientDataSet(dsEstado.DataSet), 'IdPais', [dsPais.DataSet.FieldByName('IdPais').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Estados', dsPais.DataSet.FieldByName('IdPais').AsInteger, 'Id. Pais']);

    if dsEstado.DataSet.Active then
      dsEstado.DataSet.Refresh
    else
      dsEstado.DataSet.Open;

    dsEstado.DataSet.First;
    IdEstado.Items.Clear;
    IdEstado.ItemIndex := -1;
    IdCiudad.KeyValue := Null;
    while Not dsEstado.DataSet.Eof do
    begin
      IdEstado.Items.Add(dsEstado.DataSet.FieldByName('TituloEstado').AsString);

      dsEstado.DataSet.Next;
    end;
  except
    on e:InteligentWarning do
    begin
      IdEstado.Items.Clear;
      IdCiudad.KeyValue := Null;
    end;

    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

end.
