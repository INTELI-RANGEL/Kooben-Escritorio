unit UTFrmEstadoMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, ClientModuleUnit1, UInteliDialog, ExtCtrls,
  AdvGlowButton, StdCtrls, Mask, DBCtrls, JvExControls, JvLabel;

type
  TFecha = class
    IdEmbarcacion: LongInt;
    Fecha: TDate;
    FechaInicio: TDate;
    FechaFinal: TDate;
  end;

  TFrmEstadoMenu = class(TForm)
    cdConfiguracion: TClientDataSet;
    Panel1: TPanel;
    btnAutorizar: TAdvGlowButton;
    btnDesautorizar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    Panel2: TPanel;
    btnAceptar: TAdvGlowButton;
    cdMenu: TClientDataSet;
    dsMenu: TDataSource;
    JvLabel1: TJvLabel;
    lblAccion: TJvLabel;
    DBText1: TDBText;
    JvLabel2: TJvLabel;
    DBText2: TDBText;
    JvLabel3: TJvLabel;
    DBText3: TDBText;
    JvLabel4: TJvLabel;
    DBText4: TDBText;
    JvLabel5: TJvLabel;
    DBText5: TDBText;
    dsEmbarcacion: TDataSource;
    JvLabel6: TJvLabel;
    DBText6: TDBText;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAutorizarClick(Sender: TObject);
    procedure btnDesautorizarClick(Sender: TObject);
  private
    procedure VerificaAbierto;
  public
    { Public declarations }
  end;

var
  FrmEstadoMenu: TFrmEstadoMenu;

implementation

uses
  UTFrmSelPeriodoMenu, Unit2, UTFrmMenuDX;

{$R *.dfm}

procedure TFrmEstadoMenu.btnAceptarClick(Sender: TObject);
begin
  Try
    cdMenu.Post;
    cdMenu.ApplyUpdates(-1);

    InteliDialog.ShowModal('Proceso terminado', 'La actualización del Estado del Menú Periódico se ha realizado de manera satisfactoria.', mtInformation, [mbOk], 0);
  Except
    on e:Exception do
    begin
      cdMenu.Cancel;
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  End;

  Close;
end;

procedure TFrmEstadoMenu.btnAutorizarClick(Sender: TObject);
begin
  cdMenu.FieldByName('Estado').AsString := 'Autorizado';
  lblAccion.Caption := 'EL MENÚ SELECCIONADO SE AUTORIZARÁ, DE ESTA MANERA TODOS SUS ELEMENTOS QUEDARÁN BLOQUEADOS PARA SU MODIFICACIÓN';
  lblAccion.Visible := True;
  btnAutorizar.Enabled := False;
  btnAceptar.Enabled := True;
end;

procedure TFrmEstadoMenu.btnCancelarClick(Sender: TObject);
begin
  cdMenu.Cancel;
  Close;
end;

procedure TFrmEstadoMenu.btnDesautorizarClick(Sender: TObject);
begin
  try
    if Not cdMenu.FieldByName('IdInsumoPedido').IsNull then
      raise InteligentException.CreateByCode(24, ['No es posible Desautorizar el Menú Periódico debido a que ya se ha generado su Solicutud de Consumo.']);

    cdMenu.FieldByName('Estado').AsString := 'Activo';
    lblAccion.Caption := 'EL MENÚ SELECCIONADO SE DESAUTORIZARÁ, DE ESTA MANERA TODOS SUS ELEMENTOS ESTARÁN DISPONIBLES PARA SU MODIFICACIÓN';
    lblAccion.Visible := True;
    btnDesautorizar.Enabled := False;
    btnAceptar.Enabled := True;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmEstadoMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EliminarConjunto(cdMenu);
end;

procedure TFrmEstadoMenu.FormShow(Sender: TObject);
var
  Cursor: TCursor;
  Periodo: TFecha;
begin
  Cursor := Screen.Cursor;
  Try
    Screen.Cursor := crAppStart;
    Try
      VerificaPermisos('cmt_menu', [vpLeer, vpEscribir], EADError);

      if Not CrearConjunto(cdCOnfiguracion, 'cmt_configuracion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Configuracion de Periodos de Consumo']);

      if Not CrearConjunto(cdMenu, 'cmt_menu', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Menús Periódicos']);

      cdConfiguracion.Open;

      Application.CreateForm(TFrmSelPeriodoMenu, FrmSelPeriodoMenu);
      FrmSelPeriodoMenu.dsConfiguracion.DataSet := cdConfiguracion;
      FrmSelPeriodoMenu.MustExist := True;
      if Not (FrmSelPeriodoMenu.ShowModal = mrOk) Then
        raise InteligentWarning.Create('Error Message');

      // Obtener los datos seleccionados
      Periodo := TFecha(FrmSelPeriodoMenu.lvPeriodos.Items[FrmSelPeriodoMenu.lvPeriodos.ItemIndex].Data);

      if Not CargarDatosFiltrados(cdMenu, 'IdEmbarcacion,Desde,Hasta', [Periodo.IdEmbarcacion, ClientModule1.DatetoStrSql(Periodo.Fecha), ClientModule1.DatetoStrSql(Periodo.FechaFinal)]) then
        raise InteligentException.CreateByCode(6, ['Menús Periódicos', ClientModule1.DatetoStrSql(Periodo.Fecha) + '/' + ClientModule1.DatetoStrSql(Periodo.FechaFinal), 'Fecha Desde / Hasta']);

      cdMenu.Open;

      if cdMenu.RecordCount <> 1 then
        raise InteligentException.CreateByCode(11, ['Menú Periódico, verifique esto e intente de nuevo, si el error persiste informa al administrador del sistema.']);

      btnAutorizar.Enabled := AnsiCompareText(cdMenu.FieldByName('Estado').AsString, 'Activo') = 0;
      btnDesautorizar.Enabled := AnsiCompareText(cdMenu.FieldByName('Estado').AsString, 'Autorizado') = 0;

      VerificaAbierto;

      cdMenu.Edit;
    Finally
      EliminarConjunto(cdConfiguracion);
      Screen.Cursor := Cursor;
      FrmSelPeriodoMenu.Free;
    End;
  Except
    on e:InteligentWarning do
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);

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

procedure TFrmEstadoMenu.VerificaAbierto;
var
  Madre: TForm;
  i: Integer;
  locMenu: TClientDataSet;
  Encontrado: Boolean;
begin
  Madre := Application.MainForm;
  i := 0;
  Encontrado := False;
  while (i < Madre.MDIChildCount) and (Not Encontrado) do
  begin
    if Madre.MDIChildren[i].ClassNameIs('TFrmMenuDX') then
    begin
      locMenu := TFrmMenuDX(Madre.MDIChildren[i]).cdMenu;
      if (locMenu.ProviderName <> '') and (locMenu.Active) and (locMenu.FieldByName('IdMenu').AsInteger = cdMenu.FieldByName('IdMenu').AsInteger) then
        raise InteligentException.CreateByCode(24, ['El menú que está tratando de modificar se encuentra abierto, debe cerrarlo antes de proceder con la Autorización/Desautorización']);
    end;

    Inc(i);
  end;
end;

end.
