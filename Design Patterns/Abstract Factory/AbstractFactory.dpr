program AbstractFactory;

uses
  System.StartUpCopy,
  FMX.Forms,
  Abstract.main in 'src\Abstract.main.pas' {Form2},
  Abstract.model.interfaces in 'src\Model\Abstract.model.interfaces.pas',
  Abstract.model.factory in 'src\Model\Abstract.model.factory.pas',
  Abstract.model.Pessoa in 'src\Model\Abstract.model.Pessoa.pas',
  Abstract.model.NotaFiscal in 'src\Model\Abstract.model.NotaFiscal.pas',
  Abstract.model.Texto in 'src\Model\Abstract.model.Texto.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
