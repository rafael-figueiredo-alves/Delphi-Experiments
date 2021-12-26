unit Prototype.Model.Interfaces;

interface

type

 TRegistraItem = procedure(value : string) of object;

 iPrototype<T> = interface
   ['{C9BA3980-BD52-4786-AC0F-2A9639C6DC15}']
   Function Clone : T;
 end;

 iItem = interface
   ['{589B7B72-FA95-494C-B91D-CF8A0B7011C8}']
   Function Codigo (Value: integer) : iItem; overload;
   Function Codigo : integer; overload;
   Function Descricao (Value: string) : iItem; overload;
   Function Descricao : string; overload;
   Function Prototype : iPrototype<iItem>;
 end;

 iListaItens = interface
   ['{712CD072-3A3A-428E-BABB-BE6E71A1354B}']
   Function AdicionarItem (Codigo : integer; Descricao: string) : iListaItens;
   Function RepetirÚltimoItem : iListaItens;
   Function RegistrarItem(Value : TRegistraItem) : iListaItens;
 end;

implementation

end.
