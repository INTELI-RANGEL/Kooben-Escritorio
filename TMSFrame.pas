unit TMSFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, GDIPPictureContainer, GDIPWedgeItem, GDIPCustomItem, GDIPTextItem,
  GDIPImageTextItem, CustomItemsContainer, AdvVerticalPolyList, AdvPolyList;

type
  TTMSFrame1 = class(TFrame)
    AppMenu1: TAdvPolyMenu;
    ImageTextItem1: TImageTextItem;
    ImageTextItem3: TImageTextItem;
    ImageTextItem2: TImageTextItem;
    ImageTextItem4: TImageTextItem;
    WedgeItem7: TWedgeItem;
    WedgeItem8: TWedgeItem;
    WedgeItem9: TWedgeItem;
    ImageTextItem5: TImageTextItem;
    ImageTextItem6: TImageTextItem;
    GDIPPictureContainer1: TGDIPPictureContainer;
    AdvPolyList1: TAdvPolyList;
    TextItem1: TTextItem;
    TextItem2: TTextItem;
    TextItem3: TTextItem;
    AdvPolyList2: TAdvPolyList;
    TextItem4: TTextItem;
    TextItem5: TTextItem;
    TextItem6: TTextItem;
    AdvPolyList3: TAdvPolyList;
    TextItem7: TTextItem;
    TextItem8: TTextItem;
    TextItem9: TTextItem;
    procedure AdvVerticalPolyList2ItemSelect(Sender: TObject; Item: TCustomItem;
      var Allow: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ChangePage(PageID: Integer);
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{$R *.dfm}

procedure TTMSFrame1.AdvVerticalPolyList2ItemSelect(Sender: TObject;
  Item: TCustomItem; var Allow: Boolean);
begin
  ChangePage(Item.Tag);
end;

procedure TTMSFrame1.ChangePage(PageID: Integer);
begin
  case PageID of
  1: AdvPolyList1.BringToFront;
  2: AdvPolyList2.BringToFront;
  3: AdvPolyList3.BringToFront;
  end;
end;

constructor TTMSFrame1.Create(AOwner: TComponent);
begin
  inherited;
  AppMenu1.SelectItem(4);
end;

end.
