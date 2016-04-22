unit UFrmDatosImpuestosxInsumos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxLayoutContainer, dxLayoutControl,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  StdCtrls, cxRadioGroup, cxButtonEdit, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Menus,
  cxButtons, ExtCtrls, DB, DBClient, ClientModuleUnit1, UInteliDialog;

type
  TFrmDatosImpuestosxinsumos = class(TForm)
    dxLayControl1Group_Root: TdxLayoutGroup;
    dxLayControl1: TdxLayoutControl;
    cbbImpuestos: TcxDBLookupComboBox;
    lyLayControl1Item1: TdxLayoutItem;
    rb1: TcxRadioButton;
    lyLayControl1Item3: TdxLayoutItem;
    rb2: TcxRadioButton;
    lyLayControl1Item4: TdxLayoutItem;
    pnl1: TPanel;
    btnGuardar: TcxButton;
    btn2: TcxButton;
    btn3: TcxButton;
    cdImpuestos: TClientDataSet;
    dsImpuestos: TDataSource;
    cdGrupo: TClientDataSet;
    dsGrupo: TDataSource;
    btnInsumo: TcxButtonEdit;
    lyInsumo: TdxLayoutItem;
    dxLayControl1Group1: TdxLayoutAutoCreatedGroup;
    cdInsumo: TClientDataSet;
    dsInsumo: TDataSource;
    cdUpt: TClientDataSet;
    dsUpt: TDataSource;
    cbbGrupo: TcxDBLookupComboBox;
    lyGrupo: TdxLayoutItem;
    dxLayControl1Group2: TdxLayoutAutoCreatedGroup;
    procedure btnInsumoEnter(Sender: TObject);
    procedure btnInsumoExit(Sender: TObject);
    procedure btnInsumoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure rb1Click(Sender: TObject);
    procedure rb2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnInsumoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    TextoOriginal: String;
    procedure agregarinsumo;
    { Private declarations }
  public
    id, idInsumo: integer;
    { Public declarations }
  end;

var
  FrmDatosImpuestosxinsumos: TFrmDatosImpuestosxinsumos;

implementation

uses UTFrmSelInsumo;

{$R *.dfm}

procedure TFrmDatosImpuestosxinsumos.agregarinsumo;
var
  Valor: String;
  IdRegistroMovimientoGeneralPartida: LongInt;
begin
  try
    if Trim(btnInsumo.Text) = '' then
      Valor := '-1'
    else
      Valor := Trim(btnInsumo.Text);

    if Not CargarDatosFiltrados(TClientDataSet(dsInsumo.DataSet), 'Texto', [Valor]) then
      raise InteligentException.CreateByCode(6, ['Insumos', Valor, 'Texto']);
    if dsInsumo.DataSet.Active then
      dsInsumo.DataSet.Refresh
    else
      dsInsumo.DataSet.Open;

    if (dsInsumo.DataSet.RecordCount > 1) or ((dsInsumo.DataSet.RecordCount = 1) and (dsInsumo.DataSet.FieldByName('Cta').AsInteger = 0)) then
    begin
      Application.CreateForm(TFrmSelInsumo, FrmSelInsumo);
      try
        FrmSelInsumo.Caption := 'Seleccionar Insumo';
        FrmSelInsumo.tvInsumos.DataController.DataSource := dsInsumo;
        FrmSelInsumo.tvInsumos2.DataController.DataSource := dsInsumo;
        FrmSelInsumo.pTexto := btnInsumo.Text;
        if FrmSelInsumo.ShowModal = mrOk then
        begin
          cdupt.fieldByName('IdInsumo').asinteger := cdInsumo.fieldByname('IdInsumo').asinteger;
          btnguardar.setfocus;
        end
        else
          dsInsumo.DataSet.Close;
      finally
        FrmSelInsumo.Destroy;
      end;
    end;

    if (dsInsumo.DataSet.RecordCount = 1) and (dsInsumo.DataSet.FieldByName('Cta').AsInteger = 1) then
      //IdRegistroMovimientoGeneralPartida := AgregaPartida;
  except
    on e:InteligentException do
    begin
      dsInsumo.DataSet.Close;
      InteliDialog.ShowModal(e.Title, e.Message, mtError, [mbOk], 0);
    end;

    on e:Exception do
    begin
      dsInsumo.DataSet.Close;
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmDatosImpuestosxinsumos.btnInsumoEnter(Sender: TObject);
begin
  btnInsumo.Text := TextoOriginal;
end;

procedure TFrmDatosImpuestosxinsumos.btnInsumoExit(Sender: TObject);
begin
  TextoOriginal := btnInsumo.Text;
  if dsInsumo.DataSet.Active and (dsInsumo.Dataset.RecordCount > 0) then
    btnInsumo.Text := dsInsumo.DataSet.FieldByName('Nombreinsumo').AsString;
end;

procedure TFrmDatosImpuestosxinsumos.btnInsumoKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
    AgregarInsumo;

  end
  else
    dsInsumo.DataSet.Close;
end;

procedure TFrmDatosImpuestosxinsumos.btnInsumoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  AgregarInsumo;
end;

procedure TFrmDatosImpuestosxinsumos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  eliminarconjunto([cdinsumo, cdGrupo, cdImpuestos, cdUpt]);
  action := cafree;
end;

procedure TFrmDatosImpuestosxinsumos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;

  if TForm(Sender).ModalResult = mrOk then
  begin
    CanClose := False;

    try
      if length(trim(cbbImpuestos.Text)) = 0 then
      begin
        cbbImpuestos.setFocus;
        raise inteligentexception.createBycode(18, ['Impuesto']);
      end;

      if rb1.checked then
      begin
        if cdUpt.fieldByName('IdInsumo').isNull then
        begin
          if btnInsumo.CanFocus then
            btnInsumo.setFocus;
          raise inteligentexception.createBycode(18, ['Insumo']);

        end;
      end
      else
      begin
        if cdUpt.fieldByName('IdTipoInsumo').isNUll then
        begin
          if cbbGrupo.CanFocus then
            cbbGrupo.setFocus;
          raise inteligentexception.createBycode(18, ['Tipo Insumo']);
        end;
      end;

      if id = -9 then
        cdupt.FieldByName('idImpuestoxinsumo').AsInteger := 0;
      cdUpt.Post;
      cdUpt.ApplyUpdates(-1);

      CanClose := True;
    Except
      on e:InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e:Exception do
      begin
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
        if cdUpt.State in [dsEdit, dsInsert] then
          cdUpt.Cancel;
        CanClose := True;
      end;
    end;
  end
  else
  begin
    if cdUpt.Active then
      cdUpt.Cancel;
  end;

end;

procedure TFrmDatosImpuestosxinsumos.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;


      if Not CrearConjunto(cdInsumo, 'cmt_insumo_find', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Insumos']);

      if Not CrearConjunto(cdGrupo, 'cmt_tipoinsumo', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['tipo Insumos']);

      if Not CrearConjunto(cdImpuestos, 'nuc_impuesto', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Impuestos']);

      if Not CrearConjunto(cdUpt , 'cmt_impuestoxinsumo', ccupdate) then
        raise InteligentException.CreateByCode(5, ['impuestos x insumo']);



      if not cargarDatosFiltrados(cdGrupo, 'IdTipoInsumo', [-1]) then
        raise InteligentException.CreateByCode(5, ['tipo Insumos']);

      if not cargarDatosFiltrados(cdImpuestos, 'IdImpuesto', [-1]) then
        raise InteligentException.CreateByCode(5, ['Impuestos']);

      if not cargarDatosFiltrados(cdupt, 'IdImpuestoxInsumo', [id]) then
        raise InteligentException.CreateByCode(5, ['tipo Insumos']);


      cdgrupo.Open;
      cdImpuestos.Open;
      cdUpt.Open;

      if cdupt.active and (cdupt.recordCount = 0) then
      begin
        cdUpt.Append;
        rb1Click(nil);
      end;

      if cdupt.active and (cdupt.recordCount = 1) then
      begin
        cdUpt.Edit;

        if not cargarDatosFiltrados(cdInsumo, 'IdInsumo', [cdupt.fieldByName('idInsumo').asinteger]) then
          raise InteligentException.CreateByCode(5, ['tipo Insumos']);

        cdInsumo.open;

        btnInsumo.Text := dsInsumo.DataSet.FieldByName('Nombreinsumo').AsString;

        rb1.checked := Not cdupt.fieldByName('IdInsumo').isNUll;

        if cdupt.fieldByName('IdInsumo').isNUll then

          rb2Click(nil)
        else
          rb1Click(nil);
      end;

      if cdupt.active and (cdupt.recordCount > 1) then
        raise InteligentException.create('Hay Pedos!');

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

procedure TFrmDatosImpuestosxinsumos.rb1Click(Sender: TObject);
begin
  lygrupo.enabled := Not rb1.Checked;
  lyInsumo.Enabled := rb1.Checked;
  if rb1.checked then
  begin
    cdUpt.fieldByName('IdTipoInsumo').clear;
  end
  else
  begin
    cdUpt.fieldByName('IdInsumo').clear;
  end;
end;

procedure TFrmDatosImpuestosxinsumos.rb2Click(Sender: TObject);
begin
  rb1Click(nil);
end;

end.
