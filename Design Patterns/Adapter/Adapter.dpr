program Adapter;

uses
  System.StartUpCopy,
  FMX.Forms,
  adapter.view.main in 'src\view\adapter.view.main.pas' {Form8},
  adapter.model.interfaces in 'src\model\adapter.model.interfaces.pas',
  adapter.model.Itens in 'src\model\adapter.model.Itens.pas',
  adapter.controller.itens in 'src\controller\adapter.controller.itens.pas',
  adapter.controller.interfaces in 'src\controller\adapter.controller.interfaces.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.CreateForm(TForm8, Form8);
  Application.Run;
end.
