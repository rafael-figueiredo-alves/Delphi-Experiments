unit bridge.model.ExportarVendaTXT;

interface

uses
  bridge.model.interfaces, System.Classes;

Type
  TModelExportarVendaTXT = Class(TInterfacedObject, iExport<tVenda>)
  Private
    farquivo : TStringList;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iExport<tVenda>;
    Function Exportar(Value: tVenda): iExport<tVenda>;
  End;

implementation

uses
  System.SysUtils;

Const
  Arquivo = 'Vendas.txt';

{ TModelExportarVendaTXT }

constructor TModelExportarVendaTXT.Create;
begin
  farquivo := TStringList.Create;

  if FileExists(Arquivo) then
   farquivo.LoadFromFile(Arquivo);

  farquivo.Add('Código        | Produto         |');
end;

destructor TModelExportarVendaTXT.Destroy;
begin
  farquivo.DisposeOf;
  inherited;
end;

function TModelExportarVendaTXT.Exportar(Value: tVenda): iExport<tVenda>;
begin
  Result := self;
  farquivo.Add(
   Value.codigo.ToString + '    | ' + Value.produto + '     |'
  );
  farquivo.SaveToFile(Arquivo);
end;

class function TModelExportarVendaTXT.New: iExport<tVenda>;
begin
  Result := Self.Create;
end;

end.
