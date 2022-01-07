unit Flyweight.model.interfaces;

interface

type

 TpIdioma = (PtBR, EN, ES);

 TEscreverMsg = procedure(Texto : string) of object;

 iMensagem = Interface;

 iFlyweight = Interface
   ['{DD54F34F-1EA9-47B6-961B-774B687B8176}']
   Function GetMensagem(Value: TpIdioma) : iMensagem;
 End;

 iMensagem = Interface
   ['{FB84E3D3-DBCA-4DEF-B1B2-B4F2D30D056D}']
   Function EscreverMsg : iMensagem;
   Function Nome(Value: string): iMensagem;
   Function Escrever(Value: TEscreverMsg): iMensagem;
 End;

implementation

end.
