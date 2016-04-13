unit UTFrmRecetaInsumo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, StdCtrls, DBCtrls, JvExControls, JvLabel, Grids,
  DBGrids, AdvGlowButton, DBClient, ClientModuleUnit1, UInteliDialog, Mask,
  JvExMask, JvSpin, cxGraphics, cxControls, cxLookAndFeels,
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
  cxTextEdit, cxMaskEdit, cxSpinEdit, cxDBEdit, JvComponentBase, JvBalloonHint,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, NxEdit,
  URegistro, dxSkinsdxBarPainter, dxSkinsForm, dxBar;

type
  TFrmRecetaInsumo = class(TForm)
    Panel1: TPanel;
    dsReceta: TDataSource;
    Panel2: TPanel;
    DescripcionReceta: TDBMemo;
    Panel3: TPanel;
    JvLabel3: TJvLabel;
    dsRecetaInsumo: TDataSource;
    dsInsumo: TDataSource;
    Panel4: TPanel;
    JvLabel4: TJvLabel;
    IdInsumo: TDBLookupComboBox;
    Panel5: TPanel;
    btnTerminar: TAdvGlowButton;
    btnAceptar: TAdvGlowButton;
    dsRecetaInsumoLista: TDataSource;
    btnNuevo: TAdvGlowButton;
    JvLabel5: TJvLabel;
    sCodigo: TDBText;
    Aviso: TJvBalloonHint;
    GridInsumosDBTableView1: TcxGridDBTableView;
    GridInsumosLevel1: TcxGridLevel;
    GridInsumos: TcxGrid;
    cCodigoInsumo: TcxGridDBColumn;
    cNombreInsumo: TcxGridDBColumn;
    cCantidad: TcxGridDBColumn;
    csCodigo: TcxGridDBColumn;
    btnAgregarInsumo: TAdvGlowButton;
    Panel6: TPanel;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    CodigoReceta: TDBText;
    NombreReceta: TDBText;
    iIdUnidad: TDBLookupComboBox;
    cdUnidades: TClientDataSet;
    dsUnidades: TDataSource;
    lblConversion: TJvLabel;
    Cantidad: TNxNumberEdit;
    cdBuscarInsumo: TClientDataSet;
    dsBuscarInsumo: TDataSource;
    Calorias: TcxGridDBColumn;
    Proteinas: TcxGridDBColumn;
    Grasas: TcxGridDBColumn;
    HidratosCarbono: TcxGridDBColumn;
    IndiceGlucemico: TcxGridDBColumn;
    DxManager1: TdxBarManager;
    dxSkinController1: TdxSkinController;
    procedure btnAceptarClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnTerminarClick(Sender: TObject);
    procedure IdInsumoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAgregarInsumoClick(Sender: TObject);
    procedure GridInsumosDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridInsumosDBTableView1EditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdInsumoAfterScroll(DataSet: TDataSet);
    procedure cdUnidadesAfterScroll(DataSet: TDataSet);
    procedure CantidadChange(Sender: TObject);
    procedure cdBuscarInsumoAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    Resultado: TModalResult;
    LocResult: TModalResult;
    FrmBuscar: TForm;
    GridBuscar: TDBGrid;
    ButtonOk: TAdvGlowButton;
    procedure GrabarInsumo(pModo: Byte);
    procedure ActualizarPartidas;
    procedure BuscarInsumo(Tipo: Byte);
    procedure FrmBuscarClose(Sender: TObject; var Action: TCloseAction);
    procedure btnBuscarOkClick(Sender: TObject);
    procedure btnBuscarCancelClick(Sender: TObject);
    procedure EditBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridBuscarDblClick(Sender: TObject);
    procedure GridBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  public
    IdReceta: Integer;
  end;

var
  FrmRecetaInsumo: TFrmRecetaInsumo;

implementation

uses UTFrmDatosInsumo;

{$R *.dfm}

procedure TFrmRecetaInsumo.btnAceptarClick(Sender: TObject);
begin
  try
    if idInsumo.KeyValue = null then
      raise inteligentException.CreateByCode(24, ['Debes seleccionar un insumo antes de continuar.']);

    if iIdUnidad.KeyValue = null then
      raise inteligentException.CreateByCode(24, ['Debes seleccionar una unidad de medida para el insumo seleccionado.']);

    if Cantidad.Value = 0 then
      raise inteligentException.CreateByCode(24, ['La cantidad del insumo no puede ser menor o igual a 0.']);

    GrabarInsumo(1);
  Except
    on e: inteligentException do
      inteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmRecetaInsumo.btnTerminarClick(Sender: TObject);
begin
  cdUnidades.Close;
  Close;
end;

procedure TFrmRecetaInsumo.CantidadChange(Sender: TObject);
begin
  cdUnidadesAfterScroll(cdUnidades);
end;

procedure TFrmRecetaInsumo.cdBuscarInsumoAfterScroll(DataSet: TDataSet);
begin
  if Assigned(GridBuscar) then
    GridBuscar.Hint := DataSet.FieldByName('DescripcionInsumo').AsString;
end;

procedure TFrmRecetaInsumo.cdInsumoAfterScroll(DataSet: TDataSet);
begin
  if cdUnidades.ProviderName <> '' then
  Try
    // Asignar aquí el comportamiento para que se filtren las unidades de medida disponibles
    if Not CargarDatosFiltrados(cdUnidades, 'IdInsumo', [DataSet.FieldByName('IdInsumo').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Equivalencias de Ingredientes', DataSet.FieldByName('IdInsumo').AsInteger, 'Id. Insumo']);

    if cdUnidades.Active then
      cdUnidades.Refresh
    else
      cdUnidades.Open;

    if dsRecetaInsumo.DataSet.State = dsInsert then
    begin
      // Seleccionar el primer registro
      cdUnidades.First;
      dsRecetaInsumo.DataSet.FieldByName('iIdUnidad').AsInteger := cdUnidades.FieldByName('iIdUnidad_s').AsInteger;
    end;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  End;
end;

procedure TFrmRecetaInsumo.cdUnidadesAfterScroll(DataSet: TDataSet);
var
  LocResult: Real;
begin
  if assigned(cdUnidades) and (Not dsInsumo.DataSet.FieldByName('IdInsumo').IsNull) and (cdUnidades.Active) then
  begin
    if dsInsumo.DataSet.FieldByName('iIdUnidad').AsInteger = cdUnidades.FieldByName('iIdUnidad_s').AsInteger then
    begin
      lblConversion.Visible := False;
      lblConversion.Caption := '';
    end
    else
    begin
      if cdUnidades.FieldByName('Operador').AsString = 'Multiplicar' then
        LocResult := Cantidad.Value * cdUnidades.FieldByName('Valor').AsFloat
      else
        if cdUnidades.FieldByName('Valor').AsFloat = 0 then
          LocResult := 0
        else
          LocResult := Cantidad.Value / cdUnidades.FieldByName('Valor').AsFloat;

      lblConversion.Caption := FloatToStr(Cantidad.Value) + ' ' + cdUnidades.FieldByName('sNombre_s').AsString + ' equivale a ' + FloatToStr(LocResult) + ' ' + cdUnidades.FieldByName('sNombre_t').AsString;
      lblConversion.Visible := True;
    end;
  end;
end;

procedure TFrmRecetaInsumo.GridBuscarDblClick(Sender: TObject);
begin
  if (cdBuscarInsumo.Active) and (cdBuscarInsumo.RecordCount > 0) then
    ButtonOk.Click;
end;

procedure TFrmRecetaInsumo.GridBuscarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 13) and (cdBuscarInsumo.Active) and (cdBuscarInsumo.RecordCount > 0) then
    ButtonOk.Click;
end;

procedure TFrmRecetaInsumo.GridInsumosDBTableView1EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  if Key = 116 then
    ActualizarPartidas;
end;

procedure TFrmRecetaInsumo.GridInsumosDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 116 then
    ActualizarPartidas;
end;

procedure TFrmRecetaInsumo.btnAgregarInsumoClick(Sender: TObject);
var
  cdUpt: TClientDataSet;
  popUp: TFrmDatosInsumo;
  OldCursor: TCursor;
begin
  Try
    cdUpt := TClientDataSet.Create(Nil);
    try
      // Acceder en modo update a los datos
      if not CrearConjunto(cdUpt, 'cmt_insumo', ccUpdate) then
        raise InteligentConnection.CreateByCode(5, ['Insumos']);

      Try
        if not CargarDatosFiltrados(cdUpt, 'IdInsumo', [-9]) then
          raise InteligentConnection.CreateByCode(16, ['Insumos']);

        // Obtener un conjunto de datos vacíos
        cdUpt.Open;
        if cdUpt.RecordCount = 0 then
        begin
          OldCursor := Screen.Cursor;
          Screen.Cursor := crAppStart;
          popUp := TFrmDatosInsumo.Create(Self);
          try
            try
              cdUpt.Append;
              cdUpt.FieldByName('IdInsumo').AsInteger := 0;
              popUp.dsDatos.DataSet := cdUpt;
              popUp.KeyField := 'IdInsumo';
              popUp.CodeField := 'CodigoInsumo';
              popUp.EntityName := 'cmt_insumo';
            Finally
              Screen.Cursor := OldCursor;
            End;

            if popUp.ShowModal = mrOk then
              dsInsumo.DataSet.Refresh;
          finally
            FreeAndNil(popUp);
          end;
        end
        else
        begin
          raise InteligentException.CreateByCode(3, ['!cmt_insumo']);
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

procedure TFrmRecetaInsumo.btnNuevoClick(Sender: TObject);
begin
  try
    if idInsumo.KeyValue = null then
      raise inteligentException.CreateByCode(24, ['Debes seleccionar un insumo antes de continuar.']);

    if iIdUnidad.KeyValue = null then
      raise inteligentException.CreateByCode(24, ['Debes seleccionar una unidad de medida para el insumo seleccionado.']);

    if Cantidad.Value = 0 then
      raise inteligentException.CreateByCode(24, ['La cantidad del insumo no puede ser menor o igual a 0.']);

    GrabarInsumo(0);
  Except
    on e: inteligentException do
      inteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmRecetaInsumo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SetRegistry('\Ventanas', '\' + Self.Name, 'Top', IntToStr(Self.Top));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Left', IntToStr(Self.Left));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Width', IntToStr(Self.Width));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Height', IntToStr(Self.Height));

  EliminarConjunto([cdUnidades, cdBuscarInsumo]);

  cdUnidades.ProviderName := '';

  dsRecetaInsumo.DataSet.Cancel;
  dsInsumo.DataSet.AfterScroll := Nil;
  Action := caFree;
end;

procedure TFrmRecetaInsumo.FormCreate(Sender: TObject);
begin
  cdUnidades.AfterScroll := nil;
end;

procedure TFrmRecetaInsumo.FormShow(Sender: TObject);
const
  Prefijo: Array[False..True] Of String = ('EDT-', 'INS-');
var
  Cursor: TCursor;
  Pref: String;
begin
  Try
    Self.Top := StrToInt(VarRegistry('\Ventanas', '\' + Prefijo[dsRecetaInsumo.DataSet.State = dsEdit] + Self.Name, 'Top'));
  Except
    ;
  End;

  Try
    Self.Left := StrToInt(VarRegistry('\Ventanas', '\' + Prefijo[dsRecetaInsumo.DataSet.State = dsEdit] + Self.Name, 'Left'));
  Except
    ;
  End;

  cdUnidades.AfterScroll := cdUnidadesAfterScroll;

  Resultado := mrCancel;
  lblConversion.Caption := '';

  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      if Not CrearConjunto(cdUnidades, 'nuc_unidades_conversion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Equivalencias de Unidades de Medida']);

      if cdUnidades.Active then
        cdUnidades.Refresh
      else
        cdUnidades.Open;
    Finally
      Screen.Cursor := Cursor;
    End;

    dsInsumo.DataSet.AfterScroll := cdInsumoAfterScroll;
//iIdUnidad.KeyValue
    if dsRecetaInsumo.DataSet.State = dsEdit then
    begin
      btnNuevo.Visible := False;
      GridInsumos.Visible := False;
      Self.Height := Self.Height - GridInsumos.Height;

      Cantidad.Value := dsRecetaInsumo.DataSet.FieldByName('Cantidad').AsFloat;
      cdInsumoAfterScroll(dsInsumo.DataSet);
    end;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.msgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmRecetaInsumo.GrabarInsumo(pModo: Byte);
var
  Cursor: TCursor;
begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      dsRecetaInsumo.DataSet.FieldByName('Cantidad').AsFloat := Cantidad.Value;

      dsRecetaInsumo.DataSet.Post;
      TClientDataSet(dsRecetaInsumo.DataSet).ApplyUpdates(-1);

      dsRecetaInsumoLista.DataSet.Refresh;

      if pModo = 0 then
      begin
        Aviso.ActivateHint(btnNuevo, 'El ingrediente a ha sido registrado correctamente', 'Aviso', 2000);

        Cantidad.Value := 0;

        dsRecetaInsumo.DataSet.Append;
        dsRecetaInsumo.DataSet.FieldByName('IdReceta').AsInteger := IdReceta;
        dsRecetaInsumo.DataSet.FieldByName('IdRecetaPartida').AsInteger := 0;

        IdInsumo.SetFocus;
      end
      else
      begin
        Resultado := mrOk;
        Close;
      end;
    Finally
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

procedure TFrmRecetaInsumo.IdInsumoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    66, 113: if ((Key = 66) and (ssCtrl in Shift)) or (Key = 113) then
      BuscarInsumo(0); {F2 o <CTRL> + B}
    116: dsInsumo.DataSet.Refresh; {F5}
  end;
end;

procedure TFrmRecetaInsumo.ActualizarPartidas;
var
  Cursor: TCursor;
begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      dsRecetaInsumoLista.DataSet.Refresh;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmRecetaInsumo.BuscarInsumo(Tipo: Byte);
var
  PanelBuscar,
  PanelEdit: TPanel;
  EditBuscar: TEdit;
  ButtonCancel: TAdvGlowButton;
  LabelBuscar: TJvLabel;
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
  GridBuscar.Options := [dgAlwaysShowEditor, dgRowSelect];

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
  ButtonOk.Images := ClientModule1.PngImageList1;
  ButtonOk.ImageIndex := 1;

  ButtonCancel := TAdvGlowButton.Create(PanelBuscar);
  ButtonCancel.Name := 'ButtonCancel';
  ButtonCancel.Caption := '&Cancelar';
  ButtonCancel.Align := alRight;
  ButtonCancel.Cancel := True;
  ButtonCancel.OnClick := btnBuscarCancelClick;
  ButtonCancel.Parent := PanelBuscar;
  ButtonCancel.Images := ClientModule1.PngImageList1;
  ButtonCancel.ImageIndex := 8;

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
    case Tipo of
      0: begin
           // Si se debe asignar el registro al datos que se estaba buscando
           Perform(WM_NEXTDLGCTL, 0, 0);
           dsRecetaInsumo.DataSet.FieldByName('IdInsumo').AsInteger := cdBuscarInsumo.FieldByName('IdInsumo').AsInteger;
         end;
      1: begin
           // Si se debe asignar el valor que se está capturando
         end;
      2: begin
           // Si se deben asignar todos los valores
         end;
    end;
end;

procedure TFrmRecetaInsumo.FrmBuscarClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFrmRecetaInsumo.btnBuscarOkClick(Sender: TObject);
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

procedure TFrmRecetaInsumo.btnBuscarCancelClick(Sender: TObject);
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

procedure TFrmRecetaInsumo.EditBuscarKeyDown(Sender: TObject; var Key: Word;
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

end.
