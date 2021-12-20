program FactoryMethod;

uses
  System.StartUpCopy,
  FMX.Forms,
  FactoryMethod.view.main in 'src\view\FactoryMethod.view.main.pas' {Form3},
  FactoryMethod.model.interfaces in 'src\model\FactoryMethod.model.interfaces.pas',
  FactoryMethod.model.FactoryMethod in 'src\model\FactoryMethod.model.FactoryMethod.pas',
  FactoryMethod.model.ingles in 'src\model\FactoryMethod.model.ingles.pas',
  FactoryMethod.model.portugues in 'src\model\FactoryMethod.model.portugues.pas',
  FactoryMethod.model.espanhol in 'src\model\FactoryMethod.model.espanhol.pas',
  FactoryMethod.model.italiano in 'src\model\FactoryMethod.model.italiano.pas',
  FactoryMethod.model.alemao in 'src\model\FactoryMethod.model.alemao.pas',
  FactoryMethod.model.frances in 'src\model\FactoryMethod.model.frances.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
