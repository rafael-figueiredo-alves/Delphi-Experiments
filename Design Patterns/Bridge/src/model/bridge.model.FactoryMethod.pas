unit bridge.model.FactoryMethod;

interface

uses
  bridge.model.interfaces;

Type
  TModelFactoryMethod = Class(TInterfacedObject, iFactoryMethod)
  Private
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iFactoryMethod;
    Function Vendas: iSource<tVenda>;
    Function Exportador(Value: eFormato): iExport<tVenda>;
  End;

implementation

uses
  bridge.model.ExportarVendaCSV, bridge.model.ExportarVendaTXT,
  bridge.model.vendas;

{ TModelFactoryMethod }

constructor TModelFactoryMethod.Create;
begin

end;

destructor TModelFactoryMethod.Destroy;
begin

  inherited;
end;

function TModelFactoryMethod.Exportador(Value: eFormato): iExport<tVenda>;
begin
  case Value of
    FormatoCSV: Result := TModelExportarVendaCSV.New;
    FormatoTXT: Result := TModelExportarVendaTXT.New;
  end;
end;

class function TModelFactoryMethod.New: iFactoryMethod;
begin
  Result := Self.Create;
end;

function TModelFactoryMethod.Vendas: iSource<tVenda>;
begin
  Result := tModelVendas.New;
end;

end.
