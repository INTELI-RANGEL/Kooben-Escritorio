unit UTFrmSeleccionarInsumo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, Grids, DBGrids, cxGraphics, cxControls, cxLookAndFeels,
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
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  JvExControls, JvLabel, StdCtrls, Mask, DBCtrls, ClientModuleUnit1, URegistro,
  AdvGlowButton;

type
  TFrmSeleccionarInsumo = class(TForm)
    dsInsumo: TDataSource;
    pnlDetalle: TPanel;
    pnlDatos: TPanel;
    cxGrid1: TcxGrid;
    tvInsumo: TcxGridDBTableView;
    NombreTipoInsumo: TcxGridDBColumn;
    CodigoInsumo: TcxGridDBColumn;
    NombreInsumo: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel3: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    DBMemo1: TDBMemo;
    Panel4: TPanel;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    Panel5: TPanel;
    Panel6: TPanel;
    JvLabel4: TJvLabel;
    edtBuscar: TEdit;
    procedure edtBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSeleccionarInsumo: TFrmSeleccionarInsumo;

implementation

{$R *.dfm}

procedure TFrmSeleccionarInsumo.edtBuscarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    // Filtrar el pedo
    Try
      dsInsumo.Dataset.DisableControls;
      dsInsumo.Dataset.Filtered := False;

      // Verificar si se ha capturado algo
      if trim(edtBuscar.Text) <> '' then
      begin
        if dsInsumo.DataSet.Locate('CodigoInsumo', edtBuscar.Text, []) then
          // Filtrar por el Código localizado
          dsInsumo.DataSet.Filter := 'CodigoInsumo = ' + QuotedStr(edtBuscar.Text)
        else
          dsInsumo.DataSet.Filter := 'NombreInsumo LIKE ' + QuotedStr('%' + edtBuscar.Text + '%');
        dsInsumo.Dataset.Filtered := True;
      end;
    Finally
      dsInsumo.Dataset.EnableControls;
    End;
  end;
end;

procedure TFrmSeleccionarInsumo.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
  try
    for i:= 0 to tvInsumo.ColumnCount -1 do
      SetRegistry('\Ventanas', '\' + self.Name + '\tvInsumo', 'Column' + IntToStr(i), IntToStr(tvInsumo.Columns[i].Width));

    SetRegistry('\Ventanas', '\' + self.Name, 'Top', IntToStr(Self.Top));
    SetRegistry('\Ventanas', '\' + self.Name, 'Left', IntToStr(Self.Left));
    SetRegistry('\Ventanas', '\' + self.Name, 'Width', IntToStr(Self.Width));
    SetRegistry('\Ventanas', '\' + self.Name, 'Height', IntToStr(Self.Height));
  finally
    Action := caFree;
  end;
end;

procedure TFrmSeleccionarInsumo.FormShow(Sender: TObject);
var
  i: Integer;
begin
  for i:= 0 to tvInsumo.ColumnCount -1 do
    try
      tvInsumo.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + self.Name + '\tvInsumo', 'Column'+ IntToStr(i)));
    except
      ;
    end;

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

  tvInsumo.DataController.Groups.FullExpand;
end;

end.
