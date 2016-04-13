unit UTFrmUsuarioPermisos;

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
  TFrmUsuarioPermisos = class(TForm)
    sbUsuarios: TScrollBox;
    cdUsuario: TClientDataSet;
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
    dsUsuario: TDataSource;
    NombreUsuario: TDBText;
    JvLabel1: TJvLabel;
    Panel3: TPanel;
    btnNuevoUsuario: TAdvGlowButton;
    btnBorrar: TAdvGlowButton;
    btnAutorizar: TAdvGlowButton;
    btnDesautorizar: TAdvGlowButton;
    Panel4: TPanel;
    btnImprimir: TAdvGlowButton;
    cdUsuarioUpt: TClientDataSet;
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
    JvLabel3: TJvLabel;
    Administrador: TDBText;
    frxPermisos: TfrxReport;
    frxDBUsuario: TfrxDBDataset;
    frxDBPermisos: TfrxDBDataset;
    btnImportar: TAdvGlowButton;
    btnExportar: TAdvGlowButton;
    Exportar: TcxGridDBColumn;
    Importar: TcxGridDBColumn;
    cbExportar: TCheckBox;
    cbImportar: TCheckBox;
    JvLabel4: TJvLabel;
    NombreRol: TDBText;
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButtonEnter(Sender: TObject);
    procedure AdvGlowButtonExit(Sender: TObject);
    procedure AdvGlowButtonClick(Sender: TObject);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
  private
    function CreaUnBoton: String;
    procedure LlenaUsuarios;
    procedure VerificarRegistroPermisos;
    procedure ModificarEstado(Permiso: TClasePermisos);
  public
    { Public declarations }
  end;

var
  FrmUsuarioPermisos: TFrmUsuarioPermisos;

implementation

{$R *.dfm}

uses
  UTFrmUsuario;

procedure TFrmUsuarioPermisos.AdvGlowButtonExit(Sender: TObject);
begin
  TAdvGlowButton(Sender).Font.Style := [];
end;

procedure TFrmUsuarioPermisos.btnAceptarEdicionClick(Sender: TObject);
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

procedure TFrmUsuarioPermisos.btnBorradoClick(Sender: TObject);
begin
  ModificarEstado(vpBorrar);
end;

procedure TFrmUsuarioPermisos.btnBorrarClick(Sender: TObject);
var
  NombreBoton: String;
  Componente: TComponent;
begin
  try
    if AnsiCompareText(cdUsuario.FieldByName('sIdUsuario').AsString, Globales.Elemento('Usuario').AsString) = 0 then
    begin
      if InteliDialog.ShowModal('Intento de inhabilitar el Usuario actual', 'Está intentando Inhabilitar el Usuario actual, una vez cerrada la sesión no podrá volver a entrar al sistema con este usuario.' + #10 + #10 + '¿Está seguro de que esto es lo que quiere hacer?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        raise InteligentWarning.Create('Proceso cancelado por el usuario');
    end
    else
      if AnsiCompareText(cdUsuario.FieldByName('Administrador').AsString, 'Si') = 0 then
        if InteliDialog.ShowModal('Intento de inhabilitar un Administrador de Sistema', 'Está intentando Inhabilitar el Usuario "' + cdUsuario.FieldByName('sIdUsuario').AsString + '", este Usuario está dado de alta como Administrador del sistema, una vez Inhabilitado solamente podrá reactivarlo con la clave y password del super usuario "admin".' + #10 + #10 + '¿Está seguro de que esto es lo que quiere hacer?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
          raise InteligentWarning.Create('Proceso cancelado por el usuario');

    // Verificar si existe el dataset del usuario
    if cdUsuarioUpt.ProviderName = '' then
      if Not CrearConjunto(cdUsuarioUpt, 'usuarios', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Usuarios']);

    if Not CargarDatosFiltrados(cdUsuarioUpt, 'sIdUsuario', [cdUsuario.FieldByName('sIdUsuario').AsString]) then
      raise InteligentException.CreateByCode(6, ['Usuarios', 'Clave de Usuario', cdUsuario.FieldByName('sIdUsuario').AsString]);

    if cdUsuarioUpt.Active then
      cdUsuarioUpt.Refresh
    else
      cdUsuarioUpt.Open;

    if cdUsuarioUpt.RecordCount = 0 then
      raise InteligentException.CreateByCode(9, ['Usuario', cdUsuario.FieldByName('sIdUsuario').AsString]);

    if cdUsuario.FieldByName('Activo').AsString = 'Si' then
    begin
      if InteliDialog.ShowModal('Deshabilitar Usuario', 'Ha seleccionado Deshabilitar el Usuario [' + cdUsuario.FieldByName('sIdUsuario').AsString + ']' + #10 + #10 + '¿Está seguro de hacerlo en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        raise InteligentWarning.Create('*');
    end
    else
    begin
      if InteliDialog.ShowModal('Habilitar Usuario', 'Ha seleccionado Habilitar el Usuario [' + cdUsuario.FieldByName('sIdUsuario').AsString + ']' + #10 + #10 + '¿Está seguro de hacerlo en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        raise InteligentWarning.Create('*');
    end;

    NombreBoton := 'GlowButton' + cdUsuario.FieldByName('sIdUsuario').AsString;
    try
      cdUsuarioUpt.Edit;
      if cdUsuarioUpt.FieldByName('Activo').AsString = 'Si' then
        cdUsuarioUpt.FieldByName('Activo').AsString := 'No'
      else
        cdUsuarioUpt.FieldByName('Activo').AsString := 'Si';
      cdUsuarioUpt.Post;
      cdUsuarioUpt.ApplyUpdates(-1);
      cdUsuario.Refresh;
    except
      cdUsuarioUpt.Cancel;
      raise;
    end;

    // Refrescar los datos de la ventana de acuerdo al cambio
    Componente := sbUsuarios.FindComponent(NombreBoton);
    if Assigned(Componente) and (Componente.ClassType = TAdvGlowButton) then
    begin
      if cdUsuarioUpt.FieldByName('Activo').AsString = 'Si' then
      begin
        TAdvGlowButton(Componente).Caption := 'Deshabilitar Usuario';
        TAdvGlowButton(Componente).Picture := btnAutorizar.Picture;
        TAdvGlowButton(Componente).Font.Color := clBlack;
      end
      else
      begin
        TAdvGlowButton(Componente).Caption := 'Habilitar Usuario';
        TAdvGlowButton(Componente).Picture := btnDesautorizar.Picture;
        TAdvGlowButton(Componente).Font.Color := clGray;
      end;

      TAdvGlowButton(Componente).Click;
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

procedure TFrmUsuarioPermisos.btnEdicionClick(Sender: TObject);
begin
  ModificarEstado(vpEscribir);
end;

procedure TFrmUsuarioPermisos.btnEditarPermisosClick(Sender: TObject);
var
  fPermisos: TForm;
  Tamano: TPoint;
begin
  try
    if Not TWinControl(Sender).Enabled then
      raise InteligentException.CreateByCode(24, ['No es posible modificar los permisos del Administrador principal del sistema.']);

    if Not Assigned(dsPermisos.DataSet) then
      raise InteligentException.CreateByCode(24, ['Debe seleccionar primero un Usuario']);

    if Not cdUsuario.FieldByName('NombreRol').IsNull then
      raise InteligentException.CreateByCode(24, ['El Usuario [' + cdUsuario.FieldByName('NombreUsuario').AsString + '] corresponde al Rol [' + cdUsuario.FieldByName('NombreRol').AsString + '] por ello sus Permisos no pueden ser modificados.']);

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

procedure TFrmUsuarioPermisos.btnEditarUsuarioClick(Sender: TObject);
var
  NombreBoton,
  NombreOriginalBoton: String;
  Componente: TComponent;
begin
  try
    // Verificar si existe el dataset del usuario
    if cdUsuarioUpt.ProviderName = '' then
      if Not CrearConjunto(cdUsuarioUpt, 'usuarios', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Usuarios']);

    if Not CargarDatosFiltrados(cdUsuarioUpt, 'sIdUsuario', [cdUsuario.FieldByName('sIdUsuario').AsString]) then
      raise InteligentException.CreateByCode(6, ['Usuarios', 'Clave de Usuario', cdUsuario.FieldByName('sIdUsuario').AsString]);

    if cdUsuarioUpt.Active then
      cdUsuarioUpt.Refresh
    else
      cdUsuarioUpt.Open;

    if cdUsuarioUpt.RecordCount = 0 then
      raise InteligentException.CreateByCode(13, [cdUsuario.FieldByName('sIdUsuario').AsString, 'Usuarios']);

    NombreOriginalBoton := 'GlowButton' + cdUsuario.FieldByName('sIdUsuario').AsString;

    cdUsuarioUpt.Edit;

    Application.CreateForm(TFrmUsuario, FrmUsuario);
    FrmUsuario.dsUsuarioUpt.DataSet := cdUsuarioUpt;
    FrmUsuario.Administrador.Enabled := (AnsiCompareText(ClientModule1.cdUsuario.FieldByName('Administrador').AsString, 'Si') = 0);
    FrmUsuario.sIdUsuario.Enabled := FrmUsuario.Administrador.Enabled;

    try
      if FrmUsuario.ShowModal = mrOk then
      begin
        cdUsuario.Refresh;
        if cdUsuario.Locate('sIdUsuario', cdUsuarioUpt.FieldByName('sIdUsuario').AsString, []) then
        begin
          Componente := sbUsuarios.FindComponent(NombreBoton);
          if Assigned(Componente) and (Componente.ClassType = TAdvGlowButton) then
          begin
            NombreBoton := 'GlowButton' + cdUsuario.FieldByName('sIdUsuario').AsString;
            TAdvGlowButton(Componente).Name := NombreBoton;
            TAdvGlowButton(Componente).SetFocus;
            TAdvGlowButton(Componente).Click;
          end;
        end;
      end;
    finally
      FrmUsuario.dsUsuarioUpt.DataSet := Nil;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmUsuarioPermisos.btnExportarClick(Sender: TObject);
begin
  ModificarEstado(vpExportar);
end;

procedure TFrmUsuarioPermisos.btnImportarClick(Sender: TObject);
begin
  ModificarEstado(vpImportar);
end;

procedure TFrmUsuarioPermisos.btnImpresionClick(Sender: TObject);
begin
  ModificarEstado(vpImprimir);
end;

procedure TFrmUsuarioPermisos.btnImprimirClick(Sender: TObject);
begin
  ClientModule1.ImprimeReporte('Permisos.fr3', frxPermisos);
end;

procedure TFrmUsuarioPermisos.btnInsercionClick(Sender: TObject);
begin
  ModificarEstado(vpInsertar);
end;

procedure TFrmUsuarioPermisos.btnLecturaClick(Sender: TObject);
begin
  ModificarEstado(vpLeer);
end;

procedure TFrmUsuarioPermisos.btnNuevoUsuarioClick(Sender: TObject);
var
  NombreBoton: String;
  Componente: TComponent;
begin
  try
    // Verificar si existe el dataset del usuario
    if cdUsuarioUpt.ProviderName = '' then
      if Not CrearConjunto(cdUsuarioUpt, 'usuarios', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Usuarios']);

    if Not CargarDatosFiltrados(cdUsuarioUpt, 'sIdUsuario', [-9]) then
      raise InteligentException.CreateByCode(16, ['Usuarios']);

    if cdUsuarioUpt.Active then
      cdUsuarioUpt.Refresh
    else
      cdUsuarioUpt.Open;

    cdUsuarioUpt.Append;
    cdUsuarioUpt.FieldByName('IdUsuario').AsInteger := 0;
    cdUsuarioUpt.FieldByName('Administrador').AsString := 'No';
    cdUsuarioUpt.FieldByName('Activo').AsString := 'Si';

    Application.CreateForm(TFrmUsuario, FrmUsuario);
    FrmUsuario.dsUsuarioUpt.DataSet := cdUsuarioUpt;
    try
      if FrmUsuario.ShowModal = mrOk then
      begin
        cdUsuario.Refresh;
        if cdUsuario.Locate('sIdUsuario', cdUsuarioUpt.FieldByName('sIdUsuario').AsString, []) then
        begin
          NombreBoton := CreaUnBoton;
          Componente := sbUsuarios.FindComponent(NombreBoton);
          if Assigned(Componente) and (Componente.ClassType = TAdvGlowButton) then
          begin
            TAdvGlowButton(Componente).SetFocus;
            TAdvGlowButton(Componente).Click;
          end;
        end;
      end;
    finally
      FrmUsuario.dsUsuarioUpt.DataSet := Nil;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmUsuarioPermisos.btnPermitirTodoClick(Sender: TObject);
begin
  ModificarEstado(vpTodos);
end;

procedure TFrmUsuarioPermisos.btnQuitarTodosClick(Sender: TObject);
begin
  ModificarEstado(vpNinguno);
end;

procedure TFrmUsuarioPermisos.AdvGlowButtonClick(Sender: TObject);
var
  NombreComp: String;
  Componente: TComponent;
  locDataSet: TClientDataSet;
begin
  try
    // Localizar el registro
    if Not cdUsuario.Locate('IdUsuario', TAdvGlowButton(Sender).Tag, []) then
      raise InteligentException.CreateByCode(1, ['Los datos de la tabla de Usuarios parecen estar corrompidos.']);

    // Verificar si el registro está activo
    if cdUsuario.FieldByName('NombreRol').IsNull then
    begin
      btnEditarPermisos.Enabled := (cdUsuario.FieldByName('Activo').AsString = 'Si') and (AnsiCompareText(cdUsuario.FieldByName('sIdUsuario').AsString, 'admin') <> 0);
      btnPermitirTodo.Enabled   := btnEditarPermisos.Enabled;
      btnQuitarTodos.Enabled    := btnEditarPermisos.Enabled;
      btnLectura.Enabled        := btnEditarPermisos.Enabled;
      btnEdicion.Enabled        := btnEditarPermisos.Enabled;
      btnInsercion.Enabled      := btnEditarPermisos.Enabled;
      btnBorrado.Enabled        := btnEditarPermisos.Enabled;
      btnImpresion.Enabled      := btnEditarPermisos.Enabled;
      if (cdUsuario.FieldByName('Activo').AsString = 'Si') and (AnsiCompareText(cdUsuario.FieldByName('sIdUsuario').AsString, 'admin') <> 0) then
      begin
        btnBorrar.Caption        := 'Deshabilitar Usuario';
        btnBorrar.Picture        := btnDesautorizar.Picture;
        btnEditarUsuario.Enabled := True;
      end
      else
      begin
        btnBorrar.Caption        := 'Habilitar Usuario';
        btnBorrar.Picture        := btnAutorizar.Picture;
        btnEditarUsuario.Enabled := False;
      end;
      btnBorrar.Enabled := btnEditarUsuario.Enabled;
    end
    else
    begin
      btnEditarPermisos.Enabled := True;
      btnPermitirTodo.Enabled   := True;
      btnQuitarTodos.Enabled    := True;
      btnLectura.Enabled        := True;
      btnEdicion.Enabled        := True;
      btnInsercion.Enabled      := True;
      btnBorrado.Enabled        := True;
      btnImpresion.Enabled      := True;
      btnEditarUsuario.Enabled  := True;
      btnBorrar.Enabled         := True;
    end;

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
      if Not CrearConjunto(locDataSet, 'cmt_permisos', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Permisos por Usuario']);

      if Not CargarDatosFiltrados(locDataSet, 'sIdUsuario', [cdUsuario.FieldByName('sIdUsuario').AsString]) then
        raise InteligentException.CreateByCode(6, ['Permisos por Usuario', 'sIdUsuario', cdUsuario.FieldByName('sIdUsuario').AsString]);

      locDataSet.Open;
      Self.InsertComponent(locDataSet);
      dsPermisos.DataSet := locDataSet;
    end;

    {btnEditarPermisos.Enabled := AnsiCompareText(cdUsuario.FieldByName('sIdUsuario').AsString, 'admin') <> 0;
    btnPermitirTodo.Enabled := btnEditarPermisos.Enabled;
    btnQuitarTodos.Enabled := btnEditarPermisos.Enabled;
    btnlectura.Enabled := btnEditarPermisos.Enabled;
    btnEdicion.Enabled := btnEditarPermisos.Enabled;
    btnInsercion.Enabled := btnEditarPermisos.Enabled;
    btnBorrado.Enabled := btnEditarPermisos.Enabled;
    btnImpresion.Enabled := btnEditarPermisos.Enabled;}
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.title, e.message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmUsuarioPermisos.AdvGlowButtonEnter(Sender: TObject);
begin
  TAdvGlowButton(Sender).Font.Style := [fsBold];
end;

procedure TFrmUsuarioPermisos.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
  SetRegistry('\Ventanas', '\' + Self.Name, 'Top', IntToStr(Self.Top));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Left', IntToStr(Self.Left));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Width', IntToStr(Self.Width));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Height', IntToStr(Self.Height));
  SetRegistry('\Ventanas', '\' + Self.Name + '\sbUsuarios', 'Width', IntToStr(sbUsuarios.Width));

  for i:= 0 to tvPermisos.ColumnCount -1 do
    SetRegistry('\Ventanas', '\' + Self.Name + '\tvPermisos', 'Column' + IntToStr(i), IntToStr(tvPermisos.Columns[i].Width));

  for i := 0 to Self.ComponentCount -1 do
    if (Self.Components[i].ClassType = TClientDataSet) and (TClientDataSet(Self.Components[i]).ProviderName <> '') then
      EliminarConjunto([TClientDataSet(Self.Components[i])]);

  Action := caFree;
end;

procedure TFrmUsuarioPermisos.fPermisosClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if cdPermisosUpt.State In [dsInsert, dsEdit] then
    cdPermisosUpt.Cancel;
end;

procedure TFrmUsuarioPermisos.FormMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
var
  I: Integer;
begin
  Handled := PtInRect(sbUsuarios.ClientRect, sbUsuarios.ScreenToClient(MousePos));
  if Handled then
    for I := 1 to Mouse.WheelScrollLines do
    try
      if WheelDelta > 0 then
        sbUsuarios.Perform(WM_VSCROLL, SB_LINEUP, 0)
      else
        sbUsuarios.Perform(WM_VSCROLL, SB_LINEDOWN, 0);
    finally
      sbUsuarios.Perform(WM_VSCROLL, SB_ENDSCROLL, 0);
    end;end;

procedure TFrmUsuarioPermisos.FormShow(Sender: TObject);
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
        sbUsuarios.Width := StrToInt(VarRegistry('\Ventanas', '\' + self.Name + '\sbUsuarios', 'Width'));
      except
        ;
      end;

      for i:= 0 to tvPermisos.ColumnCount -1 do
        try
          tvPermisos.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + self.Name + '\tvPermisos', 'Column'+ IntToStr(i)));
        except
          ;
        end;

      if Not CrearConjunto(cdUsuario, 'usuarios', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Usuarios']);

      if Not CargarDatosFiltrados(cdUsuario, 'Activo', ['Todos']) then
        raise InteligentException.CreateByCode(6, ['Usuarios', 'Todos', 'Activo']);

      if Not CrearConjunto(cdPermisosUpt, 'cmt_usuariopermisos', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Permisos por Usuario']);

      if Not ((AnsiCompareText(ClientModule1.cdUsuario.FieldByName('Usuario').AsString, 'admin') = 0) or (AnsiCompareText(ClientModule1.cdUsuario.FieldByName('Administrador').AsString, 'Si') = 0)) then
        if Not CargarDatosFiltrados(cdUsuario, 'sIdUsuario', [ClientModule1.cdUsuario.FieldByName('Usuario').AsString]) then
          raise InteligentException.CreateByCode(6, ['Usuarios', 'Código Usuario', ClientModule1.cdUsuario.FieldByName('Usuario').AsString]);

      cdUsuario.Open;

      LlenaUsuarios;
    finally
      Screen.Cursor := LocCursor;
    end;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmUsuarioPermisos.LlenaUsuarios;
var
  NombreBoton: String;
  Componente: TComponent;
begin
  cdUsuario.First;
  while sbUsuarios.ComponentCount > 0 do
    sbUsuarios.Components[0].Destroy;

  NombreBoton := '';
  while not cdUsuario.Eof do
  begin
    if cdUsuario.RecNo = 1 then
      NombreBoton := CreaUnBoton
    else
      CreaUnBoton;
    cdUsuario.Next;
  end;

  if NombreBoton <> '' then
  begin
    Componente := sbUsuarios.FindComponent(NombreBoton);
    if Assigned(Componente) and (Componente.ClassType = TAdvGlowButton) then
      TAdvGlowButton(Componente).Click;
  end;
end;

procedure TFrmUsuarioPermisos.pnlGeneralAccionesResize(Sender: TObject);
begin
  pnlSangria.Width := (pnlGeneralAcciones.Width - pnlAcciones.Width) Div 2;
end;

procedure TFrmUsuarioPermisos.tvPermisosDblClick(Sender: TObject);
begin
  btnEditarPermisos.Click;
end;

function TFrmUsuarioPermisos.CreaUnBoton: String;
const
  Altura = 100;
  Aster: Array[False..True] of String = ('', '*');
var
  Boton: TAdvGlowButton;
  NombreBoton: String;
begin
  Boton := TAdvGlowButton.Create(sbUsuarios);
  NombreBoton := 'GlowButton' + cdUsuario.FieldByName('sIdUsuario').AsString;
  Boton.Name := NombreBoton;
  Boton.Parent := sbUsuarios;
  Boton.Height := Altura;
  Boton.Top := (Altura * cdUsuario.RecordCount);
  if AnsiCompareText(cdUsuario.FieldByName('sIdUsuario').AsString, 'admin') = 0 then
    Boton.Caption := '(ADMINISTRADOR)'
  else
  begin
    Boton.Font.Size := 7;
    if cdUsuario.FieldByName('NombreRol').IsNull then
      Boton.Caption := Aster[cdUsuario.FieldByName('Administrador').AsString = 'Si'] + cdUsuario.FieldByName('NombreUsuario').AsString
    else
      Boton.Caption := Aster[cdUsuario.FieldByName('Administrador').AsString = 'Si'] + cdUsuario.FieldByName('NombreUsuario').AsString + #10 + '(' + cdUsuario.FieldByName('NombreRol').AsString + ')';
  end;
  Boton.Align := alTop;
  Boton.TabStop := True;
  Boton.OnEnter := AdvGlowButtonEnter;
  Boton.OnExit := AdvGlowButtonExit;
  Boton.OnClick := AdvGlowButtonClick;
  Boton.Images := imgUsuario;
  if cdUsuario.FieldByName('Activo').AsString = 'Si' then
  begin
    Boton.ImageIndex := 0;
    Boton.Font.Style := [];
    Boton.Font.Color := clBlack;
  end
  else
  begin
    Boton.ImageIndex := 1;
    Boton.Font.Style := [fsItalic];
    Boton.Font.Color := clGray;
  end;
  Boton.Layout := blGlyphTop;
  Boton.Tag := cdUsuario.FieldByName('IdUsuario').AsInteger;

  sbUsuarios.InsertComponent(Boton);
  Result := NombreBoton;
end;

procedure TFrmUsuarioPermisos.VerificarRegistroPermisos;
begin
  // Verificar si el dataset está abierto
  if cdPermisosUpt.Active then
  begin
    // si está abierto, verificar contra sus parametros
    if Not ((cdpermisosUpt.FieldByName('Tabla').AsString = dsPermisos.DataSet.FieldByName('TABLE_NAME').AsString) and (cdPermisosUpt.FieldByName('sIdUsuario').AsString = cdUsuario.FieldByName('sIdUsuario').AsString)) then
      // Si no es el mismo registro de permisos se deberá localizar
      if Not CargarDatosFiltrados(cdPermisosUpt, 'Tabla,sIdUsuario', [dsPermisos.DataSet.FieldByName('TABLE_NAME').AsString, cdUsuario.FieldByName('sIdUsuario').AsString]) then
        raise InteligentException.CreateByCode(6, ['Permisos de Usuario', dsPermisos.DataSet.FieldByName('TABLE_NAME').AsString + '/' + cdUsuario.FieldByName('sIdUsuario').AsString, 'Tabla/Clave Usuario']);
  end
  else
    // Si no está abierto, se deberá localizar
    if Not CargarDatosFiltrados(cdPermisosUpt, 'Tabla,sIdUsuario', [dsPermisos.DataSet.FieldByName('TABLE_NAME').AsString, cdUsuario.FieldByName('sIdUsuario').AsString]) then
      raise InteligentException.CreateByCode(6, ['Permisos de Usuario', dsPermisos.DataSet.FieldByName('TABLE_NAME').AsString + '/' + cdUsuario.FieldByName('sIdUsuario').AsString, 'Tabla/Clave Usuario']);

  if cdPermisosUpt.Active then
    cdPermisosUpt.Refresh
  else
    cdPermisosUpt.Open;

  // Verificar si el registro existe
  if cdPermisosUpt.RecordCount = 0 then
  begin
    cdPermisosUpt.Append;
    cdPermisosUpt.FieldByName('IdUsuarioPermisos').AsInteger := 0;
    cdPermisosUpt.FieldByName('sIdUsuario').AsString := cdUsuario.FieldByName('sIdUsuario').AsString;
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

procedure TFrmUsuarioPermisos.ModificarEstado(Permiso: TClasePermisos);
begin
  try
    if Not Assigned(dsPermisos.DataSet) then
      raise InteligentException.CreateByCode(24, ['Debe seleccionar primero un Usuario']);

    if Not cdUsuario.FieldByName('NombreRol').IsNull then
      raise InteligentException.CreateByCode(24, ['El Usuario [' + cdUsuario.FieldByName('NombreUsuario').AsString + '] corresponde al Rol [' + cdUsuario.FieldByName('NombreRol').AsString + '] por ello sus Permisos no pueden ser modificados.']);

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
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

end.
