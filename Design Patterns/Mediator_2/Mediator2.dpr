program Mediator2;

uses
  System.StartUpCopy,
  FMX.Forms,
  Mediator2.view.main in 'src\view\Mediator2.view.main.pas' {FormMain},
  Mediator2.model.interfaces in 'src\model\Mediator2.model.interfaces.pas',
  Mediator2.model.user in 'src\model\Mediator2.model.user.pas',
  Mediator2.model.mediator in 'src\model\Mediator2.model.mediator.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
