unit Prototype.view.main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types,
  FMX.StdCtrls, FMX.Edit, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo,
  Prototype.Model.Interfaces;

type
  TForm4 = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    Listagem : iListaItens;
    Procedure RegistrarItem(Value: string);
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses
  Prototype.Model.ListaItens;

{$R *.fmx}

procedure TForm4.Button1Click(Sender: TObject);
begin
  Listagem.AdicionarItem(edit1.Text.ToInteger, edit2.Text);
  Edit1.Text := '';
  Edit2.text := '';
  edit1.SetFocus;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  Listagem.RepetirÚltimoItem;
  Edit1.Text := '';
  Edit2.text := '';
  edit1.SetFocus;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  Listagem := tModelListaItens.new;
  Listagem.RegistrarItem(RegistrarItem);
  Edit1.SetFocus;
end;

procedure TForm4.RegistrarItem(Value : string);
begin
  memo1.Lines.Add(value);
end;

end.
