unit Proxy.model.ProdutoProxy;

interface

uses
  Proxy.model.interfaces, System.Generics.Collections;

Type
  TModelProdutoProxy = Class(TInterfacedObject, iModelProdutoProxy)
  Private
    FListaProdutos : TDictionary<integer, iModelProduto>;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iModelProdutoProxy;
    Function Consultar(ID: integer): iModelProduto;
  End;

implementation

uses
  Proxy.model.Produto;

{ TModelProdutoProxy }

function TModelProdutoProxy.Consultar(ID: integer): iModelProduto;
begin
  if not FListaProdutos.TryGetValue(ID, Result) then
   begin
     Result := tModelProduto.new.Consultar(ID);
     FListaProdutos.Add(ID, Result);
   end;
end;

constructor TModelProdutoProxy.Create;
begin
  FListaProdutos := TDictionary<integer, iModelProduto>.create;
end;

destructor TModelProdutoProxy.Destroy;
begin
  FListaProdutos.DisposeOf;
  inherited;
end;

class function TModelProdutoProxy.New: iModelProdutoProxy;
begin
  Result := Self.Create;
end;

end.
