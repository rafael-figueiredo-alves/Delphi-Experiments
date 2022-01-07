program Flyweight;

uses
  System.StartUpCopy,
  FMX.Forms,
  Flyweight.view.main in 'src\view\Flyweight.view.main.pas' {FormMain},
  Flyweight.model.interfaces in 'src\model\Flyweight.model.interfaces.pas',
  Flyweight.model.MsgPortugues in 'src\model\Flyweight.model.MsgPortugues.pas',
  Flyweight.model.MsgEnglish in 'src\model\Flyweight.model.MsgEnglish.pas',
  Flyweight.model.MsgEspanol in 'src\model\Flyweight.model.MsgEspanol.pas',
  Flyweight.model.Flyweight in 'src\model\Flyweight.model.Flyweight.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
