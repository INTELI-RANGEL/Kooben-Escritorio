unit UtFrmAgregarTipoInsumo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
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
  cxNavigator, DB, cxDBData, AdvGlowButton, StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ClientModuleUnit1, UInteliDialog, URegistro, JvExControls, JvLabel,
  DBClient;

type
  TFrmAgregarTipoInsumo = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    tvTiposDisponibles: TcxGridDBTableView;
    GridTiposDisponiblesLevel1: TcxGridLevel;
    GridTiposDisponibles: TcxGrid;
    Panel4: TPanel;
    tvTipos: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    btnAgregar: TButton;
    Button2: TButton;
    btnTodos: TButton;
    btnNinguno: TButton;
    btnCancelar: TAdvGlowButton;
    btnAceptar: TAdvGlowButton;
    btnRestablecer: TAdvGlowButton;
    Panel5: TPanel;
    lblEncabezado: TJvLabel;
    ColCodigoTipoInsumo: TcxGridDBColumn;
    ColNombreTipoInsumo: TcxGridDBColumn;
    cdDisponibles: TClientDataSet;
    dsDisponibles: TDataSource;
    ColCodigoTipoInsumo1: TcxGridDBColumn;
    ColNombreTipoInsumo1: TcxGridDBColumn;
    dsTipo: TDataSource;
    cdTipo: TClientDataSet;
    Splitter1: TSplitter;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAgregarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnRestablecerClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    HayCambios: Boolean;
  public
    IdImpuesto: Integer;
  end;

var
  FrmAgregarTipoInsumo: TFrmAgregarTipoInsumo;

implementation

{$R *.dfm}

procedure TFrmAgregarTipoInsumo.btnAgregarClick(Sender: TObject);
var
  LocCursor: TCursor;
begin
  // Mover el registro seleccionado
  if cdDisponibles.RecordCount > 0 then
  begin
    try
      LocCursor := Screen.Cursor;
      try
        Screen.Cursor := crHourGlass;

        cdTipo.Append;
        cdTipo.FieldByName('IdImpuestoxInsumo').AsInteger := 0;
        cdTipo.FieldByName('IdImpuesto').AsInteger := IdImpuesto;
        cdTipo.FieldByName('IdInsumo').Clear;
        cdTipo.FieldByName('IdTipoInsumo').AsInteger := cdDisponibles.FieldByName('IdTipoInsumo').AsInteger;
        cdTipo.Post;
        cdTipo.ApplyUpdates(-1);
        cdTipo.Refresh;
        cdDisponibles.Refresh;
        HayCambios := True;
      finally
        Screen.Cursor := LocCursor;
      end;
    Except
      on e:Exception do
      begin
        CancelarTransaccion;
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
        Close;
      end;
    end;
  end;
end;

procedure TFrmAgregarTipoInsumo.btnRestablecerClick(Sender: TObject);
begin
  Try
    CancelarTransaccion;
    cdDisponibles.Refresh;
    cdTipo.Refresh;
    IniciarTransaccion;
    HayCambios := False;
  Except
    on e:Exception do
    begin
      CancelarTransaccion;
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      Close;
    end;
  End;
end;

procedure TFrmAgregarTipoInsumo.Button2Click(Sender: TObject);
var
  LocCursor: TCursor;
begin
  // Mover el registro seleccionado
  if cdTipo.RecordCount > 0 then
  begin
    try
      LocCursor := Screen.Cursor;
      try
        Screen.Cursor := crHourGlass;

        cdTipo.Delete;
        cdTipo.ApplyUpdates(-1);
        cdTipo.Refresh;
        cdDisponibles.Refresh;
        HayCambios := True;
      finally
        Screen.Cursor := LocCursor;
      end;
    Except
      on e:Exception do
      begin
        CancelarTransaccion;
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
        Close;
      end;
    end;
  end;
end;

procedure TFrmAgregarTipoInsumo.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
  try
    SetRegistry('\Ventanas', '\GridTiposDisponibles', 'Width', IntToStr(GridTiposDisponibles.Width));
    SetRegistry('\Ventanas', '\' + Self.Name, 'Top', IntToStr(Self.Top));
    SetRegistry('\Ventanas', '\' + Self.Name, 'Left', IntToStr(Self.Left));
    SetRegistry('\Ventanas', '\' + Self.Name, 'Height', IntToStr(Self.Height));
    SetRegistry('\Ventanas', '\' + Self.Name, 'Width', IntToStr(Self.Width));

    for i:= 0 to tvTiposDisponibles.ColumnCount -1 do
      SetRegistry('\Ventanas', '\' + Self.Name + '\tvTiposDisponibles', 'Column' + IntToStr(i), IntToStr(tvTiposDisponibles.Columns[i].Width));

    for i:= 0 to tvTipos.ColumnCount -1 do
      SetRegistry('\Ventanas', '\' + Self.Name + '\tvTipos', 'Column' + IntToStr(i), IntToStr(tvTipos.Columns[i].Width));
  finally
    Action := caFree;
  end;
end;

procedure TFrmAgregarTipoInsumo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  cClose: Boolean;
begin
  cClose := True;

  try
  if HayCambios then
  begin
    // Verificar el código de Salida
    if ModalResult = mrOk then
      ConcretarTransaccion
    else
    begin
      case InteliDialog.ShowModal('Confirmar cambios', 'Se han realizado cambios en esta información. ¿Desea grabarlos en este momento?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
        mrYes: ConcretarTransaccion;
        mrNo: CancelarTransaccion;
        mrCancel: cClose := False;
      end;

      CancelarTransaccion;
    end;
  end;
  finally
    CanClose := cClose;
  end;
end;

procedure TFrmAgregarTipoInsumo.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
  i: Integer;
begin
  HayCambios := False;
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      try
        GridTiposDisponibles.Width := StrToInt(VarRegistry('\Ventanas', '\GridTiposDisponibles', 'Width'));
      except
        ;
      end;

      try
        Self.Top := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Top'));
      except
        ;
      end;

      try
        Self.Left := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'left'));
      except
        ;
      end;

      try
        Self.Height := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Height'));
      except
        ;
      end;

      try
        Self.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Width'));
      except
        ;
      end;

      try
        GridTiposDisponibles.Width := StrToInt(VarRegistry('\Ventanas', '\GridTiposDisponibles', 'Width'));
      except
        ;
      end;

      for i:= 0 to tvTiposDisponibles.ColumnCount -1 do
        try
          tvTiposDisponibles.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\tvTiposDisponibles', 'Column'+ IntToStr(i)));
        except
          ;
        end;

      for i:= 0 to tvTipos.ColumnCount -1 do
        try
          tvTipos.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\tvTipos', 'Column'+ IntToStr(i)));
        except
          ;
        end;

      if Not CrearConjunto(cdDisponibles, 'cmt_tipodisponible', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Tipos de Insumo Disponibles']);

      if Not CrearConjunto(cdTipo, 'cmt_tipoasignado', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Tipos de Insumo Asignados']);

      if Not CargarDatosFiltrados(cdDisponibles, 'IdImpuesto', [IdImpuesto]) then
        raise InteligentException.CreateByCode(6, ['Tipos de Insumo Disponibles', IdImpuesto, 'Id. Impuesto']);

      if Not CargarDatosFiltrados(cdTipo, 'IdImpuesto', [IdImpuesto]) then
        raise InteligentException.CreateByCode(6, ['Tipos de Insumo Asignados', IdImpuesto, 'Id. Impuesto']);

      cdDisponibles.Open;
      cdTipo.Open;
      IniciarTransaccion;
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

end.
