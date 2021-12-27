unit singleton.view.main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Memo.Types, FMX.ScrollBox,
  FMX.Memo, FMX.Edit;

type
  TForm5 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses
  singleton.model.Data, singleton.model.interfaces;

{$R *.fmx}

procedure TForm5.Button1Click(Sender: TObject);
var teste : idata;
begin
  teste := tModeldata.New;
  Memo1.Lines.Add(teste.data);
end;

procedure TForm5.Button2Click(Sender: TObject);
var
 Teste2 : idata;
begin
  teste2 := tModeldata.New;
  teste2.data(edit1.Text);
  Memo1.Lines.Add(teste2.data);
end;

end.
