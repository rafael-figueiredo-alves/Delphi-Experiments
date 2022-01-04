unit Facade.model.interfaces;

interface

type

 iMensagem = interface
   ['{221446AE-D597-4996-AD33-7B4E80CDD6FA}']
   Function MontarMensagem: string;
 end;

 iFacade = interface
   ['{1A224F1A-603C-47FF-9EBD-C799AE452F45}']
   Function MsgSimples     : string;
   Function MsgComDecor1   : string;
   Function MsgComDecor1e2 : string;
   Function MsgDecor1e2    : string;
 end;

implementation

end.
