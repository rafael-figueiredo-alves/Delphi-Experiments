unit Abstract.main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Memo.Types, FMX.ScrollBox,
  FMX.Memo;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  Abstract.model.factory;

{$R *.fmx}

procedure TForm2.Button1Click(Sender: TObject);
begin
  Memo1.Lines.Add('Nome informado: '+tModelFactory.New.Pessoa.Nome);
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Memo1.Lines.Add('Nota Fiscal informada: '+tModelFactory.New.NotaFiscal.numero.ToString);
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  Memo1.Lines.Add(tModelFactory.New.Texto.Texto);
end;

end.
