unit Mediator.model.interfaces;

interface

type
 TEvDisplay = procedure (value : string) of object;

 iDisplay <t> = interface;

 iColleague = interface
   ['{ABA8A7E7-0EDF-4DF1-AD10-D5D539B5A4A3}']
   Function EnviarPedido (FDestino: iColleague; pedido: string) : iColleague;
   Function ReceberPedido (FOrigem: iColleague; pedido: string) : iColleague;
   Function GetSetor : string;
   Function Display : iDisplay<iColleague>;
 end;

 iMediator = interface
   ['{85B8A12A-ACF2-4161-B838-AA2DB300A008}']
   Function AddColleague (Value : iColleague) : iMediator;
   Function EnviarPedido (FOrigem, FDestino : iColleague; pedido: string) : iMediator;
   Function RemoveColleague (Value: string) : iMediator;
   Function LiberarObjetos : iMediator;
 end;

 iDisplay <t> = interface
   ['{0FFE718C-B33F-4950-90EA-BD19B379EA63}']
   Function Exibir (Value : TEvDisplay) : iDisplay<t>;
   Function &End : t;
 end;

implementation

end.
