program Memento;

uses
  System.StartUpCopy,
  FMX.Forms,
  Memento.view.main in 'src\view\Memento.view.main.pas' {FormMain},
  Memento.model.interfaces in 'src\model\Memento.model.interfaces.pas',
  Memento.model.mementoCareTaker in 'src\model\Memento.model.mementoCareTaker.pas',
  Memento.model.nomes in 'src\model\Memento.model.nomes.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
