unit Strategy.view.main;

interface

uses
  System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation;

type
  TFormMain = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.fmx}

uses Strategy.model.helper, System.SysUtils;

procedure TFormMain.Button1Click(Sender: TObject);
begin
  //Label3.Text := FormatCurr('R$ #,##0.00', tdesconto(DayOfWeek(now)-1).DarDesconto(StrToCurr(edit1.Text))) + ' - ' + FormatDateTime('dddd', now);
  Label3.Text := FormatCurr('R$ #,##0.00', tdesconto(6).DarDesconto(StrToCurr(edit1.Text))) + ' - Sábado';
end;

end.
