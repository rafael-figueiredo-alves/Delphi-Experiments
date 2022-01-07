program ChainsOfResponsability;

uses
  System.StartUpCopy,
  FMX.Forms,
  ChainsOfResponsability.view.main in 'src\view\ChainsOfResponsability.view.main.pas' {FormMain},
  ChainsOfResponsability.model.interfaces in 'src\Model\ChainsOfResponsability.model.interfaces.pas',
  ChainsOfResponsability.model.usuarioCaixa in 'src\Model\ChainsOfResponsability.model.usuarioCaixa.pas',
  ChainsOfResponsability.model.usuarioFiscal in 'src\Model\ChainsOfResponsability.model.usuarioFiscal.pas',
  ChainsOfResponsability.model.usuarioGerente in 'src\Model\ChainsOfResponsability.model.usuarioGerente.pas',
  ChainsOfResponsability.model.item in 'src\Model\ChainsOfResponsability.model.item.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
