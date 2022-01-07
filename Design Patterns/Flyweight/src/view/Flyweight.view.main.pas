unit Flyweight.view.main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types,
  FMX.Layouts, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo, FMX.StdCtrls,
  Flyweight.model.interfaces, System.Generics.Collections;

type
  tNomes = record
    Nome: string;
    Idioma: TpIdioma;
  end;

  TFormMain = class(TForm)
    Memo1: TMemo;
    Layout1: TLayout;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FFlyweight: iFlyweight;
    FListaNomes: tlist<tNomes>;
    Procedure GerarListagemNomes;
    procedure CriarFlyweight;
    Procedure EscreverNoMemo(Value: string);
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.fmx}

uses Flyweight.model.Flyweight;

procedure TFormMain.Button1Click(Sender: TObject);
var
  I: Integer;
begin
  CriarFlyweight;
  GerarListagemNomes;
  Memo1.Lines.Clear;
  for I := 0 to Pred(FListaNomes.Count) do
  begin
    FFlyweight.GetMensagem(FListaNomes[I].Idioma).Nome(FListaNomes[I].Nome)
      .Escrever(EscreverNoMemo).EscreverMsg;
  end;
end;

procedure TFormMain.FormDestroy(Sender: TObject);
begin
  if Assigned(FListaNomes) then
    FListaNomes.DisposeOf;
end;

procedure TFormMain.GerarListagemNomes;
Var
  Nome: tNomes;
begin
  if not Assigned(FListaNomes) then
  begin
    FListaNomes := tlist<tNomes>.create;
    Nome.Nome := 'Rafael Alves';
    Nome.Idioma := TpIdioma.PtBR;
    FListaNomes.Add(Nome);
    Nome.Nome := 'Rafaela Alves';
    Nome.Idioma := TpIdioma.EN;
    FListaNomes.Add(Nome);
    Nome.Nome := 'Davi Alves';
    Nome.Idioma := TpIdioma.ES;
    FListaNomes.Add(Nome);
    Nome.Nome := 'Jailza Alves';
    Nome.Idioma := TpIdioma.PtBR;
    FListaNomes.Add(Nome);
    Nome.Nome := 'José Alves';
    Nome.Idioma := TpIdioma.PtBR;
    FListaNomes.Add(Nome);
    Nome.Nome := 'James Alves';
    Nome.Idioma := TpIdioma.EN;
    FListaNomes.Add(Nome);
  end;
end;

  procedure TFormMain.CriarFlyweight;
  begin
    if not Assigned(FFlyweight) then
      FFlyweight := TFlyweight.New;
  end;

  procedure TFormMain.EscreverNoMemo(Value: string);
  begin
    Memo1.Lines.Add(Value);
  end;

end.
