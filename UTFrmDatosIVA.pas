unit UTFrmDatosIVA;

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
  cxGroupBox, JvToolEdit, JvDBControls, JvExMask, JvBaseEdits, Mask, DBCtrls,
  JvExControls, JvLabel, ClientModuleUnit1, UInteliDialog, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxCalc;

type
  TFrmDatosIVA = class(TFrmDatosCatalogo)
    cdTipoImpuesto: TClientDataSet;
    dsTipoImpuesto: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    JvLabel1: TJvLabel;
    JvLabel4: TJvLabel;
    CodigoImpuesto: TDBEdit;
    IdTipoImpuesto: TDBLookupComboBox;
    Panel3: TPanel;
    TituloImpuesto: TDBEdit;
    JvLabel2: TJvLabel;
    Panel4: TPanel;
    cxGrid1: TcxGrid;
    tvAplicacionImpuesto: TcxGridDBTableView;
    ColAplicacion: TcxGridDBColumn;
    ColImporte: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel5: TPanel;
    btnNuevo: TButton;
    btnEditar: TButton;
    btnEliminar: TButton;
    cdAplicacion: TClientDataSet;
    dsAplicacion: TDataSource;
    ColsNombre: TcxGridDBColumn;
    cdUnidad: TClientDataSet;
    dsUnidad: TDataSource;
    JvLabel3: TJvLabel;
    dblkcbbIdTipoImpuesto: TDBLookupComboBox;
    cdSAT: TClientDataSet;
    dsSAT: TDataSource;
    procedure BtnAddNewClick(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNuevoClick(Sender: TObject);
    procedure FormaEditCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnEditarClick(Sender: TObject);
    procedure tvAplicacionImpuestoCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnEliminarClick(Sender: TObject);
    procedure CheckBoxClick(Sender: TObject);
  private
    cdBuscar: TClientDataSet;
    procedure VerificaGrabar;
    procedure CrearFormulario;
  public
    { Public declarations }
  end;

var
  FrmDatosIVA: TFrmDatosIVA;

implementation

{$R *.dfm}

procedure TFrmDatosIVA.BtnAddNewClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(CodigoImpuesto, 'Código') = False then
    exit;

  if ClientModule1.VerificaVacio(TituloImpuesto, 'Título') = False then
    exit;

  if IdTipoImpuesto.KeyValue = Null then
  begin
    InteliDialog.ShowModal('Error de captura', 'Debe especificar un tipo de Impuesto', mtWarning, [mbOk], 0);
    exit;
  end;

  inherited;

  CodigoImpuesto.Text := '';
  IdTipoImpuesto.KeyValue := Null;
  TituloImpuesto.Text := '';
end;

procedure TFrmDatosIVA.BtnRecClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(CodigoImpuesto, 'Código') = False then
    exit;

  if ClientModule1.VerificaVacio(TituloImpuesto, 'Título') = False then
    exit;

  if IdTipoImpuesto.KeyValue = Null then
  begin
    InteliDialog.ShowModal('Error de captura', 'Debe especificar un tipo de Impuesto', mtWarning, [mbOk], 0);
    exit;
  end;

  inherited;
end;

procedure TFrmDatosIVA.btnEditarClick(Sender: TObject);
begin
  if cdAplicacion.RecordCount > 0 then
  begin
    try
      cdAplicacion.Edit;
      CrearFormulario;
    except
      on e:InteligentException do
      begin
        if cdAplicacion.State = dsEdit then
          cdAplicacion.Cancel;
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      end;

      on e:Exception do
      begin
        if cdAplicacion.State = dsEdit then
          cdAplicacion.Cancel;
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      end;
    end;
  end;
end;

procedure TFrmDatosIVA.btnEliminarClick(Sender: TObject);
begin
  if cdAplicacion.RecordCount > 0 then
  begin
    try
      if InteliDialog.ShowModal('Eliminar registro de Aplicación', '¿Está seguro que desea eliminar este registro de Aplicación de impuestos?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        EliminarRegistro(cdAplicacion, [cdAplicacion.FieldByName('IdAplicacionImpuesto').AsInteger]);
        cdAplicacion.Refresh;
      end;
    except
      on e:InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e:Exception do
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmDatosIVA.btnNuevoClick(Sender: TObject);
begin
  try
    VerificaGrabar;
    cdAplicacion.Append;
    cdAplicacion.FieldByName('IdAplicacionImpuesto').AsInteger := 0;
    cdAplicacion.FieldByName('IdImpuesto').AsInteger := dsDatos.DataSet.FieldByName('IdImpuesto').AsInteger;
    cdAplicacion.FieldByName('Aplicacion').AsDateTime := Now;
    cdAplicacion.FieldByName('Importe').AsFloat := 0;
    cdAplicacion.FieldByName('iIdUnidad').AsInteger := cdUnidad.FieldByName('iIdUnidad').AsInteger;
    CrearFormulario;
  except
    on e:InteligentException do
    begin
      if cdAplicacion.State = dsInsert then
        cdAplicacion.Cancel;
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:Exception do
    begin
      if cdAplicacion.State = dsInsert then
        cdAplicacion.Cancel;
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmDatosIVA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EliminarConjunto([cdTipoImpuesto, cdBuscar, cdUnidad]);

  inherited;
end;

procedure TFrmDatosIVA.FormaEditCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := True;

  if TForm(Sender).ModalResult = mrOk then
  begin
    CanClose := False;

    try
      // Verificar que esta fecha no exista
      if Not Assigned(cdBuscar) then
      begin
        cdBuscar := TClientDataSet.Create(Self);
        if Not CrearConjunto(cdBuscar, 'nuc_aplicacionimpuesto', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Aplicación de Impuestos']);
      end;

      if Not CargarDatosFiltrados(cdBuscar, 'IdImpuesto,Aplicacion', [dsDatos.DataSet.FieldByName('IdImpuesto').AsInteger, ClientModule1.DatetoStrSql(TJvDBDateEdit(TForm(Sender).Controls[2]).Date)]) then
        raise InteligentException.CreateByCode(6, ['Aplicación de Impuestos', dsDatos.DataSet.FieldByName('IdImpuesto').AsString + ' / ' + ClientModule1.DatetoStrSql(TJvDBDateEdit(TForm(Sender).Controls[2]).Date), 'Id. Impuesto / Aplicación']);

      if CuantosRegistros(cdBuscar) > 0 then
        raise InteligentException.CreateByCode(8, ['El registro de Impuesto para ' + dsDatos.DataSet.FieldByName('TituloImpuesto').AsString + ' con fecha ' + ClientModule1.DatetoStrSql(TJvDBDateEdit(TForm(Sender).Controls[2]).Date) + ' ya ha sido dado de alta.']);

      // Validar los datos capturados
      if TJvDBCalcEdit(TForm(Sender).Controls[3]).Value <= 0 then
      begin
        TJvDBCalcEdit(TForm(Sender).Controls[3]).SetFocus;
        raise InteligentException.CreateByCode(18, ['Impuesto']);
      end;

      if TCheckBox(TForm(Sender).Controls[3]).Checked then
        cdAplicacion.FieldByName('iIdUnidad').Clear;

      // Grabar el pedo
      cdAplicacion.Post;
      cdAplicacion.ApplyUpdates(-1);

      CanClose := True;
    Except
      on e:InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e:Exception do
      begin
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
        if cdAplicacion.State in [dsEdit, dsInsert] then
          cdAplicacion.Cancel;
        CanClose := True;
      end;
    end;
  end
  else
  begin
    if cdAplicacion.Active then
      cdAplicacion.Cancel;
  end;
end;

procedure TFrmDatosIVA.FormShow(Sender: TObject);
begin
  try
    if Not CrearConjunto(cdTipoImpuesto, 'nuc_tipoimpuesto', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Tipos de Impuesto']);

    if Not CrearConjunto(cdAplicacion, 'nuc_aplicacionimpuesto', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Aplicación de Impuestos']);

    if Not CrearConjunto(cdUnidad, 'nuc_unidades', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Unidades de Medida']);

    if Not CrearConjunto(cdSAT, 'nuc_impuestosat', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Catálogo de impuestos del SAT']);

    cdSAT.Open;


    cdTipoImpuesto.Open;
    if cdTipoImpuesto.RecordCount = 0 then
      raise InteligentException.CreateByCode(22, ['Tipos de Impuesto']);

    cdUnidad.Open;
    if cdUnidad.RecordCount = 0 then
      raise InteligentException.CreateByCode(22, ['Unidades de Medida']);

    if dsDatos.DataSet.State = dsEdit then
    begin
      if Not CargarDatosFiltrados(cdAplicacion, 'IdImpuesto', [dsDatos.DataSet.FieldByName('IdImpuesto').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Aplicación de Impuestos', dsDatos.DataSet.FieldByName('IdImpuesto').AsInteger, 'Id. Impuesto']);
    end
    else
    begin
      if Not CargarDatosFiltrados(cdAplicacion, 'IdImpuesto', [-9]) then
        raise InteligentException.CreateByCode(16, ['Aplicación de Impuestos']);
    end;

    cdAplicacion.Open;
    btnEditar.Enabled := cdAplicacion.RecordCount > 0;
    btnEliminar.Enabled := cdAplicacion.RecordCount > 0;

    inherited;

    CodigoImpuesto.SetFocus;
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

procedure TFrmDatosIVA.tvAplicacionImpuestoCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnEditar.Click;
end;

procedure TFrmDatosIVA.VerificaGrabar;
var
  Id: Integer;
begin
  // Verificar si se debe grabar primero este registro
  if dsDatos.DataSet.State = dsInsert then
  begin
    if InteliDialog.ShowModal('Grabar registro', 'Para poder agregar fechas de aplicación de impuestos es necesario grabar la información capturada.' + #10 + #10 + '¿Desea grabar el registro en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      // Verificar si los datos son factibles de grabar
      if Trim(CodigoImpuesto.Text) = '' then
        raise InteligentException.CreateByCode(18, ['Código']);

      if Trim(TituloImpuesto.Text) = '' then
        raise InteligentException.CreateByCode(18, ['Título']);

      if IdTipoImpuesto.KeyValue = Null then
        raise InteligentException.CreateByCode(18, ['Tipo de Impuesto']);

      // Verificar si el Código es factible de registrar
      if VerificaCodigo(TClientDataSet(dsDatos.DataSet), 'CodigoImpuesto', CodigoImpuesto.Text, 'IdImpuesto', -9) then
        raise InteligentException.CreateByCode(17, ['Impuestos', CodigoImpuesto.Text]);

      // Si todo bien, entonces proceder a grabar el pedo
      try
        dsDatos.DataSet.Post;
        TClientDataSet(dsDatos.DataSet).ApplyUpdates(-1);
        Id := UltimoId;

        if Not CargarDatosFiltrados(TClientDataSet(dsDatos.DataSet), 'IdImpuesto', [Id]) then
          raise InteligentException.CreateByCode(6, ['Impuestos']);
        dsDatos.DataSet.Refresh;

        if dsDatos.DataSet.RecordCount = 0 then
          raise InteligentException.CreateByCode(27, ['Impuestos', CodigoImpuesto.Text]);

        dsDatos.DataSet.Edit;
        CodigoImpuesto.SetFocus;
      except
        on e:InteligentException do
          InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

        on e:Exception do
          InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      end;
    end;
  end;
end;

procedure TFrmDatosIVA.CheckBoxClick(Sender: TObject);
begin
  TWinControl(Sender).Parent.Controls[2].Visible := Not TCheckBox(Sender).Checked;
  TWinControl(Sender).Parent.Controls[6].Visible := Not TCheckBox(Sender).Checked;
end;

procedure TFrmDatosIVA.CrearFormulario;
var
  FormaEdit: TForm;
begin
  FormaEdit := TForm.Create(Self);
  try
    FormaEdit.Position := poOwnerFormCenter;
    FormaEdit.BorderStyle := bsDialog;
    FormaEdit.Height := 185;
    FormaEdit.Width := 320;
    FormaEdit.Caption := 'Aplicación de Impuesto';
    FormaEdit.OnCloseQuery := FormaEditCloseQuery;

    FormaEdit.InsertControl(TJvLabel.Create(FormaEdit));
    TJvLabel(FormaEdit.Controls[0]).Top := 15;
    TJvLabel(FormaEdit.Controls[0]).Left := 20;
    TJvLabel(FormaEdit.Controls[0]).Caption := 'Aplicación:';

    FormaEdit.InsertControl(TJvLabel.Create(FormaEdit));
    TJvLabel(FormaEdit.Controls[1]).Top := 40;
    TJvLabel(FormaEdit.Controls[1]).Left := 21;
    TJvLabel(FormaEdit.Controls[1]).Caption := 'Impuesto:';

    FormaEdit.InsertControl(TJvLabel.Create(FormaEdit));
    TJvLabel(FormaEdit.Controls[2]).Top := 65;
    TJvLabel(FormaEdit.Controls[2]).Left := 10;
    TJvLabel(FormaEdit.Controls[2]).Caption := 'Pesos por cada:';
    TJvLabel(FormaEdit.Controls[2]).Visible := False;

    FormaEdit.InsertControl(TJvDBDateEdit.Create(FormaEdit));
    TJvDBDateEdit(FormaEdit.Controls[3]).Top := 15;
    TJvDBDateEdit(FormaEdit.Controls[3]).Left := 75;
    TJvDBDateEdit(FormaEdit.Controls[3]).Width := 100;
    TJvDBDateEdit(FormaEdit.Controls[3]).DataField := 'Aplicacion';
    TJvDBDateEdit(FormaEdit.Controls[3]).DataSource := dsAplicacion;

    FormaEdit.InsertControl(TJvDBCalcEdit.Create(FormaEdit));
    TJvDBCalcEdit(FormaEdit.Controls[4]).Top := 40;
    TJvDBCalcEdit(FormaEdit.Controls[4]).Left := 75;
    TJvDBCalcEdit(FormaEdit.Controls[4]).Width := 100;
    TJvDBCalcEdit(FormaEdit.Controls[4]).DecimalPlaces := 4;
    TJvDBCalcEdit(FormaEdit.Controls[4]).DisplayFormat := ',0.####';
    TJvDBCalcEdit(FormaEdit.Controls[4]).DataField := 'Importe';
    TJvDBCalcEdit(FormaEdit.Controls[4]).DataSource := dsAplicacion;

    FormaEdit.InsertControl(TCheckBox.Create(FormaEdit));
    TCheckBox(FormaEdit.Controls[5]).Alignment := taLeftJustify;
    TCheckBox(FormaEdit.Controls[5]).Top := 40;
    TCheckBox(FormaEdit.Controls[5]).Left := 180;
    TCheckBox(FormaEdit.Controls[5]).Width := 110;
    TCheckBox(FormaEdit.Controls[5]).Caption := '% sobre cantidad';
    TCheckBox(FormaEdit.Controls[5]).Checked := True;
    TCheckBox(FormaEdit.Controls[5]).Visible := True;
    TCheckBox(FormaEdit.Controls[5]).OnClick := CheckBoxClick;

    FormaEdit.InsertControl(TDBLookupComboBox.Create(FormaEdit));
    TDBLookupComboBox(FormaEdit.Controls[6]).Top := 65;
    TDBLookupComboBox(FormaEdit.Controls[6]).Left := 90;
    TDBLookupComboBox(FormaEdit.Controls[6]).Width := 200;
    TDBLookupComboBox(FormaEdit.Controls[6]).DataField := 'iIdUnidad';
    TDBLookupComboBox(FormaEdit.Controls[6]).DataSource := dsAplicacion;
    TDBLookupComboBox(FormaEdit.Controls[6]).ListSource := dsUnidad;
    TDBLookupComboBox(FormaEdit.Controls[6]).ListField := 'sNombre';
    TDBLookupComboBox(FormaEdit.Controls[6]).KeyField := 'iIdUnidad';
    TDBLookupComboBox(FormaEdit.Controls[6]).Visible := False;

    FormaEdit.InsertControl(TAdvGlowButton.Create(FormaEdit));
    TAdvGlowButton(FormaEdit.Controls[7]).Caption := '&Aceptar';
    TAdvGlowButton(FormaEdit.Controls[7]).ModalResult := mrOk;
    TAdvGlowButton(FormaEdit.Controls[7]).Top := 115;
    TAdvGlowButton(FormaEdit.Controls[7]).Left := 130;
    TAdvGlowButton(FormaEdit.Controls[7]).Height := 27;
    TAdvGlowButton(FormaEdit.Controls[7]).Width := 80;
    TAdvGlowButton(FormaEdit.Controls[7]).Images := ClientModule1.PngImageList1;
    TAdvGlowButton(FormaEdit.Controls[7]).ImageIndex := 1;
    TAdvGlowButton(FormaEdit.Controls[7]).Default := True;

    FormaEdit.InsertControl(TAdvGlowButton.Create(FormaEdit));
    TAdvGlowButton(FormaEdit.Controls[8]).Caption := '&Cancelar';
    TAdvGlowButton(FormaEdit.Controls[8]).ModalResult := mrCancel;
    TAdvGlowButton(FormaEdit.Controls[8]).Top := 115;
    TAdvGlowButton(FormaEdit.Controls[8]).Left := 214;
    TAdvGlowButton(FormaEdit.Controls[8]).Height := 27;
    TAdvGlowButton(FormaEdit.Controls[8]).Width := 80;
    TAdvGlowButton(FormaEdit.Controls[8]).Images := ClientModule1.PngImageList1;
    TAdvGlowButton(FormaEdit.Controls[8]).ImageIndex := 8;
    TAdvGlowButton(FormaEdit.Controls[8]).Cancel := True;

    FormaEdit.ShowModal;
  finally
    FormaEdit.Destroy;
  end;
end;

end.
