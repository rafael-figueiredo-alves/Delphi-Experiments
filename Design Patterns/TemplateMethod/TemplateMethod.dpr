program TemplateMethod;

uses
  System.StartUpCopy,
  FMX.Forms,
  TemplateMethod.view.main in 'src\view\TemplateMethod.view.main.pas' {FormMain},
  AbstractClass in 'src\model\AbstractClass.pas',
  TemplateMethod.model.multiplicar in 'src\model\TemplateMethod.model.multiplicar.pas',
  TemplateMethod.model.dividir in 'src\model\TemplateMethod.model.dividir.pas',
  TemplateMethod.model.somar in 'src\model\TemplateMethod.model.somar.pas',
  TemplateMethod.model.subtrair in 'src\model\TemplateMethod.model.subtrair.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
