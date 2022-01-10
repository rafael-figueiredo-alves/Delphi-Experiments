program Mediator;

uses
  System.StartUpCopy,
  FMX.Forms,
  Mediator.view.main in 'src\view\Mediator.view.main.pas' {FormMain},
  Mediator.model.interfaces in 'src\model\Mediator.model.interfaces.pas',
  Mediator.model.user in 'src\model\Mediator.model.user.pas',
  Mediator.model.mediator in 'src\model\Mediator.model.mediator.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
