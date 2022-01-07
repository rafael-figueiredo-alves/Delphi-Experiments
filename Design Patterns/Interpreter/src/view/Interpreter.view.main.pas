unit Interpreter.view.main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types,
  FMX.ScrollBox, FMX.Memo, FMX.Edit, FMX.Controls.Presentation, FMX.StdCtrls,
  FMX.Layouts;

type
  TFormMain = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Button1: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.fmx}

uses Interpreter.model.Syntax;

procedure TFormMain.Button1Click(Sender: TObject);
begin
  Memo1.Lines.Add(TModelSyntax.New.Process(Edit1.Text));
end;

end.
