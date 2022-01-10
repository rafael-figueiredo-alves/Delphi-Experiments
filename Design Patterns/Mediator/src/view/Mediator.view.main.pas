unit Mediator.view.main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  Mediator.model.interfaces, FMX.Memo.Types, FMX.StdCtrls, FMX.ScrollBox,
  FMX.Memo, FMX.Controls.Presentation, FMX.Edit;

type
  TFormMain = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    MemoCaixa: TMemo;
    MemoCozinha: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    FMediator : iMediator;
    FCaixa, FCozinha: iColleague;
    Procedure ExibirCaixa (Value: string);
    Procedure ExibirCozinha (Value: string);
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.fmx}

uses Mediator.model.pedido.mediator, Mediator.model.pedido;

{ TForm12 }

procedure TFormMain.Button1Click(Sender: TObject);
begin
  FCaixa
   .EnviarPedido(FCozinha, Edit1.Text);
end;

procedure TFormMain.Button2Click(Sender: TObject);
begin
  FCozinha
    .EnviarPedido(FCaixa, edit1.Text);
end;

procedure TFormMain.ExibirCaixa(Value: string);
begin
  MemoCaixa.Lines.Add(value);
end;

procedure TFormMain.ExibirCozinha(Value: string);
begin
  MemoCozinha.Lines.Add(Value);
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  FMediator := TModelMediator.new;
  FCaixa    := TModelPedido.New(FMediator, 'Caixa').Display.Exibir(ExibirCaixa).&End;
  FCozinha  := TModelPedido.New(FMediator, 'Cozinha').Display.Exibir(ExibirCozinha).&End;
end;

end.
