unit UTFrmRegistroPeriodoConsumoRecetas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, Outline, JvExControls, JvLabel, DB, StdCtrls, Mask,
  DBCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, JvExMask,
  JvSpin, JvDBSpinEdit, DBClient, JvComponentBase, JvBalloonHint, AdvGlowButton,
  ClientModuleUnit1, URegistro, UInteliDialog, DBGrids;

type
  TFrmRegistroPeriodoConsumoRecetas = class(TForm)
    Panel1: TPanel;
    dsRegistroConsumo: TDataSource;
    dsRegistroConsumoInsumo: TDataSource;
    dsReceta: TDataSource;
    dsRecetaInsumoLista: TDataSource;
    JvLabel2: TJvLabel;
    Fecha: TDBEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    IdReceta: TDBLookupComboBox;
    JvLabel3: TJvLabel;
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    JvLabel6: TJvLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    btnNuevo: TAdvGlowButton;
    btnAceptar: TAdvGlowButton;
    btnTerminar: TAdvGlowButton;
    Aviso: TJvBalloonHint;
    cdBuscarInsumo: TClientDataSet;
    dsBuscarInsumo: TDataSource;
    JvLabel7: TJvLabel;
    Personas: TDBEdit;
    procedure btnAceptarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnTerminarClick(Sender: TObject);
    procedure IdRecetaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    Resultado: TModalResult;
    LocResult: TModalResult;
    FrmBuscar: TForm;
    GridBuscar: TDBGrid;
    ButtonOk: TAdvGlowButton;
    procedure GrabarInsumo(pModo: Byte);
    procedure BuscarInsumo;
    procedure EditBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnBuscarOkClick(Sender: TObject);
    procedure btnBuscarCancelClick(Sender: TObject);
    procedure GridBuscarDblClick(Sender: TObject);
    procedure GridBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmBuscarClose(Sender: TObject; var Action: TCloseAction);
  public
    IdRegistroConsumo: Integer;
  end;

var
  FrmRegistroPeriodoConsumoRecetas: TFrmRegistroPeriodoConsumoRecetas;

implementation

{$R *.dfm}

procedure TFrmRegistroPeriodoConsumoRecetas.btnAceptarClick(Sender: TObject);
begin
  GrabarInsumo(1);
end;

procedure TFrmRegistroPeriodoConsumoRecetas.btnNuevoClick(Sender: TObject);
begin
  GrabarInsumo(0);
end;

procedure TFrmRegistroPeriodoConsumoRecetas.btnTerminarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmRegistroPeriodoConsumoRecetas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SetRegistry('\Ventanas', '\' + Self.Name, 'Top', IntToStr(Self.Top));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Left', IntToStr(Self.Left));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Width', IntToStr(Self.Width));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Height', IntToStr(Self.Height));

  dsRegistroConsumoInsumo.DataSet.Cancel;
  Action := caFree;
end;

procedure TFrmRegistroPeriodoConsumoRecetas.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  Try
    Self.Top := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Top'));
  Except
    ;
  End;

  Try
    Self.Left := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Left'));
  Except
    ;
  End;

  Try
    Self.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Width'));
  Except
    ;
  End;

  Try
    Self.Height := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Height'));
  Except
    ;
  End;

  Resultado := mrCancel;
end;

procedure TFrmRegistroPeriodoConsumoRecetas.GrabarInsumo(pModo: Byte);
var
  Cursor: TCursor;
begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      dsRegistroConsumoInsumo.DataSet.Post;
      TClientDataSet(dsRegistroConsumoInsumo.DataSet).ApplyUpdates(-1);

      dsRecetaInsumoLista.DataSet.Refresh;

      if pModo = 0 then
      begin
        Aviso.ActivateHint(btnNuevo, 'El ingrediente a ha sido registrado correctamente', 'Aviso', 2000);

        dsRegistroConsumoInsumo.DataSet.Append;

        dsRegistroConsumoInsumo.DataSet.FieldByName('IdRegistroConsumo').AsInteger := IdRegistroConsumo;
        dsRegistroConsumoInsumo.DataSet.FieldByName('IdRegistroConsumoDatos').AsInteger := 0;

        IdReceta.SetFocus;
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

procedure TFrmRegistroPeriodoConsumoRecetas.IdRecetaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    66, 113: if ((Key = 66) and (ssCtrl in Shift)) or (Key = 113) then
      BuscarInsumo; {F2 o <CTRL> + B}
    116: dsReceta.DataSet.Refresh; {F5}
  end;
end;

procedure TFrmRegistroPeriodoConsumoRecetas.BuscarInsumo;
var
  PanelBuscar,
  PanelEdit: TPanel;
  EditBuscar: TEdit;
  ButtonCancel: TAdvGlowButton;
  LabelBuscar: TJvLabel;
begin
  FrmBuscar := TForm.Create(Self);
  FrmBuscar.Name := 'BuscarReceta';
  FrmBuscar.Caption := 'Localizar Receta';
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
    FieldName := 'CodigoReceta';

    Try
      Width := StrToInt(VarRegistry('\Ventanas', '\' + self.Name + '\GridBuscar', 'Column0'));
    Except
      ;
    End;
  end;

  // Agregar la columna del Nombre
  With GridBuscar.Columns.Add do
  begin
    Title.Caption := 'Nombre';
    FieldName := 'NombreReceta';

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
    if not CrearConjunto(cdBuscarInsumo, 'cmt_receta_buscar', ccSelect) then
      raise InteligentException.CreateByCode(5, ['Busqueda de Recetas']);

  cdBuscarInsumo.Close;

  if (FrmBuscar.ShowModal = mrOk) and (cdBuscarInsumo.Active) and (cdBuscarInsumo.RecordCount > 0) then
  begin
    Perform(WM_NEXTDLGCTL, 0, 0);
    dsRegistroConsumoInsumo.DataSet.FieldByName('IdReceta').AsInteger := cdBuscarInsumo.FieldByName('IdReceta').AsInteger;
  end;
end;

procedure TFrmRegistroPeriodoConsumoRecetas.EditBuscarKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmRegistroPeriodoConsumoRecetas.btnBuscarOkClick(Sender: TObject);
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

procedure TFrmRegistroPeriodoConsumoRecetas.btnBuscarCancelClick(Sender: TObject);
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

procedure TFrmRegistroPeriodoConsumoRecetas.GridBuscarDblClick(Sender: TObject);
begin
  if (cdBuscarInsumo.Active) and (cdBuscarInsumo.RecordCount > 0) then
    ButtonOk.Click;
end;

procedure TFrmRegistroPeriodoConsumoRecetas.GridBuscarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 13) and (cdBuscarInsumo.Active) and (cdBuscarInsumo.RecordCount > 0) then
    ButtonOk.Click;
end;

procedure TFrmRegistroPeriodoConsumoRecetas.FrmBuscarClose(Sender: TObject; var Action: TCloseAction);
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

end.
