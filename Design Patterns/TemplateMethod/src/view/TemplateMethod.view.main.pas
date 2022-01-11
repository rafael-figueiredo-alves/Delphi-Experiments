unit TemplateMethod.view.main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation;

type
  TFormMain = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.fmx}

uses AbstractClass, TemplateMethod.model.multiplicar,
  TemplateMethod.model.dividir, TemplateMethod.model.somar,
  TemplateMethod.model.subtrair;

procedure TFormMain.Button1Click(Sender: TObject);
Var Calc : TAbstractClass;
begin
   Calc := tMultiplicar.create;
   Label1.Text := Calc.Resultado.ToString;
   Calc.DisposeOf;
end;

procedure TFormMain.Button2Click(Sender: TObject);
Var Calc : TAbstractClass;
begin
   Calc := tdividir.create;
   Label2.Text := Calc.Resultado.ToString;
   Calc.DisposeOf;
end;

procedure TFormMain.Button3Click(Sender: TObject);
Var Calc : TAbstractClass;
begin
   Calc := tSomar.create;
   Label3.Text := Calc.Resultado.ToString;
   Calc.DisposeOf;
end;

procedure TFormMain.Button4Click(Sender: TObject);
Var Calc : TAbstractClass;
begin
   Calc := tSubtrair.create;
   Label4.Text := Calc.Resultado.ToString;
   Calc.DisposeOf;
end;

end.
