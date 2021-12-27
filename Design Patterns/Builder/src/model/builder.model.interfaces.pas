unit builder.model.interfaces;

interface

uses
  System.Classes;

type

 iProduct = interface
   Function AddTexto(Value : string) : iProduct;
   Function Resultado : TStringList;
 end;

 iBuilder = interface
   ['{82D6E164-B30B-47BF-8848-BBE9BAD9F7AB}']
   Function Cabecalho : iBuilder;
   Function Corpo     : iBuilder;
   Function Rodape    : iBuilder;
   Function Produto   : iProduct;
 end;

 iDirector = interface
   ['{4AEF2BCE-FE80-4CA5-89A6-9E09E67BCEB9}']
   Function Construct (builder : iBuilder) : iDirector;
 end;

 iFactory = interface
   ['{C4AB4175-6637-4D6B-BA71-4E67CF8331F1}']
   Function Relatorio1 : iProduct;
   Function Relatorio2 : iProduct;
   Function Relatorio3 : iProduct;
 end;

implementation

end.
