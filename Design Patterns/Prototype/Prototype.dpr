program Prototype;

uses
  System.StartUpCopy,
  FMX.Forms,
  Prototype.view.main in 'View\Prototype.view.main.pas' {Form4},
  Prototype.Model.Interfaces in 'Model\Prototype.Model.Interfaces.pas',
  Prototype.Model.Item in 'Model\Prototype.Model.Item.pas',
  Prototype.Model.ListaItens in 'Model\Prototype.Model.ListaItens.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
