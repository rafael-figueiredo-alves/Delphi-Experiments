program Memento;

uses
  System.StartUpCopy,
  FMX.Forms,
  Memento.view.main in 'src\view\Memento.view.main.pas' {FormMain},
  Memento.model.interfaces in 'src\model\Memento.model.interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
