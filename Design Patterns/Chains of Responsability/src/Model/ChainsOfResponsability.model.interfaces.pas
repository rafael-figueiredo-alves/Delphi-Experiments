unit ChainsOfResponsability.model.interfaces;

interface

Type

 iItem = interface;

 iResponsability = interface
   ['{78F790F2-204E-4C00-8B29-50782B1A5C07}']
   Function NextResponsability (value : iResponsability) : iResponsability;
   Function Desconto (Value: currency) : iResponsability;
   Function Resultado : string;
 end;

 iUsuario = interface
   ['{057721B7-0F8F-4F20-8AC9-66E2536CA27B}']
   Function Responsability : iResponsability;
 end;

 iOperacoes = interface
   ['{4D6E9FBF-393E-4DDE-AAFF-5F30A3B4118D}']
   Function Desconto (Value: currency) : iOperacoes;
   Function Resultado : string;
   Function &End : iItem;
 end;

 iItem = interface
   ['{CC1D139E-D6E7-4933-B1BF-86F9254DE9BD}']
   Function Operacoes : iOperacoes;
 end;

implementation

end.
