unit FactoryMethod.view.main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.ListBox, FMX.Memo.Types,
  FMX.ScrollBox, FMX.Memo;

type
  TForm3 = class(TForm)
    ComboBox1: TComboBox;
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}

Uses FactoryMethod.model.FactoryMethod;

procedure TForm3.Button1Click(Sender: TObject);
begin
  Memo1.Lines.Add(DigaOla(Eidioma(ComboBox1.ItemIndex)).Say);
end;

end.
