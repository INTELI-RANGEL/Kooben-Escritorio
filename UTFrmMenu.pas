unit UTFrmMenu;

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
  cxNavigator, DB, cxDBData, ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  Mask, JvExMask, JvToolEdit, JvDBControls, JvExControls, JvLabel, DBClient,
  UInteliDialog, URegistro, ClientModuleUnit1, ComCtrls, DBCtrls, AdvGlowButton,
  frxClass, frxDBSet, Grids, JvExGrids, JvStringGrid, DateUtils, AdvObj,
  BaseGrid, AdvGrid;

type
  TLista = class
    Fecha: TDate;
    IdPeriodoConsumo: Integer;
    Cantidad: Integer;
  end;

  TMenuDatos = class
    IdMenuDatos: Integer;
    IdMenu: Integer;
  end;

  TFrmMenu = class(TForm)
    gbEncabezado: TGroupBox;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    cdBuscarMenu: TClientDataSet;
    cdMenuDatosDisp: TClientDataSet;
    cdMenu: TClientDataSet;
    cdMenuUpt: TClientDataSet;
    dsMenu: TDataSource;
    Desde: TDBText;
    Hasta: TDBText;
    JvLabel3: TJvLabel;
    CodigoMenu: TDBText;
    Panel4: TPanel;
    Panel1: TPanel;
    JvLabel4: TJvLabel;
    Estado: TDBText;
    cdMenuDatosUpt: TClientDataSet;
    cdMenuDatos: TClientDataSet;
    dsMenuDatos: TDataSource;
    pnlAbajo: TPanel;
    btnImprimir: TAdvGlowButton;
    cdConfiguracion: TClientDataSet;
    frxMenuPeriodico: TfrxReport;
    frxdsMenuDatos: TfrxDBDataset;
    cdMenuDatosListado: TClientDataSet;
    pcMenu: TPageControl;
    tsMenu: TTabSheet;
    tsIngredientes: TTabSheet;
    sgMenu: TAdvStringGrid;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    CodigoInsumo: TcxGridDBColumn;
    NombreInsumo: TcxGridDBColumn;
    Cantidad: TcxGridDBColumn;
    sNombre: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel3: TPanel;
    cdRepoMenu: TClientDataSet;
    cdRepoMenuImagen1: TBlobField;
    cdRepoMenuReceta1: TStringField;
    frxdsRepoMenu: TfrxDBDataset;
    cdRepoMenuImagen2: TBlobField;
    cdRepoMenuImagen3: TBlobField;
    cdRepoMenuImagen4: TBlobField;
    cdRepoMenuImagen5: TBlobField;
    cdRepoMenuImagen6: TBlobField;
    cdRepoMenuImagen7: TBlobField;
    cdRepoMenuImagen8: TBlobField;
    cdRepoMenuImagen9: TBlobField;
    cdRepoMenuImagen10: TBlobField;
    cdRepoMenuImagen11: TBlobField;
    cdRepoMenuImagen12: TBlobField;
    cdRepoMenuImagen13: TBlobField;
    cdRepoMenuImagen14: TBlobField;
    cdRepoMenuReceta2: TStringField;
    cdRepoMenuReceta3: TStringField;
    cdRepoMenuReceta4: TStringField;
    cdRepoMenuReceta5: TStringField;
    cdRepoMenuReceta6: TStringField;
    cdRepoMenuReceta7: TStringField;
    cdRepoMenuReceta8: TStringField;
    cdRepoMenuReceta9: TStringField;
    cdRepoMenuReceta10: TStringField;
    cdRepoMenuReceta11: TStringField;
    cdRepoMenuReceta12: TStringField;
    cdRepoMenuReceta13: TStringField;
    cdRepoMenuReceta14: TStringField;
    cdEncabMenu: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    frxdsEncabMenu: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure gbEncabezadoDblClick(Sender: TObject);
    procedure sgMenuColumnSize(Sender: TObject; ACol: Integer;
      var Allow: Boolean);
    procedure btnImprimirClick(Sender: TObject);
  private
    Titulo: String;
    IdMenu: LongInt;
    ListaId: TStringList;
    procedure VerificaDataSet(DataSet: TClientDataSet);
    function BuscarMenu: Integer;
    procedure EditarMenu(IdMenu: Integer);
    procedure CrearConjuntosNuevaSolicitud;
    procedure ArmarMenu;
    procedure ArmarReporte;
  public
    ConfTipoMenu: Byte;
  end;

const
  CapTitulo: Array[1..5] of String = ('Semanal', 'Catorcenal', 'Trisemanal', 'Cuatrisemanal', 'Quincuasemanal');

var
  FrmMenu: TFrmMenu;

implementation

{$R *.dfm}

Uses
  Unit2, UTFrmMenuDatos, UTFrmBuscarMenu;

procedure TFrmMenu.FormShow(Sender: TObject);
var
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

  //IniciarTransaccion;

  ConfTipoMenu := 2;
  cdRepoMenu.CreateDataSet;
  cdEncabMenu.CreateDataSet;
  ListaId := TStringList.Create;
  ListaId.Clear;
  Caption := 'Menú ' + CapTitulo[ConfTipoMenu];

  Try
    LocCursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      // Crear los dataset necesarios
      VerificaDataSet(cdMenu);

      Titulo := 'Seleccionar un Menu';
    Finally
      Screen.Cursor := LocCursor;
    End;

    if not CrearConjunto(cdConfiguracion, 'cmt_configuracion', CCUpdate) then
      raise InteligentException.CreateByCode(5, ['Configuración']);

    cdConfiguracion.Open;

    // Se va a abrir una receta
    if Form2.IdMenu = -5 then
    begin
      LocCursor := Screen.Cursor;
      Try
        Screen.Cursor := crAppStart;

        Titulo := 'Abrir Menu';

        BuscarMenu;

        ArmarMenu;

        ArmarReporte;

        EditarMenu(cdMenu.FieldByName('IdMenu').AsInteger);
      Finally
        Screen.Cursor := LocCursor;
      End;
    end;

    // Se va a crear un nuevo Registro de Consumo
    if Form2.IdMenu = -9 then
    begin
      Titulo := 'Crear nuevo Menú ' + CapTitulo[ConfTipoMenu];
      CrearConjuntosNuevaSolicitud;
      VerificaDataSet(cdBuscarMenu);

      if cdMenuDatosDisp.ProviderName = '' then
        if not CrearConjunto(cdMenuDatosDisp, 'cmt_menudatos_disponibles', ccSelect) then
          raise InteligentException.CreateByCode(5, ['Datos del Menú']);

      if cdMenuDatosUpt.ProviderName = '' then
        if not CrearConjunto(cdMenuDatosUpt, 'cmt_menudatos', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Datos del Menú']);

      if cdMenuDatos.ProviderName = '' then
        if not CrearConjunto(cdMenuDatos, 'cmt_menudatos', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Datos del Menú']);

      if Not CargarDatosFiltrados(cdMenuUpt, 'IdMenu', [-9]) then
        raise InteligentException.CreateByCode(16, ['Menus']);

      Try
        cdMenuUpt.Open;

        Application.CreateForm(TFrmMenuDatos, FrmMenuDatos);
        FrmMenuDatos.dsMenu.DataSet := cdMenuUpt;
        FrmMenuDatos.dsBuscarMenu.DataSet := cdBuscarMenu;
        FrmMenuDatos.dsConfiguracion.DataSet := cdConfiguracion;
        FrmMenuDatos.Caption := Titulo;
        FrmMenuDatos.pIdMenu := -9;
        case FrmMenuDatos.ShowModal of
          mrCancel: raise InteligentException.Create('*');
          mrOk, mrIgnore: begin
                      if Not CargarDatosFiltrados(cdMenu, 'IdMenu', [FrmMenuDatos.pIdMenu]) then
                        raise InteligentException.CreateByCode(6, ['Menu', FrmMenuDatos.pIdMenu, 'Id. Menu']);

                      if cdMenu.Active then
                        cdMenu.Refresh
                      else
                        cdMenu.Open;

                      // Crear los registros de datos del menú
                      if Not CargarDatosFiltrados(cdMenuDatosDisp, 'IdMenu', [cdMenu.FieldByName('IdMenu').AsInteger]) then
                        raise InteligentException.CreateByCode(6, ['Datos del Menú', cdMenu.FieldByName('IdMenu').AsInteger, 'Id. Menú']);

                      if Not CargarDatosFiltrados(cdMenuDatosUpt, 'IdMenuDatos', [-9]) then
                        raise InteligentException.CreateByCode(6, ['Datos del Menú', -9, 'Id. Menú']);

                      if Not CargarDatosFiltrados(cdMenuDatos, 'IdMenu', [cdMenu.FieldByName('IdMenu').AsInteger]) then
                        raise InteligentException.CreateByCode(6, ['Datos del Menú', cdMenu.FieldByName('IdMenu').AsInteger, 'Id. Menú']);

                      if cdMenuDatosDisp.Active then
                        cdMenuDatosDisp.Refresh
                      else
                        cdMenuDatosDisp.Open;

                      if cdMenuDatosUpt.Active then
                        cdMenuDatosUpt.Refresh
                      else
                        cdMenuDatosUpt.Open;

                      while Not cdMenuDatosDisp.Eof do
                      begin
                        cdMenuDatosUpt.Append;
                        cdMenuDatosUpt.FieldByName('IdMenuDatos').AsInteger := 0;
                        cdMenuDatosUpt.FieldByName('IdMenu').AsInteger := cdMenu.FieldByName('IdMenu').AsInteger;
                        cdMenuDatosUpt.FieldByName('IdInsumo').AsInteger := cdMenuDatosDisp.FieldByName('IdInsumo').AsInteger;
                        cdMenuDatosUpt.FieldByName('Cantidad').AsFloat := cdMenuDatosDisp.FieldByName('Cantidad').AsFloat;
                        cdMenuDatosUpt.FieldByName('iIdUnidad').AsInteger := cdMenuDatosDisp.FieldByName('iIdUnidad').AsInteger;

                        cdMenuDatosUpt.Post;

                        cdMenuDatosDisp.Next;
                      end;

                      cdMenuDatosUpt.ApplyUpdates(-1);

                      if cdMenuDatos.Active then
                        cdMenuDatos.Refresh
                      else
                        cdMenuDatos.Open;

                      EditarMenu(cdMenu.FieldByName('IdMenu').AsInteger);
                    end;
        end;

        IdMenu := UltimoId;

      Finally
        cdMenuUpt.Close;
      end;
    end;

    // Se va a borrar una receta
    if Form2.IdMenu = -9 then
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

procedure TFrmMenu.gbEncabezadoDblClick(Sender: TObject);
var
  Codigo: String;
begin
  Try
    CrearConjuntosNuevaSolicitud;

    Application.CreateForm(TFrmMenuDatos, FrmMenuDatos);
    FrmMenuDatos.pIdMenu := cdMenu.FieldByName('IdMenu').AsInteger;
    FrmMenuDatos.dsMenu.DataSet := cdMenuUpt;
    FrmMenuDatos.dsBuscarMenu.DataSet := cdBuscarMenu;
    if FrmMenuDatos.ShowModal = mrOk then
    begin
      Codigo := cdMenu.FieldByName('CodigoMenu').AsString;

      cdMenu.Refresh;
      if cdMenu.RecordCount <> 1 then
        raise InteligentException.CreateByCode(13, [Codigo, 'Menus']);
    end;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, mtError, [mbOk], 0);
      Close;
    end;

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmMenu.sgMenuColumnSize(Sender: TObject; ACol: Integer;
  var Allow: Boolean);
var
  i: Integer;
begin
  for i := sgMenu.TopRow to sgMenu.TopRow + sgMenu.VisibleRowCount -1 do
    sgMenu.AutoSizeRow(i, 2);
end;

procedure TFrmMenu.VerificaDataSet(DataSet: TClientDataSet);
begin
  if DataSet.ProviderName = '' then
    if Not CrearConjunto(DataSet, 'cmt_menu', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Menus']);
end;

procedure TFrmMenu.btnImprimirClick(Sender: TObject);
begin
  if pcMenu.ActivePageIndex = 0 then
  begin
    {cdRepoMenu.EmptyDataSet;
    cdEncabMenu.EmptyDataSet;

    // Generar los encabezados en el dataset
    cdEncabMenu.Append;
    for c := 1 to sgMenu.ColCount -1 do
      cdEncabMenu.FieldByName('Receta' + IntToStr(c)).AsString := sgMenu.Cells[c, 0];
    cdEncabMenu.Post;

    // Generar los datos en un dataset
    for i := 1 to sgMenu.RowCount -1 do
    begin
      cdRepoMenu.Append;
      for c := 1 to sgMenu.ColCount -1 do
      begin
        if ListaId.IndexOf(IntToStr(c) + ':' + IntToStr(i)) >= 0 then
        begin
          cdMenuDatosListado.RecNo := Integer(ListaId.Objects[ListaId.IndexOf(IntToStr(c) + ':' + IntToStr(i))]);
          cdRepoMenu.FieldByName('Imagen' + IntToStr(c)).AsBytes := cdMenuDatosListado.FieldByName('Imagen').AsBytes;
        end;
        cdRepoMenu.FieldByName('Receta' + IntToStr(c)).AsString := sgMenu.Cells[c, i];
      end;
      cdRepoMenu.Post;
    end;}

    ClientModule1.ImprimeReporte('MenuPeriodico.fr3', frxMenuPeriodico);
  end;
end;

function TFrmMenu.BuscarMenu: Integer;
begin
  VerificaDataSet(cdBuscarMenu);

  if Not cdBuscarMenu.Active then
    cdBuscarMenu.Open;

  Application.CreateForm(TFrmBuscarMenu, FrmBuscarMenu);
  FrmBuscarMenu.dsMenu.DataSet := cdBuscarMenu;
  if FrmBuscarMenu.ShowModal = mrCancel then
    raise InteligentException.Create('*');

  if Not CargarDatosFiltrados(cdMenu, 'IdMenu', [cdBuscarMenu.FieldByName('IdMenu').AsInteger]) then
    raise InteligentException.CreateByCode(6, ['Menus', cdBuscarMenu.FieldByName('IdMenu').AsInteger, 'Id. Menu']);

  if cdMenuDatos.ProviderName = '' then
    if Not CrearConjunto(cdMenuDatos, 'cmt_menudatos', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Datos de Menú']);

  if Not CargarDatosFiltrados(cdMenuDatos, 'IdMenu', [cdBuscarMenu.FieldByName('IdMenu').AsInteger]) then
    raise InteligentException.CreateByCode(6, ['Datos de Menu', cdBuscarMenu.FieldByName('IdMenu').AsInteger, 'Id. Menu']);

  if cdMenu.Active then
    cdMenu.Refresh
  else
    cdMenu.Open;

  if cdMenu.RecordCount = 0 then
    raise InteligentException.CreateByCode(13, [cdBuscarMenu.FieldByName('CodigoMenu').AsString, 'Menus']);

  if cdMenuDatos.Active then
    cdMenuDatos.Refresh
  else
    cdMenuDatos.Open;

  if cdMenuDatosListado.ProviderName = '' then
    if Not CrearConjunto(cdMenuDatosListado, 'cmt_menudatos_listado', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Datos de Menú']);

  if Not CargarDatosFiltrados(cdMenuDatosListado, 'IdMenu', [cdBuscarMenu.FieldByName('IdMenu').AsInteger]) then
    raise InteligentException.CreateByCode(6, ['Datos de Menu', cdBuscarMenu.FieldByName('IdMenu').AsInteger, 'Id. Menu']);

  if cdMenuDatosListado.Active then
    cdMenuDatosListado.Refresh
  else
    cdMenuDatosListado.Open;
end;

procedure TFrmMenu.EditarMenu(IdMenu: Integer);
begin
  Self.Caption := cdMenu.FieldByName('CodigoMenu').AsString;
end;

procedure TFrmMenu.CrearConjuntosNuevaSolicitud;
begin
  if cdMenuUpt.ProviderName = '' then
    if Not CrearConjunto(cdMenuUpt, 'cmt_menu', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Menus']);
end;

procedure TFrmMenu.ArmarMenu;
const
  nDia: Array[1..7] of String = ('LUNES', 'MARTES', 'MIERCOLES', 'JUEVES', 'VIERNES', 'SÁBADO', 'DOMINGO');
var
  i, nCol, nRen: Integer;
  OldFecha: TDate;
  OldId, InRen: Integer;
  MaxRen, nWidth: Integer;
  OldPeriodo: String;
begin
  sgMenu.ColCount := 2 + Trunc(cdMenu.FieldByName('Hasta').AsDateTime) - Trunc(cdMenu.FieldByName('Desde').AsDateTime);
  sgMenu.RowCount := cdMenuDatosListado.RecordCount +1;

  // Llenar el grid de datos
  cdMenuDatosListado.First;
  OldFecha := cdMenuDatosListado.FieldByName('Fecha').AsDateTime;
  OldId := cdMenuDatosListado.FieldByName('IdPeriodoConsumo').AsInteger;
  nRen := 1;
  MaxRen := 0;
  InRen := 1;
  OldPeriodo := '';
  while Not cdMenuDatosListado.Eof do
  begin
    if OldId <> cdMenuDatosListado.FieldByName('IdPeriodoConsumo').AsInteger then
    begin
      InRen := MaxRen;
      MaxRen := 0;
    end;

    if (OldId <> cdMenuDatosListado.FieldByName('IdPeriodoConsumo').AsInteger) OR (OldFecha <> cdMenuDatosListado.FieldByName('Fecha').AsDateTime) then
      nRen := InRen;

    // Calcular la columna
    nCol := 1 + Trunc(cdMenuDatosListado.FieldByName('Fecha').AsDateTime) - Trunc(cdMenu.FieldByName('Desde').AsDateTime);

    if OldPeriodo <> cdMenuDatosListado.FieldByName('TituloPeriodoConsumo').AsString then
    begin
      sgMenu.Cells[0, nRen] := cdMenuDatosListado.FieldByName('TituloPeriodoConsumo').AsString;
      OldPeriodo := cdMenuDatosListado.FieldByName('TituloPeriodoConsumo').AsString;
    end;

    sgMenu.Cells[nCol, nRen] := cdMenuDatosListado.FieldByName('NombreReceta').AsString + #10 + #10 + cdMenuDatosListado.FieldByName('DescripcionReceta').AsString;
    sgMenu.Alignments[nCol, nRen] := taLeftJustify;

    ListaId.AddObject(IntToStr(nCol) + ':' + IntToStr(nRen), TObject(cdMenuDatosListado.RecNo));

    Inc(nRen);
    if MaxRen< nRen then
      MaxRen := nRen;
    OldFecha := cdMenuDatosListado.FieldByName('Fecha').AsDateTime;
    OldId := cdMenuDatosListado.FieldByName('IdPeriodoConsumo').AsInteger;
    cdMenuDatosListado.Next;
  end;

  sgMenu.RowCount := MaxRen;

  for i := 1 to sgMenu.RowCount -1 do
  begin
    nWidth := sgMenu.Canvas.TextWidth(sgMenu.Cells[0, i]) + 2;
    if sgMenu.ColWidths[0] < nWidth then
      sgMenu.ColWidths[0] := nWidth;
  end;

  for i := 0 to Trunc(cdMenu.FieldByName('Hasta').AsFloat) - Trunc(cdMenu.FieldByName('Desde').AsFloat) do
    sgMenu.Cells[i +1, 0] := nDia[DayOfTheWeek(cdMenu.FieldByName('Desde').AsDateTime + i)] + ' ' + IntToStr(DayOfTheMonth(cdMenu.FieldByName('Desde').AsDateTime + i));

  // Ajustar todas las celdas
  sgMenu.AutoSizeRows(False, 2);

  sgMenu.ColWidths[2] := 0;
end;

procedure TFrmMenu.ArmarReporte;
var
  i, c: Integer;
begin
  cdRepoMenu.EmptyDataSet;
  cdEncabMenu.EmptyDataSet;

  // Generar los encabezados en el dataset
  cdEncabMenu.Append;
  for c := 1 to sgMenu.ColCount -1 do
    cdEncabMenu.FieldByName('Receta' + IntToStr(c)).AsString := sgMenu.Cells[c, 0];
  cdEncabMenu.Post;

  // Generar los datos en un dataset
  for i := 1 to sgMenu.RowCount -1 do
  begin
    cdRepoMenu.Append;
    for c := 1 to sgMenu.ColCount -1 do
    begin
      if ListaId.IndexOf(IntToStr(c) + ':' + IntToStr(i)) >= 0 then
      begin
        cdMenuDatosListado.RecNo := Integer(ListaId.Objects[ListaId.IndexOf(IntToStr(c) + ':' + IntToStr(i))]);
        cdRepoMenu.FieldByName('Imagen' + IntToStr(c)).AsBytes := cdMenuDatosListado.FieldByName('Imagen').AsBytes;
      end;
      cdRepoMenu.FieldByName('Receta' + IntToStr(c)).AsString := sgMenu.Cells[c, i];
    end;
    cdRepoMenu.Post;
  end;
end;

end.
