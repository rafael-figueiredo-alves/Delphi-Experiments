unit Decorator.view.main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Memo.Types, FMX.ScrollBox,
  FMX.Memo, Decorator.model.mensagem2;

type
  TForm10 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Memo1: TMemo;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses
  Decorator.model.mensagem, Decorator.model.mensagem1;

{$R *.fmx}

procedure TForm10.Button1Click(Sender: TObject);
begin
  memo1.Lines.Add(
   tModelMensagem.New(nil).MontarMensagem
  );
end;

procedure TForm10.Button2Click(Sender: TObject);
begin
  Memo1.Lines.Add(
   TModelMensagem1.New(TModelMensagem.New(nil)).MontarMensagem
  );
end;

procedure TForm10.Button3Click(Sender: TObject);
begin
  Memo1.Lines.Add(
  TModelMensagem2.new(TmodelMensagem1.new(tModelMensagem.new(nil))).MontarMensagem
  );
end;

procedure TForm10.Button4Click(Sender: TObject);
begin
  Memo1.Lines.Add(
   TModelMensagem1.New(nil).MontarMensagem
  );
end;

procedure TForm10.Button5Click(Sender: TObject);
begin
  Memo1.Lines.Add(
   TModelMensagem2.New(nil).MontarMensagem
  );
end;

procedure TForm10.Button6Click(Sender: TObject);
begin
  Memo1.Lines.Add(
   TModelMensagem2.New(TModelMensagem1.New(nil)).MontarMensagem
  );
end;

end.
