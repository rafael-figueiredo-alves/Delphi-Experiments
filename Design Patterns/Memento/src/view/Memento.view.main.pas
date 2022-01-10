unit Memento.view.main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FMX.Layouts, FMX.ListBox,
  Memento.model.interfaces;

type
  TFormMain = class(TForm)
    ListBox1: TListBox;
    Edit1: TEdit;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private
    { Private declarations }
    FNome : iNome;
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.fmx}

uses Memento.model.nomes;

procedure TFormMain.Button1Click(Sender: TObject);
Var
  Key : string;
begin
  FNome.Nome := Edit1.Text;
  Key := tGUID.NewGuid.ToString;
  FNome.Memento.Save(Key);
  ListBox1.Items.Add(key);
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  FNome := TModelNomes.New;
end;

procedure TFormMain.ListBox1Click(Sender: TObject);
begin
  Edit1.Text := FNome.Memento.Restore(ListBox1.Selected.Text).Nome;
end;

end.
