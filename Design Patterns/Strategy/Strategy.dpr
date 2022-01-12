program Strategy;

uses
  System.StartUpCopy,
  FMX.Forms,
  Strategy.view.main in 'src\view\Strategy.view.main.pas' {FormMain},
  Strategy.model.helper in 'src\model\Strategy.model.helper.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
