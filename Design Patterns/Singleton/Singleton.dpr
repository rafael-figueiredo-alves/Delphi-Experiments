program Singleton;

uses
  System.StartUpCopy,
  FMX.Forms,
  singleton.view.main in 'src\view\singleton.view.main.pas' {Form5},
  singleton.model.interfaces in 'src\model\singleton.model.interfaces.pas',
  singleton.model.Data in 'src\model\singleton.model.Data.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
