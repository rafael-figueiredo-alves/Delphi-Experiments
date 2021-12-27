unit builder.view.main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo;

type
  TForm6 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses
  builder.model.Factory;

{$R *.fmx}

procedure TForm6.Button1Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo1.Text := tfactory.new.relatorio1.resultado.text;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo1.Text := tfactory.new.relatorio2.resultado.text;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo1.Text := tfactory.new.relatorio3.resultado.text;
end;

end.
