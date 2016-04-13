unit UDatosOrganizacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, dxSkinsCore,
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
  dxSkinXmas2008Blue, dxSkinsdxRibbonPainter, dxRibbonCustomizationForm,
  dxSkinsdxBarPainter, dxSkinsForm, dxStatusBar, dxRibbonStatusBar,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, cxContainer, cxEdit, cxLabel,
  ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxImage, cxDBEdit, cxGroupBox, cxMemo, DB, DBClient,
  cxCustomData, cxStyles, cxTL, cxTLdxBarBuiltInMenu, cxInplaceContainer,
  cxDBTL, cxTLData, ExtCtrls, Menus, StdCtrls, cxButtons, cxDBLabel,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ClientModuleUnit1, URegistro,
  UInteliDialog, cxButtonEdit, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxMapControlTypes,
  Midas, JvComponentBase, JvBalloonHint;

type

  TFrmDatosOrganizacion = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxbrOpciones: TdxBar;
    dxBtnGuardar: TdxBarLargeButton;
    dxBtnCancelar: TdxBarLargeButton;
    dxBtnCargar: TdxBarLargeButton;
    dxBtnCopiaImagen: TdxBarLargeButton;
    dxBtnEliminarImagen: TdxBarLargeButton;
    CxPageDatos: TcxPageControl;
    cxPageGenerales: TcxTabSheet;
    cxPageTelefonos: TcxTabSheet;
    cxlbl2: TcxLabel;
    cxlbl1: TcxLabel;
    cxlbl3: TcxLabel;
    cxlbl4: TcxLabel;
    cxlbl5: TcxLabel;
    cxlbl6: TcxLabel;
    cxlbl7: TcxLabel;
    cxLabel1: TcxLabel;
    CxTextCodigo: TcxDbTextEdit;
    CxTextTitulo: TcxDbTextEdit;
    CxTextNombre: TcxDbTextEdit;
    CxTextRFC: TcxDbTextEdit;
    CxTextRegPat: TcxDbTextEdit;
    CxMemoDescripcion: TcxDBMemo;
    CxTextEtiqueta: TcxDbTextEdit;
    CxDateFecha: TcxDBDateEdit;
    PnlLogo: TcxGroupBox;
    ImgImagen: TcxDBImage;
    cdDatosOrg: TClientDataSet;
    dsPadres: TDataSource;
    dxBtnCerrar: TdxBarLargeButton;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    CxTextTelefono1: TcxDBTextEdit;
    CxTextTelefono2: TcxDBTextEdit;
    CxTextTelefono3: TcxDBTextEdit;
    CxTextTelefono4: TcxDBTextEdit;
    CxTextTelefono5: TcxDBTextEdit;
    dsDatosOrg: TDataSource;
    dxbrOpcionesRT: TdxBar;
    dxBtnInsertarRT: TdxBarLargeButton;
    dxBtnEditarRT: TdxBarLargeButton;
    dxBtnEliminarRT: TdxBarLargeButton;
    dlgOpenCer: TOpenDialog;
    dlgOpenKey: TOpenDialog;
    cxPageDirección: TcxTabSheet;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    cxLabel30: TcxLabel;
    CxDbTextCalle: TcxDBTextEdit;
    CxDbTextNumero: TcxDBTextEdit;
    CxDbTextColonia: TcxDBTextEdit;
    CxDbTextcp: TcxDBTextEdit;
    CxDbTextLocalidad: TcxDBTextEdit;
    cxlbl14: TcxLabel;
    cdPais: TClientDataSet;
    cdMunicipio: TClientDataSet;
    cdEstado: TClientDataSet;
    dsPais: TDataSource;
    dsMunicipio: TDataSource;
    dsEstado: TDataSource;
    cxbtnPais: TcxButton;
    cxbtnEstado: TcxButton;
    cxbtnMunicipio: TcxButton;
    dxTabOrganizacion: TdxRibbonTab;
    dxRibbonDatosOrganizacion: TdxRibbon;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxPais: TcxLookupComboBox;
    cxEstado: TcxLookupComboBox;
    cxMunicipio: TcxLookupComboBox;
    cdTemEstado: TClientDataSet;
    mbImagen: TdxBar;
    btnCargar: TdxBarLargeButton;
    btnCopiar: TdxBarLargeButton;
    btnBorrar: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    AvisoCopiar: TJvBalloonHint;
    procedure FormCreate(Sender: TObject);
    procedure ImgImagenEnter(Sender: TObject);
    procedure ImgImagenExit(Sender: TObject);
    procedure dxBtnCerrarClick(Sender: TObject);
    procedure dxBtnCancelarClick(Sender: TObject);
    procedure dxBtnGuardarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxBtnCerPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxBtnKeyPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxPaisPropertiesChange(Sender: TObject);
    procedure cxEstadoPropertiesChange(Sender: TObject);
    procedure cxPaisFocusChanged(Sender: TObject);
    procedure cxEstadoFocusChanged(Sender: TObject);
    procedure btnCargarClick(Sender: TObject);
    procedure btnCopiarClick(Sender: TObject);
    procedure btnBorrarClick(Sender: TObject);
    procedure CxPageDatosPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
  private
    gForm: TForm;
  public
    IdPadre: Integer;
    NivelOrganizacional: Integer;
    IdOrganizacion: Integer;
  end;

var
  FrmDatosOrganizacion: TFrmDatosOrganizacion;


implementation

uses UTFrmDatosPais, UTFrmDatosEstado, UTFrmDatosCiudad, UTFrmPais, UTFrmEstado;

{$R *.dfm}

{ TForm1 }

procedure TFrmDatosOrganizacion.cxBtnCerPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if dlgOpenCer.Execute then
    cdDatosOrg.FieldByName('RutaArchivoCert').AsString := dlgOpenCer.FileName;
end;

procedure TFrmDatosOrganizacion.cxBtnKeyPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if dlgOpenKey.Execute then
    cdDatosOrg.FieldByName('RutaArchivoKey').AsString := dlgOpenKey.FileName;
end;

procedure TFrmDatosOrganizacion.cxEstadoFocusChanged(Sender: TObject);
var
  cursor: TCursor;
  IdEstado: Integer;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := CrAppStart;
      {Si está seleccionado un pais dentro del combo
       filtrar los estados que le correspondan}
      if cdDatosOrg.State = dsEdit then
      begin
        if cxEstado.EditValue <> NULL then
        begin
          IdEstado := cxEstado.EditValue;
          if not CargarDatosFiltrados(cdMunicipio, 'IdEstado', [IdEstado]) then
            raise inteligentException.CreateByCode(6, ['nuc_pais', IdEstado, 'IdEstado']);

          if cdMunicipio.Active then
            cdMunicipio.Refresh
          else
            cdMunicipio.Open;
        end;
      end;
    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: inteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmDatosOrganizacion.cxEstadoPropertiesChange(Sender: TObject);
var
  cursor: TCursor;
  IdEstado: Integer;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := CrAppStart;
      {Si está seleccionado un pais dentro del combo
       filtrar los estados que le correspondan}
      IdEstado := cxEstado.EditValue;
      if (cxPais.EditValue <> NULL) and (cdDatosOrg.State <> dsEdit) then
      begin
        if not CargarDatosFiltrados(cdMunicipio, 'IdEstado', [IdEstado]) then
          raise inteligentException.CreateByCode(6, ['nuc_pais', IdEstado, 'IdEstado']);

        if cdMunicipio.Active then
          cdMunicipio.Refresh
        else
          cdMunicipio.Open;
        cxMunicipio.Text := '';
      end;

    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmDatosOrganizacion.CxPageDatosPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  mbImagen.Visible := NewPage.PageIndex = 0;

end;

procedure TFrmDatosOrganizacion.cxPaisFocusChanged(Sender: TObject);
var
  cursor: TCursor;
  IdPais: Integer;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := CrAppStart;
      {Si está seleccionado un pais dentro del combo
       filtrar los estados que le correspondan}
      if cdDatosOrg.State = dsEdit then
      begin
        if not CargarDatosFiltrados(cdPais, 'activo', ['Si']) then
          raise inteligentException.CreateByCode(6, ['nuc_pais', 'Si', 'Activo']);

        IdPais := cxPais.EditValue;
        if cxPais.EditValue <> NULL then
        if not CargarDatosFiltrados(cdEstado, 'IdPais', [IdPais]) then
            raise inteligentException.CreateBycode(6, ['nuc_pais', IdPais, 'IdPais']);

        if cdPais.Active then
          cdPais.Refresh
        else
          cdEstado.Open;
        if cdEstado.Active then
          cdEstado.Refresh
        else
          cdEstado.Open;
        cxEstado.Text := '';
        cxMunicipio.Text := '';
      end;

    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: inteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;

end;

procedure TFrmDatosOrganizacion.cxPaisPropertiesChange(Sender: TObject);
var
  cursor: TCursor;
  IdPais: Integer;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := CrAppStart;
      {Si está seleccionado un pais dentro del combo
       filtrar los estados que le correspondan}
      IdPais := cxPais.EditValue;
      if (cxPais.EditValue <> NULL) and (cdDatosOrg.State = dsEdit) then
      begin
        {if not CargarDatosFiltrados(cdEstado, 'IdPais', [cdPais.FieldByName('IdPais').AsInteger]) then
          raise inteligentException.CreateByCode(6, ['nuc_pais', cdPais.FieldByName('IdPais').AsString, 'IdPais']); }

        if not CargarDatosFiltrados(cdEstado, 'IdPais', [IdPais]) then
          raise inteligentException.CreateBycode(6, ['nuc_pais', IdPais, 'IdPais']);

        if cdEstado.Active then
          cdEstado.Refresh
        else
          cdEstado.Open;
      cxEstado.Text := '';
      cxMunicipio.Text := '';
      end;
    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: inteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmDatosOrganizacion.btnCargarClick(Sender: TObject);
begin
  CxPageDatos.ActivePageIndex := 0;
  CxPageDatos.Repaint;
  TcxImage(imgImagen).LoadFromFile;
end;

procedure TFrmDatosOrganizacion.btnCopiarClick(Sender: TObject);
begin
  TcxImage(ImgImagen).CopyToClipboard;
  AvisoCopiar.ActivateHint(ImgImagen, 'La imagen ha sido copiada al portapapeles', 'Copiar al portapapeles');
end;

procedure TFrmDatosOrganizacion.btnBorrarClick(Sender: TObject);
begin
  if (cdDatosOrg.State in [dsInsert, dsEdit]) then
  begin
    TcxImage(ImgImagen).Picture := nil;
    cdDatosOrg.FieldByname('Imagen').clear;
  end;
end;

procedure TFrmDatosOrganizacion.dxBtnCancelarClick(Sender: TObject);
begin
  if cdDatosOrg.State in [dsInsert, dsEdit] then
    cdDatosOrg.cancel;
end;

procedure TFrmDatosOrganizacion.dxBtnCerrarClick(Sender: TObject);
begin
  dxBtnCancelarClick(nil);
  Close;
end;

procedure TFrmDatosOrganizacion.dxBtnGuardarClick(Sender: TObject);
var
  idUltimo: Integer;
  PideLast: Boolean;
begin
  try
    if cdDatosOrg.State in [dsEdit, dsInsert] then
    begin
      {Datos de organización}
      PideLast := False;
      if cdDatosOrg.State = dsInsert then
      begin
        cdDatosOrg.FieldByName('IdOrganizacion').AsInteger := 0;
        cdDatosOrg.FieldByName('Padre').AsInteger := IdPadre;
        cdDatosOrg.FieldByName('IdNivel').AsInteger := NivelOrganizacional;
        cdDatosOrg.FieldByName('Activo').AsString := 'Si';
        PideLast := True;
      end;

      cdDatosOrg.FieldByName('Pais').AsString := cxPais.Text;
      cdDatosOrg.FieldByName('Estado').AsString := cxEstado.Text;
      cdDatosOrg.FieldByName('Municipio').AsString := cxMunicipio.Text;
      cdDatosOrg.Post;
      cdDatosOrg.ApplyUpdates(-1);

      {Último Id Insertado}
      if PideLast then
        IdUltimo := UltimoId
      else
        IdUltimo := IdOrganizacion;

      {wbs}
      if PideLast then
      begin
        if not CargarDatosFiltrados(cdDatosOrg, 'idOrganizacion', [IdUltimo]) then
          raise inteligentException.CreateByCode(6, ['nuc_organizacion', intToStr(IdUltimo),'Idorganizacion']);

        if cdDatosOrg.Active then
          cdDatosorg.Refresh
        else
          cdDatosOrg.Open;

        if cdDatosOrg.Locate('IdOrganizacion', IdUltimo, []) then
        Begin
          cdDatosOrg.Edit;
          if IdPadre <> -5 then
            cdDatosOrg.fieldByName('wbs').AsString := IntToStr(IdPadre) + '.' + IntToStr(IdUltimo)
          else
            cdDatosOrg.FieldByName('wbs').AsString := inttoStr(IdUltimo);

          cdDatosOrg.Post;
          cdDatosOrg.ApplyUpdates(-1);
        end;
      end;

      if EnTransaccion then
        ConcretarTransaccion;

      self.ModalResult := mrOk;
      Close;
    end;
  except
    on e: inteligentException do
    Begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      if EnTransaccion then
      begin
        cdDatosOrg.Cancel;
        CancelarTransaccion;
      end;
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    End;

    on e: InteligentWarning do
    begin
      if e.Message <> '***' then
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
    end;
  end;
end;

procedure TFrmDatosOrganizacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsPadres.DataSet := nil;
  if cdDatosOrg.ProviderName <> '' then
    EliminarConjunto(cdDatosOrg);

  if assigned(gForm) then
    gForm.Free;

  Action := Cafree;
end;

procedure TFrmDatosOrganizacion.FormCreate(Sender: TObject);
var
  Cursor: TCursor;
  i: Integer;
begin
  Try
    try
      Cursor := Screen.Cursor;
      Screen.Cursor := CrAppStart;

    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  End;
end;

procedure TFrmDatosOrganizacion.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  Try
    try
      Cursor := Screen.Cursor;
      Screen.Cursor := CrAppStart;

      GForm := TForm.Create(Self);

      dxRibbonDatosOrganizacion.Contexts.Items[0].Visible := False;
      dxribbonDatosOrganizacion.Contexts.Items[1].Visible := False;

      if not CrearConjunto(cdDatosOrg, 'nuc_organizacion_general', CcUpdate) then
        raise inteligentException.CreateByCode(5, ['Organización de Empresas']);

      if not CrearConjunto(cdPais, 'nuc_pais', ccCatalog) then
        raise inteligentException.CreateByCode(5, ['Paises']);

      if not CrearConjunto(cdEstado, 'nuc_estado', ccCatalog) then
        raise inteligentException.CreateByCode(5, ['Estados']);

      if not CrearConjunto(cdMunicipio, 'nuc_ciudad', ccCatalog) then
        raise inteligentException.CreateByCode(5, ['Ciudades']);

      CxPageDatos.ActivePage := cxPageGenerales;

      if not CargarDatosFiltrados(cdDatosOrg, 'idOrganizacion' , [IdOrganizacion]) then
        raise InteligentException.CreateByCode(6, ['Organizacion de Empresas', IdOrganizacion, 'Id. Organizacion']);

      cdDatosOrg.open;
      cdPais.Open;

      IniciarTransaccion;

      if IdOrganizacion = -9 then
      begin
        cddatosorg.insert
      end
      else
      begin
        if cdDatosOrg.FieldByName('Pais').AsString <> '' then
        begin
          if not CargarDatosFiltrados(cdPais, 'titulopais', [cdDatosOrg.FieldByName('Pais').AsString]) then
            raise inteligentException.CreateByCode(6, ['nuc_pais', cdDatosOrg.FieldByName('Pais').AsInteger, 'Pais']);

          if cdPais.Active then
            cdPais.Refresh
          else
            cdPais.Open;
          if cdPais.FieldByName('idpais').AsInteger <> NULL then
            cxPais.EditValue := cdPais.FieldByName('idpais').AsInteger;
        end;

        if cdDatosOrg.FieldByName('Estado').AsString <> '' then
        begin
          if not CargarDatosFiltrados(cdEstado, 'tituloestado', [cdDatosOrg.FieldByName('Estado').AsString]) then
            raise inteligentExCeption.CreateByCode(6, ['nuc_estado', CdDatosOrg.FieldByName('Estado').AsString]);

          if cdEstado.Active then
            cdEstado.Refresh
          else
            cdEstado.Open;
          if cdEstado.FieldByName('idestado').AsInteger <> NULL then
            cxEstado.EditValue := cdEstado.FieldByName('idestado').AsString;
        end;

        if cdDatosOrg.FieldByName('Municipio').AsString <> '' then
        begin
          if not CargarDatosFiltrados(cdMunicipio, 'titulociudad', [cdDatosOrg.FieldByName('Municipio').AsString]) then
            raise inteligentExCeption.CreateByCode(6, ['nuc_estado', CdDatosOrg.FieldByName('Estado').AsString]);

          if cdMunicipio.Active then
            cdMunicipio.Refresh
          else
            cdMunicipio.Open;

          if cdMunicipio.FieldByName('idciudad').AsInteger <> NULL then
          cxMunicipio.EditValue := cdMunicipio.FieldByName('idciudad').AsInteger;
        end;
      end;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmDatosOrganizacion.ImgImagenEnter(Sender: TObject);
begin
{  dxRibbonDatosOrganizacion.Contexts.Items[0].Visible := True;
  dxRibbonDatosOrganizacion.ActiveTab := dxTabOpcionesImagen;
  dxRibbonDatosOrganizacion.Show;}
end;

procedure TFrmDatosOrganizacion.ImgImagenExit(Sender: TObject);
begin
{  dxRibbonDatosOrganizacion.Contexts.Items[0].Visible := False;
  dxRibbonDatosOrganizacion.ActiveTab := dxTabOrganizacion;
  dxRibbonDatosOrganizacion.Show;}
end;

end.
