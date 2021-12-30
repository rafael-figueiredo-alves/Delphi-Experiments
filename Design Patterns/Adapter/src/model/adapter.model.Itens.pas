unit adapter.model.Itens;

interface

uses
  adapter.model.interfaces, System.Generics.Collections;

Type
  TModelItens = Class(TInterfacedObject, iModelItens)
  Private
    FLista : tList<iModelItens>;
    FProduto : string;
    FPreço : currency;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iModelItens;
    Function Add(Value: iModelItens): iModelItens;
    Function LimparLista: iModelItens;
    Function Itens: TList<iModelItens>;
    Function Produto(Value: string): iModelItens; Overload;
    Function Produto: string; Overload;
    Function Preço(Value: currency): iModelItens; Overload;
    Function Preço: currency; overload;
  End;

implementation

{ TModelItens }

function TModelItens.Add(Value: iModelItens): iModelItens;
begin
  Result := self;
  FLista.Add(Value);
end;

constructor TModelItens.Create;
begin
  FLista := TList<iModelItens>.create;
end;

destructor TModelItens.Destroy;
begin
  FLista.DisposeOf;
  inherited;
end;

function TModelItens.Itens: TList<iModelItens>;
begin
  Result := FLista;
end;

function TModelItens.LimparLista: iModelItens;
begin
  Result := Self;
  FLista.Clear;
end;

class function TModelItens.New: iModelItens;
begin
  Result := Self.Create;
end;

function TModelItens.Preço(Value: currency): iModelItens;
begin
  Result := Self;
  FPreço := Value;
end;

function TModelItens.Preço: currency;
begin
  Result := FPreço;
end;

function TModelItens.Produto(Value: string): iModelItens;
begin
  Result := self;
  FProduto := value;
end;

function TModelItens.Produto: string;
begin
  Result := FProduto;
end;

end.
