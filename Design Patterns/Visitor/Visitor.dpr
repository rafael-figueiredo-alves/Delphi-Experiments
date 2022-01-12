program Visitor;

uses
  System.StartUpCopy,
  FMX.Forms,
  Visitor.view.main in 'src\view\Visitor.view.main.pas' {FormMain},
  Visitor.model.interfaces in 'src\model\Visitor.model.interfaces.pas',
  Visitor.model.Item in 'src\model\Visitor.model.Item.pas',
  Visitor.model.Varejo in 'src\model\Visitor.model.Varejo.pas',
  Visitor.model.Atacado in 'src\model\Visitor.model.Atacado.pas',
  Visitor.model.Facade in 'src\model\Visitor.model.Facade.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
