unit Visitor.model.interfaces;

interface

type
 TModalidade = (Varejo, Atacado);

 iVisitable = interface;

 iVisitor = interface;

 iItem = interface
   ['{CADBC49A-56B7-4E44-846D-7703D0AD83FD}']
   Procedure SetPrecoUnitario(Value : Currency);
   Function GetPrecoUnitario : Currency;
   Property PrecoUnitario : Currency read GetPrecoUnitario write SetPrecoUnitario;
   Function Regras : iVisitable;
   Procedure LimparMemoria;
 end;

 iItemRegras = interface
   ['{0772DEEA-0200-4C41-860B-0860C32DDC93}']
   Function PrecoVenda : Currency;
   Function PrecoPromocao : Currency;
   Function Visitor : iVisitor;
 end;

 iVisitor = interface
   ['{534B44E1-0611-4A3C-B327-163E4DDB48AE}']
   Function Visit (Value : iItem) : iItemRegras;
 end;

 iVisitable = interface
   ['{CCAC682D-E682-4716-92C2-D7975155C3C0}']
   Function Accept (Value : iVisitor) : iItemRegras;
 end;

 iFacade = interface
   ['{D1D86111-DDE8-4C3D-94D2-62BBDF3F3A81}']
   Function Modalidade (Value: TModalidade) : iFacade;
   Function PrecoVenda (Value: currency) : Currency;
   Function PrecoPromocao (Value: currency) : currency;
 end;

implementation

end.
