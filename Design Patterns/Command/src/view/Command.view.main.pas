unit Command.view.main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types,
  FMX.ScrollBox, FMX.Memo, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts,
  Command.model.interfaces;

type
  TFormMain = class(TForm)
    Layout1: TLayout;
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    FFacade : iFacade;
    Procedure DisplayMemo (Value: string);
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.fmx}

uses Command.model.Facade;

procedure TFormMain.Button1Click(Sender: TObject);
begin
  memo1.Lines.Clear;
  FFacade.ExecutarTudo;
end;

procedure TFormMain.Button2Click(Sender: TObject);
begin
  memo1.Lines.Clear;
  FFacade.Salvar;
end;

procedure TFormMain.Button3Click(Sender: TObject);
begin
  memo1.Lines.Clear;
  FFacade.Imprimir;
end;

procedure TFormMain.DisplayMemo(Value: string);
begin
  Memo1.Lines.Add(value);
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  FFacade := TModelFacade.new.Mostrar(DisplayMemo);
end;

end.
