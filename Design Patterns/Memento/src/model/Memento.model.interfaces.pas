unit Memento.model.interfaces;

interface

type
 iMemento <t> = interface
   ['{DC24512F-7B9C-4375-A859-F833269C57A1}']
   Function Save (Key: string): iMemento<t>;
   Function Restore (Key: string): t;
 end;

 iMementoCareTaker<t> = interface
   ['{149CB946-64AD-44FD-85E1-9D818EE751C3}']
   Function SaveState (Key: string; Value : t): iMementoCareTaker<t>;
   Function RestoreState (Key: String) : t;
 end;

 iNome = interface
   ['{64E28834-60DE-4CC0-AC44-8FFD4B80E448}']
   Function GetNome: string;
   Procedure SetNome (Value: string);
   Property Nome : string read GetNome write SetNome;
   Function Memento : iMemento<iNome>;
 end;

implementation

end.
