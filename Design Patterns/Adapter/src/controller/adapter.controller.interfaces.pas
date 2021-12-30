unit adapter.controller.interfaces;

interface

uses
  System.Generics.Collections;

type

 TItens = record
   Produto : string;
   Preço   : currency;
 end;

 iControllerItens = Interface
   ['{D557E878-19C2-45B1-B859-578B4495A48B}']
   Function Add(value : TItens) : iControllerItens;
   Function LimparLista : iControllerItens;
   Function Itens : tList<TItens>;
 End;

implementation

end.
