unit Command.model.interfaces;

interface

type

 TListarAcoes = Procedure (Value: string) of object;

 iCommand = interface
   ['{4B4E1D63-C83A-45FA-A682-2DE82D5C6BF9}']
   Function Execute : iCommand;
 end;

 iInvoker = interface
   ['{07C42493-A964-40C7-8AFE-03138B85A337}']
   Function Add(Acao : iCommand) : iInvoker;
   Function ExecuteAll : iInvoker;
 end;

 iDocummentActions = interface
   ['{06B33FEA-D79E-456E-9CAE-B7A95D48F841}']
   Function CreateDocumment : iDocummentActions;
   Function SaveDocumment   : iDocummentActions;
   function PrintDocumment  : iDocummentActions;
   Function ListarAcoes (Value : TListarAcoes) : iDocummentActions;
 end;

 iFacade = interface
   ['{3072892D-162E-4281-A931-F779F8D3CCB7}']
   Function ExecutarTudo : iFacade;
   Function Salvar       : iFacade;
   Function Imprimir     : iFacade;
   Function Mostrar (Value: TListarAcoes) : iFacade;
 end;

implementation

end.
