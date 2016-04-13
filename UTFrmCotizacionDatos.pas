unit UTFrmCotizacionDatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, JvExControls, JvLabel, StdCtrls, Mask, DBCtrls, DB,
  AdvGlowButton, ClientModuleUnit1, URegistro, UInteliDialog, DBClient,
  JvExMask, JvToolEdit, JvDBControls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TFrmCotizacionDatos = class(TForm)
    JvLabel1: TJvLabel;
    Panel1: TPanel;
    CodigoCotizacion: TDBEdit;
    dsCotizacionUpt: TDataSource;
    btnOk: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    Fecha: TJvDBDateEdit;
    JvLabel2: TJvLabel;
    IdElabora: TDBLookupComboBox;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    IdAutoriza: TDBLookupComboBox;
    JvLabel5: TJvLabel;
    IdCliente: TEdit;
    sNombreCorto: TDBText;
    sRazonSocial: TDBText;
    dsClientes: TDataSource;
    lblGuion: TJvLabel;
    Comentarios: TDBMemo;
    JvLabel6: TJvLabel;
    dsElabora: TDataSource;
    dsAutoriza: TDataSource;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure IdClienteKeyPress(Sender: TObject; var Key: Char);
    procedure dsClientesDataChange(Sender: TObject; Field: TField);
    procedure IdClienteEnter(Sender: TObject);
    procedure IdClienteExit(Sender: TObject);
  private
    TextoOriginal: String;
    procedure GrabarElPedo;
  public
    { Public declarations }
  end;

var
  FrmCotizacionDatos: TFrmCotizacionDatos;

implementation

{$R *.dfm}

Uses
  UTFrmSeleccionarCliente;

procedure TFrmCotizacionDatos.dsClientesDataChange(Sender: TObject;
  Field: TField);
begin
  lblGuion.Left := sNombreCorto.Left + sNombreCorto.Width + 2;
  sRazonSocial.Left := lblGuion.Left + lblGuion.Width + 2;
end;

procedure TFrmCotizacionDatos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  cClose: Boolean;
begin
  cClose := True;

  try
    try
      if ModalResult = mrOk then
      begin
        GrabarElPedo;
      end
      else
      begin
        case InteliDialog.ShowModal('Grabar captura', 'Los datos capturados no han sido grabados.' + #10 + #10 + '¿Desea grabarlos en este momento?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
          mrYes: begin TClientDataSet(dsCotizacionUpt.DataSet).Post; TClientDataSet(dsCotizacionUpt.DataSet).ApplyUpdates(-1); end;
          mrNo: dsCotizacionUpt.DataSet.Cancel;
          mrCancel: cClose := False;
        end;
      end;
    finally
      CanClose := cClose;
    end;
  except
    on e:InteligentWarning do
      CanClose := False;

    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmCotizacionDatos.GrabarElPedo;
var
  Obj: TWinControl;
  Id: Integer;
begin
  try
    // Verificar la captura de datos
    Obj := Nil;
    if Trim(CodigoCotizacion.Text) = '' then
    begin
      Obj := CodigoCotizacion;
      raise InteligentWarning.CreateByCode(18, ['Código Cotización']);
    end;

    // Verificar que el código no se duplique en la base de datos
    if VerificaCodigo(TClientDataSet(dsCotizacionUpt.DataSet), 'CodigoCotizacion', CodigoCotizacion.Text, 'IdCotizacion', -9) then
    begin
      Obj := CodigoCotizacion;
      raise InteligentWarning.CreateByCode(17, ['Cotizaciones', CodigoCotizacion.Text]);
    end;

    // Verificar que se haya seleccionado un cliente
    if dsClientes.DataSet.Active then
      dsCotizacionUpt.DataSet.FieldByName('IdCliente').AsInteger := dsClientes.DataSet.FieldByName('iIdEmpresa').AsInteger
    else
    begin
      Obj := IdCliente;
      raise InteligentWarning.CreateByCode(18, ['Cliente']);
    end;

    if IdElabora.KeyValue = Null then
    begin
      Obj := IdElabora;
      raise InteligentWarning.CreateByCode(18, ['Elabora']);
    end;

    if IdAutoriza.KeyValue = Null then
    begin
      Obj := IdAutoriza;
      raise InteligentWarning.CreateByCode(18, ['Autoriza']);
    end;

    TClientDataSet(dsCotizacionUpt.DataSet).Post;
    TClientDataSet(dsCotizacionUpt.DataSet).ApplyUpdates(-1);
    Id := UltimoId;
    if Not CargarDatosFiltrados(TClientDataSet(dsCotizacionUpt.DataSet), 'IdCotizacion', [Id]) then
      raise InteligentException.CreateByCode(13, [CodigoCotizacion.Text, 'Cotización']);
    dsCotizacionUpt.DataSet.Refresh;
  except
    on e:InteligentWarning do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      if Assigned(Obj) then
        Obj.SetFocus;
      raise;
    end;

    on e:Exception do
    begin
      dsCotizacionUpt.DataSet.Cancel;
      raise;
    end;
  end;
end;

procedure TFrmCotizacionDatos.IdClienteEnter(Sender: TObject);
begin
  IdCliente.Text := TextoOriginal;
end;

procedure TFrmCotizacionDatos.IdClienteExit(Sender: TObject);
begin
  TextoOriginal := IdCliente.Text;
  if dsClientes.DataSet.Active and (dsClientes.Dataset.RecordCount > 0) then
    IdCliente.Text := dsClientes.DataSet.FieldByName('sNombreCorto').AsString + ' - ' + dsClientes.DataSet.FieldByName('sRazonSocial').AsString;
end;

procedure TFrmCotizacionDatos.IdClienteKeyPress(Sender: TObject; var Key: Char);
var
  Valor: String;
begin
  if Key = #13 then
  begin
    try
      // Verificar por código o parte del texto
      if Trim(IdCliente.Text) = '' then
        Valor := '-1'
      else
        Valor := Trim(IdCliente.Text);

      if Not CargarDatosFiltrados(TClientDataSet(dsClientes.DataSet), 'Texto', [Valor]) then
        raise InteligentException.CreateByCode(6, ['Clientes', Valor, 'Texto']);
      if dsClientes.DataSet.Active then
        dsClientes.DataSet.Refresh
      else
        dsClientes.DataSet.Open;

      if (dsClientes.DataSet.RecordCount > 1) or ((dsClientes.DataSet.RecordCount = 1) and (dsClientes.DataSet.FieldByName('Cta').AsInteger = 0)) then
      begin
        // Poner la ventana de selección de datos multiples
        Application.CreateForm(TFrmSeleccionarCliente, FrmSeleccionarCliente);
        try
          FrmSeleccionarCliente.Caption := 'Seleccionar Cliente';
          FrmSeleccionarCliente.tvClientes.DataController.DataSource := dsClientes;
          FrmSeleccionarCliente.tvClientes2.DataController.DataSource := dsClientes;
          FrmSeleccionarCliente.pTexto := IdCliente.Text;
          if FrmSeleccionarCliente.ShowModal = mrOk then
            Comentarios.SetFocus
          else
            dsClientes.DataSet.Close;
        finally
          FrmSeleccionarCliente.Destroy;
        end;
      end;
    except
      on e:InteligentException do
      begin
        dsClientes.DataSet.Close;
        InteliDialog.ShowModal(e.Title, e.Message, mtError, [mbOk], 0);
      end;

      on e:Exception do
      begin
        dsClientes.DataSet.Close;
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      end;
    end;
  end
  else
    dsClientes.DataSet.Close;
end;

end.
