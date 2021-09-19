unit UnitMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Ani;

type
  TForm2 = class(TForm)
    ListView1: TListView;
    Button1: TButton;
    Image1: TImage;
    FloatAnimation1: TFloatAnimation;
    procedure Button1Click(Sender: TObject);
    procedure ListView1ItemClickEx(const Sender: TObject; ItemIndex: Integer;
      const LocalClickPos: TPointF; const ItemObject: TListItemDrawable);
    procedure ListView1UpdateObjects(const Sender: TObject;
      const AItem: TListViewItem);
  private
    procedure addCliente(Texto1, Texto3, Texto4, Texto5: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.addCliente(Texto1, Texto3, Texto4, Texto5: string);
var
  Img : timage;
begin
  with listview1.items.Add do
   begin
     Tag := 0; //0 = fechado e 1 = aberto
     Height := 40;
     img := timage.Create(nil);
     Img.Bitmap := Image1.Bitmap;
     TListItemImage(Objects.FindDrawable('Image2')).OwnsBitmap := true;
     TListItemImage(Objects.FindDrawable('Image2')).Bitmap := img.Bitmap;
     TListItemText(Objects.FindDrawable('Text1')).Text := Texto1;
     TListItemText(Objects.FindDrawable('Text3')).Text := Texto3;
     TListItemText(Objects.FindDrawable('Text4')).Text := Texto4;
     TListItemText(Objects.FindDrawable('Text5')).Text := Texto5;
     TListItemText(Objects.FindDrawable('Text3')).Visible := false;
     TListItemText(Objects.FindDrawable('Text4')).Visible := false;
     TListItemText(Objects.FindDrawable('Text5')).Visible := false;
   end;
end;

procedure TForm2.Button1Click(Sender: TObject);
var
  x : integer;
begin
  ListView1.BeginUpdate;
  ListView1.Items.Clear;
  for x := 1 to 20 do
   addCliente('Cliente '+x.ToString, 'Rua '+x.ToString, 'Texto '+x.ToString, 'Outro texto '+x.ToString);
  ListView1.EndUpdate;
end;

procedure TForm2.ListView1ItemClickEx(const Sender: TObject; ItemIndex: Integer;
  const LocalClickPos: TPointF; const ItemObject: TListItemDrawable);
begin
  if ItemObject <> nil then
   begin
     if ItemObject.Name = 'Image2' then
      begin
        if listview1.Items[ItemIndex].Tag = 0 then
         listview1.Items[ItemIndex].Tag := 1
        else
         listview1.Items[ItemIndex].Tag := 0;

        if listview1.Items[ItemIndex].Tag = 1 then
         begin
           ListView1.Items[ItemIndex].Height := 170;
           //FloatAnimation1.AnimateInt('ListView1.Items[ItemIndex].Height', 170, 0.5, TAnimationType.In, TInterpolationType.Linear);
           TListItemImage(listview1.Items[ItemIndex].Objects.FindDrawable('Image2')).Bitmap.Rotate(180);
           TListItemText(listview1.Items[ItemIndex].Objects.FindDrawable('Text3')).Visible := true;
           TListItemText(listview1.Items[ItemIndex].Objects.FindDrawable('Text4')).Visible := true;
           TListItemText(listview1.Items[ItemIndex].Objects.FindDrawable('Text5')).Visible := true;
         end
        else
         begin
           ListView1.Items[ItemIndex].Height := 40;
           //FloatAnimation1.AnimateInt('ListView1.Items[ItemIndex].Height', 40, 0.5, TAnimationType.In, TInterpolationType.Linear);
           TListItemImage(listview1.Items[ItemIndex].Objects.FindDrawable('Image2')).Bitmap.Rotate(180);
           TListItemText(listview1.Items[ItemIndex].Objects.FindDrawable('Text3')).Visible := False;
           TListItemText(listview1.Items[ItemIndex].Objects.FindDrawable('Text4')).Visible := False;
           TListItemText(listview1.Items[ItemIndex].Objects.FindDrawable('Text5')).Visible := False;
         end;

         ListView1.RecalcSize;

      end;
   end;
end;

procedure TForm2.ListView1UpdateObjects(const Sender: TObject;
  const AItem: TListViewItem);
begin
        if AItem.Tag = 1 then
         begin
           AItem.Height := 170;
           //FloatAnimation1.AnimateInt('AItem.Height', 170, 0.5, TAnimationType.In, TInterpolationType.Linear);
           TListItemText(AItem.Objects.FindDrawable('Text3')).Visible := true;
           TListItemText(AItem.Objects.FindDrawable('Text4')).Visible := true;
           TListItemText(AItem.Objects.FindDrawable('Text5')).Visible := true;
         end
        else
         begin
           AItem.Height := 40;
           //FloatAnimation1.AnimateInt('AItem.Height', 40, 0.5, TAnimationType.In, TInterpolationType.Linear);
           TListItemText(AItem.Objects.FindDrawable('Text3')).Visible := False;
           TListItemText(AItem.Objects.FindDrawable('Text4')).Visible := False;
           TListItemText(AItem.Objects.FindDrawable('Text5')).Visible := False;
         end;
end;

end.
