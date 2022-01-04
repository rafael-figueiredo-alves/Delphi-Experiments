unit Facade.view.main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo;

type
  TForm11 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
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
  Form11: TForm11;

implementation

uses
  Facade.model.facade;

{$R *.fmx}

procedure TForm11.Button1Click(Sender: TObject);
begin
  Memo1.Lines.Add(tModelFacade.New.MsgSimples);
end;

procedure TForm11.Button2Click(Sender: TObject);
begin
  Memo1.Lines.Add(TModelFacade.New.MsgComDecor1);
end;

procedure TForm11.Button3Click(Sender: TObject);
begin
  Memo1.Lines.Add(TModelFacade.New.MsgComDecor1e2);
end;

procedure TForm11.Button4Click(Sender: TObject);
begin
  Memo1.Lines.Add(TModelFacade.New.MsgDecor1e2);
end;

end.
