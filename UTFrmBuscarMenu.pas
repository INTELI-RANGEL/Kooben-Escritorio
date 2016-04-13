unit UTFrmBuscarMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, URegistro, ClientModuleUnit1, UInteliDialog, AdvGlowButton, StdCtrls,
  ComCtrls, JvExControls, JvLabel, ExtCtrls, DB, StrUtils, DateUtils;

type
  TFrmBuscarMenu = class(TForm)
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
    lvRecetas: TListView;
    Panel1: TPanel;
    JvLabel1: TJvLabel;
    cbVista: TComboBox;
    dsMenu: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
    procedure btnArribaClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAbajoClick(Sender: TObject);
    procedure cbVistaChange(Sender: TObject);
    procedure eBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lvRecetasChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure lvRecetasDblClick(Sender: TObject);
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
  FrmBuscarMenu: TFrmBuscarMenu;

implementation

{$R *.dfm}

procedure TFrmBuscarMenu.btnAbajoClick(Sender: TObject);
begin
  btnActual := btnAbajo;    // Establecer por default la busqueda hacia abajo
  ProseguirBusqueda;
end;

procedure TFrmBuscarMenu.btnAbrirClick(Sender: TObject);
begin
  Resultado := mrOk;
  Close;
end;

procedure TFrmBuscarMenu.btnArribaClick(Sender: TObject);
begin
  btnActual := btnArriba;    // Establecer por default la busqueda hacia abajo
  ProseguirBusqueda;
end;

procedure TFrmBuscarMenu.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmBuscarMenu.cbVistaChange(Sender: TObject);
begin
  // Cambiar la visualización del listview
  case cbVista.ItemIndex of
    0: lvRecetas.ViewStyle := vsIcon;
    1: lvRecetas.ViewStyle := vsList;
    2: lvRecetas.ViewStyle := vsReport;
  else
    lvRecetas.ViewStyle := vsSmallIcon;
  end;

  btnAbrir.Enabled := lvRecetas.Items.Count > 0;
end;

procedure TFrmBuscarMenu.eBuscarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Ind: Integer;
begin
  if (Key = 13) and (Shift = []) then
    ProseguirBusqueda;
end;

procedure TFrmBuscarMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SetRegistry('\Ventanas', '\' + Self.Name, 'Top', IntToStr(Self.Top));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Left', IntToStr(Self.Left));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Width', IntToStr(Self.Width));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Height', IntToStr(Self.Height));

  ModalResult := Resultado;
  Action := caFree;
end;

procedure TFrmBuscarMenu.FormCreate(Sender: TObject);
begin
  Resultado := mrCancel;
end;

procedure TFrmBuscarMenu.FormKeyDown(Sender: TObject; var Key: Word;
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
    dsMenu.DataSet.Refresh;
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

procedure TFrmBuscarMenu.FormShow(Sender: TObject);
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

function TFrmBuscarMenu.funcPregunta(Nodo: TAdvGlowButton): String;
begin
  if Nodo = btnAbajo then
    Result := '¿Desea continuar con la busqueda desde el inicio?'
  else
    Result := '¿Desea continuar con la busqueda desde el final?';
end;

function TFrmBuscarMenu.LocalizaNodo(Key: Word; Shift: TShiftState;
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
    Nodo := lvRecetas.Items[Ind];    // Iniciar en el indicado por el programador
    Ind := Nodo.Index;
  end
  else
  begin
    if Assigned(lvRecetas.Selected) then
    begin
      Nodo := lvRecetas.Selected;  // Iniciar desde el nodo seleccionado

      if btnActual = btnAbajo then
        Ind := Nodo.Index +1
      else
        Ind := Nodo.Index -1;
    end
    else
    begin
      Nodo := lvRecetas.Items[0];  // Iniciar desde el primer nodo
      lvRecetas.Selected := Nodo;
      Ind := Nodo.Index;
    end;
  end;

  // Recorrer la lista
  Encontrado := False;
  while (Not Encontrado) and (Ind < lvRecetas.Items.Count) and (Ind >= 0) do
  begin
    Encontrado := POS(eBuscar.Text, lvRecetas.Items[Ind].Caption) > 0;

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

procedure TFrmBuscarMenu.lvRecetasChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
  if Assigned(lvRecetas.Selected) then
    dsMenu.DataSet.Locate('IdMenu', Integer(lvRecetas.Selected.Data), []);
end;

procedure TFrmBuscarMenu.lvRecetasDblClick(Sender: TObject);
begin
  if btnAbrir.Enabled then
    btnAbrir.Click;
end;

procedure TFrmBuscarMenu.ProseguirBusqueda;
var
  Ind: Integer;
begin
  // Verificar si se encontró el nodo
  if LocalizaNodo(13, [], Ind, False) then
    lvRecetas.Selected := lvRecetas.Items[Ind]
  else
  begin
    // Si ya se terminó la busqueda entonces se deberá informar al usuario y preguntarle que desea hacer
    {if InteliDialog.ShowModal('Recorrido finalizado', 'No se han encontrado más coinsidencias con el texto "' + eBuscar.Text + '".' + #10 + #10 +
                              funcPregunta(btnActual), mtConfirmation, [mbYes, mbNo], 0) = mrYes then}
    begin
      if btnActual = btnAbajo then
        Ind := 0
      else
        Ind := lvRecetas.Items.Count -1;

      if LocalizaNodo(13, [], Ind, True) then
        lvRecetas.Selected := lvRecetas.Items[Ind]
    end;
  end;

  if Assigned(lvRecetas.Selected) then
    lvRecetas.Selected.MakeVisible(True);
end;

procedure TFrmBuscarMenu.CargarListaRecetas;
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

function DesconFecha(pFecha: TDate): String;
begin
  Result := RightStr('0' + IntToStr(DayOfTheMonth(pFecha)), 2) + ' de ' + NomMes[MonthOfTheYear(pFecha)] + ' de ' + IntToStr(YearOf(pFecha));
end;

begin
  LocCursor := Screen.Cursor;
  Try
    Screen.Cursor := crAppStart;

    lvRecetas.Items.Clear;
    lvRecetas.Groups.Clear;

    Lista := TStringList.Create;
    Lista.Clear;

    ListaFechas := TStringList.Create;
    ListaFechas.Clear;

    dsMenu.DataSet.First;
    while not dsMenu.DataSet.Eof do
    begin
      //MesAnio := NomMes[MonthOfTheYear(dsRegistroConsumo.DataSet.FieldByName('Fecha').AsDateTime)] + ' - ' + IntToStr(YearOf(dsRegistroConsumo.DataSet.FieldByName('Fecha').AsDateTime));
      MesAnio := NomMes[MonthOfTheYear(dsMenu.DataSet.FieldByName('Hasta').AsDateTime)];
      MesAnio := MesAnio + '-' + IntToStr(YearOf(dsMenu.DataSet.FieldByName('Hasta').AsDateTime));
      IdGpo := Lista.IndexOf(MesAnio);
      if IdGpo < 0 then
      begin
        Grupo := lvRecetas.Groups.Add;
        Grupo.Header := MesAnio;
        //Grupo.Subtitle := dsRegistroConsumo.DataSet.FieldByName('NombreTipoReceta').AsString;
        Grupo.Footer := 'Total de ' + MesAnio + ': ' + dsMenu.DataSet.FieldByName('CtaGrupo').AsString;
        Grupo.TitleImage := 1;

        IdGpo := Grupo.Index;

        Lista.AddObject(MesAnio, TObject(IdGpo));
      end
      else
        IdGpo := Integer(Lista.Objects[IdGpo]);

      Nodo := lvRecetas.Items.Add;
      Nodo.Caption := dsMenu.DataSet.FieldByName('CodigoMenu').AsString;
      Nodo.ImageIndex := 11;
      Nodo.SubItems.Add(dsMenu.DataSet.FieldByName('Desde').AsString);
      Nodo.SubItems.Add(dsMenu.DataSet.FieldByName('Hasta').AsString);
      Nodo.Data := TObject(dsMenu.DataSet.FieldByName('IdMenu').AsInteger);
      Nodo.GroupID := IdGpo;

      dsMenu.DataSet.Next;
    end;

    if lvRecetas.Items.Count > 0 then
    begin
      lvRecetas.Selected := lvRecetas.Items[0];

      cbVista.OnChange(Nil);
    end;
  Finally
    Screen.Cursor := LocCursor;
  end;
end;

end.
