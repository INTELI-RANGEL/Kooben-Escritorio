unit UTFrmInsumoPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ClientModuleUnit1, UInteliDialog, DB, DBClient, cxGraphics,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, AdvGlowButton, ExtCtrls, JvExControls, JvLabel, StdCtrls, DBCtrls,
  Mask, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls, cxCalc, frxClass,
  frxDBSet;

type
  TFrmInsumoPedido = class(TForm)
    cdInsumoPedido: TClientDataSet;
    cdInsumoPedidoUpt: TClientDataSet;
    dsExplosion: TDataSource;
    cdInsumoPedidoPartida: TClientDataSet;
    cdInsumoPedidoPartidaUpt: TClientDataSet;
    dsMenu: TDataSource;
    tvPedido: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsInsumoPedidoPartida: TDataSource;
    CodigoInsumoOriginal: TcxGridDBColumn;
    NombreInsumoOriginal: TcxGridDBColumn;
    CantidadOriginal: TcxGridDBColumn;
    sNombreOriginal: TcxGridDBColumn;
    Cantidad: TcxGridDBColumn;
    sNombre: TcxGridDBColumn;
    Panel2: TPanel;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    dsInsumoPedido: TDataSource;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    JvLabel5: TJvLabel;
    DBEdit1: TDBEdit;
    Panel6: TPanel;
    Panel7: TPanel;
    JvLabel7: TJvLabel;
    Panel8: TPanel;
    Panel9: TPanel;
    JvLabel1: TJvLabel;
    DBText1: TDBText;
    JvLabel2: TJvLabel;
    DBText2: TDBText;
    JvLabel3: TJvLabel;
    DBText3: TDBText;
    JvLabel4: TJvLabel;
    DBText5: TDBText;
    JvLabel6: TJvLabel;
    DBText4: TDBText;
    DBText6: TDBText;
    DBMemo1: TDBMemo;
    Splitter1: TSplitter;
    dsInsumoPedidoUpt: TDataSource;
    pnlEdit: TPanel;
    Panel10: TPanel;
    btnFormaCancelar: TAdvGlowButton;
    btnFormaAceptar: TAdvGlowButton;
    dsInsumoPedidoPartidaUpt: TDataSource;
    JvLabel8: TJvLabel;
    lblCodigoInsumo: TDBText;
    JvLabel9: TJvLabel;
    lblNombreInsumo: TDBText;
    JvLabel10: TJvLabel;
    JvLabel11: TJvLabel;
    EdtCantidad: TJvDBCalcEdit;
    lblCantidad: TDBText;
    lblMedida: TDBText;
    cdUnidad: TClientDataSet;
    dsUnidad: TDataSource;
    CodigoInsumo: TcxGridDBColumn;
    NombreInsumo: TcxGridDBColumn;
    JvLabel12: TJvLabel;
    EdtIdInsumo: TDBLookupComboBox;
    dsIngredientes: TDataSource;
    btnImprimirInsumos: TAdvGlowButton;
    Panel11: TPanel;
    btnEliminarPedido: TAdvGlowButton;
    cdVerificaComisaria: TClientDataSet;
    Reporte: TfrxReport;
    frdsInsumoPedido: TfrxDBDataset;
    frdsInsumoPedidoPartida: TfrxDBDataset;
    lblMedida2: TDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure tvPedidoCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnFormaCancelarClick(Sender: TObject);
    procedure btnFormaAceptarClick(Sender: TObject);
    procedure tvPedidoCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnImprimirInsumosClick(Sender: TObject);
    procedure dsIngredientesDataChange(Sender: TObject; Field: TField);
    procedure btnEliminarPedidoClick(Sender: TObject);
  private
    OldRecNo: LongInt;
    Resultado: TModalResult;
    FormaResult: TModalResult;
    Forma: TForm;
    procedure FormaClose(Sender: TObject; var Action: TCloseAction);
  public
    IdMenu: LongInt;
    Generar: Boolean;
  end;

var
  FrmInsumoPedido: TFrmInsumoPedido;

implementation

{$R *.dfm}

Uses
  Unit2, UTFrmMenuDX;

procedure TFrmInsumoPedido.btnEliminarPedidoClick(Sender: TObject);
begin
  try
    VerificaPermisos('cmt_comisaria', [vpBorrar], EADError);

    // Verificar si no existe Solicitud de Comisaria para este Pedido
    if cdVerificaComisaria.ProviderName = '' then
      if Not CrearConjunto(cdVerificaComisaria, 'cmt_comisaria', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Comisarias']);

    if Not CargarDatosFiltrados(cdVerificaComisaria, 'IdMenu', [dsMenu.DataSet.FieldByName('IdMenu').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Comisarias', dsMenu.DataSet.FieldByName('IdMenu').AsInteger, 'Id. Comisaria']);

    if CuantosRegistros(cdVerificaComisaria) > 0 then
      raise InteligentException.CreateByCode(24, ['No es posible eliminar este Pedido debido a que ya cuenta con una Solicitud de Comisaria activa.']);

    if InteliDialog.ShowModal('Eliminación de Pedido', '¿Desea eliminar este Pedido en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      raise InteligentWarning.Create('*');

    // Eliminar aquí el pedo
    if cdInsumoPedidoPartidaUpt.Active then
      cdInsumoPedidoPartidaUpt.Refresh
    else
      cdInsumoPedidoPartidaUpt.Open;

    while Not cdInsumoPedidoPartidaUpt.Eof do
      cdInsumoPedidoPartidaUpt.Delete;
    cdInsumoPedidoPartidaUpt.ApplyUpdates(-1);

    cdInsumoPedidoUpt.Delete;
    cdInsumoPedidoUpt.ApplyUpdates(-1);

    FrmMenuDX.PedidoBorrado := True;
    btnAceptar.Click;
  except
    on e:InteligentWarning do
      ;

    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      Intelidialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmInsumoPedido.btnAceptarClick(Sender: TObject);
begin
  Try
    if cdInsumoPedidoUpt.Modified then
    begin
      cdInsumoPedidoUpt.Post;
      cdInsumoPedidoUpt.ApplyUpdates(-1);
    end;

    Resultado := mrOk;
  Finally
    Close;
  End;
end;

procedure TFrmInsumoPedido.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmInsumoPedido.btnFormaAceptarClick(Sender: TObject);
begin
  if cdInsumoPedidoPartidaUpt.State in [dsEdit, dsInsert] then
  begin
    Try
      cdInsumoPedidoPartidaUpt.Post;
      cdInsumoPedidoPartidaUpt.ApplyUpdates(-1);

      cdInsumoPedidoPartida.Refresh;
      FormaResult := mrOk;
    Except
      on e:Exception do
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    End;
  end;

  Forma.Close;
end;

procedure TFrmInsumoPedido.btnFormaCancelarClick(Sender: TObject);
begin
  Forma.Close;
end;

procedure TFrmInsumoPedido.btnImprimirInsumosClick(Sender: TObject);
begin
  if VerificaPermisos('cmt_comisaria', [vpImprimir], EADMessage) then
    ClientModule1.ImprimeReporte('PedidoInsumos.fr3', Reporte);
end;

procedure TFrmInsumoPedido.dsIngredientesDataChange(Sender: TObject;
  Field: TField);
begin
  if (cdInsumoPedidoPartidaUpt.Active) and (cdInsumoPedidoPartidaUpt.State In [dsEdit, dsInsert]) then
  begin
    if cdUnidad.Locate('iIdUnidad', dsIngredientes.DataSet.FieldByName('iIdUnidad').AsInteger, []) then
      cdInsumoPedidoPartidaUpt.FieldByName('iIdUnidadReal').AsInteger := cdUnidad.FieldByName('iIdUnidad').AsInteger
    else
      cdInsumoPedidoPartidaUpt.FieldByName('iIdUnidadReal').AsVariant := Null;
  end;
end;

procedure TFrmInsumoPedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EliminarConjunto([cdInsumoPedido, cdInsumoPedidoUpt, cdInsumoPedidoPartida, cdInsumoPedidoPartidaUpt, cdUnidad]);
  ModalResult := Resultado;
end;

procedure TFrmInsumoPedido.FormaClose(Sender: TObject; var Action: TCloseAction);
begin
  Forma.ModalResult := FormaResult;
end;

procedure TFrmInsumoPedido.FormCreate(Sender: TObject);
begin
  IdMenu := -1;
  Generar := False;
  Resultado := mrCancel;
end;

procedure TFrmInsumoPedido.FormShow(Sender: TObject);
var
  Cursor: TCursor;
  Id: LongInt;
  Cuantos: LongInt;
begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      if Not CrearConjunto(cdInsumoPedido, 'cmt_insumopedido', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Pedidos de Ingredientes']);

      if Not CrearConjunto(cdInsumoPedidoUpt, 'cmt_insumopedido', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['*Pedidos de Ingredientes']);

      if Not CrearConjunto(cdInsumoPedidoPartida, 'cmt_insumopedidopartida', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Partidas de Pedidos de Ingredientes']);

      if Not CrearConjunto(cdInsumoPedidoPartidaUpt, 'cmt_insumopedidopartida', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['*Partidas de Pedidos de Ingredientes']);

      if IdMenu > 0 then
      begin
        if Not CargarDatosFiltrados(cdInsumoPedido, 'IdMenu', [IdMenu]) then
          raise InteligentException.CreateByCode(6, ['Pedidos de Ingredientes', IdMenu, 'Id. Menu']);

        Cuantos := CuantosRegistros(cdInsumoPedido);
        if ((Cuantos > 0) and (Generar)) or (Cuantos = 0) then
        begin
          // Si ya existe el pedido verificar si se ordenó crearlo o solo leerlo
          if Cuantos > 0 then
          begin
            {Try
              Screen.Cursor := Cursor;

              // Informarle al usuario que ya eiste un pedido y preguntarle si quiere abrirlo
              if InteliDialog.ShowModal('Ya existe el pedido de Ingredientes', 'El Pedido de Ingredientes que esta tratando de crear ya existe.' + #10 + #10 + '¿Desea abrirlo en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
                raise InteligentWarning.Create('*');
            Finally
              Screen.Cursor := crAppStart;
            End;}

{            // Abrir aquí todo el pedo para mostrarelo al usuario
            if Not CargarDatosFiltrados(cdInsumoPedido, 'IdInsumoPedido', [Id]) then
              raise InteligentException.CreateByCode(16, ['Pedidos de Ingredientes']);}

            cdInsumoPedido.Open;
            if cdInsumoPedido.RecordCount <> 1 then
              raise InteligentException.CreateByCode(13, [IdMenu, 'Pedidos de Ingredientes']);

            Id := cdInsumoPedido.FieldByName('IdInsumoPedido').AsInteger;

            if Not CargarDatosFiltrados(cdInsumoPedidoUpt, 'IdInsumoPedido', [Id]) then
              raise InteligentException.CreateByCode(16, ['*Pedidos de Ingredientes']);

            cdInsumoPedidoUpt.Open;

            if Not CargarDatosFiltrados(cdInsumoPedidoPartida, 'IdMenu', [dsMenu.DataSet.FieldByName('IdMenu').AsInteger]) then
              raise InteligentException.CreateByCode(16, ['Partidas de Pedidos de Ingredientes']);

            cdInsumoPedidoPartida.Open;
          end
          else
          begin
            Screen.Cursor := Cursor;
            Try
              // Preguntar si desea generar los datos del pedido en este momento
              if InteliDialog.ShowModal('Generar Pedido de Ingredientes', 'Está a punto de generar el documento de pedido de ingredientes para este menú, esto puede tardar algunos minutos, dependiendo de la velocidad de su conexión.' + #10 + #10 + '¿Desea proceder con la generación en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
                raise InteligentWarning.Create('*');
            Finally
              Screen.Cursor := crAppStart;
            End;

            // Proceder con la generación de los registros
            if Not CargarDatosFiltrados(cdInsumoPedidoUpt, 'IdInsumoPedido', [-9]) then
              raise InteligentException.CreateByCode(16, ['Pedidos de Ingredientes']);

            cdInsumoPedidoUpt.Open;

            if Not CargarDatosFiltrados(cdInsumoPedidoPartidaUpt, 'IdInsumoPedidoPartida', [-9]) then
              raise InteligentException.CreateByCode(16, ['Partidas de Pedidos de Ingredientes']);

            cdInsumoPedidoPartidaUpt.Open;

            // Crear los datos generales de manera parcial
            cdInsumoPedidoUpt.Append;
            cdInsumoPedidoUpt.FieldByName('IdInsumoPedido').AsInteger := 0;
            cdInsumoPedidoUpt.FieldByName('IdMenu').AsInteger := dsMenu.DataSet.FieldByName('IdMenu').AsInteger;
            cdInsumoPedidoUpt.FieldByName('CodigoInsumoPedido').AsString := '';
            cdInsumoPedidoUpt.FieldByName('Referencia').AsString := '';
            cdInsumoPedidoUpt.FieldByName('Comentarios').AsString := '';
            cdInsumoPedidoUpt.FieldByName('Fecha').AsDateTime := Now();
            cdInsumoPedidoUpt.FieldByName('Emision').AsDateTime := Now();
            cdInsumoPedidoUpt.FieldByName('Estado').AsString := 'Abierto';
            cdInsumoPedidoUpt.Post;
            cdInsumoPedidoUpt.ApplyUpdates(-1);
            Id := UltimoId;

            if Not CargarDatosFiltrados(cdInsumoPedidoUpt, 'IdInsumoPedido', [Id]) then
              raise InteligentException.CreateByCode(16, ['*Pedidos de Ingredientes']);

            cdInsumoPedidoUpt.Open;

            if Not CargarDatosFiltrados(cdInsumoPedido, 'IdInsumoPedido', [Id]) then
              raise InteligentException.CreateByCode(16, ['Pedidos de Ingredientes']);

            cdInsumoPedido.Open;

            if cdInsumoPedido.RecordCount <> 1 then
              raise InteligentException.CreateByCode(27, ['Pedidos de Ingredientes', Id]);

            Try
              if Not dsExplosion.DataSet.Active then
                dsExplosion.DataSet.Open;

              OldRecNo := dsExplosion.DataSet.RecNo;
              dsExplosion.DataSet.First;

              Form2.StatusBar1.Panels[0].Progress.Max := dsExplosion.DataSet.RecordCount;

              while not dsExplosion.DataSet.Eof do
              begin
                Form2.StatusBar1.Panels[0].Progress.Position := dsExplosion.DataSet.RecNo;
                Form2.StatusBar1.Repaint;

                cdInsumoPedidoPartidaUpt.Append;
                cdInsumoPedidoPartidaUpt.FieldByName('IdInsumoPedidoPartida').AsInteger := 0;
                cdInsumoPedidoPartidaUpt.FieldByName('IdInsumoPedido').AsInteger := cdInsumoPedido.FieldByName('IdInsumoPedido').AsInteger;
                cdInsumoPedidoPartidaUpt.FieldByName('IdInsumo').AsInteger := dsExplosion.DataSet.FieldByName('IdInsumo').AsInteger;
                cdInsumoPedidoPartidaUpt.FieldByName('Cantidad').AsFloat := dsExplosion.DataSet.FieldByName('Cantidad').AsFloat;
                cdInsumoPedidoPartidaUpt.FieldByName('iIdUnidad').AsInteger := dsExplosion.DataSet.FieldByName('iIdUnidad').AsInteger;
                cdInsumoPedidoPartidaUpt.FieldByName('IdInsumoReal').AsInteger := dsExplosion.DataSet.FieldByName('IdInsumo').AsInteger;
                cdInsumoPedidoPartidaUpt.FieldByName('CantidadReal').AsFloat := dsExplosion.DataSet.FieldByName('Cantidad').AsFloat;
                cdInsumoPedidoPartidaUpt.FieldByName('iIdUnidadReal').AsInteger := dsExplosion.DataSet.FieldByName('iIdUnidad').AsInteger;
                cdInsumoPedidoPartidaUpt.FieldByName('Estado').AsString := 'Activo';
                cdInsumoPedidoPartidaUpt.Post;

                dsExplosion.DataSet.Next;
              end;
              cdInsumoPedidoPartidaUpt.ApplyUpdates(-1);

              // Cargar los datos
              if Not CargarDatosFiltrados(cdInsumoPedidoPartida, 'IdMenu', [dsMenu.DataSet.FieldByName('IdMenu').AsInteger]) then
                raise InteligentException.CreateByCode(16, ['Partidas de Pedidos de Ingredientes']);

              cdInsumoPedidoPartida.Open;
            Finally
              Form2.StatusBar1.Panels[0].Progress.Position := 0;
              dsExplosion.DataSet.RecNo := OldRecNo;
            End;
          end;
        end;
      end;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:InteligentWarning do
      PostMessage(Self.handle, WM_CLOSE, 0, 0);

    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.msgType, [mbOk], 0);
      PostMessage(Self.handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmInsumoPedido.tvPedidoCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  oWidth, oHeight: Integer;
  locIngredientes: TClientDataSet;
begin
  Try
    // Verificar si ya se ha creado el conjunto de unidades de medida
    if cdUnidad.ProviderName = '' then
    begin
      if not CrearConjunto(cdUnidad, 'nuc_unidades', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Unidades de Medida']);
      cdUnidad.Open;
    end;

    locIngredientes := TClientdataSet(dsIngredientes.DataSet);
    if locIngredientes.ProviderName = '' then
    begin
      if Not CrearConjunto(locIngredientes, 'cmt_insumo', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Ingredientes']);
    end;

    if Not locIngredientes.Active then
      locIngredientes.Open;

    if Not CargarDatosFiltrados(cdInsumoPedidoPartidaUpt, 'IdInsumoPedidoPartida', [cdInsumoPedidoPartida.FieldByName('IdInsumoPedidoPartida').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Partidas del Pedido de Ingredientes', cdInsumoPedidoPartida.FieldByName('IdInsumoPedidoPartida').AsInteger, 'Id. Insumo Pedido Partida']);
    if cdInsumoPedidoPartidaUpt.Active then
      cdInsumoPedidoPartidaUpt.Refresh
    else
      cdInsumoPedidoPartidaUpt.Open;

    if cdInsumoPedidoPartidaUpt.RecordCount = 0 then
      raise InteligentException.CreateByCode(13, [cdInsumoPedidoPartida.FieldByName('IdInsumoPedidoPartida').AsInteger, 'Partidas del Pedido de Ingredientes']);

    Try
      Forma := TForm.Create(Self);
      Forma.Caption := 'Editando Ingrediente: ' + cdInsumoPedidoPartida.FieldByName('NombreInsumo').AsString;
      oWidth := pnlEdit.Width;
      oHeight := pnlEdit.Height;
      Forma.Height := oHeight + GetSystemMetrics(SM_CYCAPTION) + GetSystemMetrics(SM_CYBORDER) + GetSystemMetrics(SM_CYBORDER);
      Forma.Width := oWidth + GetSystemMetrics(SM_CXBORDER) + GetSystemMetrics(SM_CXBORDER);
      Forma.OnClose := FormaClose;
      pnlEdit.Parent := Forma;
      pnlEdit.Align := alClient;
      pnlEdit.Visible := True;
      FormaResult := mrCancel;
      Forma.ShowModal;
    Finally
      pnlEdit.Visible := False;
      pnlEdit.Align := alNone;
      pnlEdit.Parent := Self;
      pnlEdit.Width := oWidth;
      pnlEdit.Height := oHeight;
      Forma.Free;
    End;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      Close;
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      Close;
    end;
  End;
end;

procedure TFrmInsumoPedido.tvPedidoCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex, 0) <> Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex, 4)) or
     (Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex, 2) <> Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex, 6)) or
     (Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex, 3) <> Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex, 7)) then
    ACanvas.Font.Style := [fsBold];
end;

end.
