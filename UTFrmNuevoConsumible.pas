unit UTFrmNuevoConsumible;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  AdvGlowButton, cxImage, cxDBEdit, StdCtrls, DBCtrls, JvExMask, JvSpin,
  JvDBSpinEdit, Mask, JvExControls, JvLabel, ExtCtrls, Menus, ExtDlgs, DB,
  ClientModuleUnit1, UInteliDialog, URegistro, DBClient, cxLabel;

type
  TFrmNuevoConsumible = class(TForm)
    PanelImagen: TPanel;
    Panel1: TPanel;
    Panel4: TPanel;
    JvLabel3: TJvLabel;
    JvLabel1: TJvLabel;
    JvLabel6: TJvLabel;
    IdTipoReceta: TDBLookupComboBox;
    CodigoReceta: TDBEdit;
    Personas: TJvDBSpinEdit;
    Panel5: TPanel;
    NombreReceta: TDBEdit;
    Panel6: TPanel;
    JvLabel2: TJvLabel;
    Panel7: TPanel;
    Panel8: TPanel;
    JvLabel4: TJvLabel;
    Panel9: TPanel;
    DescripcionReceta: TDBMemo;
    Panel2: TPanel;
    PanelPicture: TPanel;
    imagen: TcxDBImage;
    PanelBotones: TPanel;
    BtnCancelar: TAdvGlowButton;
    BtnAceptar: TAdvGlowButton;
    dsTipoReceta: TDataSource;
    opdImagen: TOpenPictureDialog;
    dsReceta: TDataSource;
    pmImagen: TPopupMenu;
    EliminarImagen1: TMenuItem;
    LblDescripcion: TcxLabel;
    procedure BtnAceptarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure DescripcionRecetaChange(Sender: TObject);
    procedure IdTipoRecetaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure imagenDblClick(Sender: TObject);
    procedure PanelPictureEnter(Sender: TObject);
    procedure PanelPictureExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure EliminarImagen1Click(Sender: TObject);
  private
    Resultado: Integer;
    ComparaId: Integer;
    procedure EliminarImagen;
  public
    pIdReceta: Integer;
    pCodigoReceta: String;
    //TipoReceta: String;
  end;

var
  FrmNuevoConsumible: TFrmNuevoConsumible;

implementation

{$R *.dfm}

procedure TFrmNuevoConsumible.BtnAceptarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  Try
    Cursor := Screen.Cursor;
    if (IdTipoReceta.KeyValue = null)  or (IdTiporeceta.KeyValue = 0) then
    begin
      idtiporeceta.SetFocus;
      raise inteligentexception.CreateByCode(24, ['Antes de proceder a guardar es necesario que selecciones el tipo de Paquete de Consumibles.']);
    end;

    if Length(Trim(CodigoReceta.Text)) = 0 then
    begin
      codigoreceta.SetFocus;
      raise inteligentException.CreateByCode(24, ['El Paquete de Consumibles necesita de un código.']);
    end;

    if (Length(trim(Personas.Text)) = 0) or (Personas.Value <= 0) then
    begin
      Personas.SetFocus;
      raise inteligentException.CreateByCode(24, ['Selecciona un numero de personas mayor a 0']);
    end;

    if Length(trim(NombreReceta.Text)) = 0 then
    begin
      NombreReceta.SetFocus;
      raise inteligentException.CreateByCode(24, ['Debe establecer un nombre para el Paquete de Consumibles.']);
    end;

    Try
      Screen.Cursor := crAppStart;
      // Verificar si existe el código
      if VerificaCodigo(TClientDataSet(dsReceta.DataSet), 'CodigoReceta', CodigoReceta.Text, 'IdReceta', ComparaId) then
        raise InteligentWarning.CreateByCode(17, ['Paquete de Consumibles', CodigoReceta.Text])
      else
      begin
      // Valida los campos antes de realizar el post
        if ((dsReceta.DataSet.FieldByName('IdTipoReceta').AsString <> '') and
          (dsReceta.DataSet.FieldByName('CodigoReceta').AsString <> '') and
          (dsReceta.DataSet.FieldByName('NombreReceta').AsString <> '')) then
          begin
            TClientDataSet(dsReceta.DataSet).Post;
            TClientDataSet(dsReceta.DataSet).ApplyUpdates(-1);

            Resultado := mrOk;
            Close;
          end
        else
          InteliDialog.ShowModal('Faltan datos por capturar verifique la información', '', mtError, [mbOk], 0);
          PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;

    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:InteligentWarning do
    begin
      CodigoReceta.SetFocus;
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:inteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmNuevoConsumible.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmNuevoConsumible.DescripcionRecetaChange(Sender: TObject);
begin
  lblDescripcion.Caption :=  inttoStr(Length(DescripcionReceta.Text)) + '/300 Caracteres Disponibles';
end;

procedure TFrmNuevoConsumible.IdTipoRecetaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 59 then
    dsTipoReceta.DataSet.Refresh;
end;

procedure TFrmNuevoConsumible.ImagenDblClick(Sender: TObject);
var
  NombreArchivo: String;
begin
  // Seleccionar el archivo de imagen
  if opdImagen.Execute(Self.Handle) then
  begin
    NombreArchivo := opdImagen.FileName;

    // Cargar la imagen en la base de datos
    TBlobField(dsReceta.DataSet.FieldByName('Imagen')).LoadFromFile(NombreArchivo);

    // Cargar la imagen visualmente
    Imagen.Picture.LoadFromFile(NombreArchivo);
  end;

  if dsReceta.DataSet.FieldByName('Imagen').IsNull then
    PanelPicture.Caption := '< Doble click para seleccionar Imagen >'
  else
    PanelPicture.Caption := '';
end;

procedure TFrmNuevoConsumible.PanelPictureEnter(Sender: TObject);
begin
  PanelPicture.BevelOuter := bvLowered;
end;

procedure TFrmNuevoConsumible.PanelPictureExit(Sender: TObject);
begin
  PanelPicture.BevelOuter := bvRaised;
end;

procedure TFrmNuevoConsumible.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ModalResult := Resultado;
end;

procedure TFrmNuevoConsumible.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (Key = 69) then
    EliminarImagen;
end;

procedure TFrmNuevoConsumible.FormShow(Sender: TObject);
var
  s: TMemoryStream;
  Cursor: TCursor;
begin
  Resultado := mrCancel;

  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      if pIdReceta = -9 then
      begin
        Caption := 'Captura nuevo Paquete de Consumibles';
        ComparaId := -1;
        dsReceta.DataSet.Append;
        dsReceta.DataSet.FieldByName('IdReceta').AsInteger := 0;
        dsReceta.DataSet.FieldByName('IdTipoReceta').AsInteger := 0;
        dsReceta.DataSet.FieldByName('Activo').AsString := 'Si';
        dsReceta.DataSet.FieldByName('Tipo').AsString := '';
        dsReceta.DataSet.FieldByName('PreparacionReceta').AsString := '';
      end
      else
      begin
        Caption := 'Modificar Paquete de Consumibles';
        ComparaId := pIdReceta;
        if Not CargarDatosFiltrados(TClientDataSet(dsReceta.DataSet), 'IdReceta', [pIdReceta]) then
          raise InteligentException.CreateByCode(6, ['Paquetes de Consumibles', pCodigoReceta, 'Código de Paquete de Consumibles']);

        dsReceta.DataSet.Open;

        if dsReceta.DataSet.RecordCount = 0 then
          raise InteligentException.CreateByCode(13, [pCodigoReceta, 'Paquetes de Consumibles']);

        // Mostrar la imagen en pantalla
        if dsReceta.DataSet.FieldByName('Imagen').IsNull then
          PanelPicture.Caption := '< Doble click para seleccionar Imagen >'
        else
        begin
//          s := TMemoryStream.Create;
//          TBlobField(dsReceta.DataSet.FieldByName('Imagen')).SaveToStream(s);
//          Imagen.Picture.Graphic.LoadFromStream(s);
          PanelPicture.Caption := '';
        end;

        dsReceta.DataSet.Edit;
        if dsTipoReceta.DataSet.Active then
          dsTipoReceta.DataSet.Refresh
        else
          dsTipoReceta.DataSet.Open;
      end;
    Finally
      if IdTipoReceta.CanFocus then
       IdTipoReceta.SetFocus;

      Screen.Cursor := Cursor;
    End;
  Except
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
  End;
end;

procedure TFrmNuevoConsumible.EliminarImagen;
begin
  if InteliDialog.ShowModal('Eliminar imagen', '¿Está seguro que desea eliminar la imagen de este Paquete de Consumibles?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dsReceta.DataSet.FieldByName('Imagen').Clear;
    Imagen.Picture := Nil;
  end;
end;

procedure TFrmNuevoConsumible.EliminarImagen1Click(Sender: TObject);
begin
  EliminarImagen;
end;

end.
