unit Mediator.view.main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  Mediator.model.interfaces, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo,
  FMX.ListBox, FMX.Layouts, FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit;

type
  TFormMain = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    ListBox1: TListBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit2: TEdit;
    Button2: TButton;
    Memo1: TMemo;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FMediator : iMediator;
    procedure PreencheCombos;
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.fmx}

uses Mediator.model.mediator, Mediator.model.user;

procedure TFormMain.Button1Click(Sender: TObject);
Var
 User : iColleague;
begin
  User := TModelUser.New(FMediator, edit1.Text);
  user.Entrar;
  ListBox1.Items.Add(Edit1.Text);
  PreencheCombos;
end;

procedure TFormMain.Button2Click(Sender: TObject);
Var
  User : iColleague;
begin
  User := FMediator.User(ComboBox1.Selected.Text);
  Memo1.Lines.Add(User.Enviar(ComboBox2.Selected.Text, edit2.Text));
end;

procedure TFormMain.Button3Click(Sender: TObject);
Var
 User : iColleague;
begin
  User := FMediator.User(ListBox1.Selected.Text);
  User.Sair;
  ListBox1.Items.Delete(ListBox1.Selected.Index);
  PreencheCombos;
end;

procedure TFormMain.PreencheCombos;
begin
  ComboBox1.Items := ListBox1.Items;
  ComboBox2.Items := ListBox1.Items;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  FMediator := TMediator.New;
end;

procedure TFormMain.FormDestroy(Sender: TObject);
begin
  FMediator.LiberarObjetos;
  FMediator := nil;
end;

end.
