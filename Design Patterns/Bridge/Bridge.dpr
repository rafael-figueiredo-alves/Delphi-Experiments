program Bridge;

uses
  System.StartUpCopy,
  FMX.Forms,
  bridge.view.main in 'src\view\bridge.view.main.pas' {Form7},
  bridge.model.interfaces in 'src\model\bridge.model.interfaces.pas',
  bridge.model.vendas in 'src\model\bridge.model.vendas.pas',
  bridge.model.ExportarVendaCSV in 'src\model\bridge.model.ExportarVendaCSV.pas',
  bridge.model.ExportarVendaTXT in 'src\model\bridge.model.ExportarVendaTXT.pas',
  bridge.model.FactoryMethod in 'src\model\bridge.model.FactoryMethod.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
