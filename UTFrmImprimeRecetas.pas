unit UTFrmImprimeRecetas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, DBCtrls, StdCtrls, ClientModuleUnit1, AdvGlowButton,
  ExtCtrls, frxClass, frxDBSet, URegistro, dxGDIPlusClasses;

type
  TFrmImprimeRecetas = class(TForm)
    cdTipoReceta: TClientDataSet;
    cdReceta: TClientDataSet;
    dsTipoReceta: TDataSource;
    cbTipoReceta: TCheckBox;
    NombreTipoReceta: TComboBox;
    Panel1: TPanel;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    RepRecetas: TfrxReport;
    fdsReceta: TfrxDBDataset;
    cdRecetaPda: TClientDataSet;
    fdsRecetaPda: TfrxDBDataset;
    dsReceta: TDataSource;
    imgImpresion: TImage;
    Panel2: TPanel;
    procedure cbTipoRecetaClick(Sender: TObject);
    procedure NombreTipoRecetaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAceptarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmImprimeRecetas: TFrmImprimeRecetas;

implementation

{$R *.dfm}

Uses
  Unit2;

procedure TFrmImprimeRecetas.btnAceptarClick(Sender: TObject);
var
  IdTipoReceta: Integer;
  Cual: String;
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  Try
    Screen.Cursor := crAppStart;

    // Al aceptar se deben abrir los datos de las recetas
    if cdReceta.ProviderName = '' then
      if not CrearConjunto(cdReceta, 'cmt_receta_imagen', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Recetas']);

    if cdRecetaPda.ProviderName = '' then
      if not CrearConjunto(cdRecetaPda, 'cmt_recetapartida', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Ingredientes por Receta']);

    if cbTipoReceta.Checked then
      IdTipoReceta := Integer(NombreTipoReceta.Items.Objects[NombreTipoReceta.ItemIndex])
    else
      IdTipoReceta := -1;

    if AnsiCompareText(Form2.TipoReceta, 'Consumible') = 0 then
      Cual := 'CONSUMIBLE'
    Else
      Cual := '-1';

    if not CargarDatosFiltrados(cdReceta, 'IdTipoReceta,Cual', [IdTipoReceta, Cual]) then
      raise InteligentException.CreateByCode(6, ['Recetas', IntToStr(IdTipoReceta) + '/' + Cual, 'Id. Tipo Receta/Cual']);

    if cdReceta.Active then
      cdReceta.Refresh
    else
      cdReceta.Open;

    if cdRecetaPda.Active then
      cdRecetaPda.Refresh
    else
      cdRecetaPda.Open;

    if AnsiCompareText(Form2.TipoReceta, 'Consumible') = 0 then
      ClientModule1.ImprimeReporte('Consumibles.fr3', RepRecetas)
    else
      ClientModule1.ImprimeReporte('Recetas.fr3', RepRecetas);
  Finally
    Screen.Cursor := Cursor;
    Close;
  End;
end;

procedure TFrmImprimeRecetas.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmImprimeRecetas.cbTipoRecetaClick(Sender: TObject);
var
  Cual: String;
begin
  if cbTipoReceta.Checked then
  begin
    if cdTipoReceta.ProviderName = '' then
    begin
      if Not CrearConjunto(cdTipoReceta, 'cmt_tiporeceta', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Tipos de Receta']);
    end;

    if Not cdTipoReceta.Active then
    begin
      if AnsiCompareText(Form2.TipoReceta, 'Consumible') = 0 then
        Cual := 'CONSUMIBLE'
      else
        Cual := '-1';

      if Not CargarDatosFiltrados(cdTipoReceta, 'Filtrado,Cual', ['Si', Cual]) then
        raise InteligentException.CreateByCode(6, ['Tipos de Receta', 'Si', 'Filtrado']);

      cdTipoReceta.Open;

      cdTipoReceta.First;
      NombreTipoReceta.Items.Clear;
      while not cdTipoReceta.Eof do
      begin
        NombreTipoReceta.Items.AddObject(cdTipoReceta.FieldByName('NombreTipoReceta').AsString, TObject(cdTipoReceta.FieldByName('IdTipoReceta').AsInteger));

        cdTipoReceta.Next;
      end;
    end;

    NombreTipoReceta.Enabled := (cdTipoReceta.Active) and (Not cdTipoReceta.IsEmpty);
  end
  else
    NombreTipoReceta.Enabled := False;
  if cbTipoReceta.Checked then
  begin
    if NombreTipoReceta.Items.Count > 0 then
      NombreTipoReceta.ItemIndex := 0;
  end
  else
    NombreTipoReceta.ItemIndex := -1;
end;

procedure TFrmImprimeRecetas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SetRegistry('\Ventanas', '\' + self.Name, 'Top', IntToStr(Self.Top));
  SetRegistry('\Ventanas', '\' + self.Name, 'Left', IntToStr(Self.Left));

  EliminarConjunto([cdTipoReceta, cdReceta]);
  Action := caFree;
end;

procedure TFrmImprimeRecetas.FormShow(Sender: TObject);
begin
  if VerificaPermisos('cmt_receta', [vpLeer, vpImprimir], EADMessage) then
  begin
    try
      Self.Top := StrToInt(VarRegistry('\Ventanas', '\' + self.Name, 'Top'));
    Except
      ;
    end;

    try
      Self.Left := StrToInt(VarRegistry('\Ventanas', '\' + self.Name, 'Left'));
    Except
      ;
    end;

    if AnsiCompareText(Form2.TipoReceta, 'Consumible') = 0 then
    begin
      Caption := 'Impresión Paquetes de Consumibles';
      cbTipoReceta.Caption := 'Filtrar por Tipo de Paquete';
    end;
  end
  else
    PostMessage(Self.Handle, WM_CLOSE, 0, 0);
end;

procedure TFrmImprimeRecetas.NombreTipoRecetaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 116 then
  begin
    cdTipoReceta.Close;
    cbTipoRecetaClick(cbTipoReceta);
  end;
end;

end.
