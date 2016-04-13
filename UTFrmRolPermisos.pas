unit UTFrmRolPermisos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, ClientModuleUnit1, UInteliDialog, AdvGlowButton,
  ExtCtrls, ImgList, PngImageList, AdvScrollBox, Grids, DBGrids, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, StdCtrls, DBCtrls, JvExControls, JvLabel, frxClass, frxDBSet,
  URegistro;

type
  TFrmRolPermisos = class(TForm)
    sbRoles: TScrollBox;
    cdRol: TClientDataSet;
    Panel1: TPanel;
    Splitter1: TSplitter;
    imgUsuario: TPngImageList;
    dsPermisos: TDataSource;
    tvPermisos: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Descripcion: TcxGridDBColumn;
    Lectura: TcxGridDBColumn;
    Edicion: TcxGridDBColumn;
    Insercion: TcxGridDBColumn;
    Borrado: TcxGridDBColumn;
    Impresion: TcxGridDBColumn;
    Panel2: TPanel;
    dsRol: TDataSource;
    CodigoRol: TDBText;
    JvLabel1: TJvLabel;
    Panel3: TPanel;
    btnNuevoUsuario: TAdvGlowButton;
    btnBorrar: TAdvGlowButton;
    Panel4: TPanel;
    btnImprimir: TAdvGlowButton;
    cdRolUpt: TClientDataSet;
    btnEditarUsuario: TAdvGlowButton;
    pnlGeneralAcciones: TPanel;
    pnlSangria: TPanel;
    JvLabel2: TJvLabel;
    pnlAcciones: TPanel;
    btnEditarPermisos: TAdvGlowButton;
    btnPermitirTodo: TAdvGlowButton;
    btnQuitarTodos: TAdvGlowButton;
    Panel7: TPanel;
    btnLectura: TAdvGlowButton;
    btnEdicion: TAdvGlowButton;
    btnInsercion: TAdvGlowButton;
    btnBorrado: TAdvGlowButton;
    btnImpresion: TAdvGlowButton;
    pnlEditarPermisos: TPanel;
    cbLectura: TCheckBox;
    cbEdicion: TCheckBox;
    cbInsercion: TCheckBox;
    cbBorrado: TCheckBox;
    cbImpresion: TCheckBox;
    btnAceptarEdicion: TAdvGlowButton;
    btnCancelarEdicion: TAdvGlowButton;
    cdPermisosUpt: TClientDataSet;
    DBMemo1: TDBMemo;
    frxPermisos: TfrxReport;
    frxDBRol: TfrxDBDataset;
    frxDBPermisos: TfrxDBDataset;
    btnImportar: TAdvGlowButton;
    btnExportar: TAdvGlowButton;
    Exportar: TcxGridDBColumn;
    Importar: TcxGridDBColumn;
    cbExportar: TCheckBox;
    cbImportar: TCheckBox;
    JvLabel3: TJvLabel;
    TituloRol: TDBText;
    JvLabel4: TJvLabel;
    CuentaUsuarios: TDBText;
    cdUsuarioxrol: TClientDataSet;
    pnlCuentaUsuarios: TPanel;
    tvUsuarioxRol: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Panel5: TPanel;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    JvLabel7: TJvLabel;
    DBText3: TDBText;
    dsUsuarioxRol: TDataSource;
    NombreUsuario: TcxGridDBColumn;
    sIdUsuario: TcxGridDBColumn;
    btnUsuarios: TAdvGlowButton;
    Panel6: TPanel;
    btnUsrAgregar: TAdvGlowButton;
    btnUsrQuitar: TAdvGlowButton;
    btnUsrCerrar: TAdvGlowButton;
    cdUsuarioxRolUpt: TClientDataSet;
    pnlEditarUsuarios: TPanel;
    Panel9: TPanel;
    tvUsuariosNo: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    btnEditarCancelar: TAdvGlowButton;
    btnEditarOk: TAdvGlowButton;
    edtsIdUsuario: TcxGridDBColumn;
    edtNombreUsuario: TcxGridDBColumn;
    cdUsuariosNo: TClientDataSet;
    dsUsuariosNo: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButtonEnter(Sender: TObject);
    procedure AdvGlowButtonExit(Sender: TObject);
    procedure AdvGlowButtonClick(Sender: TObject);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormaEditarClose(Sender: TObject; var Action: TCloseAction);
    procedure fPermisosClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNuevoUsuarioClick(Sender: TObject);
    procedure btnEditarUsuarioClick(Sender: TObject);
    procedure pnlGeneralAccionesResize(Sender: TObject);
    procedure tvPermisosDblClick(Sender: TObject);
    procedure btnEditarPermisosClick(Sender: TObject);
    procedure btnAceptarEdicionClick(Sender: TObject);
    procedure btnLecturaClick(Sender: TObject);
    procedure btnEdicionClick(Sender: TObject);
    procedure btnInsercionClick(Sender: TObject);
    procedure btnBorradoClick(Sender: TObject);
    procedure btnImpresionClick(Sender: TObject);
    procedure btnPermitirTodoClick(Sender: TObject);
    procedure btnQuitarTodosClick(Sender: TObject);
    procedure btnBorrarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure CuentaUsuariosDblClick(Sender: TObject);
    procedure btnUsuariosClick(Sender: TObject);
    procedure btnUsrCerrarClick(Sender: TObject);
    procedure btnUsrAgregarClick(Sender: TObject);
    procedure btnEditarCancelarClick(Sender: TObject);
    procedure btnEditarOkClick(Sender: TObject);
    procedure btnUsrQuitarClick(Sender: TObject);
  private
    FormaCuenta: TForm;
    FormaEditar: TForm;
    function CreaUnBoton: String;
    procedure LlenaRoles;
    procedure VerificarRegistroPermisos;
    procedure ModificarEstado(Permiso: TClasePermisos);
    procedure VerificarUsuarioxRol;
    procedure VerificarUsuarioxRolUpt;
  public
    { Public declarations }
  end;

var
  FrmRolPermisos: TFrmRolPermisos;

implementation

{$R *.dfm}

uses
  UTFrmRol;

procedure TFrmRolPermisos.AdvGlowButtonExit(Sender: TObject);
begin
  TAdvGlowButton(Sender).Font.Style := [];
end;

procedure TFrmRolPermisos.btnAceptarEdicionClick(Sender: TObject);
var
  Valor: Cardinal;
begin
  // Actualizar el valor del campo de permisos
  Valor := 0;
  if cbLectura.Checked then
    Valor := SetBit(Valor, 1, True);

  if cbEdicion.Checked then
    Valor := SetBit(Valor, 2, True);

  if cbInsercion.Checked then
    Valor := SetBit(Valor, 3, True);

  if cbBorrado.Checked then
    Valor := SetBit(Valor, 4, True);

  if cbImpresion.Checked then
    Valor := SetBit(Valor, 5, True);

  if cbExportar.Checked then
    Valor := SetBit(Valor, 6, True);

  if cbImportar.Checked then
    Valor := SetBit(Valor, 7, True);

  // Verifica lo siguiente:
  // 1.- Si Valor = 0 entonces deberás verificar: a) Si es una edición hay que borrar el registro, b) si era una Inserción se deberá cancelar el Append
  // 2.- Si Valor > 0 entonces solo se deberá registrar de manera normal ya sea Edicion o Insercion

  cdPermisosUpt.FieldByName('Permisos').AsInteger := Valor;
  cdPermisosUpt.Post;
  cdPermisosUpt.ApplyUpdates(-1);
end;

procedure TFrmRolPermisos.btnBorradoClick(Sender: TObject);
begin
  ModificarEstado(vpBorrar);
end;

procedure TFrmRolPermisos.btnBorrarClick(Sender: TObject);
var
  NombreBoton: String;
  Componente: TComponent;
begin
  try
    // Verificar si existe el dataset del Rol
    if cdRolUpt.ProviderName = '' then
      if Not CrearConjunto(cdRolUpt, 'cmt_rol', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Roles de Usuario']);

    if Not CargarDatosFiltrados(cdRolUpt, 'IdRol', [cdRol.FieldByName('IdRol').AsString]) then
      raise InteligentException.CreateByCode(6, ['Roles de Usuario', 'Id. Rol', cdRol.FieldByName('IdRol').AsInteger]);

    if cdRolUpt.Active then
      cdRolUpt.Refresh
    else
      cdRolUpt.Open;

    if cdRolUpt.RecordCount = 0 then
      raise InteligentException.CreateByCode(9, ['Roles de Usuario', cdRol.FieldByName('IdRol').AsInteger]);

    if cdRolUpt.FieldByName('CuentaUsuarios').AsInteger > 0 then
      raise InteligentException.CreateByCode(24, ['El Rol de Usuario no puede ser eliminado debido a que ya cuenta con Usuarios asignados al mismo, verifique esto e intente de nuevo.']);

    if InteliDialog.ShowModal('Eliminar Rol', 'Ha seleccionado eliminar el Rol [' + cdRol.FieldByName('TituloRol').AsString + ']' + #10 + #10 + '¿Está seguro de hacerlo en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      raise InteligentWarning.Create('*');

    NombreBoton := 'GlowButton' + cdRol.FieldByName('IdRol').AsString;
    try
      cdRolUpt.Delete;
      cdRolUpt.ApplyUpdates(-1);
      cdRol.Refresh;
    except
      cdRolUpt.Cancel;
      raise;
    end;

    // Refrescar los datos de la ventana de acuerdo al cambio
    Componente := sbRoles.FindComponent(NombreBoton);
    if Assigned(Componente) and (Componente.ClassType = TAdvGlowButton) then
      TAdvGlowButton(Componente).Destroy;
  except
    on e:InteligentWarning do
    begin
      if cdRolUpt.Active then
        cdRolUpt.Close;
    end;

    on e:InteligentException do
    begin
      if cdRolUpt.Active then
        cdRolUpt.Close;

      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:Exception do
    begin
      if cdRolUpt.Active then
        cdRolUpt.Close;

      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmRolPermisos.btnEdicionClick(Sender: TObject);
begin
  ModificarEstado(vpEscribir);
end;

procedure TFrmRolPermisos.btnEditarPermisosClick(Sender: TObject);
var
  fPermisos: TForm;
  Tamano: TPoint;
begin
  try
    if Not Assigned(dsPermisos.DataSet) then
      raise InteligentException.CreateByCode(24, ['Debe seleccionar primero un Rol de Usuarios']);

    VerificarRegistroPermisos;

    Tamano.X := pnlEditarPermisos.Width;
    Tamano.Y := pnlEditarPermisos.Height;
    try
      fPermisos := TForm.Create(Self);
      fPermisos.Caption := 'Permisos asignados a:';
      fPermisos.Position := poMainFormCenter;
      fPermisos.BorderStyle := bsDialog;
      fPermisos.Width := Tamano.X;
      fPermisos.Height := Tamano.Y;
      fPermisos.OnClose := fPermisosClose;
      pnlEditarPermisos.Parent := fPermisos;
      pnlEditarPermisos.Align := alClient;
      pnlEditarPermisos.Visible := True;

      if fPermisos.ShowModal = mrOk then
        dsPermisos.DataSet.Refresh;
    finally
      pnlEditarPermisos.Visible := False;
      pnlEditarPermisos.Align := alNone;
      pnlEditarPermisos.Parent := Self;
      pnlEditarPermisos.Width := Tamano.X;
      pnlEditarPermisos.Height := Tamano.Y;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmRolPermisos.btnEditarUsuarioClick(Sender: TObject);
var
  NombreOriginalBoton: String;
  Componente: TComponent;
begin
  try
    // Verificar si existe el dataset del usuario
    if cdRolUpt.ProviderName = '' then
      if Not CrearConjunto(cdRolUpt, 'cmt_rol', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Roles de Usuario']);

    if Not CargarDatosFiltrados(cdRolUpt, 'IdRol', [cdRol.FieldByName('IdRol').AsString]) then
      raise InteligentException.CreateByCode(6, ['Roles de Usuario', cdRol.FieldByName('IdRol').AsInteger, 'Id. Rol']);

    if cdRolUpt.Active then
      cdRolUpt.Refresh
    else
      cdRolUpt.Open;

    if cdRolUpt.RecordCount = 0 then
      raise InteligentException.CreateByCode(13, [cdRol.FieldByName('CodigoRol').AsString, 'Roles de Usuario']);

    NombreOriginalBoton := 'GlowButton' + cdRol.FieldByName('IdRol').AsString;

    cdRolUpt.Edit;

    Application.CreateForm(TFrmRol, FrmRol);
    FrmRol.dsRolUpt.DataSet := cdRolUpt;

    try
      if FrmRol.ShowModal = mrOk then
      begin
        cdRol.Refresh;
        if cdRol.Locate('IdRol', cdRolUpt.FieldByName('IdRol').AsString, []) then
        begin
          Componente := sbRoles.FindComponent(NombreOriginalBoton);
          if Assigned(Componente) and (Componente.ClassType = TAdvGlowButton) then
          begin
            TAdvGlowButton(Componente).Caption := cdRol.FieldByName('TituloRol').AsString;
            TAdvGlowButton(Componente).SetFocus;
            TAdvGlowButton(Componente).Click;
          end;
        end;
      end;
    finally
      FrmRol.dsRolUpt.DataSet := Nil;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmRolPermisos.btnExportarClick(Sender: TObject);
begin
  ModificarEstado(vpExportar);
end;

procedure TFrmRolPermisos.btnImportarClick(Sender: TObject);
begin
  ModificarEstado(vpImportar);
end;

procedure TFrmRolPermisos.btnImpresionClick(Sender: TObject);
begin
  ModificarEstado(vpImprimir);
end;

procedure TFrmRolPermisos.btnImprimirClick(Sender: TObject);
begin
  ClientModule1.ImprimeReporte('RolPermisos.fr3', frxPermisos);
end;

procedure TFrmRolPermisos.btnInsercionClick(Sender: TObject);
begin
  ModificarEstado(vpInsertar);
end;

procedure TFrmRolPermisos.btnLecturaClick(Sender: TObject);
begin
  ModificarEstado(vpLeer);
end;

procedure TFrmRolPermisos.btnNuevoUsuarioClick(Sender: TObject);
var
  NombreBoton: String;
  Componente: TComponent;
  IdRol: LongInt;
begin
  try
    // Verificar si existe el dataset del usuario
    if cdRolUpt.ProviderName = '' then
      if Not CrearConjunto(cdRolUpt, 'cmt_rol', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Roles de Usuario']);

    if Not CargarDatosFiltrados(cdRolUpt, 'IdRol', [-9]) then
      raise InteligentException.CreateByCode(16, ['Roles de Usuario']);

    if cdRolUpt.Active then
      cdRolUpt.Refresh
    else
      cdRolUpt.Open;

    cdRolUpt.Append;
    cdRolUpt.FieldByName('IdRol').AsInteger := 0;

    Application.CreateForm(TFrmRol, FrmRol);
    FrmRol.dsRolUpt.DataSet := cdRolUpt;
    try
      if FrmRol.ShowModal = mrOk then
      begin
        IdRol := UltimoId;
        cdRol.Refresh;
        if cdRol.Locate('IdRol', IdRol, []) then
        begin
          NombreBoton := CreaUnBoton;
          Componente := sbRoles.FindComponent(NombreBoton);
          if Assigned(Componente) and (Componente.ClassType = TAdvGlowButton) then
          begin
            TAdvGlowButton(Componente).SetFocus;
            TAdvGlowButton(Componente).Click;
          end;
        end;
      end;
    finally
      FrmRol.dsRolUpt.DataSet := Nil;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmRolPermisos.btnPermitirTodoClick(Sender: TObject);
begin
  ModificarEstado(vpTodos);
end;

procedure TFrmRolPermisos.btnQuitarTodosClick(Sender: TObject);
begin
  ModificarEstado(vpNinguno);
end;

procedure TFrmRolPermisos.btnUsrAgregarClick(Sender: TObject);
begin
  try
    VerificarUsuarioxRolUpt;

    if Not CargarDatosFiltrados(cdUsuarioxRolUpt, 'IdUsuarioxRol', [-9]) then
      raise InteligentException.CreateByCode(16, ['Usuarios por Rol']);

    if cdUsuarioxRolUpt.Active then
      cdUsuarioxRolUpt.Refresh
    else
      cdUsuarioxRolUpt.Open;

{    if Not CargarDatosFiltrados(cdUsuariosNo, 'IdRol', [cdRol.FieldByName('IdRol').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Usuarios no incluidos en el Rol', cdRol.FieldByName('IdRol').AsInteger, 'Id. Rol']);
}
    if cdUsuariosNo.Active then
      cdUsuariosNo.Refresh
    else
      cdUsuariosNo.Open;

    if cdUsuariosNo.RecordCount = 0 then
      raise InteligentException.CreateByCode(24, ['El no existen usuarios que se puedan agregar a este grupo.']);

    FormaEditar := TForm.Create(Self);
    try
      FormaEditar.OnClose := FormaEditarClose;
      FormaEditar.Position := pomainFormCenter;
      FormaEditar.Caption := 'Usuarios no asignados al Rol';
      FormaEditar.Width := 300;
      FormaEditar.Height := 300;
      pnlEditarUsuarios.Parent := FormaEditar;
      pnlEditarUsuarios.Align := alClient;
      pnlEditarUsuarios.Visible := True;

      cdUsuarioxRolUpt.Append;
      cdUsuarioxRolUpt.FieldByName('IdUsuarioxRol').AsInteger := 0;
      cdUsuarioxRolUpt.FieldByname('IdRol').AsInteger := cdRol.FieldByName('IdRol').AsInteger;

      if FormaEditar.ShowModal = mrOk then
      begin
        cdRol.Refresh;
        cdUsuarioxRol.Refresh;
      end;
    finally
      pnlEditarUsuarios.Visible := False;
      pnlEditarUsuarios.Align := alNone;
      pnlEditarUsuarios.Parent := Self;

      FormaEditar.Free;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmRolPermisos.btnUsrCerrarClick(Sender: TObject);
begin
  FormaCuenta.Close;
end;

procedure TFrmRolPermisos.btnUsrQuitarClick(Sender: TObject);
begin
  try
    VerificarUsuarioxRolUpt;

    if Not CargarDatosFiltrados(cdUsuarioxRolUpt, 'IdUsuarioxRol', [cdUsuarioxRol.FieldByName('IdUsuarioxRol').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Usuarios por Rol', cdUsuarioxRol.FieldByName('IdUsuarioxRol').AsInteger, 'Id. Usuario por Rol']);

    if cdUsuarioxRolUpt.Active then
      cdUsuarioxRolUpt.Refresh
    else
      cdUsuarioxRolUpt.Open;

    if cdUsuarioxRolUpt.RecordCount = 0 then
      raise InteligentException.CreateByCode(27, ['Usuarios por Rol', cdUsuarioxRol.FieldByName('CodigoRol').AsString + ' - ' + cdUsuarioxRol.FieldByName('TituloRol').AsString]);

    if InteliDialog.ShowModal('Eliminar usuario del Rol', '¿Está seguro que desea eliminar del Rol ' + cdUsuarioxRol.FieldByName('CodigoRol').AsString + ' - ' + cdUsuarioxRol.FieldByName('TituloRol').AsString +
                              ' al Usuario ' + cdUsuarioxRol.FieldByName('NombreUsuario').AsString + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      cdUsuarioxRolUpt.Delete;
      cdUsuarioxRolUpt.ApplyUpdates(-1);

      cdRol.Refresh;
      cdUsuarioxRol.Refresh;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmRolPermisos.btnUsuariosClick(Sender: TObject);
var
  Dimension: TPoint;
  i: Integer;
  locCursor: TCursor;
begin
  try
    locCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      VerificarUsuarioxRol;
      if Not CargarDatosFiltrados(cdUsuarioxRol, 'IdRol', [cdRol.FieldByName('IdRol').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Usuarios por Rol', cdRol.FieldByName('IdRol').AsInteger, 'Id. Rol']);

      if cdUsuarioxRol.Active then
        cdUsuarioxRol.Refresh
      else
        cdUsuarioxRol.Open;

      Dimension.X := pnlCuentaUsuarios.Width;
      Dimension.Y := pnlCuentaUsuarios.Height;

      FormaCuenta := TForm.Create(Self);
      FormaCuenta.Caption := 'Usuarios asignados al Rol';

      try
        FormaCuenta.Top := StrToInt(VarRegistry('\Ventanas', '\FormaCuenta', 'Top'));
      except
        ;
      end;

      try
        FormaCuenta.Left := StrToInt(VarRegistry('\Ventanas', '\FormaCuenta', 'Left'));
      except
        ;
      end;

      try
        FormaCuenta.Width := StrToInt(VarRegistry('\Ventanas', '\FormaCuenta', 'Width'));
      except
        FormaCuenta.Width := Dimension.X;
      end;

      try
        FormaCuenta.Height := StrToInt(VarRegistry('\Ventanas', '\FormaCuenta', 'Height'));
      except
        FormaCuenta.Height := Dimension.Y;
      end;

      for i:= 0 to tvPermisos.ColumnCount -1 do
        try
          tvUsuarioxRol.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\FormaCuenta\tvUsuarioxRol', 'Column'+ IntToStr(i)));
        except
          ;
        end;
    finally
      Screen.Cursor := locCursor;
    end;

    try
      FormaCuenta.Position := poDesigned;

      pnlCuentaUsuarios.Parent := FormaCuenta;
      pnlCuentaUsuarios.Align := alClient;
      pnlCuentaUsuarios.Visible := True;

      FormaCuenta.ShowModal;
    finally
      SetRegistry('\Ventanas', '\FormaCuenta', 'Top', IntToStr(FormaCuenta.Top));
      SetRegistry('\Ventanas', '\FormaCuenta', 'Left', IntToStr(FormaCuenta.Left));
      SetRegistry('\Ventanas', '\FormaCuenta', 'Width', IntToStr(FormaCuenta.Width));
      SetRegistry('\Ventanas', '\FormaCuenta', 'Height', IntToStr(FormaCuenta.Height));
      for i:= 0 to tvUsuarioxRol.ColumnCount -1 do
        SetRegistry('\Ventanas', '\FormaCuenta\tvUsuarioxRol', 'Column' + IntToStr(i), IntToStr(tvUsuarioxRol.Columns[i].Width));

      pnlCuentaUsuarios.Visible := False;
      pnlCuentaUsuarios.Align := alClient;
      pnlCuentaUsuarios.Parent := Self;

      pnlCuentaUsuarios.Width := Dimension.X;
      pnlCuentaUsuarios.Height := Dimension.Y;

      FormaCuenta.Free;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmRolPermisos.btnEditarCancelarClick(Sender: TObject);
begin
  FormaEditar.Close;
end;

procedure TFrmRolPermisos.btnEditarOkClick(Sender: TObject);
begin
  try
    cdUsuarioxRolUpt.FieldByName('IdUsuario').AsInteger := cdUsuariosNo.FieldByName('IdUsuario').AsInteger;
    cdUsuarioxRolUpt.Post;
    cdUsuarioxRolUpt.ApplyUpdates(-1);
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.title, e.message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmRolPermisos.AdvGlowButtonClick(Sender: TObject);
var
  NombreComp: String;
  Componente: TComponent;
  locDataSet: TClientDataSet;
begin
  try
    // Localizar el registro
    if Not cdRol.Locate('IdRol', TAdvGlowButton(Sender).Tag, []) then
      raise InteligentException.CreateByCode(1, ['Los datos de la tabla de Usuarios parecen estar corrompidos.']);

    // Verificar si ya se creo el dataset de permisos para este usuario
    NombreComp := 'DataSet' + IntToStr(TAdvGlowButton(Sender).Tag);
    Componente := Self.FindComponent(NombreComp);
    if Assigned(Componente) and (Componente.ClassType = TClientDataSet) then
      dsPermisos.DataSet := TClientDataSet(Componente)
    else
    begin
      // Crear el nuevo conjunto de datos para este usuario
      locDataSet := TClientDataSet.Create(Self);
      locDataSet.Name := NombreComp;
      if Not CrearConjunto(locDataSet, 'cmt_rolpermisos', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Permisos por Rol']);

      if Not CargarDatosFiltrados(locDataSet, 'IdRol', [cdRol.FieldByName('IdRol').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Permisos por Rol', 'IdRol', cdRol.FieldByName('IdRol').AsInteger]);

      locDataSet.Open;
      Self.InsertComponent(locDataSet);
      dsPermisos.DataSet := locDataSet;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.title, e.message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmRolPermisos.AdvGlowButtonEnter(Sender: TObject);
begin
  TAdvGlowButton(Sender).Font.Style := [fsBold];
end;

procedure TFrmRolPermisos.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
  SetRegistry('\Ventanas', '\' + Self.Name, 'Top', IntToStr(Self.Top));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Left', IntToStr(Self.Left));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Width', IntToStr(Self.Width));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Height', IntToStr(Self.Height));
  SetRegistry('\Ventanas', '\' + Self.Name + '\sbRoles', 'Width', IntToStr(sbRoles.Width));

  for i:= 0 to tvPermisos.ColumnCount -1 do
    SetRegistry('\Ventanas', '\' + Self.Name + '\tvPermisos', 'Column' + IntToStr(i), IntToStr(tvPermisos.Columns[i].Width));

  for i := 0 to Self.ComponentCount -1 do
    if (Self.Components[i].ClassType = TClientDataSet) and (TClientDataSet(Self.Components[i]).ProviderName <> '') then
      EliminarConjunto([TClientDataSet(Self.Components[i])]);

  Action := caFree;
end;

procedure TFrmRolPermisos.FormaEditarClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if cdUsuarioxRolUpt.State In [dsEdit, dsInsert] then
    cdUsuarioxRolUpt.Cancel;
end;

procedure TFrmRolPermisos.fPermisosClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if cdPermisosUpt.State In [dsInsert, dsEdit] then
    cdPermisosUpt.Cancel;
end;

procedure TFrmRolPermisos.FormMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
var
  I: Integer;
begin
  Handled := PtInRect(sbRoles.ClientRect, sbRoles.ScreenToClient(MousePos));
  if Handled then
    for I := 1 to Mouse.WheelScrollLines do
    try
      if WheelDelta > 0 then
        sbRoles.Perform(WM_VSCROLL, SB_LINEUP, 0)
      else
        sbRoles.Perform(WM_VSCROLL, SB_LINEDOWN, 0);
    finally
      sbRoles.Perform(WM_VSCROLL, SB_ENDSCROLL, 0);
    end;
end;

procedure TFrmRolPermisos.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
  i: Integer;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      try
        Self.Top := StrToInt(VarRegistry('\Ventanas', '\' + self.Name, 'Top'));
      except
        ;
      end;

      try
        Self.Left := StrToInt(VarRegistry('\Ventanas', '\' + self.Name, 'Left'));
      except
        ;
      end;

      try
        Self.Width := StrToInt(VarRegistry('\Ventanas', '\' + self.Name, 'Width'));
      except
        ;
      end;

      try
        Self.Height := StrToInt(VarRegistry('\Ventanas', '\' + self.Name, 'Height'));
      except
        ;
      end;

      try
        sbRoles.Width := StrToInt(VarRegistry('\Ventanas', '\' + self.Name + '\sbRoles', 'Width'));
      except
        ;
      end;

      for i:= 0 to tvPermisos.ColumnCount -1 do
        try
          tvPermisos.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + self.Name + '\tvPermisos', 'Column'+ IntToStr(i)));
        except
          ;
        end;

      if Not CrearConjunto(cdRol, 'cmt_rol', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Roles de Usuarios']);

      if Not CrearConjunto(cdPermisosUpt, 'cmt_usuariopermisos', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Permisos por Rol de Usuario']);

      cdRol.Open;

      LlenaRoles;
    finally
      Screen.Cursor := LocCursor;
    end;
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
  end;
end;

procedure TFrmRolPermisos.LlenaRoles;
var
  NombreBoton: String;
  Componente: TComponent;
begin
  cdRol.First;
  while sbRoles.ComponentCount > 0 do
    sbRoles.Components[0].Destroy;

  NombreBoton := '';
  while not cdRol.Eof do
  begin
    if cdRol.RecNo = 1 then
      NombreBoton := CreaUnBoton
    else
      CreaUnBoton;
    cdRol.Next;
  end;

  if NombreBoton <> '' then
  begin
    Componente := sbRoles.FindComponent(NombreBoton);
    if Assigned(Componente) and (Componente.ClassType = TAdvGlowButton) then
      TAdvGlowButton(Componente).Click;
  end;
end;

procedure TFrmRolPermisos.pnlGeneralAccionesResize(Sender: TObject);
begin
  pnlSangria.Width := (pnlGeneralAcciones.Width - pnlAcciones.Width) Div 2;
end;

procedure TFrmRolPermisos.tvPermisosDblClick(Sender: TObject);
begin
  btnEditarPermisos.Click;
end;

function TFrmRolPermisos.CreaUnBoton: String;
const
  Altura = 80;
var
  Boton: TAdvGlowButton;
  NombreBoton: String;
begin
  Boton := TAdvGlowButton.Create(sbRoles);
  NombreBoton := 'GlowButton' + cdRol.FieldByName('IdRol').AsString;
  Boton.Name := NombreBoton;
  Boton.Parent := sbRoles;
  Boton.Height := Altura;
  Boton.Top := (Altura * cdRol.RecordCount);
  Boton.Caption := cdRol.FieldByName('TituloRol').AsString;
  Boton.Align := alTop;
  Boton.TabStop := True;
  Boton.OnEnter := AdvGlowButtonEnter;
  Boton.OnExit := AdvGlowButtonExit;
  Boton.OnClick := AdvGlowButtonClick;
  Boton.Images := imgUsuario;
  Boton.ImageIndex := 0;
  Boton.Font.Style := [];
  Boton.Font.Color := clBlack;
  Boton.Layout := blGlyphTop;
  Boton.Tag := cdRol.FieldByName('IdRol').AsInteger;

  sbRoles.InsertComponent(Boton);
  Result := NombreBoton;
end;

procedure TFrmRolPermisos.CuentaUsuariosDblClick(Sender: TObject);
begin
  btnUsuarios.Click;
end;

procedure TFrmRolPermisos.VerificarRegistroPermisos;
begin
  // Verificar si el dataset está abierto
  if cdPermisosUpt.Active then
  begin
    // si está abierto, verificar contra sus parametros
    if Not ((cdpermisosUpt.FieldByName('Tabla').AsString = dsPermisos.DataSet.FieldByName('TABLE_NAME').AsString) and (cdPermisosUpt.FieldByName('IdRol').AsInteger = cdRol.FieldByName('IdRol').AsInteger)) then
      // Si no es el mismo registro de permisos se deberá localizar
      if Not CargarDatosFiltrados(cdPermisosUpt, 'Tabla,IdRol', [dsPermisos.DataSet.FieldByName('TABLE_NAME').AsString, cdRol.FieldByName('IdRol').AsString]) then
        raise InteligentException.CreateByCode(6, ['Permisos de Usuario', dsPermisos.DataSet.FieldByName('TABLE_NAME').AsString + '/' + cdRol.FieldByName('IdRol').AsString, 'Tabla/Id. Rol']);
  end
  else
    // Si no está abierto, se deberá localizar
    if Not CargarDatosFiltrados(cdPermisosUpt, 'Tabla,IdRol', [dsPermisos.DataSet.FieldByName('TABLE_NAME').AsString, cdRol.FieldByName('IdRol').AsString]) then
      raise InteligentException.CreateByCode(6, ['Permisos de Usuario', dsPermisos.DataSet.FieldByName('TABLE_NAME').AsString + '/' + cdRol.FieldByName('IdRol').AsString, 'Tabla/Id. Rol']);

  if cdPermisosUpt.Active then
    cdPermisosUpt.Refresh
  else
    cdPermisosUpt.Open;

  // Verificar si el registro existe
  if cdPermisosUpt.RecordCount = 0 then
  begin
    cdPermisosUpt.Append;
    cdPermisosUpt.FieldByName('IdUsuarioPermisos').AsInteger := 0;
    cdPermisosUpt.FieldByName('IdRol').AsInteger := cdRol.FieldByName('IdRol').AsInteger;
    cdPermisosUpt.FieldByName('Tabla').AsString := dsPermisos.DataSet.FieldByName('TABLE_NAME').AsString;
    cdPermisosUpt.FieldByName('Permisos').AsInteger := 0;
  end
  else
    cdPermisosUpt.Edit;

  // Poner los checkboxes de acuerdo a su valor de permisos
  cbLectura.Checked   := GetBit(cdPermisosUpt.FieldByName('Permisos').AsInteger, 1);
  cbEdicion.Checked   := GetBit(cdPermisosUpt.FieldByName('Permisos').AsInteger, 2);
  cbInsercion.Checked := GetBit(cdPermisosUpt.FieldByName('Permisos').AsInteger, 3);
  cbBorrado.Checked   := GetBit(cdPermisosUpt.FieldByName('Permisos').AsInteger, 4);
  cbImpresion.Checked := GetBit(cdPermisosUpt.FieldByName('Permisos').AsInteger, 5);
  cbExportar.Checked := GetBit(cdPermisosUpt.FieldByName('Permisos').AsInteger, 6);
  cbImportar.Checked := GetBit(cdPermisosUpt.FieldByName('Permisos').AsInteger, 7);
end;

procedure TFrmRolPermisos.ModificarEstado(Permiso: TClasePermisos);
begin
  if Not Assigned(dsPermisos.DataSet) then
    raise InteligentException.CreateByCode(24, ['Debe seleccionar primero un Rol de Usuarios']);

  VerificarRegistroPermisos;

  // Verificar si el permiso ya está activo
  case Permiso of
    vpLeer: cdPermisosUpt.FieldByName('Permisos').AsInteger := SetBit(cdPermisosUpt.FieldByName('Permisos').AsInteger, 1, Not GetBit(cdPermisosUpt.FieldByName('Permisos').AsInteger, 1));
    vpEscribir: cdPermisosUpt.FieldByName('Permisos').AsInteger := SetBit(cdPermisosUpt.FieldByName('Permisos').AsInteger, 2, Not GetBit(cdPermisosUpt.FieldByName('Permisos').AsInteger, 2));
    vpInsertar: cdPermisosUpt.FieldByName('Permisos').AsInteger := SetBit(cdPermisosUpt.FieldByName('Permisos').AsInteger, 3, Not GetBit(cdPermisosUpt.FieldByName('Permisos').AsInteger, 3));
    vpBorrar: cdPermisosUpt.FieldByName('Permisos').AsInteger := SetBit(cdPermisosUpt.FieldByName('Permisos').AsInteger, 4, Not GetBit(cdPermisosUpt.FieldByName('Permisos').AsInteger, 4));
    vpImprimir: cdPermisosUpt.FieldByName('Permisos').AsInteger := SetBit(cdPermisosUpt.FieldByName('Permisos').AsInteger, 5, Not GetBit(cdPermisosUpt.FieldByName('Permisos').AsInteger, 5));
    vpExportar: cdPermisosUpt.FieldByname('Permisos').AsInteger := SetBit(cdPermisosUpt.FieldByName('Permisos').AsInteger, 6, Not GetBit(cdPermisosUpt.FieldByName('Permisos').AsInteger, 6));
    vpImportar: cdPermisosUpt.FieldByname('Permisos').AsInteger := SetBit(cdPermisosUpt.FieldByName('Permisos').AsInteger, 7, Not GetBit(cdPermisosUpt.FieldByName('Permisos').AsInteger, 7));
    vpTodos: cdPermisosUpt.FieldByName('Permisos').AsInteger := 127;
    vpNinguno: cdPermisosUpt.FieldByName('Permisos').AsInteger := 0;
  end;
  cdPermisosUpt.Post;
  cdPermisosUpt.ApplyUpdates(-1);
  dsPermisos.DataSet.Refresh;
end;

procedure TFrmRolPermisos.VerificarUsuarioxRol;
begin
  if cdUsuarioxRol.ProviderName = '' then
    if Not CrearConjunto(cdUsuarioxRol, 'cmt_usuarioxrol', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Usuarios por Rol']);
end;

procedure TFrmRolPermisos.VerificarUsuarioxRolUpt;
begin
  if cdUsuarioxRolUpt.ProviderName = '' then
    if Not CrearConjunto(cdUsuarioxRolUpt, 'cmt_usuarioxrol', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Usuarios por Rol']);

  if cdUsuariosNo.ProviderName = '' then
    if Not CrearConjunto(cdUsuariosNo, 'cmt_usuarioxrol_norol', ccSelect) then
      raise InteligentException.CreateByCode(5, ['Usuarios no incluidos en el Rol']);
end;

end.
