unit UTFrmBuscarSolicitud;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, AdvGlowButton, JvExControls, JvLabel, ExtCtrls,
  URegistro, DB, StrUtils, DateUtils;

type
  TFrmBuscarSolicitud = class(TForm)
    Panel2: TPanel;
    pnlBuscar: TPanel;
    JvLabel2: TJvLabel;
    eBuscar: TEdit;
    Panel4: TPanel;
    btnAbajo: TAdvGlowButton;
    btnArriba: TAdvGlowButton;
    Panel3: TPanel;
    btnAbrir: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    lvSolicitudes: TListView;
    Panel1: TPanel;
    JvLabel1: TJvLabel;
    cbVista: TComboBox;
    dsSolicitud: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbVistaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure eBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAbajoClick(Sender: TObject);
    procedure btnArribaClick(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
    procedure lvSolicitudesDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lvSolicitudesChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
  private
    btnActual: TAdvGlowButton;
    Resultado: TModalResult;
    function funcPregunta(Nodo: TAdvGlowButton): String;
    function LocalizaNodo(Key: Word; Shift: TShiftState; var Ind: Integer;
      Inicializa: Boolean): Boolean;
    procedure ProseguirBusqueda;
    procedure CargarListaRecetas;
  public
    { Public declarations }
  end;

var
  FrmBuscarSolicitud: TFrmBuscarSolicitud;

implementation

{$R *.dfm}

procedure TFrmBuscarSolicitud.FormCreate(Sender: TObject);
begin
  Resultado := mrCancel;
end;

procedure TFrmBuscarSolicitud.FormShow(Sender: TObject);
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

  CargarListaRecetas;
end;

procedure TFrmBuscarSolicitud.cbVistaChange(Sender: TObject);
begin
  // Cambiar la visualización del listview
  case cbVista.ItemIndex of
    0: lvSolicitudes.ViewStyle := vsIcon;
    1: lvSolicitudes.ViewStyle := vsList;
    2: lvSolicitudes.ViewStyle := vsReport;
  else
    lvSolicitudes.ViewStyle := vsSmallIcon;
  end;

  btnAbrir.Enabled := lvSolicitudes.Items.Count > 0;
end;

procedure TFrmBuscarSolicitud.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // Tecla <ESC>
  if (Key = 27) and (Shift = []) then
    if pnlBuscar.Visible then
      pnlBuscar.Visible := False
    else
      Close;

  // Tecla <F3>   Repetir la busqueda
  if (Key = 114) and (Shift = []) then
  begin
    Key := 13;
    eBuscarKeyDown(Sender, Key, []);
  end;

  // Tecla <F5>   Refrescar los datos
  if (Key = 116) and (Shift = []) then
  begin
    dsSolicitud.DataSet.Refresh;
    CargarListaRecetas;
  end;

  // Teclas <CTRL> + B
  if (Key = 66) and (ssCtrl in Shift) then
  begin
    pnlBuscar.Visible := True;
    eBuscar.SetFocus;
    if Not Assigned(btnActual) then
      btnActual := btnAbajo;
  end;
end;

procedure TFrmBuscarSolicitud.eBuscarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Ind: Integer;
begin
  if (Key = 13) and (Shift = []) then
    ProseguirBusqueda;
end;

procedure TFrmBuscarSolicitud.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmBuscarSolicitud.btnAbajoClick(Sender: TObject);
begin
  btnActual := btnAbajo;    // Establecer por default la busqueda hacia abajo
  ProseguirBusqueda;
end;

procedure TFrmBuscarSolicitud.btnArribaClick(Sender: TObject);
begin
  btnActual := btnArriba;    // Establecer por default la busqueda hacia abajo
  ProseguirBusqueda;
end;

procedure TFrmBuscarSolicitud.btnAbrirClick(Sender: TObject);
begin
  Resultado := mrOk;
  Close;
end;

procedure TFrmBuscarSolicitud.lvSolicitudesDblClick(Sender: TObject);
begin
  if btnAbrir.Enabled then
    btnAbrir.Click;
end;

procedure TFrmBuscarSolicitud.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SetRegistry('\Ventanas', '\' + Self.Name, 'Top', IntToStr(Self.Top));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Left', IntToStr(Self.Left));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Width', IntToStr(Self.Width));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Height', IntToStr(Self.Height));

  ModalResult := Resultado;
  Action := caFree;
end;

procedure TFrmBuscarSolicitud.lvSolicitudesChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
  if Assigned(lvSolicitudes.Selected) then
    dsSolicitud.DataSet.Locate('IdSolicitud', Integer(lvSolicitudes.Selected.Data), []);
end;

function TFrmBuscarSolicitud.funcPregunta(Nodo: TAdvGlowButton): String;
begin
  if Nodo = btnAbajo then
    Result := '¿Desea continuar con la busqueda desde el inicio?'
  else
    Result := '¿Desea continuar con la busqueda desde el final?';
end;

function TFrmBuscarSolicitud.LocalizaNodo(Key: Word; Shift: TShiftState;
  var Ind: Integer; Inicializa: Boolean): Boolean;
var
  Nodo: TListItem;
  Encontrado: Boolean;
  Punto: TPoint;
begin
  // Realizar la busqueda con el criterio indicado
  // Seleccionar el nodo de inicio de busqueda
  if Inicializa then
  begin
    Nodo := lvSolicitudes.Items[Ind];    // Iniciar en el indicado por el programador
    Ind := Nodo.Index;
  end
  else
  begin
    if Assigned(lvSolicitudes.Selected) then
    begin
      Nodo := lvSolicitudes.Selected;  // Iniciar desde el nodo seleccionado

      if btnActual = btnAbajo then
        Ind := Nodo.Index +1
      else
        Ind := Nodo.Index -1;
    end
    else
    begin
      Nodo := lvSolicitudes.Items[0];  // Iniciar desde el primer nodo
      lvSolicitudes.Selected := Nodo;
      Ind := Nodo.Index;
    end;
  end;

  // Recorrer la lista
  Encontrado := False;
  while (Not Encontrado) and (Ind < lvSolicitudes.Items.Count) and (Ind >= 0) do
  begin
    Encontrado := POS(eBuscar.Text, lvSolicitudes.Items[Ind].Caption) > 0;

    if Not Encontrado then
    begin
      if btnActual = btnAbajo then
        Inc(Ind)
      else
        Dec(Ind);
    end;
  end;

  Result := Encontrado;
end;

procedure TFrmBuscarSolicitud.ProseguirBusqueda;
var
  Ind: Integer;
begin
  // Verificar si se encontró el nodo
  if LocalizaNodo(13, [], Ind, False) then
    lvSolicitudes.Selected := lvSolicitudes.Items[Ind]
  else
  begin
    // Si ya se terminó la busqueda entonces se deberá informar al usuario y preguntarle que desea hacer
    {if InteliDialog.ShowModal('Recorrido finalizado', 'No se han encontrado más coinsidencias con el texto "' + eBuscar.Text + '".' + #10 + #10 +
                              funcPregunta(btnActual), mtConfirmation, [mbYes, mbNo], 0) = mrYes then}
    begin
      if btnActual = btnAbajo then
        Ind := 0
      else
        Ind := lvSolicitudes.Items.Count -1;

      if LocalizaNodo(13, [], Ind, True) then
        lvSolicitudes.Selected := lvSolicitudes.Items[Ind]
    end;
  end;

  if Assigned(lvSolicitudes.Selected) then
    lvSolicitudes.Selected.MakeVisible(True);
end;

procedure TFrmBuscarSolicitud.CargarListaRecetas;
const
  NomMes: Array[1..12] of string = ('Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre');

var
  Nodo: TListItem;
  Lista: TStringList;
  ListaFechas: TStringList;
  Grupo: TListGroup;
  IdGpo: Integer;
  lcNombre: String;
  MesAnio: String;
  LocCursor: TCursor;

begin
  LocCursor := Screen.Cursor;
  Try
    Screen.Cursor := crAppStart;

    lvSolicitudes.Items.Clear;
    lvSolicitudes.Groups.Clear;

    Lista := TStringList.Create;
    Lista.Clear;

    ListaFechas := TStringList.Create;
    ListaFechas.Clear;

    dsSolicitud.DataSet.First;
    while not dsSolicitud.DataSet.Eof do
    begin
      MesAnio := NomMes[MonthOfTheYear(dsSolicitud.DataSet.FieldByName('FechaFin').AsDateTime)];
      MesAnio := MesAnio + '-' + IntToStr(YearOf(dsSolicitud.DataSet.FieldByName('FechaFin').AsDateTime));
      IdGpo := Lista.IndexOf(MesAnio);
      if IdGpo < 0 then
      begin
        Grupo := lvSolicitudes.Groups.Add;
        Grupo.Header := MesAnio;
        //Grupo.Subtitle := dsRegistroConsumo.DataSet.FieldByName('NombreTipoReceta').AsString;
        Grupo.Footer := 'Total de ' + MesAnio + ': ' + dsSolicitud.DataSet.FieldByName('CtaMes').AsString;
        Grupo.TitleImage := 1;

        IdGpo := Grupo.Index;

        Lista.AddObject(MesAnio, TObject(IdGpo));
      end
      else
        IdGpo := Integer(Lista.Objects[IdGpo]);

      Nodo := lvSolicitudes.Items.Add;
      Nodo.Caption := dsSolicitud.DataSet.FieldByName('CodigoSolicitud').AsString;
      Nodo.ImageIndex := 11;
      Nodo.SubItems.Add(dsSolicitud.DataSet.FieldByName('FechaInicio').AsString);
      Nodo.SubItems.Add(dsSolicitud.DataSet.FieldByName('FechaFin').AsString);
      Nodo.Data := TObject(dsSolicitud.DataSet.FieldByName('IdSolicitud').AsInteger);
      Nodo.GroupID := IdGpo;

      dsSolicitud.DataSet.Next;
    end;

    if lvSolicitudes.Items.Count > 0 then
    begin
      lvSolicitudes.Selected := lvSolicitudes.Items[0];

      cbVista.OnChange(Nil);
    end;
  Finally
    Screen.Cursor := LocCursor;
  end;
end;

end.
