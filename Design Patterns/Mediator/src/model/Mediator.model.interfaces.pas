unit Mediator.model.interfaces;

interface

Type
 iColleague = interface
   ['{F6409892-6F13-4B28-AC3D-605F0FAE7730}']
   Function Enviar(Destinatario, Msg: string) : string;
   Function Receber(Remetente, Msg: string)   : string;
   Function ObterNome: string;
   Function Entrar : iColleague;
   Function Sair   : iColleague;
 end;

 iMediator = interface
   ['{04548030-1821-492A-A8CB-981C7E555506}']
   Function Add (Value : iColleague) : iMediator;
   Function Remove (const Value: string) : iMediator;
   Function EnviarMsg (Const Remetente, Destinatario, Msg: string) : string;
   Function User (Value : string) : iColleague;
   Function LiberarObjetos : iMediator;
 end;

implementation

end.
