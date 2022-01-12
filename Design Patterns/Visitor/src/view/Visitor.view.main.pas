unit Visitor.view.main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ListBox,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit;

type
  TFormMain = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.fmx}

uses Visitor.model.Facade, Visitor.model.interfaces ;

procedure TFormMain.Button1Click(Sender: TObject);
begin
  label3.Text :=
   FormatCurr(
    'R$ #,##0.00',
    tmodelFacade.new
    .Modalidade(TModalidade(ComboBox1.ItemIndex))
    .PrecoVenda(StrToCurr(edit1.text))
   );
end;

procedure TFormMain.Button2Click(Sender: TObject);
begin
  label3.Text :=
   FormatCurr(
    'R$ #,##0.00',
    tmodelFacade.new
    .Modalidade(TModalidade(ComboBox1.ItemIndex))
    .PrecoPromocao(StrToCurr(edit1.text))
   );
end;

end.
