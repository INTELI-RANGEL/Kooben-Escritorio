unit UTFrmImpuestoxInsumo;

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
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, DBClient,
  ClientModuleUnit1, UInteliDialog, URegistro, JvExControls, JvLabel, StdCtrls,
  Menus;

type
  TFrmImpuestoxInsumo = class(TForm)
    tvImpuesto: TcxGridDBTableView;
    GridImpuestoLevel1: TcxGridLevel;
    GridImpuesto: TcxGrid;
    Panel1: TPanel;
    tvGrupoImpuesto: TcxGridDBTableView;
    GridTipoLevel1: TcxGridLevel;
    GridTipo: TcxGrid;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    cdImpuesto: TClientDataSet;
    dsImpuesto: TDataSource;
    ColCodigoImpuesto: TcxGridDBColumn;
    ColTituloImpuesto: TcxGridDBColumn;
    cdGrupo: TClientDataSet;
    dsGrupo: TDataSource;
    ColCodigoTipoInsumo: TcxGridDBColumn;
    ColNombreTipoInsumo: TcxGridDBColumn;
    ColCtaInsumo: TcxGridDBColumn;
    ColCtaTipo: TcxGridDBColumn;
    dsInsumo: TDataSource;
    cdInsumo: TClientDataSet;
    pnlInsumo: TPanel;
    GridInsumo: TcxGrid;
    tvInsumo: TcxGridDBTableView;
    GridInsumoLevel1: TcxGridLevel;
    ColCodigoInsumo: TcxGridDBColumn;
    ColNombreInsumo: TcxGridDBColumn;
    Panel2: TPanel;
    lblLeyendaGrupo: TMemo;
    Panel3: TPanel;
    lblLeyendaInsumo: TMemo;
    pmGrupo: TPopupMenu;
    AgregarTipodeInsumo1: TMenuItem;
    N1: TMenuItem;
    ReportarTiposdeInsumo1: TMenuItem;
    RefrescarTiposdeInsumo1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdImpuestoAfterScroll(DataSet: TDataSet);
    procedure AgregarTipodeInsumo1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmImpuestoxInsumo: TFrmImpuestoxInsumo;

implementation

uses UtFrmAgregarTipoInsumo;

{$R *.dfm}

procedure TFrmImpuestoxInsumo.AgregarTipodeInsumo1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmAgregarTipoInsumo, FrmAgregarTipoInsumo);
  FrmAgregarTipoInsumo.IdImpuesto := cdImpuesto.FieldByName('IdImpuesto').AsInteger;
  if FrmAgregarTipoInsumo.ShowModal = mrOk then
    cdGrupo.Refresh;
end;

procedure TFrmImpuestoxInsumo.cdImpuestoAfterScroll(DataSet: TDataSet);
begin
  lblLeyendaGrupo.Text := cdImpuesto.FieldByName('TituloImpuesto').AsString + ' para todos los Insumos que correspondan a los siguientes tipos de Insumo:';
  lblLeyendaInsumo.Text := cdImpuesto.FieldByName('TituloImpuesto').AsString + ' para todos los siguientes Insumos:';

  cdGrupo.Filtered := False;
  cdGrupo.Filter := 'IdImpuesto = ' + cdImpuesto.FieldByName('IdImpuesto').AsString;
  cdGrupo.Filtered := True;

  cdInsumo.Filtered := False;
  cdInsumo.Filter := 'IdImpuesto = ' + cdImpuesto.FieldByName('IdImpuesto').AsString;
  cdInsumo.Filtered := True;
end;

procedure TFrmImpuestoxInsumo.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
  try
    SetRegistry('\Ventanas', '\GridImpuesto', 'Width', IntToStr(GridImpuesto.Width));
    SetRegistry('\Ventanas', '\pnlInsumo', 'Height', IntToStr(pnlInsumo.Height));

    for i:= 0 to tvImpuesto.ColumnCount -1 do
      SetRegistry('\Ventanas', '\' + Self.Name + '\tvImpuesto', 'Column' + IntToStr(i), IntToStr(tvImpuesto.Columns[i].Width));

    for i:= 0 to tvGrupoImpuesto.ColumnCount -1 do
      SetRegistry('\Ventanas', '\' + Self.Name + '\tvGrupoImpuesto', 'Column' + IntToStr(i), IntToStr(tvGrupoImpuesto.Columns[i].Width));

    for i:= 0 to tvInsumo.ColumnCount -1 do
      SetRegistry('\Ventanas', '\' + Self.Name + '\tvInsumo', 'Column' + IntToStr(i), IntToStr(tvInsumo.Columns[i].Width));

    EliminarConjunto([cdImpuesto, cdGrupo, cdInsumo]);
  finally
    Action := caFree;
  end;
end;

procedure TFrmImpuestoxInsumo.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
  i: Integer;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      try
        GridImpuesto.Width := StrToInt(VarRegistry('\Ventanas', '\GridImpuesto', 'Width'));
      except
        ;
      end;

      try
        pnlInsumo.Height := StrToInt(VarRegistry('\Ventanas', '\pnlInsumo', 'Height'));
      except
        ;
      end;

      for i:= 0 to tvImpuesto.ColumnCount -1 do
        try
          tvImpuesto.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\tvImpuesto', 'Column'+ IntToStr(i)));
        except
          ;
        end;

      for i:= 0 to tvGrupoImpuesto.ColumnCount -1 do
        try
          tvGrupoImpuesto.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\tvGrupoImpuesto', 'Column'+ IntToStr(i)));
        except
          ;
        end;

      for i:= 0 to tvInsumo.ColumnCount -1 do
        try
          tvInsumo.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\tvInsumo', 'Column'+ IntToStr(i)));
        except
          ;
        end;

      if Not CrearConjunto(cdImpuesto, 'nuc_impuesto', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Impuestos']);

      if Not CrearConjunto(cdGrupo, 'cmt_impuestoxinsumo', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Impuestos por Insumos']);

      if Not CrearConjunto(cdInsumo, 'cmt_impuestoxinsumo', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Impuestos por Insumos']);

      if Not CargarDatosFiltrados(cdGrupo, 'Todo', ['TipoInsumo']) then
        raise InteligentException.CreateByCode(16, ['Impuestos por Insumos']);

      if Not CargarDatosFiltrados(cdInsumo, 'Todo', ['Insumo']) then
        raise InteligentException.CreateByCode(16, ['Impuestos por Insumos']);

      cdImpuesto.Open;
      cdGrupo.Open;
      cdInsumo.Open;
    finally
      Screen.Cursor := LocCursor;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

end.
