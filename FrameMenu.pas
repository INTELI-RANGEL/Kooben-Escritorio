unit FrameMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, GDIPImageTextItem, GDIPGraphicItem, GDIPButtonItem, GDIPCustomItem,
  GDIPTextItem, GDIPSectionItem, GDIPImageSectionItem, GDIPGroupItem,
  CustomItemsContainer, AdvPolyList;

type
  TFrmMenu = class(TFrame)
    AdvPolyMenu1: TAdvPolyMenu;
    GroupItem1: TGroupItem;
    ButtonItem1: TButtonItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
