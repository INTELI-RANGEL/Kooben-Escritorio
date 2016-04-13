unit UTFrmDatosInsumo;

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
  AppEvnts, ExtCtrls, DB, DBClient, StdCtrls, cxButtons, cxGroupBox, DBCtrls,
  Mask, ClientModuleUnit1, UControlExcepciones, JvExControls, JvLabel,
  UInteliDialog, AdvSpin, DBAdvSp, AdvGlowButton, cxTextEdit, cxMaskEdit,
  cxDBEdit, DBGrids, URegistro, StrUtils, AdvOfficePager, Spin, JvComponentBase,
  JvBalloonHint;

type
  TFrmDatosInsumo = class(TFrmDatosCatalogo)
    dsTipoInsimo: TDataSource;
    cdTipoInsumo: TClientDataSet;
    dsUnidades: TDataSource;
    btnAgregarInsumo: TAdvGlowButton;
    JvLabel8: TJvLabel;
    pmCopiar: TPopupMenu;
    CopiarvalordeotroIngrediente1: TMenuItem;
    CopiarTODOSlosvaloresdeotroIngrediente1: TMenuItem;
    cdBuscarInsumo: TClientDataSet;
    dsBuscarInsumo: TDataSource;
    cdMarca: TClientDataSet;
    dsMarca: TDataSource;
    Panel1: TPanel;
    JvLabel1: TJvLabel;
    IdTipoInsumo: TDBLookupComboBox;
    Panel2: TPanel;
    Panel3: TPanel;
    JvLabel2: TJvLabel;
    CodigoInsumo: TDBEdit;
    JvLabel3: TJvLabel;
    NombreInsumo: TDBEdit;
    JvLabel6: TJvLabel;
    iIdUnidad: TDBLookupComboBox;
    JvLabel5: TJvLabel;
    Calorias: TDBEdit;
    JvLabel7: TJvLabel;
    Proteinas: TDBEdit;
    JvLabel9: TJvLabel;
    Grasas: TDBEdit;
    JvLabel10: TJvLabel;
    HidratosCarbono: TDBEdit;
    JvLabel11: TJvLabel;
    IndiceGlucemico: TDBEdit;
    Panel4: TPanel;
    JvLabel12: TJvLabel;
    Panel5: TPanel;
    LeyMarcas: TEdit;
    cdMarcaxInsumo: TClientDataSet;
    btnAgregarMarca: TAdvGlowButton;
    JvLabel4: TJvLabel;
    DescripcionInsumo: TDBMemo;
    JvLabel13: TJvLabel;
    eClasificacion: TDBComboBox;
    cdVerificaCodigo: TClientDataSet;
    MsgSave: TJvBalloonHint;
    procedure FormShow(Sender: TObject);
    procedure btnAgregarInsumoClick(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure CopiarvalordeotroIngrediente1Click(Sender: TObject);
    procedure CopiarTODOSlosvaloresdeotroIngrediente1Click(Sender: TObject);
    procedure btnAgregarMarcaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnAddNewClick(Sender: TObject);
  private
    Resultado: TModalResult;
    LocResult: TModalResult;
    FrmBuscar: TForm;
    GridBuscar: TDBGrid;
    ButtonOk: TAdvGlowButton;
    OnEditInsumo: LongInt;
    OriginalInsumo: LongInt;
    procedure BuscarInsumo(Cual: Integer);
    procedure EditBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridBuscarDblClick(Sender: TObject);
    procedure GridBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnBuscarOkClick(Sender: TObject);
    procedure btnBuscarCancelClick(Sender: TObject);
    procedure FrmBuscarClose(Sender: TObject; var Action: TCloseAction);
    procedure GenerarListaMarcas;
    procedure VerificaCodigo;
  public
    { }
  end;

var
  FrmDatosInsumo: TFrmDatosInsumo;

implementation

uses
  UTFrmTiposInsumo, UTFrmUnidades, UTFrmDatosUnidades, UTFrmMarcas,
  UTFrmSelMarcas, UTFrmSelPresentacion, UTFrmPresentaciones;

{$R *.dfm}

procedure TFrmDatosInsumo.BtnAddNewClick(Sender: TObject);
var
  Obj: TWinControl;
  CodeSave: String;
begin
  try
    if IdTipoInsumo.KeyValue = Null then
    begin
      Obj := IdTipoInsumo;
      raise InteligentWarning.CreateByCode(18, ['Tipo de Insumo']);
    end;

    if Trim(CodigoInsumo.Text) = '' then
    begin
      Obj := CodigoInsumo;
      raise InteligentWarning.CreateByCode(18, ['Código de Insumo']);
    end;

    if Trim(NombreInsumo.Text) = '' then
    begin
      Obj := NombreInsumo;
      raise InteligentWarning.CreateByCode(18, ['Nombre de Insumo']);
    end;

    if iIdUnidad.KeyValue = Null then
    begin
      Obj := iIdUnidad;
      raise InteligentWarning.CreateByCode(18, ['Unidad de Medida']);
    end;

    if eClasificacion.ItemIndex < 0 then
    begin
      Obj := eClasificacion;
      raise InteligentWarning.CreateByCode(18, ['Clasificacion']);
    end;

    Obj := CodigoInsumo;
    VerificaCodigo; // Verificar que el código capturado no exista

    CodeSave := CodigoInsumo.Text;

    inherited;

    MsgSave.ActivateHint(BtnAddNew, 'El Insumo "' + CodeSave + '" ha sido registrado correctamente.');

    dsDatos.DataSet.FieldByname('IdTipoInsumo').AsInteger := cdTipoInsumo.FieldByName('IdTipoInsumo').AsInteger;
    dsDatos.DataSet.FieldByname('iIdUnidad').AsInteger := dsUnidades.DataSet.FieldByName('iIdUnidad').AsInteger;
    dsDatos.DataSet.FieldByname('eClasificacion').AsString := 'normal';

    IdTipoInsumo.SetFocus;
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      dsDatos.DataSet.Cancel;
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:InteligentWarning do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      if Assigned(Obj) and Obj.CanFocus then
        Obj.SetFocus;
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      dsDatos.DataSet.Cancel;
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmDatosInsumo.btnAgregarInsumoClick(Sender: TObject);
var
  cdUpt: TClientDataSet;
  popUp: TFrmDatosUnidades;
  OldCursor: TCursor;
begin
  Try
    cdUpt := TClientDataSet.Create(Nil);
    try
      // Acceder en modo update a los datos
      if not CrearConjunto(cdUpt, 'nuc_unidades', ccUpdate) then
        raise InteligentConnection.CreateByCode(5, ['Unidades de Medida']);

      Try
        if not CargarDatosFiltrados(cdUpt, 'iIdUnidad', [-9]) then
          raise InteligentConnection.CreateByCode(16, ['Unidades de Medida']);

        // Obtener un conjunto de datos vacíos
        cdUpt.Open;
        if cdUpt.RecordCount = 0 then
        begin
          OldCursor := Screen.Cursor;
          Screen.Cursor := crAppStart;
          popUp := TFrmDatosUnidades.Create(Self);
          try
            try
              cdUpt.Append;
              cdUpt.FieldByName('iIdUnidad').AsInteger := 0;
              cdUpt.FieldByname('eClasificacion').AsString := 'normal';
              popUp.dsDatos.DataSet := cdUpt;
              popUp.KeyField := 'iIdUnidad';
              popUp.CodeField := 'sCodigo';
              popUp.EntityName := 'nuc_unidades';
            Finally
              Screen.Cursor := OldCursor;
            End;

            if popUp.ShowModal = mrOk then
              dsUnidades.DataSet.Refresh;
          finally
            FreeAndNil(popUp);
          end;
        end
        else
        begin
          raise InteligentException.CreateByCode(3, ['Insumos']);
        end;
      Finally
        EliminarConjunto(CdUpt);
      End;
    finally
      FreeAndNil(CdUpt);
    end;
  Except
    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e: exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  End;

  RedrawWindow( Handle, nil, 0, RDW_ERASE or RDW_FRAME or RDW_INVALIDATE or RDW_ALLCHILDREN );
end;

procedure TFrmDatosInsumo.BtnRecClick(Sender: TObject);
var
  Paso: Real;
  Estado: TDataSetState;
  Id: Integer;
begin
  Estado := dsDatos.DataSet.State;

  // Verificar que los valores sean correctos valores numéricos
  Try
    Paso := StrToFloat(Trim(Calorias.Text));
  Except
    Calorias.Text := '0.00';
  End;

  Try
    Paso := StrToFloat(Trim(Proteinas.Text));
  Except
    Proteinas.Text := '0.00';
  End;

  Try
    Paso := StrToFloat(Trim(Grasas.Text));
  Except
    Grasas.Text := '0.00';
  End;

  Try
    Paso := StrToFloat(Trim(HidratosCarbono.Text));
  Except
    HidratosCarbono.Text := '0.00';
  End;

  Try
    Paso := StrToFloat(Trim(IndiceGlucemico.Text));
  Except
    IndiceGlucemico.Text := '0.00';
  End;

  inherited;
end;

procedure TFrmDatosInsumo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  EliminarConjunto([cdTipoInsumo, cdMarca, cdMarcaxInsumo, cdVerificaCodigo]);
end;

procedure TFrmDatosInsumo.FormShow(Sender: TObject);
begin
  inherited;

  Try
    if not CrearConjunto(cdTipoInsumo, 'cmt_tipoinsumo', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Tipos de Insumo']);

    if not CrearConjunto(cdMarca, 'cmt_marca', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Marcas']);

    VerificaDataSetUnidades;

    if not CrearConjunto(cdMarcaxInsumo, 'cmt_marcaxinsumo', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Marcas por Ingrediente']);

    if dsDatos.DataSet.State = dsEdit then
    begin
      if Not CargarDatosFiltrados(cdMarca, 'IdInsumo', [dsDatos.DataSet.FieldByName('IdInsumo').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Marcas', dsDatos.DataSet.FieldByName('IdInsumo').AsInteger, 'Id. Insumo']);

      if not CargarDatosFiltrados(cdMarcaxInsumo, 'IdInsumo', [dsDatos.DataSet.FieldByName('IdInsumo').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Marcas por Ingrediente', dsDatos.DataSet.FieldByName('IdInsumo').AsInteger, 'Id. Insumo']);
    end;

    cdTipoInsumo.Open;
    cdMarca.Open;
    cdMarcaxInsumo.Open;

    if cdTipoInsumo.RecordCount = 0 then
    begin
      case InteliDialog.ShowModal('No existen datos complementarios', 'Para poder dar de alta un Ingrediente es necesario que exista al menos un Tipo de Ingrediente para clasificarlo' + #10 + #10 +
                                  '¿Desea ir a la ventana de Tipos de Ingredientes para registrar los datos necesarios?', mtConfirmation, [mbYes, mbNo], 0) of
        mrYes: begin
          // Invoar la ventana de tipos de Insumo
          Try
            Application.CreateForm(TFrmTiposInsumo, FrmTiposInsumo);
            FrmTiposInsumo.FormStyle := fsNormal;
            FrmTiposInsumo.Visible := False;
            FrmTiposInsumo.ShowModal;
          Finally
            FrmTiposInsumo.Free;
          End;
        end;
      end;
    end;

    if cdTipoInsumo.RecordCount = 0 then
      raise InteligentWarning.CreateByCode(22, ['Tipos de Insumo']);

    if cdMarca.RecordCount = 0 then
    begin
      case InteliDialog.ShowModal('No existen datos complementarios', 'Para poder dar de alta un Ingrediente es necesario que exista al menos una Marca para clasificarlo' + #10 + #10 +
                                  '¿Desea ir a la ventana de Marcas para registrar los datos necesarios?', mtConfirmation, [mbYes, mbNo], 0) of
        mrYes: begin
          // Invoar la ventana de tipos de Insumo
          Try
            Application.CreateForm(TFrmMarcas, FrmMarcas);
            FrmMarcas.FormStyle := fsNormal;
            FrmMarcas.Visible := False;
            FrmMarcas.ShowModal;
          Finally
            FrmMarcas.Free;
          End;
        end;
      end;
    end;

    if cdMarca.RecordCount = 0 then
      raise InteligentWarning.CreateByCode(22, ['Marcas']);

    //**************************************************************************************
    if cdMarca.RecordCount = 0 then
      raise InteligentWarning.CreateByCode(22, ['Marcas']);

    //**************************************************************************************
    if dsUnidades.DataSet.RecordCount = 0 then
    begin
      case InteliDialog.ShowModal('No existen datos complementarios', 'Para poder dar de alta un Insumo es necesario que exista al menos una Unidad de Medida para clasificarlo' + #10 + #10 +
                                  '¿Desea ir a la ventana de Unidades de Medida para registrar los datos necesarios?', mtConfirmation, [mbYes, mbNo], 0) of
        mrYes: begin
          // Invocar la ventna de Unidades de Medida
          Try
            Application.CreateForm(TFrmUnidades, FrmUnidades);
            FrmUnidades.FormStyle := fsNormal;
            FrmUnidades.Visible := False;
            FrmUnidades.ShowModal;
          Finally
            FrmUnidades.Free;
          End;
        end;
      end;
    end;

    if dsUnidades.DataSet.RecordCount = 0 then
      raise InteligentException.CreateByCode(22, ['Unidades de Medida']);
    //************************************************************************************

    if dsDatos.DataSet.State = dsEdit then
      GenerarListaMarcas
    else
      dsDatos.DataSet.FieldByName('eClasificacion').AsString := 'normal';

    if (dsDatos.DataSet.State = dsInsert) and (cdTipoInsumo.RecordCount > 0) then
      dsDatos.DataSet.FieldByName('IdTipoInsumo').AsInteger := cdTipoInsumo.FieldByName('IdTipoInsumo').AsInteger;

    if (dsDatos.DataSet.State = dsInsert) and (dsUnidades.DataSet.RecordCount > 0) then
      dsDatos.DataSet.FieldByName('iIdUnidad').AsInteger := dsUnidades.DataSet.FieldByName('iIdUnidad').AsInteger;

    OriginalInsumo := dsDatos.DataSet.FieldByName('iIdUnidad').AsInteger;
    OnEditInsumo := dsDatos.DataSet.FieldByName('iIdUnidad').AsInteger;

    btnAgregarMarca.Enabled := dsDatos.DataSet.State = dsEdit;
  Except
    on e:InteligentWarning do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, mtWarning, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmDatosInsumo.BuscarInsumo(Cual: Integer);
var
  PanelBuscar,
  PanelEdit: TPanel;
  EditBuscar: TEdit;
  ButtonCancel: TAdvGlowButton;
  LabelBuscar: TJvLabel;
  Sobreescribir: Boolean;
begin
  FrmBuscar := TForm.Create(Self);
  FrmBuscar.Name := 'BuscarRecetaInsumo';
  FrmBuscar.Caption := 'Localizar ingrediente';
  FrmBuscar.Position := poDesigned;

  PanelEdit := TPanel.Create(FrmBuscar);
  PanelEdit.Name := 'PanelEdit';
  PanelEdit.Caption := '';
  PanelEdit.Align := alTop;
  PanelEdit.Height := 52;
  PanelEdit.Parent := FrmBuscar;

  LabelBuscar := TJvLabel.Create(PanelEdit);
  LabelBuscar.Name := 'LabelBuscar';
  LabelBuscar.Caption := 'Buscar:';
  LabelBuscar.Top := 17;
  LabelBuscar.Left := 10;
  LabelBuscar.Parent := PanelEdit;

  EditBuscar := TEdit.Create(PanelEdit);
  EditBuscar.Name := 'EditBuscar';
  EditBuscar.Top := 17;
  EditBuscar.Left := 48;
  EditBuscar.Text := '';
  EditBuscar.OnKeyDown := EditBuscarKeyDown;
  EditBuscar.Parent := PanelEdit;

  GridBuscar := TDBGrid.Create(FrmBuscar);
  GridBuscar.Name := 'GridBuscar';
  GridBuscar.Align := alClient;
  GridBuscar.ShowHint := True;
  GridBuscar.Hint := '';
  GridBuscar.OnDblClick := GridBuscarDblClick;
  GridBuscar.OnKeyDown := GridBuscarKeyDown;
  GridBuscar.DataSource := dsBuscarInsumo;

  // Agregar la columna del Código
  With GridBuscar.Columns.Add do
  begin
    Title.Caption := 'Código';
    FieldName := 'CodigoInsumo';

    Try
      Width := StrToInt(VarRegistry('\Ventanas', '\' + self.Name + '\GridBuscar', 'Column0'));
    Except
      ;
    End;
  end;

  // Agregar la columna del Nombre
  With GridBuscar.Columns.Add do
  begin
    Title.Caption := 'Ingrediente';
    FieldName := 'NombreInsumo';

    Try
      Width := StrToInt(VarRegistry('\Ventanas', '\' + self.Name + '\GridBuscar', 'Column1'));
    Except
      ;
    End;
  end;

  GridBuscar.Parent := FrmBuscar;

  PanelBuscar := TPanel.Create(FrmBuscar);
  PanelBuscar.Name := 'PanelBuscar';
  PanelBuscar.Caption := '';
  PanelBuscar.Align := alBottom;
  PanelBuscar.Height := 36;
  PanelBuscar.Parent := FrmBuscar;
  PanelBuscar.Padding.Top := 5;
  PanelBuscar.Padding.Bottom := 5;
  PanelBuscar.Padding.Right := 10;

  ButtonOk := TAdvGlowButton.Create(PanelBuscar);
  ButtonOk.Name := 'ButtonOk';
  ButtonOk.Caption := '&Aceptar';
  ButtonOk.Align := alRight;
  ButtonOk.OnClick := btnBuscarOkClick;
  ButtonOk.Enabled := False;
  ButtonOk.Parent := PanelBuscar;

  ButtonCancel := TAdvGlowButton.Create(PanelBuscar);
  ButtonCancel.Name := 'ButtonCancel';
  ButtonCancel.Caption := '&Cancelar';
  ButtonCancel.Align := alRight;
  ButtonCancel.Cancel := True;
  ButtonCancel.OnClick := btnBuscarCancelClick;
  ButtonCancel.Parent := PanelBuscar;

  Try
    FrmBuscar.Top := StrToInt(VarRegistry('\Ventanas', '\' + FrmBuscar.Name, 'Top'));
  Except
    ;
  End;

  Try
    FrmBuscar.Left := StrToInt(VarRegistry('\Ventanas', '\' + FrmBuscar.Name, 'Left'));
  Except
    ;
  End;

  Try
    FrmBuscar.Width := StrToInt(VarRegistry('\Ventanas', '\' + FrmBuscar.Name, 'Width'));
  Except
    ;
  End;

  Try
    FrmBuscar.Height := StrToInt(VarRegistry('\Ventanas', '\' + FrmBuscar.Name, 'Height'));
  Except
    ;
  End;

  FrmBuscar.OnClose := FrmBuscarClose;

  if cdBuscarInsumo.ProviderName = '' then
    if not CrearConjunto(cdBuscarInsumo, 'cmt_insumo_buscar', ccSelect) then
      raise InteligentException.CreateByCode(5, ['Busqueda de Insumos']);

  cdBuscarInsumo.Close;

  if (FrmBuscar.ShowModal = mrOk) and (cdBuscarInsumo.Active) and (cdBuscarInsumo.RecordCount > 0) then
    case Cual of
      1: Calorias.Text        := cdBuscarInsumo.FieldByName('Calorias').AsString;
      2: Proteinas.Text       := cdBuscarInsumo.FieldByName('Proteinas').AsString;
      3: Grasas.Text          := cdBuscarInsumo.FieldByName('Grasas').AsString;
      4: HidratosCarbono.Text := cdBuscarInsumo.FieldByName('HidratosCarbono').AsString;
      5: IndiceGlucemico.Text := cdBuscarInsumo.FieldByName('IndiceGlucemico').AsString
      else
      begin
        if Trim(Calorias.Text) + Trim(Proteinas.Text) + Trim(Grasas.Text) + Trim(HidratosCarbono.Text) + Trim(IndiceGlucemico.Text) <> '' then
          Sobreescribir := InteliDialog.ShowModal('Ya se han capturado valores', '¿Desea sobreescribir los valores que ya han sido capturados?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
        else
          Sobreescribir := True;

        if (Sobreescribir) or ((Not Sobreescribir) and (Trim(Calorias.Text) = '')) then
          Calorias.Text        := cdBuscarInsumo.FieldByName('Calorias').AsString;

        if (Sobreescribir) or ((Not Sobreescribir) and (Trim(Proteinas.Text) = '')) then
          Proteinas.Text       := cdBuscarInsumo.FieldByName('Proteinas').AsString;

        if (Sobreescribir) or ((Not Sobreescribir) and (Trim(Grasas.Text) = '')) then
          Grasas.Text          := cdBuscarInsumo.FieldByName('Grasas').AsString;

        if (Sobreescribir) or ((Not Sobreescribir) and (Trim(HidratosCarbono.Text) = '')) then
          HidratosCarbono.Text := cdBuscarInsumo.FieldByName('HidratosCarbono').AsString;

        if (Sobreescribir) or ((Not Sobreescribir) and (Trim(IndiceGlucemico.Text) = '')) then
          IndiceGlucemico.Text := cdBuscarInsumo.FieldByName('IndiceGlucemico').AsString
      end;
    end;
end;

procedure TFrmDatosInsumo.CopiarTODOSlosvaloresdeotroIngrediente1Click(
  Sender: TObject);
begin
  BuscarInsumo(0);
end;

procedure TFrmDatosInsumo.CopiarvalordeotroIngrediente1Click(Sender: TObject);
begin
  BuscarInsumo(Self.ActiveControl.Tag);
end;

procedure TFrmDatosInsumo.EditBuscarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Cadena,
  Variables: String;
  Valores: Array Of Variant;
  i, Cta: Integer;
  Cursor: TCursor;
  Padre: TWinControl;
begin
  if Key = 13 then
  begin
    Try
      Cursor := Screen.Cursor;
      Try
        Screen.Cursor := crAppStart;

        // Limpiar la cadena capturada
        Cadena := Trim(TEdit(Sender).Text);   // Quitar espacios en blanco laterales

        // Elimianr los espacios en blanco dobles
        while Pos('  ', Cadena) > 0 do
          Cadena := StringReplace(Cadena, '  ', ' ', [rfReplaceAll, rfIgnoreCase]);

        // Armar los parametros de selección de datos
        Variables := '';
        Cadena := Cadena + ' ';
        Cta := Length(Cadena) - Length(StringReplace(Cadena, ' ', '', [rfReplaceAll, rfIgnoreCase]));
        Setlength(Valores, Cta);
        for i := 1 to Cta do
        begin
          Variables := Variables + 'Busca' + IntToStr(i) + ',';
          Valores[i -1] := Copy(Cadena, 1, Pos(' ', Cadena) -1);

          Cadena := Copy(Cadena, Pos(' ', Cadena) +1, Length(Cadena));
        end;
        Variables := Copy(Variables, 1, Length(Variables) -1);

        if Not CargarDatosFiltrados(cdBuscarInsumo, Variables, Valores) then
          raise InteligentException.CreateByCode(16, ['Busqueda de Insumos']);

        if cdBuscarInsumo.Active then
          cdBuscarInsumo.Refresh
        else
          cdBuscarInsumo.Open;

        if Assigned(ButtonOk) then
          ButtonOk.Enabled := True;

        GridBuscar.SetFocus;
      Finally
        Screen.Cursor := Cursor;
      End;
    Except
      on e:InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e:Exception do
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    End;
  end;
end;

procedure TFrmDatosInsumo.GridBuscarDblClick(Sender: TObject);
begin
  if (cdBuscarInsumo.Active) and (cdBuscarInsumo.RecordCount > 0) then
    ButtonOk.Click;
end;

procedure TFrmDatosInsumo.GridBuscarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 13) and (cdBuscarInsumo.Active) and (cdBuscarInsumo.RecordCount > 0) then
    ButtonOk.Click;
end;

procedure TFrmDatosInsumo.btnBuscarOkClick(Sender: TObject);
var
  Padre: TWinControl;
begin
  Padre := TWinControl(Sender).Parent;
  if AnsiCompareText(Padre.Parent.ClassName, 'TForm') = 0 then
  begin
    LocResult := mrOk;
    TForm(Padre.Parent).Close;
  end;
end;

procedure TFrmDatosInsumo.btnAgregarMarcaClick(Sender: TObject);
begin
  Application.CreateForm(TFrmSelMarcas, FrmSelMarcas);
  FrmSelMarcas.dsMarca.DataSet := cdMarca;
  FrmSelMarcas.dsMarcaxInsumo.DataSet := cdMarcaxInsumo;
  FrmSelMarcas.IdInsumo := dsDatos.DataSet.FieldByName('IdInsumo').AsInteger;
  if FrmSelMarcas.ShowModal = mrOk then
  begin
    cdMarca.Refresh;
    GenerarListaMarcas;
  end;
end;

procedure TFrmDatosInsumo.btnBuscarCancelClick(Sender: TObject);
var
  Padre: TWinControl;
begin
  Padre := TWinControl(Sender).Parent;
  if AnsiCompareText(Padre.Parent.ClassName, 'TForm') = 0 then
  begin
    LocResult := mrCancel;
    TForm(Padre.Parent).Close;
  end;
end;

procedure TFrmDatosInsumo.FrmBuscarClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
begin
  SetRegistry('\Ventanas', '\' + TForm(Sender).Name, 'Top', IntToStr(TForm(Sender).Top));
  SetRegistry('\Ventanas', '\' + TForm(Sender).Name, 'Left', IntToStr(TForm(Sender).Left));
  SetRegistry('\Ventanas', '\' + TForm(Sender).Name, 'Height', IntToStr(TForm(Sender).Height));
  SetRegistry('\Ventanas', '\' + TForm(Sender).Name, 'Width', IntToStr(TForm(Sender).Width));

  // Guardar los anchos de las columnas del grid
  for i:= 0 to GridBuscar.Columns.Count -1 do
    SetRegistry('\Ventanas', '\' + self.Name + '\' + GridBuscar.Name, 'Column' + IntToStr(i), IntToStr(GridBuscar.Columns[i].Width));

  TForm(Sender).ModalResult := LocResult;

  Action := caFree;
end;

procedure TFrmDatosInsumo.GenerarListaMarcas;
var
  CadPaso: String;
begin
  // Generar la cadena de Marcas correspondientes a este insumo (Solo en caso de edición)
  Try
    cdMarca.First;
    CadPaso := '';
    while not cdMarca.Eof do
    begin
      if Not cdMarca.FieldByName('IdMarcaxInsumo').IsNull then
        CadPaso := CadPaso + cdMarca.FieldByName('TituloMarca').AsString + ', ';

      cdMarca.Next;
    end;

    if CadPaso <> '' then
      LeyMarcas.Text := LeftStr(CadPaso, Length(CadPaso) - 2)
    else
      LeyMarcas.Text := '< Seleccione las marcas >';
  Finally
    cdMarca.First;
  End;
end;

procedure TFrmDatosInsumo.VerificaCodigo;
begin
  if cdVerificaCodigo.ProviderName = '' then
    if not CrearConjunto(cdVerificaCodigo, 'cmt_insumo', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Códigos de Insumo']);

  if Not CargarDatosFiltrados(cdVerificaCodigo, 'CodigoInsumo', [CodigoInsumo.Text]) then
    raise InteligentException.CreateByCode(6, ['Códigos de Insumo', CodigoInsumo.Text, 'Código Insumo']);

  if cdVerificaCodigo.Active then
    cdVerificaCodigo.Refresh
  else
    cdVerificaCodigo.Open;

  try
    if cdVerificaCodigo.RecordCount > 0 then
      raise InteligentWarning.CreateByCode(24, ['El código "' + CodigoInsumo.Text + '" ya existe dentro del catálogo de Insumos, no es posible generar dos o más registros de Insumo con el mismo código.']);
  finally
    cdVerificaCodigo.Close;
  end;
end;

end.
