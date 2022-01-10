unit Iterator.model.interfaces;

interface

type
 TEscreverNomes = procedure (value: string) of object;

 iIterator = interface;

 iNomes = interface
   ['{2B991A7A-CC73-4A85-AC51-C4B3B97FD3EA}']
   Function ListarNomes : iNomes;
   Function Nomes : iIterator;
   Function EscreveNomes (Value: TEscreverNomes): iNomes;
 end;

 iNome = interface
   ['{B9D92325-B865-4432-9036-A627314E8BB4}']
   Function Nome (value : string) : iNome; overload;
   Function Nome : string; overload;
 end;

 iIterator = interface
   ['{1FA054AA-83E7-4D2D-A2B9-A4C0B3B7E109}']
   Function HasNext : Boolean;
   Function Next    : iNome;
 end;

implementation

end.
