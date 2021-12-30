unit adapter.model.interfaces;

interface

uses
  System.Generics.Collections;

type

 iModelItens = Interface
   ['{E8293EDB-3F1E-4A43-9E63-0DB5CA5816EA}']
   Function Add(Value : iModelItens) : iModelItens;
   Function LimparLista : iModelItens;
   Function Itens : TList<iModelItens>;
   Function Produto(Value: string): iModelItens; Overload;
   Function Produto: string; Overload;
   Function Preço(value : currency): iModelItens; Overload;
   Function Preço: currency; overload;
 End;

implementation

end.
