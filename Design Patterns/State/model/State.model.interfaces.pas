unit State.model.interfaces;

interface

type
 iState = interface
   ['{C24B4172-193B-4EE5-9C03-A1C7CB56FE2C}']
   Function AddCompra(Value : Currency) : iState;
   Function RemoveCompra(Value : Currency) : iState;
   Function Total : Currency;
   Function TotalGasto : string;
   Function Categoria  : string;
 end;

 iContext = interface
   ['{71A86365-C56A-4C2D-93B4-9041CFFC26F7}']
   Function AddCompra(Value : Currency) : iContext;
   Function RemoveCompra(Value : Currency) : iContext;
   Function TotalGasto : string;
   Function Categoria  : string;
 end;

implementation

end.
