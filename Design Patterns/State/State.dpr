program State;

uses
  System.StartUpCopy,
  FMX.Forms,
  State.view.main in 'view\State.view.main.pas' {FormMain},
  State.model.interfaces in 'model\State.model.interfaces.pas',
  State.model.StateComum in 'model\State.model.StateComum.pas',
  State.model.StatePlus in 'model\State.model.StatePlus.pas',
  State.model.StatePremium in 'model\State.model.StatePremium.pas',
  State.model.context in 'model\State.model.context.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
