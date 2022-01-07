program Interpreter;

uses
  System.StartUpCopy,
  FMX.Forms,
  Interpreter.view.main in 'src\view\Interpreter.view.main.pas' {FormMain},
  Interpreter.model.interfaces in 'src\model\Interpreter.model.interfaces.pas',
  Interpreter.model.Context in 'src\model\Interpreter.model.Context.pas',
  Interpreter.model.ExpressionAcao in 'src\model\Interpreter.model.ExpressionAcao.pas',
  Interpreter.model.ExpressionItem in 'src\model\Interpreter.model.ExpressionItem.pas',
  Interpreter.model.Syntax in 'src\model\Interpreter.model.Syntax.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
