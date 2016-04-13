unit UTFrmComparaPrecios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
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
  cxNavigator, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls,
  Menus, JvExControls, JvLabel, StdCtrls, Mask, DBCtrls, DBClient,
  ClientModuleUnit1, UInteliDialog, AdvGlowButton, ComCtrls, frxClass,
  frxPreview, frxDBSet, URegistro;

type
  TFrmComparaPrecios = class(TForm)
    pnlComparativa: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Nombre: TDBEdit;
    JvLabel1: TJvLabel;
    cdInsumo: TClientDataSet;
    cdComparativa: TClientDataSet;
    cdComparativaPartida: TClientDataSet;
    dsInsumo: TDataSource;
    dsComparativa: TDataSource;
    dsComparativaPartida: TDataSource;
    tvComparativaPartida: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Splitter1: TSplitter;
    Panel4: TPanel;
    btnCancelar: TAdvGlowButton;
    btnAceptar: TAdvGlowButton;
    NombreTipoInsumo2: TcxGridDBColumn;
    NombreInsumo2: TcxGridDBColumn;
    pnlAbrir: TPanel;
    Panel6: TPanel;
    btnAbrirCancelar: TAdvGlowButton;
    btnAbrirOk: TAdvGlowButton;
    cdComparativaLista: TClientDataSet;
    lvComparativa: TListView;
    frxPreview1: TfrxPreview;
    repComparativa: TfrxReport;
    frxDSComparativa: TfrxDBDataset;
    frxDSComparativaPrecios: TfrxDBDataset;
    cdComparativaPrecios: TClientDataSet;
    pnlInsumos: TPanel;
    cxGrid1: TcxGrid;
    tvInsumo: TcxGridDBTableView;
    NombreTipoInsumo: TcxGridDBColumn;
    NombreInsumo: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel3: TPanel;
    btnAgregar: TAdvGlowButton;
    tbnQuitar: TAdvGlowButton;
    btnVisualizar: TAdvGlowButton;
    Panel5: TPanel;
    btnNuevo: TAdvGlowButton;
    btnAbrir: TAdvGlowButton;
    btnCerrar: TAdvGlowButton;
    btnModificar: TAdvGlowButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAceptarClick(Sender: TObject);
    procedure FormEditClose(Sender: TObject; var Action: TCloseAction);
    procedure FormAbrirClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAgregarClick(Sender: TObject);
    procedure tbnQuitarClick(Sender: TObject);
    procedure lvComparativaSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure btnAbrirOkClick(Sender: TObject);
    procedure lvComparativaDblClick(Sender: TObject);
    procedure repComparativaGetValue(const VarName: string; var Value: Variant);
    procedure btnAbrirCancelarClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure cdComparativaAfterOpen(DataSet: TDataSet);
    procedure cdComparativaAfterClose(DataSet: TDataSet);
    procedure cdComparativaAfterRefresh(DataSet: TDataSet);
    procedure btnModificarClick(Sender: TObject);
  private
    FResultado: TModalResult;
    FrmComparativa: TForm;
    FrmAbrir: TForm;
    OpenIdComparativa: Integer;
    ParcialId: Integer;
    procedure MostrarReporte;
    procedure AbreElPedo(IdComparativa: Integer);
    procedure EditarDatos(pIdComparativa: Integer);
  public
    { Public declarations }
  end;

var
  FrmComparaPrecios: TFrmComparaPrecios;

implementation

{$R *.dfm}

procedure TFrmComparaPrecios.btnAbrirCancelarClick(Sender: TObject);
begin
  FResultado := mrCancel;
end;

procedure TFrmComparaPrecios.btnAbrirClick(Sender: TObject);
var
  IdGrupo: Integer;
  OldInicial: Char;
begin
  FResultado := mrCancel;

  try
    FrmAbrir := TForm.Create(Self);

    Try
      FrmAbrir.Left := StrToInt(VarRegistry('\Ventanas', '\FrmAbrir', 'Left'));
    Except
      ;
    End;

    Try
      FrmAbrir.Top := StrToInt(VarRegistry('\Ventanas', '\FrmAbrir', 'Top'));
    Except
      ;
    End;

    Try
      FrmAbrir.Width := StrToInt(VarRegistry('\Ventanas', '\FrmAbrir', 'Width'));
    Except
      ;
    End;

    Try
      FrmAbrir.Height := StrToInt(VarRegistry('\Ventanas', '\FrmAbrir', 'Height'));
    Except
      ;
    End;

    try
      FrmAbrir.OnClose := FormAbrirClose;
      FrmAbrir.Position := poDesigned;

      // Abrir todos los registros
      if cdComparativaLista.Active then
        cdComparativaLista.Refresh
      else
        cdComparativaLista.Open;

      if cdComparativaLista.RecordCount = 0 then
        raise InteligentException.CreateByCode(24, ['No existen Comparativas de precios registradas']);

      cdComparativaLista.First;
      OldInicial := #0;
      lvComparativa.Items.Clear;
      IdGrupo := -1;
      while Not cdComparativaLista.Eof do
      begin
        if (OldInicial = #0) or (OldInicial <> cdComparativaLista.FieldByName('Nombre').AsString[1]) then
        begin
          if cdComparativaLista.FieldByName('Nombre').AsString = '' then
            OldInicial := #0
          else
            OldInicial := cdComparativaLista.FieldByName('Nombre').AsString[1];
          with lvComparativa.Groups.Add do
          begin
            Header := 'Letra ' + OldInicial;
            IdGrupo := ID;
          end;
        end;

        with lvComparativa.Items.Add do
        begin
          Caption := cdComparativaLista.FieldByName('Nombre').AsString;
          GroupId := IdGrupo;
          Data := TObject(cdComparativaLista.FieldByName('IdComparativa').AsInteger);
          ImageIndex := 13;
        end;

        cdComparativaLista.Next;
      end;

      pnlAbrir.Parent := FrmAbrir;
      pnlAbrir.Align := alClient;
      pnlAbrir.Visible := True;

      if FrmAbrir.ShowModal = mrOk then
        AbreElPedo(OpenIdComparativa);

      SetRegistry('\Ventanas', '\FrmAbrir', 'Left', IntToStr(FrmAbrir.Left));
      SetRegistry('\Ventanas', '\FrmAbrir', 'Top', IntToStr(FrmAbrir.Top));
      SetRegistry('\Ventanas', '\FrmAbrir', 'Width', IntToStr(FrmAbrir.Width));
      SetRegistry('\Ventanas', '\FrmAbrir', 'Height', IntToStr(FrmAbrir.Height));
    finally
      pnlAbrir.Visible := False;
      pnlAbrir.Align := alNone;
      pnlAbrir.Parent := Self;
      FrmAbrir.Free;
    end;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmComparaPrecios.btnAbrirOkClick(Sender: TObject);
begin
  // Identificar el Id Seleccionado
  FResultado := mrOk;
  OpenIdComparativa := Integer(lvComparativa.Selected.Data);
end;

procedure TFrmComparaPrecios.btnAceptarClick(Sender: TObject);
var
  Objeto: TWinControl;
begin
  try
    Objeto := Nombre;
    if Trim(Nombre.Text) = '' then
      raise InteligentException.CreateByCode(18, ['Nombre de la Comparativa']);

    Objeto := btnAgregar;
    if cdComparativaPartida.RecordCount = 0 then
      raise InteligentException.CreateByCode(18, ['Partidas de Insumo']);

    FResultado := mrOk;

    cdComparativa.Post;
    cdComparativa.ApplyUpdates(-1);

    ConcretarTransaccion;
    FrmComparativa.Close;
  Except
    on e:InteligentException do
    begin
      if Objeto.CanFocus then
        Objeto.SetFocus;

      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmComparaPrecios.btnAgregarClick(Sender: TObject);
begin
  cdComparativaPartida.Append;
  cdComparativaPartida.FieldByName('IdComparativaPartida').AsInteger := 0;
  cdComparativaPartida.FieldByName('IdComparativa').AsInteger := cdComparativa.FieldByName('IdComparativa').AsInteger;
  cdComparativaPartida.FieldByName('IdInsumo').AsInteger := cdInsumo.FieldByName('IdInsumo').AsInteger;
  cdComparativaPartida.Post;
  cdComparativaPartida.ApplyUpdates(-1);

  cdComparativaPartida.Refresh;
  tvComparativaPartida.DataController.Groups.FullExpand;
end;

procedure TFrmComparaPrecios.btnCancelarClick(Sender: TObject);
begin
  repComparativa.Clear;
  frxPreview1.Clear;
end;

procedure TFrmComparaPrecios.btnCerrarClick(Sender: TObject);
begin
  cdComparativaPrecios.Close;
  cdComparativaPartida.Close;
  cdComparativaLista.Close;
  cdComparativa.Close;
  repComparativa.Clear;
  frxPreview1.Clear;
end;

procedure TFrmComparaPrecios.btnModificarClick(Sender: TObject);
begin
  EditarDatos(cdComparativa.FieldByName('IdComparativa').AsInteger);
end;

procedure TFrmComparaPrecios.btnNuevoClick(Sender: TObject);
begin
  EditarDatos(-1);
end;

procedure TFrmComparaPrecios.btnVisualizarClick(Sender: TObject);
begin
  try
    repComparativa.Preview := Nil;
    AbreElPedo(ParcialId);
  finally
    cdComparativaPrecios.Close;
    repComparativa.Preview := frxPreview1;
  end;
end;

procedure TFrmComparaPrecios.cdComparativaAfterClose(DataSet: TDataSet);
begin
  btnCerrar.Enabled := cdComparativa.Active;
  btnModificar.Enabled := cdComparativa.Active;
end;

procedure TFrmComparaPrecios.cdComparativaAfterOpen(DataSet: TDataSet);
begin
  btnCerrar.Enabled := cdComparativa.Active;
  btnModificar.Enabled := cdComparativa.Active;
end;

procedure TFrmComparaPrecios.cdComparativaAfterRefresh(DataSet: TDataSet);
begin
  btnCerrar.Enabled := cdComparativa.Active;
  btnModificar.Enabled := cdComparativa.Active;
end;

procedure TFrmComparaPrecios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EliminarConjunto([cdInsumo, cdComparativa, cdComparativaPartida]);
  Action := caFree;
end;

procedure TFrmComparaPrecios.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      if Not CrearConjunto(cdInsumo, 'cmt_insumo', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Insumos']);

      if Not CrearConjunto(cdComparativa, 'cmt_comparativa', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Comparativa de Precios']);

      if Not CrearConjunto(cdComparativaPartida, 'cmt_comparativapartida', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Partidas de Comparativa de Precios']);

      if Not CrearConjunto(cdComparativaLista, 'cmt_comparativa', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Lista de Comparativa de Precios']);

      if Not CrearConjunto(cdComparativaPrecios, 'cmt_comparapreciosinsumos', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Lista de Partidas de Comparativa de Precios']);

      cdInsumo.Open;
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

procedure TFrmComparaPrecios.lvComparativaDblClick(Sender: TObject);
begin
  if btnAbrirOk.Enabled then
    btnAbrirOk.Click;
end;

procedure TFrmComparaPrecios.lvComparativaSelectItem(Sender: TObject;
  Item: TListItem; Selected: Boolean);
begin
  btnAbrirOk.Enabled := True;
end;

procedure TFrmComparaPrecios.FormEditClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if FResultado <> mrOk then
    CancelarTransaccion;

  FrmComparativa.ModalResult := FResultado;
end;

procedure TFrmComparaPrecios.FormAbrirClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmAbrir.ModalResult := FResultado;
end;

procedure TFrmComparaPrecios.repComparativaGetValue(const VarName: string;
  var Value: Variant);
begin
  if AnsiCompareText(VarName, 'FechaAplicacion') = 0 then
    Value := FormatDateTime ('ddd d ''de'' mmmm yyyy', Now);
end;

procedure TFrmComparaPrecios.tbnQuitarClick(Sender: TObject);
begin
  cdComparativaPartida.Delete;
  cdComparativaPartida.ApplyUpdates(-1);
end;

procedure TFrmComparaPrecios.MostrarReporte;
begin
  ClientModule1.ImprimeReporte('Comparativa.fr3', repComparativa);
end;

procedure TFrmComparaPrecios.AbreElPedo(IdComparativa: Integer);
begin
  if Not (cdComparativa.State in [dsEdit, dsInsert]) then
  begin
    if Not CargarDatosFiltrados(cdComparativa, 'IdComparativa', [IdComparativa]) then
      raise InteligentException.CreateByCode(6, ['Comparativa de Precios', IdComparativa, 'Id. Comparativa']);

    if cdComparativa.Active then
      cdComparativa.Refresh
    else
      cdComparativa.Open;
  end;

  if Not CargarDatosFiltrados(cdComparativaPrecios, 'IdComparativa', [IdComparativa]) then
    raise InteligentException.CreateByCode(6, ['Lista de Partidas de Comparativa de Precios', IdComparativa, 'Id. Comparativa']);

  cdComparativaPrecios.Open;

  MostrarReporte;
end;

procedure TFrmComparaPrecios.EditarDatos(pIdComparativa: Integer);
var
  IdComparativa: Integer;
begin
  try
    if pIdComparativa = -1 then
    begin
      if (cdComparativa.Active) and (InteliDialog.ShowModal('Reporte abierto', '¿El reporte que tiene actualmente abierto se cerrará antes de proceder a crear un nuevo reporte.' + #10 + #10 + '¿Desea cerrar en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
        raise InteligentWarning.Create('*');

      if cdComparativa.Active then
        btnCerrar.Click;
    end;

    FrmComparativa := TForm.Create(Self);

    Try
      FrmComparativa.Left := StrToInt(VarRegistry('\Ventanas', '\FrmComparativa\pnlInsumos', 'Width'));
    Except
      ;
    End;

    Try
      FrmComparativa.Left := StrToInt(VarRegistry('\Ventanas', '\FrmComparativa', 'Left'));
    Except
      ;
    End;

    Try
      FrmComparativa.Top := StrToInt(VarRegistry('\Ventanas', '\FrmComparativa', 'Top'));
    Except
      ;
    End;

    Try
      FrmComparativa.Width := StrToInt(VarRegistry('\Ventanas', '\FrmComparativa', 'Width'));
    Except
      ;
    End;

    Try
      FrmComparativa.Height := StrToInt(VarRegistry('\Ventanas', '\FrmComparativa', 'Height'));
    Except
      ;
    End;

    try
      try
        FrmComparativa.Position := poDesigned;
        IniciarTransaccion;

        if pIdComparativa = -1 then
        begin
          cdComparativa.Open;
          cdComparativa.Append;
          cdComparativa.FieldByName('IdComparativa').AsInteger := 0;
          cdComparativa.FieldByName('Nombre').AsString := '';
          cdComparativa.Post;
          cdComparativa.ApplyUpdates(-1);
          IdComparativa := UltimoId;

          if Not CargarDatosFiltrados(cdComparativa, 'IdComparativa', [IdComparativa]) then
            raise InteligentException.CreateByCode(6, ['Comparativa de Precios', IdComparativa, 'Id. Comparativa']);

          cdComparativa.Refresh;
        end
        else
          IdComparativa := pIdComparativa;

        cdComparativa.Edit;

        if Not CargarDatosFiltrados(cdComparativaPartida, 'IdComparativa', [IdComparativa]) then
          raise InteligentException.CreateByCode(6, ['Partidas de Comparativa de Precios', IdComparativa, 'Id. Comparativa']);

        cdComparativaPartida.Open;
      Except
        CancelarTransaccion;
        raise;
      end;

      FResultado := mrCancel;
      FrmComparativa.OnClose := FormEditClose;
      pnlComparativa.Parent := FrmComparativa;
      pnlComparativa.Align := alClient;
      pnlComparativa.Visible := True;
      ParcialId := IdComparativa;

      if FrmComparativa.ShowModal = mrOk then
        AbreElPedo(IdComparativa);

      SetRegistry('\Ventanas', '\FrmComparativa\pnlInsumos', 'Width', IntToStr(pnlInsumos.Width));
      SetRegistry('\Ventanas', '\FrmComparativa', 'Left', IntToStr(FrmComparativa.Left));
      SetRegistry('\Ventanas', '\FrmComparativa', 'Top', IntToStr(FrmComparativa.Top));
      SetRegistry('\Ventanas', '\FrmComparativa', 'Width', IntToStr(FrmComparativa.Width));
      SetRegistry('\Ventanas', '\FrmComparativa', 'Height', IntToStr(FrmComparativa.Height));
    finally
      pnlComparativa.Visible := False;
      pnlComparativa.Align := alNone;
      pnlComparativa.Parent := Self;

      FrmComparativa.Free;
    end;
  except
    on e:InteligentWarning do
      ;

    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

end.
