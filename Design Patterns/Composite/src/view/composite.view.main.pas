unit composite.view.main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.Edit, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo,
  FMX.StdCtrls, composite.model.interfaces;

type
  TForm9 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FVenda : iVenda;
    Procedure ExibeTotal;
    Procedure ListarItens(Value: iItem);
    Procedure Reset;
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses
  composite.model.venda, composite.model.item;

{$R *.fmx}

procedure TForm9.Button1Click(Sender: TObject);
var
 Item : iItem;
begin
  Item := TModelItem.new;
  item
   .Codigo(Edit1.Text.ToInteger)
   .Produto(Edit2.Text)
   .Quantidade(StrToCurr(Edit3.Text))
   .Preço(StrtoCurr(Edit4.Text));
  FVenda.AddItem(Item);
  ListarItens(item);
  ExibeTotal;
  Reset;
end;

procedure TForm9.ExibeTotal;
begin
  label6.Text := FormatCurr('R$ #,##0.00', FVenda.Total);
end;

procedure TForm9.FormCreate(Sender: TObject);
begin
  FVenda := tModelVenda.New;
  Edit1.SetFocus;
end;

procedure TForm9.ListarItens(Value: iItem);
begin
  memo1.lines.Add(value.Codigo.toString + ' - ' + value.Produto + ' - ' + FormatCurr('R$ #,##0.00', value.Preço) + ' - Total: ' + FormatCurr('R$ #,##0.00', Value.Total));
end;

procedure TForm9.Reset;
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  Edit1.SetFocus;
end;

end.
