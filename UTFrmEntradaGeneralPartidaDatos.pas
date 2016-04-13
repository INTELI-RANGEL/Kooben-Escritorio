unit UTFrmEntradaGeneralPartidaDatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, AdvGlowButton, DB, UInteliDialog, ClientModuleUnit1,
  JvExControls, JvLabel, StdCtrls, DBCtrls;

type
  TFrmEntradaGeneralPartidaDatos = class(TForm)
    Panel1: TPanel;
    btnCancelar: TAdvGlowButton;
    btnAceptar: TAdvGlowButton;
    dsEntradaGeneralDatosUpt: TDataSource;
    Panel2: TPanel;
    Edit1: TEdit;
    Panel3: TPanel;
    JvLabel1: TJvLabel;
    Panel4: TPanel;
    sNombreCorto: TDBText;
    sRazonSocial: TDBText;
    lblGuion: TJvLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEntradaGeneralPartidaDatos: TFrmEntradaGeneralPartidaDatos;

implementation

{$R *.dfm}

end.
