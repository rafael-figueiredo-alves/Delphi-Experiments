unit Proxy.model.Produto;

interface

uses
  Proxy.model.interfaces;

Type
  EnumTipo = (Par, Impar);

  TModelProduto = Class(TInterfacedObject, iModelProduto)
  Private
    FPreco : currency;
    Function ParOuImpar(Value: integer) : EnumTipo;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iModelProduto;
    Function Consultar(ID: integer): iModelProduto;
    Function Preco: currency;
  End;

implementation

uses
  System.SysUtils;

{ TModelProduto }

function TModelProduto.Consultar(ID: integer): iModelProduto;
begin
  Result := Self;
  sleep(3000);
  case ParOuImpar(id mod 2) of
   Par: FPreco := ID * 2;
   Impar: FPreco := ID * 3;
  end;
end;

constructor TModelProduto.Create;
begin

end;

destructor TModelProduto.Destroy;
begin

  inherited;
end;

class function TModelProduto.New: iModelProduto;
begin
  Result := Self.Create;
end;

function TModelProduto.ParOuImpar(Value: integer): EnumTipo;
begin
  if Value = 1 then
   Result := EnumTipo.Impar
  else
   Result := EnumTipo.Par;
end;

function TModelProduto.Preco: currency;
begin
  Result := FPreco;
end;

end.
