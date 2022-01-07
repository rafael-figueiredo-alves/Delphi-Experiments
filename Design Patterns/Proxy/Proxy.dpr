program Proxy;

uses
  System.StartUpCopy,
  FMX.Forms,
  Proxy.view.main in 'src\view\Proxy.view.main.pas' {FormMain},
  Proxy.model.interfaces in 'src\Model\Proxy.model.interfaces.pas',
  Proxy.model.Produto in 'src\Model\Proxy.model.Produto.pas',
  Proxy.model.ProdutoProxy in 'src\Model\Proxy.model.ProdutoProxy.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
