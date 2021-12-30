unit adapter.view.main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types,
  FMX.ScrollBox, FMX.Memo, FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit,
  adapter.controller.interfaces;

type
  TForm8 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    FControllerItens : iControllerItens;
    Procedure ListarItens;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses
  adapter.controller.itens;

{$R *.fmx}

procedure TForm8.Button1Click(Sender: TObject);
Var
  Item : tItens;
begin
  item.Produto := edit1.Text;
  Item.preço   := StrToCurr(edit2.Text);
  FControllerItens.add(Item);
  ListarItens;
  Edit1.Text := '';
  Edit2.text := '';
  Edit1.SetFocus;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
  fcontrollerItens.LimparLista;
  ListarItens;
  Edit1.Text := '';
  Edit2.Text := '';
  Edit1.SetFocus;
end;

procedure TForm8.FormCreate(Sender: TObject);
begin
  FControllerItens := tControllerItens.New;
  Edit1.SetFocus;
end;

procedure TForm8.ListarItens;
var
  I: Integer;
begin
  Memo1.Lines.Clear;
  for I := 0 to Pred(FControllerItens.itens.count) do
   memo1.lines.add(
    FControllerItens.itens[i].produto + ' - ' + FormatCurr('R$ #,##0.00', FControllerItens.itens[i].preço)
   );
end;

end.
