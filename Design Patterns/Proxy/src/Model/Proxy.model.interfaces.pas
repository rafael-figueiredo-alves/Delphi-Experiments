unit Proxy.model.interfaces;

interface

Type
 iModelProduto = interface
   ['{D215FC55-4CEF-4A4A-B9C2-0C046B2A9FFF}']
   Function Consultar(ID : integer) : iModelProduto;
   Function Preco : currency;
 end;

 iModelProdutoProxy = interface
   ['{D7C05162-7C97-4594-85AD-308862335547}']
   Function Consultar(ID : integer) : iModelProduto;
 end;

implementation

end.
