unit UTFrmNuevaReceta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, JvExControls, JvLabel, StdCtrls, Mask, DBCtrls, ExtCtrls,
  AdvGlowButton, DBClient, UInteliDialog, ClientModuleUnit1, JvExMask, JvSpin,
  JvDBSpinEdit, JvExExtCtrls, JvImage, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  JvDBImage, cxImage, cxDBEdit, FolderDialog, ExtDlgs, AdvPicture, Menus,
  cxLabel;

type
  TFrmNuevaReceta = class(TForm)
    dsReceta: TDataSource;
    dsTipoReceta: TDataSource;
    PanelBotones: TPanel;
    BtnCancelar: TAdvGlowButton;
    BtnAceptar: TAdvGlowButton;
    PanelPreparacion: TPanel;
    PreparacionReceta: TDBMemo;
    Panel3: TPanel;
    JvLabel5: TJvLabel;
    PanelImagen: TPanel;
    opdImagen: TOpenPictureDialog;
    Panel1: TPanel;
    Panel2: TPanel;
    PanelPicture: TPanel;
    Panel4: TPanel;
    JvLabel3: TJvLabel;
    IdTipoReceta: TDBLookupComboBox;
    CodigoReceta: TDBEdit;
    JvLabel1: TJvLabel;
    Panel5: TPanel;
    NombreReceta: TDBEdit;
    Panel6: TPanel;
    JvLabel2: TJvLabel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    JvLabel4: TJvLabel;
    DescripcionReceta: TDBMemo;
    pmImagen: TPopupMenu;
    EliminarImagen1: TMenuItem;
    imagen: TcxDbImage;
    LblDescripcion: TcxLabel;
    Panel10: TPanel;
    Personas: TJvDBSpinEdit;
    Panel11: TPanel;
    lblPersonas: TJvLabel;
    pnlRelativo: TPanel;
    memRelativo: TMemo;
    pnlDatosRelativo: TPanel;
    Panel13: TPanel;
    DBMemo1: TDBMemo;
    Panel14: TPanel;
    JvLabel6: TJvLabel;
    btnBuscarReceta: TAdvGlowButton;
    Panel15: TPanel;
    Panel16: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    Panel17: TPanel;
    JvLabel7: TJvLabel;
    JvLabel8: TJvLabel;
    JvDBSpinEdit1: TJvDBSpinEdit;
    Memo2: TMemo;
    Panel18: TPanel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IdTipoRecetaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnAceptarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure ImagenDblClick(Sender: TObject);
    procedure PanelPictureEnter(Sender: TObject);
    procedure PanelPictureExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EliminarImagen1Click(Sender: TObject);
    procedure DescripcionRecetaChange(Sender: TObject);
    procedure memRelativoDblClick(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure btnBuscarRecetaClick(Sender: TObject);
  private
    Resultado: Integer;
    ComparaId: Integer;
    Forma: TForm;
    procedure EliminarImagen;
  public
    pIdReceta: Integer;
    pCodigoReceta: String;
    TipoReceta: String;
  end;

var
  FrmNuevaReceta: TFrmNuevaReceta;

implementation

{$R *.dfm}

const
  LeyReceta: Array[False..True] of String = ('Receta', 'Barra');
  lblPersonas_Left: Array[False..True] of Integer = (24, 19);
  lblPersonas_Caption: Array[False..True] of String = ('Relativo:', 'Personas:');

procedure TFrmNuevaReceta.AdvGlowButton1Click(Sender: TObject);
begin
  Forma.Close;
end;

procedure TFrmNuevaReceta.AdvGlowButton2Click(Sender: TObject);
begin
  Forma.Close;
end;

procedure TFrmNuevaReceta.BtnAceptarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  Try
    Cursor := Screen.Cursor;
    if (IdTipoReceta.KeyValue = null)  or (IdTiporeceta.KeyValue = 0) then
    begin
      idtiporeceta.SetFocus;
      raise inteligentexception.CreateByCode(24, ['Antes de proceder a guardar es necesario que selecciones el tipo de ' + LeyReceta[AnsiCompareText(TipoReceta, 'Barra') = 0] + '.']);
    end;

    if Length(Trim(CodigoReceta.Text)) = 0 then
    begin
      codigoreceta.SetFocus;
      raise inteligentException.CreateByCode(24, ['La ' + LeyReceta[AnsiCompareText(TipoReceta, 'Barra') = 0] + ' necesita de un código.']);
    end;

    if (Length(trim(Personas.Text)) = 0) or (Personas.Value <= 0) then
    begin
      Personas.SetFocus;
      raise inteligentException.CreateByCode(24, ['Selecciona un numero de personas mayor a 0']);
    end;

    if Length(trim(NombreReceta.Text)) = 0 then
    begin
      NombreReceta.SetFocus;
      raise inteligentException.CreateByCode(24, ['Debe establecer un nombre para la ' + LeyReceta[AnsiCompareText(TipoReceta, 'Barra') = 0] + '.']);
    end;

    If (Length(trim(PreparacionReceta.Text)) = 0) AND (AnsiCompareText(TipoReceta, 'Barra') <> 0) then
    begin
      PreparacionReceta.SetFocus;
      raise inteligentException.CreateByCode(24, ['Debes establecer el método de preparación de la ' + LeyReceta[AnsiCompareText(TipoReceta, 'Barra') = 0] + '.']);
    end;

    Try
      Screen.Cursor := crAppStart;
      // Verificar si existe el código
      if VerificaCodigo(TClientDataSet(dsReceta.DataSet), 'CodigoReceta', CodigoReceta.Text, 'IdReceta', ComparaId) then
        raise InteligentWarning.CreateByCode(17, [LeyReceta[AnsiCompareText(TipoReceta, 'Barra') = 0], CodigoReceta.Text])
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

procedure TFrmNuevaReceta.btnBuscarRecetaClick(Sender: TObject);
begin
  ShowMessage('Invocar la ventana de selección de recetas');
end;

procedure TFrmNuevaReceta.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmNuevaReceta.DescripcionRecetaChange(Sender: TObject);
begin
  lblDescripcion.Caption :=  inttoStr(Length(DescripcionReceta.Text)) + '/300 Caracteres Disponibles';
end;

procedure TFrmNuevaReceta.IdTipoRecetaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 59 then
    dsTipoReceta.DataSet.Refresh;
end;

procedure TFrmNuevaReceta.ImagenDblClick(Sender: TObject);
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

procedure TFrmNuevaReceta.memRelativoDblClick(Sender: TObject);
begin
  Forma := TForm.Create(Self);
  try
    pnlDatosRelativo.Parent := Forma;
    pnlDatosRelativo.Align := alClient;
    pnlDatosRelativo.Visible := True;
    Forma.ShowModal;
  finally
    pnlDatosRelativo.Visible := False;
    pnlDatosRelativo.Align := alNone;
    pnlDatosRelativo.Parent := Self;
  end;
end;

procedure TFrmNuevaReceta.PanelPictureEnter(Sender: TObject);
begin
  PanelPicture.BevelOuter := bvLowered;
end;

procedure TFrmNuevaReceta.PanelPictureExit(Sender: TObject);
begin
  PanelPicture.BevelOuter := bvRaised;
end;

procedure TFrmNuevaReceta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ModalResult := Resultado;
end;

procedure TFrmNuevaReceta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (Key = 69) then
    EliminarImagen;
end;

procedure TFrmNuevaReceta.FormShow(Sender: TObject);
var
  s: TMemoryStream;
  Cursor: TCursor;
begin
  Resultado := mrCancel;
  Caption := LeyReceta[AnsiCompareText(TipoReceta, 'Barra') = 0];
  PreparacionReceta.Visible := AnsiCompareText(TipoReceta, 'Barra') <> 0;
  jvLabel5.Visible := PreparacionReceta.Visible;
  lblDescripcion.Visible := PreparacionReceta.Visible;
  if Not PreparacionReceta.Visible then
    JvLabel3.Caption := 'Tipo Barra:';

  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      if pIdReceta = -9 then
      begin
        ComparaId := -1;
        dsReceta.DataSet.Append;
        dsReceta.DataSet.FieldByName('IdReceta').AsInteger := 0;
        dsReceta.DataSet.FieldByName('IdTipoReceta').AsInteger := 0;
        dsReceta.DataSet.FieldByName('Activo').AsString := 'Si';
        dsReceta.DataSet.FieldByName('Tipo').AsString := TipoReceta;
        if AnsiCompareText(TipoReceta, 'Barra') = 0 then
          dsReceta.DataSet.FieldByName('PreparacionReceta').AsString := '';
      end
      else
      begin
        ComparaId := pIdReceta;
        if Not CargarDatosFiltrados(TClientDataSet(dsReceta.DataSet), 'IdReceta', [pIdReceta]) then
          raise InteligentException.CreateByCode(6, [LeyReceta[AnsiCompareText(TipoReceta, 'Barra') = 0] + 's', pCodigoReceta, 'Código de ' + LeyReceta[AnsiCompareText(TipoReceta, 'Barra') = 0]]);

        dsReceta.DataSet.Open;

        if dsReceta.DataSet.RecordCount = 0 then
          raise InteligentException.CreateByCode(13, [pCodigoReceta, LeyReceta[AnsiCompareText(TipoReceta, 'Barra') = 0] + 's']);

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

      lblPersonas.Left := lblPersonas_Left[dsReceta.DataSet.FieldByName('IdRecetaPartida').IsNull];
      lblPersonas.Caption := lblPersonas_Caption[dsReceta.DataSet.FieldByName('IdRecetaPartida').IsNull];
      pnlRelativo.Visible := Not dsReceta.DataSet.FieldByName('IdRecetaPartida').IsNull;
      Personas.Visible := dsReceta.DataSet.FieldByName('IdRecetaPartida').IsNull;
      if pnlRelativo.Visible then
        pnlRelativo.Align := alClient;
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

procedure TFrmNuevaReceta.EliminarImagen;
begin
  if InteliDialog.ShowModal('Eliminar imagen', '¿Está seguro que desea eliminar la imagen de esta ' + LeyReceta[AnsiCompareText(TipoReceta, 'Barra') = 0] +'?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dsReceta.DataSet.FieldByName('Imagen').Clear;
    Imagen.Picture := Nil;
  end;
end;

procedure TFrmNuevaReceta.EliminarImagen1Click(Sender: TObject);
begin
  EliminarImagen;
end;

end.
