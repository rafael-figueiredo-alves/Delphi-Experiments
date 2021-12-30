program Composite;

uses
  System.StartUpCopy,
  FMX.Forms,
  composite.view.main in 'src\view\composite.view.main.pas' {Form9},
  composite.model.interfaces in 'src\model\composite.model.interfaces.pas',
  composite.model.venda in 'src\model\composite.model.venda.pas',
  composite.model.item in 'src\model\composite.model.item.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.CreateForm(TForm9, Form9);
  Application.Run;
end.
