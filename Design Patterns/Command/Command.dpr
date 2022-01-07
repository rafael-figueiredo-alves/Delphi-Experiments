program Command;

uses
  System.StartUpCopy,
  FMX.Forms,
  Command.view.main in 'src\view\Command.view.main.pas' {FormMain},
  Command.model.interfaces in 'src\model\Command.model.interfaces.pas',
  Command.model.invoker in 'src\model\Command.model.invoker.pas',
  Command.model.DocummentActions in 'src\model\Command.model.DocummentActions.pas',
  Command.model.CreateDocument in 'src\model\Command.model.CreateDocument.pas',
  Command.model.SaveDocument in 'src\model\Command.model.SaveDocument.pas',
  Command.model.PrintDocument in 'src\model\Command.model.PrintDocument.pas',
  Command.model.Facade in 'src\model\Command.model.Facade.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
