program Iterator;

uses
  System.StartUpCopy,
  FMX.Forms,
  Iterator.view.main in 'src\view\Iterator.view.main.pas' {FormMain},
  Iterator.model.interfaces in 'src\model\Iterator.model.interfaces.pas',
  Iterator.model.nome in 'src\model\Iterator.model.nome.pas',
  Iterator.model.nomes in 'src\model\Iterator.model.nomes.pas',
  Iterator.model.iterator in 'src\model\Iterator.model.iterator.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
