program Builder;

uses
  System.StartUpCopy,
  FMX.Forms,
  builder.view.main in 'src\view\builder.view.main.pas' {Form6},
  builder.model.interfaces in 'src\model\builder.model.interfaces.pas',
  builder.model.product in 'src\model\builder.model.product.pas',
  builder.model.BuilderReport1 in 'src\model\builder.model.BuilderReport1.pas',
  builder.model.Director in 'src\model\builder.model.Director.pas',
  builder.model.Factory in 'src\model\builder.model.Factory.pas',
  builder.model.BuilderReport2 in 'src\model\builder.model.BuilderReport2.pas',
  builder.model.BuilderReport3 in 'src\model\builder.model.BuilderReport3.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
