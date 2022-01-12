unit State.view.main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, State.model.interfaces;

type
  TFormMain = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    FContext : iContext;
    Procedure AtualizaDados;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.fmx}

uses State.model.context;

{ TFormMain }

procedure TFormMain.AtualizaDados;
begin
  Label3.Text := FContext.TotalGasto;
  Label4.Text := FContext.Categoria;
end;

procedure TFormMain.Button1Click(Sender: TObject);
begin
  FContext.AddCompra(StrToCurr(Edit1.Text));
  AtualizaDados;
  Edit1.Text := '';
  Edit1.SetFocus;
end;

procedure TFormMain.Button2Click(Sender: TObject);
begin
  FContext.RemoveCompra(StrToCurr(Edit1.Text));
  AtualizaDados;
  Edit1.Text := '';
  Edit1.SetFocus;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  FContext := TContext.New;
  AtualizaDados;
end;

end.
