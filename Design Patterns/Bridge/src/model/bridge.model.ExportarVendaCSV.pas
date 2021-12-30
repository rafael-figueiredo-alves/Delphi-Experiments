unit bridge.model.ExportarVendaCSV;

interface

uses
  bridge.model.interfaces, System.Classes;

Type
  TModelExportarVendaCSV = Class(TInterfacedObject, iExport<tvenda>)
  Private
    FArquivo: TStringList;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iExport<tvenda>;
    Function Exportar(Value: tvenda): iExport<tvenda>;
  End;

implementation

uses
  System.SysUtils;

Const
  Arquivo = 'Vendas.csv';

{ TModelExportarVendaCSV }

constructor TModelExportarVendaCSV.Create;
begin
  FArquivo := TStringList.Create;

  if FileExists(Arquivo) then
   FArquivo.LoadFromFile(arquivo);

  FArquivo.Add('Código;Produto');
end;

destructor TModelExportarVendaCSV.Destroy;
begin
  FArquivo.DisposeOf;
  inherited;
end;

function TModelExportarVendaCSV.Exportar(Value: tvenda): iExport<tvenda>;
begin
  Result := self;
  FArquivo.Add(
   value.codigo.ToString + ';' + Value.produto
  );
  FArquivo.SaveToFile(Arquivo);
end;

class function TModelExportarVendaCSV.New: iExport<tvenda>;
begin
  Result := Self.Create;
end;

end.
