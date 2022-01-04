program Facade;

uses
  System.StartUpCopy,
  FMX.Forms,
  Facade.view.main in 'src\view\Facade.view.main.pas' {Form11},
  Facade.model.interfaces in 'src\model\Facade.model.interfaces.pas',
  Facade.model.mensagem in 'src\model\Facade.model.mensagem.pas',
  Facade.model.mensagem1 in 'src\model\Facade.model.mensagem1.pas',
  Facade.model.mensagem2 in 'src\model\Facade.model.mensagem2.pas',
  Facade.model.facade in 'src\model\Facade.model.facade.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.CreateForm(TForm11, Form11);
  Application.Run;
end.
