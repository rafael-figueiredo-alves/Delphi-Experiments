unit bridge.model.vendas;

interface

uses
  bridge.model.interfaces, System.Generics.Collections;

Type
  TModelVendas = Class(TInterfacedObject, iSource<tVenda>)
  Private
    FLista : TList<tvenda>;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iSource<tVenda>;
    Function AddItem(Value: tvenda): iSource<tVenda>;
    Function LimpaLista: iSource<tvenda>;
    Function Exportar(Value: iExport<tvenda>): iSource<tvenda>;
  End;

implementation

{ TModelVendas }

function TModelVendas.AddItem(Value: tvenda): iSource<tVenda>;
begin
  Result := self;
  FLista.Add(Value);
end;

constructor TModelVendas.Create;
begin
  FLista := TList<tvenda>.create;
end;

destructor TModelVendas.Destroy;
begin
  Flista.DisposeOf;
  inherited;
end;

function TModelVendas.Exportar(Value: iExport<tvenda>): iSource<tvenda>;
var
  I: Integer;
begin
  Result := self;
  for I := 0 to Pred(FLista.Count) do
   Value.Exportar(FLista.Items[i]);
end;

function TModelVendas.LimpaLista: iSource<tvenda>;
begin
  Result := self;
  FLista.Clear;
end;

class function TModelVendas.New: iSource<tVenda>;
begin
  Result := Self.Create;
end;

end.
