unit Iterator.view.main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Memo.Types, FMX.StdCtrls, FMX.Controls.Presentation, FMX.ScrollBox,
  FMX.Memo;

type
  TFormMain = class(TForm)
    Layout1: TLayout;
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    Procedure EscreverLista(Value: string);
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.fmx}

uses Iterator.model.nomes;

procedure TFormMain.Button1Click(Sender: TObject);
begin
  TModelNomes.New.EscreveNomes(EscreverLista).ListarNomes;
end;

procedure TFormMain.EscreverLista(Value: string);
begin
  Memo1.Lines.Add(Value);
end;

end.
