unit UnitMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm2 = class(TForm)
    ListView1: TListView;
    Button1: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
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
begin
  with listview1.items.Add do
   begin
     Tag := 0; //0 = fechado e 1 = aberto
     Height := 40;
     TListItemImage(Objects.FindDrawable('Image2')).Bitmap := Image1.Bitmap;
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
  for x := 1 to 20 do
   addCliente('Cliente '+x.ToString, 'Rua '+x.ToString, 'Texto '+x.ToString, 'Outro texto '+x.ToString);
end;

end.
