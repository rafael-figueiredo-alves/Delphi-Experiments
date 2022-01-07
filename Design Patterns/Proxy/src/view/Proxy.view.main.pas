unit Proxy.view.main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FMX.Layouts, FMX.Memo.Types,
  FMX.ScrollBox, FMX.Memo, Proxy.model.interfaces;

type
  TFormMain = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Edit1: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FProdutoProxy : iModelProdutoProxy;
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

uses
  Proxy.model.ProdutoProxy;

{$R *.fmx}

procedure TFormMain.Button1Click(Sender: TObject);
var
  Preco : Currency;
begin
  if not Assigned(FProdutoProxy) then
   FProdutoProxy := tModelProdutoProxy.new;
  memo1.Lines.Clear;
  Memo1.Lines.Add('Buscando o produto de ID: '+edit1.Text + ' ...');
  Memo1.Lines.Add('Aguarde...');
  tThread.CreateAnonymousThread(Procedure
                                Begin
                                  Preco := FProdutoProxy.Consultar(Edit1.Text.ToInteger).Preco;
                                  tthread.Synchronize(nil, Procedure
                                                           begin
                                                             Memo1.Lines.Add('Produto Encontrado');
                                                             Memo1.Lines.Add('Produto ID: ' + Edit1.Text);
                                                             Memo1.Lines.Add(FormatCurr('R$ #,##0.00', Preco));
                                                           end);
                                End).Start;
end;

end.
