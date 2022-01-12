program Strategy;

uses
  System.StartUpCopy,
  FMX.Forms,
  Strategy.view.main in 'src\view\Strategy.view.main.pas' {Form12};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm12, Form12);
  Application.Run;
end.
