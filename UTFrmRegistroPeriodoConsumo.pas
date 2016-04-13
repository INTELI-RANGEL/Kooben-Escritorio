unit UTFrmRegistroPeriodoConsumo;

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
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  ExtCtrls, ClientModuleUnit1, UInteliDialog, URegistro, DBClient, JvExControls,
  JvLabel, Mask, DBCtrls, Menus, frxClass, frxDBSet, ComCtrls, AdvGlowButton,
  StrUtils, DateUtils, cxGridDBDataDefinitions;

type
  TRegistroConsumoDatos = class
    IdRegistroConsumoDatos: Integer;
    IdReceta: Integer;
  end;

  TFrmRegistroPeriodoConsumo = class(TForm)
    Panel1: TPanel;
    gbFecha: TGroupBox;
    cxGrid1: TcxGrid;
    tvPartidas: TcxGridDBTableView;
    glNivel1: TcxGridLevel;
    Panel2: TPanel;
    cdRegistroConsumo: TClientDataSet;
    dsRegistroConsumo: TDataSource;
    cdBuscarRegistroConsumo: TClientDataSet;
    cdRegistroConsumoInsumo: TClientDataSet;
    cdRegistroConsumoUpt: TClientDataSet;
    cdRegistroConsumoInsumoLista: TClientDataSet;
    cdPeriodoConsumo: TClientDataSet;
    cdReceta: TClientDataSet;
    JvLabel2: TJvLabel;
    Fecha: TDBEdit;
    JvLabel3: TJvLabel;
    Personas: TDBEdit;
    pmInsumos: TPopupMenu;
    Nuevo1: TMenuItem;
    EditarInsumo1: TMenuItem;
    EliminarSeleccionado1: TMenuItem;
    dsRegistroConsumoInsumoLista: TDataSource;
    colCodigoReceta: TcxGridDBColumn;
    colNombreReceta: TcxGridDBColumn;
    colPersonas: TcxGridDBColumn;
    colPersonasxReceta: TcxGridDBColumn;
    colFactorReceta: TcxGridDBColumn;
    N1: TMenuItem;
    Imprimir1: TMenuItem;
    repRegistroConsumo: TfrxReport;
    fdsRegistroConsumo: TfrxDBDataset;
    fdsRegistroConsumoInsumoLista: TfrxDBDataset;
    Imprimirtodoelda1: TMenuItem;
    cdRegistroConsumoDia: TClientDataSet;
    fdsRegistroConsumoDia: TfrxDBDataset;
    cdRegistroConsumoDatosDia: TClientDataSet;
    fdsRegistroCOnsumoDatosDia: TfrxDBDataset;
    dsRegistroConsumoDia: TDataSource;
    ImprimirIngredientes1: TMenuItem;
    ImprimirIngredientesdelDa1: TMenuItem;
    N2: TMenuItem;
    cdExplosion: TClientDataSet;
    fdsExplosion: TfrxDBDataset;
    sbPeriodo: TScrollBox;
    dsReceta: TDataSource;
    repReceta: TfrxReport;
    fdsReceta: TfrxDBDataset;
    cdRecetaImagen: TClientDataSet;
    cdRecetaPda: TClientDataSet;
    fdsRecetaPda: TfrxDBDataset;
    cdRecetasRecientes: TClientDataSet;
    dsRecetasRecientes: TDataSource;
    glNivel2: TcxGridLevel;
    tvRecientes: TcxGridDBTableView;
    colCodigoRecetaReciente: TcxGridDBColumn;
    colNombreRecetaReciente: TcxGridDBColumn;
    colPersonasRecientes: TcxGridDBColumn;
    Splitter1: TSplitter;
    procedure FormShow(Sender: TObject);
    procedure GroupBox1DblClick(Sender: TObject);
    procedure Nuevo1Click(Sender: TObject);
    procedure tvPartidasEditDblClick(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure tvPartidasEditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure Imprimir1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Imprimirtodoelda1Click(Sender: TObject);
    procedure ImprimirIngredientes1Click(Sender: TObject);
    procedure ImprimirIngredientesdelDa1Click(Sender: TObject);
    procedure tvPartidasMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure glNivel2GetGridView(Sender: TcxGridLevel;
      AMasterRecord: TcxCustomGridRecord; var AGridView: TcxCustomGridView);

  private
    Titulo: String;
    IdRegistroConsumo: Integer;
    SelPanel: TPanel;
    function BuscarRegistroConsumo: Integer;
    procedure VerificaDataSet(DataSet: TClientDataSet);
    procedure CrearPartidasRegistroConsumo;
    procedure ImprimirReceta;
    procedure CrearConjuntosNuevoRegistroConsumo;
    procedure CrearRecetas;
    procedure EditarPartida;
    procedure EliminarPartida;
    procedure ImprimirIngredientes(Cual: Byte);
    procedure GlobalPanelClick(Sender: TObject);
    procedure GlobalColumnClick(Sender: TObject; Column: TListColumn);
    procedure GlobalPanelDblClick(Sender: TObject);
    procedure ElementoDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ElementoDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure EditarRegistroConsumo(IdRegistroConsumo: Integer);
    procedure ElementoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RecetasRecientes;
  public
    { Public declarations }
  end;

var
  FrmRegistroPeriodoConsumo: TFrmRegistroPeriodoConsumo;
  Nodo: TListItem;
  Elemento: TListView;
implementation

{$R *.dfm}

Uses
  Unit2, UTFrmRegistroPeriodoConsumoDatos, UTFrmRegistroPeriodoConsumoRecetas,
  UTFrmBuscarReceta, UTFrmBuscarRegistroConsumo;

procedure TFrmRegistroPeriodoConsumo.ElementoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
const
  Leyendas: Array[False..True, 0..1] of String = (('las recetas siguientes', 'las cuales están asignadas'), ('la receta siguiente', 'la cual está asignada'));
var
  LocalLV: TListView;
  i, Idx, IdRegistroConsumoDatos: Integer;
  ListaBorrar: TStringList;
  Cadena, CadPeriodo: String;
begin
  if (ssCtrl In Shift) and (Key = 46) then
  begin
    LocalLV := TListView(Sender);
    if LocalLV.SelCount > 0 then
    begin
      Cadena := '';
      for i := 0 to LocalLV.Items.Count -1 do
        if LocalLV.Items.Item[i].Selected then
          Cadena := Cadena + LocalLV.Items.Item[i].Caption + #10;

      if LocalLV.Parent.Controls[0] is TPanel then
        CadPeriodo := TPanel(LocalLV.Parent.Controls[0]).Caption
      else
        CadPeriodo := LocalLV.Parent.Controls[0].Name;

      if InteliDialog.ShowModal('Eliminar registro', 'Ha seleccionado eliminar ' + Leyendas[LocalLV.SelCount = 1, 0] + ':' + #10 + #10 + Cadena + #10 +
                                Leyendas[LocalLV.SelCount = 1, 1] + ' en el periodo de consumo: ' + CadPeriodo + #10 + #10 +
                                '¿Está seguro de hacerlo en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      Try
        ListaBorrar := TStringList.Create;
        ListaBorrar.Clear;
        for i := 0 to LocalLV.Items.Count -1 do
        begin
          if LocalLV.Items.Item[i].Selected then
          begin
            // Localizar el registro
            IdRegistroConsumoDatos := TRegistroConsumoDatos(LocalLV.Items.Item[i].Data).IdRegistroConsumoDatos;
            Try
              BorrarRegistro('cmt_registroconsumodatos', [IdRegistroConsumoDatos]);
              ListaBorrar.Add(IntToStr(i));
            Except
              ; // Llenar la lista para informar los que no se pudieron borrar
            End;
          end;
        end;

        // Eliminar en pantalla los registros que se pudieron borrar
        for i := ListaBorrar.Count -1 DownTo 0 do
        begin
          Idx := StrToInt(ListaBorrar[i]);
          LocalLV.Items.Delete(Idx);
        end;
      Finally
        ListaBorrar.Free;
      End;
    end;
  end;
end;

procedure TFrmRegistroPeriodoConsumo.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
  SetRegistry('\Ventanas', '\' + Self.Name, 'Top', IntToStr(Self.Top));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Left', IntToStr(Self.Left));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Width', IntToStr(Self.Width));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Height', IntToStr(Self.Height));

  for i:= 0 to tvPartidas.ColumnCount -1 do
    try
      tvPartidas.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + self.Name + '\tvPartidas', 'Column'+ IntToStr(i)));
    except
      ;
    end;

  EliminarConjunto([cdRegistroConsumo, cdPeriodoConsumo, cdRegistroConsumoUpt, cdRegistroConsumoDia, cdRegistroConsumoDatosDia, cdRegistroConsumoInsumo, cdRegistroConsumoInsumoLista, cdReceta, cdExplosion, cdRecetasRecientes]);

  Action := caFree;
end;

procedure TFrmRegistroPeriodoConsumo.FormShow(Sender: TObject);
var
  i: Integer;
  LocCursor: TCursor;
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
    Self.Height := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Height'));
  Except
    ;
  End;

  Try
    Self.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Width'));
  Except
    ;
  End;

  Try
    Panel2.Height := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\Panel2', 'Height'));
  Except
    ;
  End;

  for i:= 0 to tvPartidas.ColumnCount -1 do
    try
      tvPartidas.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + self.Name + '\tvPartidas', 'Column'+ IntToStr(i)));
    except
      ;
    end;

  Try
    LocCursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      // Crear los dataset necesarios
      VerificaDataSet(cdRegistroConsumo);

      // Crear el dataset de los insumos
      CrearRecetas;
      cdReceta.Open;

      Titulo := 'Seleccionar un Registro de Consumo';
    Finally
      Screen.Cursor := LocCursor;
    End;

    // Se va a abrir una receta
    if Form2.IdRegistroConsumo = -5 then
    begin
      LocCursor := Screen.Cursor;
      Try
        Screen.Cursor := crAppStart;

        Titulo := 'Abrir Registro de Consumo';

        BuscarRegistroConsumo;

        EditarRegistroConsumo(cdRegistroConsumo.FieldByName('IdRegistroConsumo').AsInteger);
      Finally
        Screen.Cursor := LocCursor;
      End;
    end;

    RecetasRecientes;

    // Se va a crear un nuevo Registro de Consumo
    if Form2.IdRegistroConsumo = -9 then
    begin
      CrearConjuntosNuevoRegistroConsumo;

      if Not CargarDatosFiltrados(cdRegistroConsumoUpt, 'IdRegistroConsumo', [-9]) then
        raise InteligentException.CreateByCode(16, ['Registros de Consumo']);

      Try
        cdRegistroConsumoUpt.Open;
        cdPeriodoConsumo.Open;

        Application.CreateForm(TFrmRegistroPeriodoConsumoDatos, FrmRegistroPeriodoConsumoDatos);
        FrmRegistroPeriodoConsumoDatos.dsRegistroConsumo.DataSet := cdRegistroConsumoUpt;
        FrmRegistroPeriodoConsumoDatos.pIdRegistroConsumo := -9;
        case FrmRegistroPeriodoConsumoDatos.ShowModal of
          mrCancel: raise InteligentException.Create('*');
          mrOk, mrIgnore: begin
                      if Not CargarDatosFiltrados(cdRegistroConsumo, 'IdRegistroConsumo', [FrmRegistroPeriodoConsumoDatos.pIdRegistroConsumo]) then
                        raise InteligentException.CreateByCode(6, ['Registro de Consumo', FrmRegistroPeriodoConsumoDatos.pIdRegistroConsumo, 'Id. Registro de Consumo']);

                      if cdRegistroConsumo.Active then
                        cdRegistroConsumo.Refresh
                      else
                        cdRegistroConsumo.Open;

                      EditarRegistroConsumo(cdRegistroConsumo.FieldByName('IdRegistroConsumo').AsInteger);
                    end;
        end;

        IdRegistroConsumo := UltimoId;
      Finally
        cdRegistroConsumoUpt.Close;
      end;

      // Preguntar si quiere meterle insumos ahora
      {if InteliDialog.ShowModal('Captura de Platillos', '¿Desea dar de alta los Platillos para este Registro de Consumos en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        // Abrir el registro de consumo
        VerificaDataSet(cdRegistroConsumo);

        if Not CargarDatosFiltrados(cdRegistroConsumo, 'IdRegistroConsumo', [IdRegistroConsumo]) then
          raise InteligentException.CreateByCode(6, ['Registro de Consumo', IdRegistroConsumo, 'Id. Registro de Consumo']);

        if cdRegistroConsumo.Active then
          cdRegistroConsumo.Refresh
        else
          cdRegistroConsumo.Open;

        EditarRegistroConsumo(IdRegistroConsumo);
      end;}
    end;

    // Se va a borrar una receta
    if Form2.IdReceta = -9 then
    begin

    end;
  Except
    on e:InteligentException do
    begin
      if e.Message <> '*' then
        InteliDialog.ShowModal(e.Title, e.Message, mtError, [mbOk], 0);

      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmRegistroPeriodoConsumo.glNivel2GetGridView(Sender: TcxGridLevel;
  AMasterRecord: TcxCustomGridRecord; var AGridView: TcxCustomGridView);
begin
  RecetasRecientes;
end;

procedure TFrmRegistroPeriodoConsumo.GroupBox1DblClick(Sender: TObject);
begin
  // Editar el encabezado del registro de consumo
  CrearConjuntosNuevoRegistroConsumo;

  Application.CreateForm(TFrmRegistroPeriodoConsumoDatos, FrmRegistroPeriodoConsumoDatos);
  FrmRegistroPeriodoConsumoDatos.dsRegistroConsumo.DataSet := cdRegistroConsumoUpt;
  FrmRegistroPeriodoConsumoDatos.pIdRegistroConsumo := cdRegistroConsumo.FieldByName('IdRegistroConsumo').AsInteger;
  if FrmRegistroPeriodoConsumoDatos.ShowModal = mrOk then
    cdRegistroConsumo.Refresh;
end;

procedure TFrmRegistroPeriodoConsumo.Imprimir1Click(Sender: TObject);
begin
  //ClientModule1.ForzarLocales := True;
  ClientModule1.ImprimeReporte('RegistroConsumo.fr3', repRegistroConsumo);
end;

procedure TFrmRegistroPeriodoConsumo.ImprimirIngredientes1Click(
  Sender: TObject);
begin
  ImprimirIngredientes(0);
end;

procedure TFrmRegistroPeriodoConsumo.ImprimirIngredientesdelDa1Click(
  Sender: TObject);
begin
  ImprimirIngredientes(1);
end;

procedure TFrmRegistroPeriodoConsumo.Imprimirtodoelda1Click(Sender: TObject);
begin
  Try
    // Abrir los datos de todo el día
    if cdRegistroConsumoDia.ProviderName = '' then
      if Not CrearConjunto(cdRegistroConsumoDia, 'cmt_registroconsumo', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Registros de Consumo']);

    if cdRegistroConsumoDatosDia.ProviderName = '' then
      if Not CrearConjunto(cdRegistroConsumoDatosDia, 'cmt_registroconsumodatos', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Recetas por Registro de Consumo']);

    if Not CargarDatosFiltrados(cdRegistroConsumoDia, 'Fecha', [ClientModule1.DateToStrSql(cdRegistroConsumo.FieldByName('Fecha').AsDateTime)]) then
      raise InteligentException.CreateByCode(6, ['Registros de Consumo', ClientModule1.DateToStrSql(cdRegistroConsumo.FieldByName('Fecha').AsDateTime), 'Fecha']);

    cdRegistroConsumoDia.Open;
    cdRegistroConsumoDatosDia.Open;

    ClientModule1.ImprimeReporte('RegistroConsumoDia.fr3', repRegistroConsumo);
  Finally
    cdRegistroConsumoDia.Close;
    cdRegistroConsumoDatosDia.Close;
  End;
end;

procedure TFrmRegistroPeriodoConsumo.GlobalPanelDblClick(Sender: TObject);
var
  lv: TListView;
  Id : Integer;
  locCursor: TCursor;
begin
  // Abrir la receta
  //ShowMessage('Abrir la receta');
  try
    locCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      if Sender is TListview then
      begin
        try
          lv := TListView(Sender);
          if (lv.Items.Count > 0) and  (lv.ItemIndex >= 0) then
          Id := TRegistroConsumoDatos(lv.Items.Item[lv.ItemIndex].Data).IdReceta
          else
            raise inteligentException.CreateByCode(24, ['Seleccione una receta.']);
        finally
          lv := nil;
        end;
      end;

        // Imprimir en este momento la receta abierta
      if cdRecetaImagen.ProviderName = '' then
        if not CrearConjunto(cdRecetaImagen, 'cmt_receta_imagen', ccSelect) then
            raise InteligentException.CreateByCode(5, ['Recetas']);

      if cdRecetaPda.ProviderName = '' then
        if not CrearConjunto(cdRecetaPda, 'cmt_recetapartida', ccCatalog) then
            raise InteligentException.CreateByCode(5, ['Ingredientes por Receta']);

      if not CargarDatosFiltrados(cdRecetaImagen, 'IdReceta', [Id]) then
           raise InteligentException.CreateByCode(6, ['Recetas', Id, 'Id. Receta']);

      if not CargarDatosFiltrados(cdRecetaPda, 'IdReceta', [Id]) then
           raise InteligentException.CreateByCode(6, ['Recetas', Id, 'Id. Receta']);

      if cdRecetaImagen.Active then
          cdRecetaImagen.Refresh
        else
          cdRecetaImagen.Open;

      if cdRecetaPda.Active then
          cdRecetaPda.Refresh
        else
          cdRecetaPda.Open;
    finally
      Screen.Cursor := locCursor;
    end;

    ClientModule1.ImprimeReporte('Recetas.fr3', RepReceta);
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
End;


procedure TFrmRegistroPeriodoConsumo.GlobalColumnClick(Sender: TObject;
  Column: TListColumn);
begin
  GlobalPanelClick(Sender);
end;

procedure TFrmRegistroPeriodoConsumo.Nuevo1Click(Sender: TObject);
begin
  IdRegistroConsumo := cdRegistroConsumo.FieldByName('IdRegistroConsumo').AsInteger;
  Try
    CrearPartidasRegistroConsumo;
    CrearRecetas;

    Application.CreateForm(TFrmRegistroPeriodoConsumoRecetas, FrmRegistroPeriodoConsumoRecetas);
    FrmRegistroPeriodoConsumoRecetas.dsReceta.DataSet := cdReceta;
    FrmRegistroPeriodoConsumoRecetas.dsRegistroConsumoInsumo.DataSet := cdRegistroConsumoInsumo;
    FrmRegistroPeriodoConsumoRecetas.dsRegistroConsumo.DataSet := cdRegistroConsumo;
    FrmRegistroPeriodoConsumoRecetas.dsRecetaInsumoLista.DataSet := cdRegistroConsumoInsumoLista;

    FrmRegistroPeriodoConsumoRecetas.IdRegistroConsumo := IdRegistroConsumo;

    if Not cdReceta.Active then
      cdReceta.Open;

    if Not cdRecetasRecientes.Active then
      cdRecetasRecientes.Open;

    if Not CargarDatosFiltrados(cdRegistroConsumoInsumo, 'IdRegistroConsumo', [-9]) then
      raise InteligentException.CreateByCode(16, ['Recetas por Registro de Consumo']);

    if Not cdRegistroConsumoInsumo.Active then
      cdRegistroConsumoInsumo.Open;

    cdRegistroConsumoInsumo.Append;
    cdRegistroConsumoInsumo.FieldByName('IdRegistroConsumo').AsInteger := IdRegistroConsumo;
    cdRegistroConsumoInsumo.FieldByName('IdRegistroConsumoDatos').AsInteger := 0;
    if FrmRegistroPeriodoConsumoRecetas.ShowModal = mrOk then
      cdRegistroConsumoInsumoLista.Refresh;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmRegistroPeriodoConsumo.GlobalPanelClick(Sender: TObject);
var
  i: Integer;
begin
  SelPanel := Nil;

  if ((Sender.ClassType = TAdvGlowButton) and (TWinControl(Sender).Parent.ClassType = TListView) and (TWinControl(Sender).Parent.Parent.ClassType = TPanel)) then
    SelPanel := TPanel(TWinControl(Sender).Parent.Parent);

  if (TWinControl(Sender).ClassType = TListView) and (TWinControl(Sender).Parent.ClassType = TPanel) then
    SelPanel := TPanel(TWinControl(Sender).Parent);

  if TWinControl(Sender).ClassType = TPanel then
    SelPanel := TPanel(Sender);

  if Assigned(SelPanel) then
  begin
    for i := 0 to sbPeriodo.ControlCount -1 do
      if sbPeriodo.Controls[i].ClassType = TPanel then
        if TPanel(sbPeriodo.Controls[i]) <> SelPanel then
        begin
          //TPanel(sbPeriodo.Controls[i]).BorderStyle := bsNone;
          TPanel(TPanel(sbPeriodo.Controls[i]).Controls[0]).BorderStyle := bsNone;
          TPanel(TPanel(sbPeriodo.Controls[i]).Controls[0]).Font.Style := [];
          TPanel(SelPanel.Controls[1]).SetFocus;
        end;

    //SelPanel.BorderStyle := bsSingle;
    TPanel(SelPanel.Controls[0]).BorderStyle := bsSingle;
    TPanel(SelPanel.Controls[0]).Font.Style := [fsBold];
  end;
end;

procedure TFrmRegistroPeriodoConsumo.tvPartidasEditDblClick(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit);
begin
  EditarPartida;
end;

procedure TFrmRegistroPeriodoConsumo.tvPartidasEditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  Try
    case Key of
      46: EliminarPartida;
    end;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmRegistroPeriodoConsumo.tvPartidasMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if TcxGridSite (Sender).ViewInfo.GetHitTest(X, Y).HitTestCode in [htCell, htRecord] then
    TcxGridSite(Sender).BeginDrag(False);
end;

function TFrmRegistroPeriodoConsumo.BuscarRegistroConsumo: Integer;
begin
  VerificaDataSet(cdBuscarRegistroConsumo);

  cdBuscarRegistroConsumo.Open;

  Application.CreateForm(TFrmBuscarRegistroConsumo, FrmBuscarRegistroConsumo);
  FrmBuscarRegistroConsumo.dsRegistroConsumo.DataSet := cdBuscarRegistroConsumo;
  if FrmBuscarRegistroConsumo.ShowModal = mrCancel then
    raise InteligentException.Create('*');

  if Not CargarDatosFiltrados(cdRegistroConsumo, 'IdRegistroConsumo', [cdBuscarRegistroConsumo.FieldByName('IdRegistroConsumo').AsInteger]) then
    raise InteligentException.CreateByCode(6, ['Recetas', cdBuscarRegistroConsumo.FieldByName('IdRegistroConsumo').AsInteger, 'Id. Registro de Consumo']);

  if cdRegistroConsumo.Active then
    cdRegistroConsumo.Refresh
  else
    cdRegistroConsumo.Open;

  if cdRegistroConsumo.RecordCount = 0 then
    raise InteligentException.CreateByCode(13, [cdBuscarRegistroConsumo.FieldByName('TituloPeriodoConsumo').AsString, 'Registros de Consumo']);
end;

procedure TFrmRegistroPeriodoConsumo.VerificaDataSet(DataSet: TClientDataSet);
begin
  if DataSet.ProviderName = '' then
    if Not CrearConjunto(DataSet, 'cmt_registroconsumo', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Registros de Consumo']);

  if cdPeriodoConsumo.ProviderName = '' then
    if Not CrearConjunto(cdPeriodoConsumo, 'cmt_periodoconsumo', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Periodos de Consumo']);

end;

procedure TFrmRegistroPeriodoConsumo.CrearPartidasRegistroConsumo;
begin
  if cdRegistroConsumoInsumo.ProviderName = '' then
    if Not CrearConjunto(cdRegistroConsumoInsumo, 'cmt_registroconsumodatos', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Platillos del Registro de Consumo']);

  if cdRegistroConsumoInsumoLista.ProviderName = '' then
    if Not CrearConjunto(cdRegistroConsumoInsumoLista, 'cmt_registroconsumodatos', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Platillos del Registro de Consumo']);
end;

procedure TFrmRegistroPeriodoConsumo.CrearConjuntosNuevoRegistroConsumo;
begin
  if cdRegistroConsumoUpt.ProviderName = '' then
    if Not CrearConjunto(cdRegistroConsumoUpt, 'cmt_registroconsumo', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Registros de Consumo']);
end;

procedure TFrmRegistroPeriodoConsumo.CrearRecetas;
begin
  if cdReceta.ProviderName = '' then
    if Not CrearConjunto(cdReceta, 'cmt_receta', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Insumos']);

  RecetasRecientes;

end;

procedure TFrmRegistroPeriodoConsumo.EditarPartida;
var
  AltoGrid: Integer;
begin
  CrearPartidasRegistroConsumo;
  CrearRecetas;
end;

procedure TFrmRegistroPeriodoConsumo.EliminarPartida;
var
  myRes: Integer;
begin
(*  if (cdRecetaInsumoLista.Active) and (cdRecetaInsumoLista.RecordCount > 0) then
    if InteliDialog.ShowModal('Eliminar Insumo', 'Está a punto de eliminar el Insumo ' + cdRecetaInsumoLista.FieldByName('CodigoInsumo').AsString + ' - ' + cdRecetaInsumoLista.FieldByName('NombreInsumo').AsString + ' ' +
                              'de la Receta ' + cdReceta.FieldByName('NombreReceta').AsString + #10 + #10 +
                              '¿Está seguro que desea eliminarlo en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      myRes := EliminarRegistro(cdRecetaInsumoLista, [cdRecetaInsumoLista.FieldByName('IdRecetaPartida').AsInteger]);
      if myRes = 1 then
        cdRecetaInsumoLista.Refresh
      else
        raise InteligentException.CreateByCode(9, ['registro de Insumo ' + cdRecetaInsumoLista.FieldByName('NombreInsumo').AsString, 'de la receta ' + cdReceta.FieldByName('NombreReceta').AsString]);
    end;*)
end;

procedure TFrmRegistroPeriodoConsumo.ImprimirIngredientes(Cual: Byte);
var
  Valores: Array[0..1] Of Variant;
begin
  Try
    if cdExplosion.ProviderName = '' then
      if Not CrearConjunto(cdExplosion, 'cmt_explosion', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Explosión de Ingredientes']);

    Valores[0] := ClientModule1.DatetoStrSql(cdRegistroConsumo.FieldByName('Fecha').AsDateTime);

    // Verificar si se deben generar todas las recetas del dia o solo la seleccionada
    if Cual = 0 then
      Valores[1] := cdRegistroConsumo.FieldByName('IdRegistroConsumo').AsInteger
    else
      Valores[1] := -1;

    if Not CargarDatosFiltrados(cdExplosion, 'Fecha,IdRegistroConsumo', Valores) then
      raise InteligentException.CreateByCode(6, ['Explosión de Ingredientes', cdRegistroConsumo.FieldByName('Fecha').AsString + ' / ' + cdRegistroConsumo.FieldByName('IdRegistroConsumo').AsString, 'Fecha / Id. RegistroConsumo']);

    cdExplosion.Open;

    ClientModule1.ImprimeReporte('ExplosionIngredientes.fr3', repRegistroConsumo);
  Finally
    cdExplosion.Close;
  end;
end;

procedure TFrmRegistroPeriodoConsumo.ElementoDragDrop(Sender, Source: TObject;
  X, Y: Integer);
var
  Control: TControl;
  DataSet: TDataSet;
  i: Integer;
  Selec : Integer;
  Nodo: TListItem;
  Elemento: TListView;
  LocCursor: TCursor;
  ProcedeGrabar: TModalResult;
  rcDatos: TRegistroConsumoDatos;
  ListaDatos: TStringList;
begin
  Control := TcxDragControlObject (Source).Control;
  if (Control is TcxGridSite) then
  begin
    DataSet := TcxGridDBDataController(TcxGridSite(Control).GridView.DataController).DataSet;

    IniciarTransaccion;
    Try
      Try
        Screen.Cursor := crAppStart;
        ListaDatos := TStringList.Create;
        ListaDatos.Clear;
        i := 0;
        Selec := tvPartidas.Controller.SelectedRowCount;

        if Selec <> 0 then    // Para identificar si es de recetas o recetas recientes
        begin
          while i < tvPartidas.Controller.SelectedRowCount do
          begin
            // Localizar el registro para obtener sus datos generales
            if cdReceta.Locate('CodigoReceta', tvPartidas.Controller.SelectedRows[i].Values[0], []) then
            begin
              LocCursor := Screen.Cursor;
              if Not cdRegistroConsumoInsumo.Active then
              begin
                if Not CargarDatosFiltrados(cdRegistroConsumoInsumo, 'IdRegistroConsumo', [-9]) then
                  raise InteligentException.CreateByCode(6, ['Registros de Consumo', -9, 'Id. Registro de Consumo']);

                cdRegistroConsumoInsumo.Open;
              end;

              ProcedeGrabar := -1;

              // Verificar si el registro ya existe
              if Not CargarDatosFiltrados(cdRegistroConsumoInsumo, 'IdPeriodoConsumo,IdRegistroConsumo,IdReceta', [TListView(Sender).Tag, cdRegistroConsumo.FieldByName('IdRegistroConsumo').AsInteger, cdReceta.FieldByName('IdReceta').AsInteger]) then
                raise InteligentException.CreateByCode(6, ['Datos de Registro de Consumo', IntToStr(TListView(Sender).Tag) + '/' + cdRegistroConsumo.FieldByName('IdRegistroConsumo').AsString + '/' + cdReceta.FieldByName('IdReceta').AsString, 'IdPeriodoConsumo/IdRegistroConsumo/IdReceta']);

              if CuantosRegistros(cdRegistroConsumoInsumo) > 0 then
                if (tvPartidas.Controller.SelectedRowCount > 0) and (i +1 < tvPartidas.Controller.SelectedRowCount) then
                  ProcedeGrabar := InteliDialog.ShowModal('Recta ya ha sido asignada', 'La siguiente receta ya ha sido asignada:' + #10 + #10 + cdReceta.FieldByName('NombreReceta').AsString + #10 + #10 +
                                         '¿Desea continuar con el proceso de registro de datos?', mtConfirmation, [mbYes, mbCancel], 0)
                else
                  ProcedeGrabar := InteliDialog.ShowModal('Recta ya ha sido asignada', 'La siguiente receta ya ha sido asignada:' + #10 + #10 + cdReceta.FieldByName('NombreReceta').AsString,
                                         mtConfirmation, [mbOk, mbCancel], 0);

              if ProcedeGrabar = mrCancel then
                raise InteligentException.CreateByCode(24, ['Proceso cancelado por el usuario']);

              if (ProcedeGrabar = -1) then
              begin
                // Grabar los datos en la tabla de consumos
                cdRegistroConsumoInsumo.Append;
                cdRegistroConsumoInsumo.FieldByName('IdRegistroConsumoDatos').AsInteger := 0;
                cdRegistroConsumoInsumo.FieldByName('IdPeriodoConsumo').AsInteger := TListView(Sender).Tag;     // La columna en donde lo pusiste
                cdRegistroConsumoInsumo.FieldByName('IdRegistroConsumo').AsInteger := cdRegistroConsumo.FieldByName('IdRegistroConsumo').AsInteger;
                cdRegistroConsumoInsumo.FieldByName('IdReceta').AsInteger := cdReceta.FieldByName('IdReceta').AsInteger;
                cdRegistroConsumoInsumo.FieldByName('Activo').AsString := 'Si';
                cdRegistroConsumoInsumo.Post;
                cdRegistroConsumoInsumo.ApplyUpdates(-1);

                rcDatos := TRegistroConsumoDatos.Create;
                rcDatos.IdRegistroConsumoDatos := UltimoId;
                rcDatos.IdReceta := cdReceta.FieldByName('IdReceta').AsInteger;

                ListaDatos.AddObject(IntToStr(i), rcDatos);

                Inc(i);
              end
              else
                tvPartidas.Controller.SelectedRows[i].Selected := False;
            end;
          end;
        end
        // Recetas recientes
        else
          begin
            while i < tvRecientes.Controller.SelectedRowCount do
            begin
              // Localizar el registro para obtener sus datos generales
              if cdReceta.Locate('CodigoReceta', tvRecientes.Controller.SelectedRows[i].Values[0], []) then
              begin
                LocCursor := Screen.Cursor;
                if Not cdRegistroConsumoInsumo.Active then
                begin
                  if Not CargarDatosFiltrados(cdRegistroConsumoInsumo, 'IdRegistroConsumo', [-9]) then
                    raise InteligentException.CreateByCode(6, ['Registros de Consumo', -9, 'Id. Registro de Consumo']);

                  cdRegistroConsumoInsumo.Open;
                end;

                ProcedeGrabar := -1;

                // Verificar si el registro ya existe
                if Not CargarDatosFiltrados(cdRegistroConsumoInsumo, 'IdPeriodoConsumo,IdRegistroConsumo,IdReceta', [TListView(Sender).Tag, cdRegistroConsumo.FieldByName('IdRegistroConsumo').AsInteger, cdReceta.FieldByName('IdReceta').AsInteger]) then
                  raise InteligentException.CreateByCode(6, ['Datos de Registro de Consumo', IntToStr(TListView(Sender).Tag) + '/' + cdRegistroConsumo.FieldByName('IdRegistroConsumo').AsString + '/' + cdReceta.FieldByName('IdReceta').AsString, 'IdPeriodoConsumo/IdRegistroConsumo/IdReceta']);

                if CuantosRegistros(cdRegistroConsumoInsumo) > 0 then
                  if (tvRecientes.Controller.SelectedRowCount > 0) and (i +1 < tvRecientes.Controller.SelectedRowCount) then
                    ProcedeGrabar := InteliDialog.ShowModal('Recta ya ha sido asignada', 'La siguiente receta ya ha sido asignada:' + #10 + #10 + cdReceta.FieldByName('NombreReceta').AsString + #10 + #10 +
                                           '¿Desea continuar con el proceso de registro de datos?', mtConfirmation, [mbYes, mbCancel], 0)
                  else
                    ProcedeGrabar := InteliDialog.ShowModal('Recta ya ha sido asignada', 'La siguiente receta ya ha sido asignada:' + #10 + #10 + cdReceta.FieldByName('NombreReceta').AsString,
                                           mtConfirmation, [mbOk, mbCancel], 0);

                if ProcedeGrabar = mrCancel then
                  raise InteligentException.CreateByCode(24, ['Proceso cancelado por el usuario']);

                if (ProcedeGrabar = -1) then
                begin
                  // Grabar los datos en la tabla de consumos
                  cdRegistroConsumoInsumo.Append;
                  cdRegistroConsumoInsumo.FieldByName('IdRegistroConsumoDatos').AsInteger := 0;
                  cdRegistroConsumoInsumo.FieldByName('IdPeriodoConsumo').AsInteger := TListView(Sender).Tag;     // La columna en donde lo pusiste
                  cdRegistroConsumoInsumo.FieldByName('IdRegistroConsumo').AsInteger := cdRegistroConsumo.FieldByName('IdRegistroConsumo').AsInteger;
                  cdRegistroConsumoInsumo.FieldByName('IdReceta').AsInteger := cdRecetasRecientes.FieldByName('IdReceta').AsInteger;
                  cdRegistroConsumoInsumo.FieldByName('Activo').AsString := 'Si';
                  cdRegistroConsumoInsumo.Post;
                  cdRegistroConsumoInsumo.ApplyUpdates(-1);

                  rcDatos := TRegistroConsumoDatos.Create;
                  rcDatos.IdRegistroConsumoDatos := UltimoId;
                  rcDatos.IdReceta := cdReceta.FieldByName('IdReceta').AsInteger;

                  ListaDatos.AddObject(IntToStr(i), rcDatos);

                  Inc(i);
                end
                else
                  tvRecientes.Controller.SelectedRows[i].Selected := False;
              end;
            end;
          end;
          // Si pertenece a recetas
         if Selec <> 0 then
         begin
          // Registrar en pantalla los datos grabados
            i := 0;
            for i := 0 to tvPartidas.Controller.SelectedRowCount -1 do
            begin
              // Localizar el registro para obtener sus datos generales
              if cdReceta.Locate('CodigoReceta', tvPartidas.Controller.SelectedRows[i].Values[0], []) then
              begin
                // Agregar el nodo en la lista adecuada
                Elemento := TListView(Sender);
                Elemento.OnClick(Sender);

                Nodo := Elemento.Items.Add;
                Nodo.Caption := cdReceta.FieldByName('NombreReceta').AsString;
                Nodo.ImageIndex := 11;
                Nodo.SubItems.Add(cdReceta.FieldByName('DescripcionReceta').AsString);
                Nodo.Data := ListaDatos.Objects[i];
                //Nodo.Data := TObject(cdReceta.FieldByName('IdReceta').AsInteger);
              end;
            end;
         end
         else
         // Si pertenece a recetas recientes
         begin
            // Registrar en pantalla los datos grabados
            i := 0;
            for i := 0 to tvRecientes.Controller.SelectedRowCount -1 do
            begin
              // Localizar el registro para obtener sus datos generales
              if cdReceta.Locate('CodigoReceta', tvRecientes.Controller.SelectedRows[i].Values[0], []) then
              begin
                // Agregar el nodo en la lista adecuada
                Elemento := TListView(Sender);
                Elemento.OnClick(Sender);

                Nodo := Elemento.Items.Add;
                Nodo.Caption := cdReceta.FieldByName('NombreReceta').AsString;
                Nodo.ImageIndex := 11;
                Nodo.SubItems.Add(cdReceta.FieldByName('DescripcionReceta').AsString);
                Nodo.Data := ListaDatos.Objects[i];
                //Nodo.Data := TObject(cdReceta.FieldByName('IdReceta').AsInteger);
              end;
            end;
         end;
      Finally
        Screen.Cursor := LocCursor;
        ListaDatos.Free;
      End;

      ConcretarTransaccion;
    Except
      On e:InteligentException do
      begin
        CancelarTransaccion;
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      end;

      on e:Exception do
      begin
        CancelarTransaccion;
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      end;
    End;

    //&lt;Here I had an insertion of the data to the DataSet-receiver&gt;
  end;
end;

procedure TFrmRegistroPeriodoConsumo.ElementoDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if (Sender is TListView) and (Source is TcxDragControlObject) then
    with TcxDragControlObject (Source) do
      if (Control is TcxGridSite) or (Control is TcxGrid) then
      begin
        Try
          // Seleccionar el panel que se está enfocando
          if (Not Assigned(SelPanel)) or (TPanel(Sender).Parent.Name <> SelPanel.Name) then
            SelPanel := TPanel(TPanel(Sender).Parent);
        Finally
          Accept := True;
        End;
      end;
end;

procedure TFrmRegistroPeriodoConsumo.EditarRegistroConsumo(IdRegistroConsumo: Integer);
var
  Ancho: Integer;
  Panel, Panel2: TPanel;
  InPanel: TPanel;
  Elemento: TListView;
  Nodo: TListItem;
  Splitter: TSplitter;
  rcDatos: TRegistroConsumoDatos;
begin
  Self.Caption := 'Consumo del ' + DescomponerFecha(cdRegistroConsumo.FieldByName('Fecha').AsDateTime, 0, True);

  CrearPartidasRegistroConsumo;

  //IdRegistroConsumo := ;

  if Not CargarDatosFiltrados(cdRegistroConsumoInsumoLista, 'IdRegistroConsumo', [IdRegistroConsumo]) then
    raise InteligentException.CreateByCode(6, ['Registro de Consumos', IdRegistroConsumo, 'Id. Registro de Consumo']);

  cdRegistroConsumoInsumoLista.Open;

  // Cargar los datos de los periodos de consumo registrados
  if cdPeriodoConsumo.Active then
    cdPeriodoConsumo.Refresh
  else
    cdPeriodoConsumo.Open;

  Ancho := 0;
  cdPeriodoConsumo.First;
  while not cdPeriodoConsumo.Eof do
  begin
    dsRegistroConsumoInsumoLista.DataSet.Filtered := False;
    Try
      dsRegistroConsumoInsumoLista.DataSet.Filter := 'IdPeriodoConsumo = ' + cdPeriodoConsumo.FieldByName('IdPeriodoConsumo').AsString;
      dsRegistroConsumoInsumoLista.DataSet.Filtered := True;

      Panel := TPanel.Create(Self);
      Panel.Parent := sbPeriodo;
      Panel.Name := 'pnl_' + cdPeriodoConsumo.FieldByName('IdPeriodoConsumo').AsString;

      InPanel := TPanel.Create(Self);
      InPanel.Parent := Panel;
      InPanel.Align := alTop;
      InPanel.Name := 'inpnl_' + cdPeriodoConsumo.FieldByName('IdPeriodoConsumo').AsString;
      InPanel.Caption := cdPeriodoConsumo.FieldByName('TituloPeriodoConsumo').AsString;

      Elemento := TListView.Create(Self);
      Elemento.Parent := Panel;
      Elemento.Align := alClient;
      Elemento.Columns.Add.Caption := '';
      Elemento.Columns.Add.Caption := 'Descripción';
      Elemento.Name := 'lv_' + cdPeriodoConsumo.FieldByName('IdPeriodoConsumo').AsString;
      Elemento.OnKeyDown := ElementoKeyDown;
      Elemento.OnClick := GlobalPanelClick;
      Elemento.OnColumnClick := GlobalColumnClick;
      Elemento.OnDblClick := GlobalPanelDblClick;
      Elemento.OnDragDrop := ElementoDragDrop;
      Elemento.OnDragOver := ElementoDragOver;
      Elemento.ViewStyle := vsReport;
      Elemento.ReadOnly := True;
      Elemento.RowSelect := True;
      Elemento.Tag := cdPeriodoConsumo.FieldByName('IdPeriodoConsumo').AsInteger;

      cdRegistroConsumoInsumoLista.First;

      Elemento.Items.Clear;
      Elemento.Groups.Clear;
      while Not cdRegistroConsumoInsumoLista.Eof do
      begin
        rcDatos := TRegistroConsumoDatos.Create;
        rcDatos.IdRegistroConsumoDatos := cdRegistroConsumoInsumoLista.FieldByName('IdRegistroConsumoDatos').AsInteger;
        rcDatos.IdReceta := cdRegistroConsumoInsumoLista.FieldByName('IdReceta').AsInteger;

        Nodo := Elemento.Items.Add;
        Nodo.Caption := cdRegistroConsumoInsumoLista.FieldByName('NombreReceta').AsString;
        Nodo.ImageIndex := 11;
        Nodo.SubItems.Add(cdRegistroConsumoInsumoLista.FieldByName('DescripcionReceta').AsString);
        Nodo.Data := rcDatos;
        //Nodo.Data := TObject(cdRegistroConsumoInsumoLista.FieldByName('IdReceta').AsInteger);

        cdRegistroConsumoInsumoLista.Next;
      end;

      Ancho := Ancho + Panel.Width;
      Panel.Left := Ancho;
      Panel.Align := alLeft;

      Splitter := TSplitter.Create(Self);
      Splitter.Parent := sbPeriodo;
      Splitter.Align := alNone;
      Splitter.Width := 3;
      Splitter.ResizeStyle := rsUpdate;
      //Splitter.Color := clRed;
      Splitter.MinSize := 80;

      Ancho := Ancho + Splitter.Width;

      Splitter.Left := Ancho;
      Splitter.Align := alLeft;
    Finally
      cdRegistroConsumoInsumoLista.Filtered := False;
    End;

    cdPeriodoConsumo.Next;
  end;
end;

procedure TFrmRegistroPeriodoConsumo.ImprimirReceta;
var
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  Try
    Screen.Cursor := crAppStart;

    // Imprimir en este momento la receta abierta
    if cdRecetaImagen.ProviderName = '' then
      if not CrearConjunto(cdRecetaImagen, 'cmt_receta_imagen', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Recetas']);

    if cdRecetaPda.ProviderName = '' then
      if not CrearConjunto(cdRecetaPda, 'cmt_recetapartida', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Ingredientes por Receta']);

    if not CargarDatosFiltrados(cdRecetaImagen, 'IdReceta', [cdReceta.FieldByName('IdReceta').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Recetas', cdReceta.FieldByName('IdReceta').AsInteger, 'Id. Receta']);

    if cdRecetaImagen.Active then
      cdRecetaImagen.Refresh
    else
      cdRecetaImagen.Open;

    if cdRecetaPda.Active then
      cdRecetaPda.Refresh
    else
      cdRecetaPda.Open;

    ClientModule1.ImprimeReporte('Recetas.fr3', RepReceta);
  Finally
    Screen.Cursor := Cursor;
  End;
end;

procedure TFrmRegistroPeriodoConsumo.RecetasRecientes;
begin
   //Betho
  if cdRecetasRecientes.ProviderName = '' then
    if Not CrearConjunto(cdRecetasRecientes, 'cmt_recetasrecientes', ccSelect) then
      raise InteligentExcePtion.CreateByCode(5, ['Recetas Recientes']);

  if cdRecetasRecientes.Active then
    cdRecetasRecientes.Refresh
  else
    cdRecetasRecientes.Open;
end;

end.
