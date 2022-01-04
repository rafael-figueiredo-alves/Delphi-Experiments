program Decorator;

uses
  System.StartUpCopy,
  FMX.Forms,
  Decorator.view.main in 'view\Decorator.view.main.pas' {Form10},
  Decorator.model.interfaces in 'model\Decorator.model.interfaces.pas',
  Decorator.model.mensagem in 'model\Decorator.model.mensagem.pas',
  Decorator.model.mensagem1 in 'model\Decorator.model.mensagem1.pas',
  Decorator.model.mensagem2 in 'model\Decorator.model.mensagem2.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.CreateForm(TForm10, Form10);
  Application.Run;
end.
