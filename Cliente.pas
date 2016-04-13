unit Cliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OverbyteIcsWndControl, OverbyteIcsWSocket, URegistro, DSHTTPCommon,
  DSService, DBXJSON, ExtCtrls, DBCtrls, StdCtrls, NxDBGrid, NxGrid,
  NxPageControl, ComCtrls, TypInfo, ClientModuleUnit1, NxCollection;

type
  TMyCallback = class(TDBXCallback)
    function Execute(const Arg: TJSONValue): TJSONValue; override;
  end;

  TFrmComisariato = class(TForm)
    MsgServidor: TWSocket;
    DSClientCallbackChannelManager1: TDSClientCallbackChannelManager;
    AlertSrv: TNxAlertWindow;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    IdentificadorSistema: String;
    ListaChat,
    lsClientsConected: TStringList;
    cConfiguracion,
    IdSesion,
    FMyCallbackName: string;
    ForzarSalir: Boolean;
    FocusColor: Tcolor;
    procedure ScreenActiveControlChange(Sender: TObject);
    procedure EnterColor(Sender: TWinControl);
    procedure ExitColor(Sender: TWinControl);
    procedure InicializarSistema(Reiniciar: boolean = false);
  public
    ObligaCerrar: Boolean;
    PuertoMsgUtilizado: Boolean;
    procedure LogMsg(const s: string);
    procedure QueueLogMsg(const s: string);
  end;

var
  FrmComisariato: TFrmComisariato;
  LastFocused: TWinControl;
  OriginalColor: TColor;

implementation

uses UInteliDialog;

{$R *.dfm}

function CadenaServidor(Cadena: String): Boolean;
begin
  Result := ClientModule1.FuncCadenaServidor(Cadena);
end;

function TMyCallback.Execute(const Arg: TJSONValue): TJSONValue;
begin
  FrmComisariato.QueueLogMsg(Arg.ToString);
  Result := TJSONTrue.Create;
end;

procedure TFrmComisariato.LogMsg(const s: string);
begin
  // Enviar cadena para que sea decodificada y ejecute la acción correspondiente
  CadenaServidor(s);
end;

procedure TFrmComisariato.QueueLogMsg(const s: string);
begin
  TThread.Queue(nil,
    procedure
    begin
      LogMsg(s)
    end);
end;

procedure TFrmComisariato.FormCreate(Sender: TObject);
var
  x1, Count: Integer;
  AlMenu: TAlign;
  Lista: TStringList;
  Cadena: String;
  ProgressBarStyle: Integer;
begin
  ObligaCerrar := False;
  MsgServidor.Proto := 'udp';
  MsgServidor.Addr := '0.0.0.0';
  MsgServidor.Port := '81';
  Try
    PuertoMsgUtilizado := False;
    MsgServidor.Listen;

    Screen.Cursors[crAppStart] := LoadCursorFromFile(PChar(ExtractFilePath(Application.ExeName) + '\Busy.ani'));
  Except
    on e:exception do
    begin
      PuertoMsgUtilizado:= True;
      ForzarSalir := True;
      ObligaCerrar := True;

      //ShowMessage('No se pueden enviar mensajes al servidor.'+' Error al tratar de comunicarse con el puerto 81, puede que tenga otro cliente iniciado o bien el puerto está cerrado.');
    end;
  End;

  IdentificadorSistema := 'Comisariato';
  ListaChat := TStringList.Create;
  lsClientsConected:=TStringList.Create;

  cConfiguracion := '';   // Inicializar configuracion en nulo hasta que el usuario seleccione alguna

  Cadena := StringReplace(DateTimeToStr(Now), ':', '', [rfReplaceAll, rfIgnoreCase]);
  Cadena := StringReplace(Cadena, '/', '', [rfReplaceAll, rfIgnoreCase]);
  Cadena := StringReplace(Cadena, ' ', '', [rfReplaceAll, rfIgnoreCase]);
  Cadena := StringReplace(Cadena, 'A', 'S', [rfReplaceAll, rfIgnoreCase]);
  Cadena := StringReplace(Cadena, 'P', 'S', [rfReplaceAll, rfIgnoreCase]);
  Cadena := StringReplace(Cadena, 'H', 'S', [rfReplaceAll, rfIgnoreCase]);
  Cadena := StringReplace(Cadena, 'M', 'S', [rfReplaceAll, rfIgnoreCase]);
  IdSesion:=Cadena;

  // Callbacks
  DSClientCallbackChannelManager1.ManagerId := TDSTunnelSession.GenerateSessionId;
  FMyCallbackName := TDSTunnelSession.GenerateSessionId;
  DSClientCallbackChannelManager1.RegisterCallback(FMyCallbackName, TMyCallback.Create);

  //manejo del focus
  Screen.OnActiveControlChange := ScreenActiveControlChange;
end;

procedure TFrmComisariato.FormShow(Sender: TObject);
begin
  InicializarSistema;
  LeerConfiguaracionAcceso(cdConfiguracionAcceso);
  ClientModule1.CargarRutaReportes(19);
end;

procedure TFrmComisariato.ScreenActiveControlChange(Sender: TObject);
var
  doEnter, doExit: boolean;
  previousActiveControl: TWinControl;
begin
  try
    if Screen.ActiveControl = nil then
    begin
      LastFocused := nil;
      Exit;
    end;

    try
      lastFocused.Enabled;
    except
      on e:exception do
        lastFocused := nil;
    end;

    doExit := LastFocused <> Nil;
    if doExit then
      PreviousActiveControl := LastFocused;

    if (Screen.ActiveControl <> nil) and (Screen.ActiveControl.Enabled) then
    begin
      if (Screen.ActiveControl.ClassType = TDBEdit) or (Screen.ActiveControl.ClassType = TEdit) or
         (Screen.ActiveControl.ClassType = TDBComboBox) or (Screen.ActiveControl.ClassType = TComboBox) or
         (Screen.ActiveControl.ClassType = TDBMemo) then
      begin
        doEnter := true;
        doExit := true;

        if Screen.ActiveControl is TButtonControl then doEnter := false;
        if Screen.ActiveControl is TNextDBGrid then doEnter := false;
        if Screen.ActiveControl is TForm then doEnter := false;
        if Screen.ActiveControl is TNextGrid then doEnter := false;
        if Screen.ActiveControl is TNxPageControl then doEnter := false;
        doEnter := (TComponent(Screen.ActiveControl).Tag and (1 shl 0)) = 0;
        doExit := (TComponent(Screen.ActiveControl).Tag and (1 shl 0)) = 0;

        PreviousActiveControl := LastFocused;

        if previousActiveControl <> nil then
        begin
          if previousActiveControl is TButtonControl then doExit := false;
          if previousActiveControl is TNextDBGrid then doExit := false;
          if previousActiveControl is TForm then doExit := false;
          if previousActiveControl is TNextGrid then doExit := false;
          if Screen.ActiveControl is TNxPageControl then doEnter := false;
          if Screen.ActiveControl is TTreeView then doEnter := false;
        end;

        LastFocused := Screen.ActiveControl;

        if doEnter then EnterColor(lastFocused);
      end;
    end;

    if doExit then  ExitColor(PreviousActiveControl);

  Except
    on e:Exception do
      ;
  end;
end;

procedure TFrmComisariato.EnterColor(Sender: TWinControl);
begin
  if Sender <> nil then
  begin
    if IsPublishedProp(Sender,'Color') then
    begin
      originalColor := Globales.Elemento('Color_Salida').AsInteger;
      SetOrdProp(Sender,'Color', focusColor) ;
    end ;
  end ;
end;

procedure TFrmComisariato.ExitColor(Sender: TWinControl);
begin
  if Sender <> nil then
  begin
    if  TComponent(sender).Tag <> 99 then
    begin
      if IsPublishedProp(Sender,'Color') then
      begin
        SetOrdProp(Sender, 'Color', Globales.Elemento('Color_salida').AsInteger);
      end ;
    end;
  end ;
end;

procedure TFrmComisariato.InicializarSistema(Reiniciar: boolean = false);
var
  ii, count: Integer;
  ListaBases: TStringList;
  ListaTmp: TStringList;
  Providername: String;
  PopWizard: TFrmEsquema;
  valida, verifica,
  CadenaFechaHora: string;
  Paso: TDragObject;
  dtCreado,
  dtModificado,
  dtAccesado: TDateTime;
  Anio, Mes, Dia: Word;
  Hora, Min, Sec, MM: Word;
  StrCreado,
  StrModificado: String;
  cdSistemas: TClientDataSet;
  ListaPar: TStringList;
begin

  ForzarSalir := True;
  Habil := True;
  Try
    // Generar colores por default
    Globales := TGlobales.Create;
    GlobalColor1 := 12632256;  //color Global
    GlobalColor2 := 10789024; //color secundario
    GlobalColorPanel := 15780518;   //color de tpanel
    GlobalColorGroupText := 0; //color de fuente de Groupbox
    GlobalColorGroup := 15780518;   //color de GroupBox
    GlobalColorCampo := 16777215;  //color de tedit, tdbedit tdbmemo
    GlobalColorCaptura := 0;  //color de entrada de texto
    GlobalColorTextBtn := -16777208;   //color fuente de boton
    Globales.SetValue('Color_Salida', clWhite);
    Globales.SetValue('Color_Entrada', 12639424);
    focuscolor :=  Globales.Elemento('Color_entrada').AsInteger;

    Try
      if Assigned(TClientDataSet(Self.FindComponent('TABLAISPT'))) then
        TClientDataSet(Self.FindComponent('TABLAISPT')).Destroy;

      if Assigned(TClientDataSet(Self.FindComponent('SUBSIDIOISPT'))) then
        TClientDataSet(Self.FindComponent('SUBSIDIOISPT')).Destroy;

      if Assigned(TClientDataSet(Self.FindComponent('TABLAIMSS'))) then
        TClientDataSet(Self.FindComponent('TABLAIMSS')).Destroy;

    Except
      on e: InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
    End;

    Try
      if ParamCount > 0 then
      begin
        ListaPar := TStringList.Create;
        ListaPar.CommaText := ParamStr(1);
      end;

      Application.CreateForm(TFrmConectando, FrmConectando);
      FrmConectando.ListaPar := ListaPar;
      if FrmConectando.ShowModal = mrCancel then
        raise InteligentConnection.Create('***');   // Si se ha cancelado en la ventana de conecta se deber cerrar la ventana aquí
    Finally
      FreeAndNil(FrmConectando);
      ListaPar.Free;
    end;

    // Verificar si se ha podido conectar con la base de datos
    if Not ClientModule1.SQLConnection1.Connected then
      raise Exception.Create('No se ha podido establecer la comunicación con la base de datos');

    if ClientModule1.cdNucConfiguracion.Active then
    begin
      Eliminarconjunto(ClientModule1.cdNucConfiguracion);
      ClientModule1.cdNucConfiguracion.Free;
      ClientModule1.cdNucConfiguracion := TClientDataset.create(nil);
    end;

    PrecargaColores(ClientModule1.cdNucConfiguracion);
    ClientModule1.ComponentColor(Self);

    // Acceder a las imagenes de la configuración para actualizar el archivo local
    Try
      // Cargar la imagen a memoria
      Crearconjunto(cdImagen, 'nuc_configuracion_imagen1', ccUpdate);
      CargarDatosFiltrados(cdImagen, 'Parametro', ['ImagenGrande']);
      cdImagen.Open;
    Except
      raise;
    End;

    ModificarIconoAplicacion;   // Buscar la imagen guardada en la configuración para sustituirla

    AsignarDireccionServidor;   // Asignar la direccion del servidor a los objetos de comunicación

    //añadiendo formularios
    CrearConjunto(cdOrganizaciones, cOrganizacion, providername, ccUpdate);
    cdOrganizaciones.Open;
    if CdOrganizaciones.RecordCount < 1 then
    begin
      Try
      PopWizard := TFrmEsquema.Create(Self);
        PopWizard.Showmodal;
      if PopWizard.Cancelado = True then
          raise Exception.Create('No se ha podido activar el configurador de la estructura de empresa');
      Finally
        FreeAndNil(PopWizard);
      End;
    end;

    Try
    /// OJO AQUÍ RANGEL..... ESTABAS PROBANDO EL TFRMSELECCIONDX
      Application.CreateForm(TFrmSeleccion, FrmSeleccion);
      Case FrmSeleccion.ShowModal of
        mrOk: ;
        mrNo: raise Exception.Create('No se ha podido activar la ventana de selección de estructura de acceso al sistema');
        mrCancel: raise InteligentConnection.Create('***');
      End;

    Finally
      FreeAndNil(FrmSeleccion);
    End;
    // Fin formularios añadidos
    Form2.BringToFront;   // Traer la ventana hacia el frente

    //verificar proceso de solicitud
    try
      valida := ClientModule1.ConfigGetValor('validacion',Clientmodule1.cdNucConfiguracion);
      if Length(Trim(valida)) < 2 then
      begin
        raise Exception.Create('');
      end;
    except
      valida := 'si';
      if not ClientModule1.SetNewValorConfig('validacion','se valida','si') then
        ClientModule1.EditValorConfig('validacion','si');
    end;

    if valida = 'si' then
      Validacindesolicitudes1.Visible := True
    else
      Validacindesolicitudes1.Visible := False;

    try
      verifica := ClientModule1.ConfigGetValor('verificacion',Clientmodule1.cdNucConfiguracion);
      if Length(Trim(verifica)) < 2 then
      begin
        raise Exception.Create('');
      end;
    except
      verifica := 'si';
      if not ClientModule1.SetNewValorConfig('verificacion','se verifica','si') then
        ClientModule1.EditValorConfig('verificacion','si');
    end;

    if verifica = 'si' then
      Verificaciondesolicitudes1.Visible := True
    else
      Verificaciondesolicitudes1.Visible := False;

    // Generar el modo todopoderoso para los usuarios de ADMIN
    GodMode := AnsiCompareText(ClientModule1.cdUsuario.FieldByName('CodigoRol').AsString,'ADMIN') = 0;

    ///////////////////////////////////////////////////////////////////////
    ///  Cargar los datos del menu
    ///////////////////////////////////////////////////////////////////////
    ObtenerPrefijo(ListaComa);
    // Buscar ahora los prefijos de los sistemas a los cuales tiene permiso y dejar solo aquellos
    // validos según los permisos asignados al rol
    if not GodMode then
    begin
      ListaTmp := TStringList.Create;
      ListaTmp.Delimiter := ',';
      ListaTmp.DelimitedText := ListaComa;
      cdSistemas := TClientDataSet.Create(nil);
      CrearConjunto(cdSistemas,'nuc_sistemapermiso','SELECT');
      CargarDatosFiltrados(cdSistemas,'idrol',[ClientModule1.cdUsuario.FieldByName('idRol').AsInteger]);
      cdSistemas.Open;
      ii := 0;
      while ii < ListaTmp.Count do
      begin
        if not cdSistemas.Locate('prefijo',ListaTmp[ii],[loCaseInsensitive]) then
          ListaTmp.Delete(ii)
        else
          inc(ii);
      end;
      ListaComa := ListaTmp.DelimitedText;
      cdSistemas.Close;
      EliminarConjunto(cdSistemas);
      cdSistemas.Free;
      ListaTmp.Free;
    end;

    CargarDatosMenu;

    //Cargando registro de base de datos y direccion de servidor
    Try
      ListaBases := TStringList.Create;
      ListaBases.Clear;
      try
        ListaBases.CommaText := VarRegistry('\Configuracion', '\Conexion', 'DATABASE');
        ii := ListaBases.IndexOf(Globales.Elemento('DATABASE').AsString);
        if ii >= 0 then
        begin
          if Not ((TipoCliente = '0') or (TipoCliente = '2')) then
          begin
            StatusBar1.Panels[2].Text := 'Base de datos: ' + ListaBases[ii];
            StatusBar1.Panels[2].Width := Trunc(StatusBar1.Canvas.TextWidth(StatusBar1.Panels[2].Text) * 1.4);
          end
          else
            lblDataBase.Caption := ListaBases[ii];
        end;
      except
        ;
      end;

      try
        ListaBases.CommaText := VarRegistry('\Configuracion', '\Conexion', 'dbhost');
        if ii < ListaBases.Count then
        begin
          if Not ((TipoCliente = '0') or (TipoCliente = '2')) then
          begin
            StatusBar1.Panels[3].Text := 'Servidor: ' + ListaBases[ii];
            StatusBar1.Panels[3].Width := Trunc(StatusBar1.Canvas.TextWidth(StatusBar1.Panels[3].Text) * 1.4);
          end
          else
            lblServidor.Caption := ListaBases[ii];
        end;
      except
        ;
      end;
    Finally
      ListaBases.Free;
    End;

    // verificar el tipo de permiso
    try
      TipodePermiso := ClientModule1.ConfigGetValor('tipopermiso',ClientModule1.cdNucConfiguracion);
      if Length(trim(TipodePermiso)) < 2 then
        raise Exception.Create('');
    except
      begin
        TipodePermiso := 'Rol';
        if not ClientModule1.SetNewValorConfig('tipopermiso','Tipo de permisos manejados por el sistema.','Rol') then
          ClientModule1.EditValorConfig('tipopermiso','Rol');
      end;
    end;

    //verificando tamaño de fuente
    try
      if Length(trim(ClientModule1.ConfigGetValor('Datos',ClientModule1.cdNucConfiguracion))) < 1 then
        raise Exception.Create('');
    except
      begin
        if not ClientModule1.SetNewValorConfig('Datos','Tamaño de fuente.','9') then
          ClientModule1.EditValorConfig('Datos','9');
      end;
    end;

    try
      if Length(trim(ClientModule1.ConfigGetValor('Ventana',ClientModule1.cdNucConfiguracion))) < 1 then
        raise Exception.Create('');
    except
      begin
        if not ClientModule1.SetNewValorConfig('Ventana','Tamaño de fuente.','8') then
          ClientModule1.EditValorConfig('Ventana','8');
      end;
    end;

    //verifica si esta configurado mostrar el hint por usuario
    HintBallon.UseBalloonAsApplicationHint := clientmodule1.cdUsuario.fieldbyname('showhint').AsInteger = 1;
    //por el momento e desactiva el globo de hints a petición de E Rangel
    HintBallon.UseBalloonAsApplicationHint := False;

    // Determinar el tipo de permisos que se debe usar
    ClientModule1.CargaPermisos(ClientModule1.cdUsuario.FieldByName('idRol').AsInteger);


    Btn_MenuRegresar.Appearance.ColorMirror := GlobalColor1;
    Btn_MenuRegresar.Appearance.ColorMirrorDisabled := GlobalColor2;

    BtnTrash.Visible := False;//AnsiLowerCase(ClientModule1.cdUsuario.FieldByName('usuario').AsString) = 'admin';

    if Not ((TipoCliente = '0') or (TipoCliente = '2')) then
    begin
      Count := 0;
      while Count < self.ComponentCount do
      begin
        if Self.Components[count].ClassName = 'TPanel' then
          TPanel(Self.Components[count]).Visible := False;
        inc(Count);
      end;
      //tbMain.Collaps;
      tbMain.NextActivePage;
      StatusBar1.Panels[4].Text := 'Nombre: ' + ClientModule1.cdUsuario.FieldByName('nombreusuario').AsString;
      StatusBar1.Panels[4].Width := Trunc(StatusBar1.Canvas.TextWidth(StatusBar1.Panels[4].Text) * 1.4);
      StatusBar1.Panels[5].Text := 'Rol: ' + ClientModule1.cdUsuario.FieldByName('titulorol').AsString;
      StatusBar1.Panels[5].Width := Trunc(StatusBar1.Canvas.TextWidth(StatusBar1.Panels[5].Text) * 1.4);
    end;

    //añadiendo informacion del acceso
    //si la barra es vertical
    ClientModule1.cdOrganizacion.First;
    if ((TipoCliente = '0') or (TipoCliente = '2')) then
    begin
      Form2.MemoInfo.Text := '';
      while not ClientModule1.cdOrganizacion.Eof do
      begin
        if ClientModule1.cdOrganizacion.RecNo > 1 then
          Form2.MemoInfo.Text := Form2.MemoInfo.Text + ' >> ';
        Form2.MemoInfo.Text := Form2.MemoInfo.Text + ClientModule1.cdOrganizacion.FieldByName('codigoorganizacion').AsString;
        ClientModule1.cdOrganizacion.Next;
      end;
    end
    else
    begin
      Form2.tbMain.Caption.Caption := '';
      EncabezadoSubsistema;
    end;

    // Actualizar estado anterior de la ventana de comunicación
    ProviderName := VarRegistry( '\Ambiente\Principal', '\Comunicación', 'Estado');
    //if ProviderName = 'Anclado' then

    if (TipoCliente = '2') or (TipoCliente = '3') then
      ReadWallpaper(Fondo);
    ForzarSalir := False;

    DSTCPIPClientCallbackChannelManager1.DSHostname:= ClientModule1.SQLConnection1.Params.Values['Hostname'];
    dSTCPIPClientCallbackChannelManager1.DSPort:=ClientModule1.SQLConnection1.Params.Values['port'];
    DSTCPIPClientCallbackChannelManager1.CommunicationProtocol:= ClientModule1.SQLConnection1.Params.Values['communicationProtocol'];

    DSHTTPClientCallbackChannelManager1.DSHostname:=ClientModule1.SQLConnection1.Params.Values['Hostname'];
    DSHTTPClientCallbackChannelManager1.DSPort:=ClientModule1.SQLConnection1.Params.Values['port'];
    DSHTTPClientCallbackChannelManager1.CommunicationProtocol:= ClientModule1.SQLConnection1.Params.Values['communicationProtocol'];

    Self.Resize;
  Except
    on e:InteligentConnection do
    begin
      ForzarSalir := True;
      Globales.Free;
      if e.Message <> '***' then
        InteliDialog.ShowModal('No se ha podido iniciar el sistema', 'No se ha podido iniciar el sistema debido a lo siguiente:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    //se pulso el boton salir en la suite
    on e:InteligentWarning do
    begin
      if e.Message = '*' then
      begin
        ForzarSalir := True;
        Globales.Free;
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;
    end;

    on e:exception do
    begin
      ForzarSalir := True;
      Globales.Free;
      InteliDialog.ShowModal('No se ha podido iniciar el sistema', 'No se ha podido iniciar el sistema por la siguiente razón:' + #10 + #10 +
                             e.message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

end.
