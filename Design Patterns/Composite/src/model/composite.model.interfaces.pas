unit composite.model.interfaces;

interface

type

  iItem = interface;

  iVenda = interface
    ['{A120AEFC-1BB9-4C58-9B71-C47B876AF989}']
    Function AddItem(Value: iItem): iVenda;
    Function Total: currency;
  end;

  iItem = interface
    ['{7976A115-7E2E-4963-A1E4-BF5F06B47557}']
    Function Codigo(Value: integer): iItem; overload;
    Function Codigo: integer; overload;
    Function Produto(Value: string): iItem; overload;
    Function Produto: string; overload;
    Function Quantidade(Value: currency): iItem; overload;
    Function Quantidade: currency; overload;
    Function Pre�o(Value: currency): iItem; overload;
    Function Pre�o: currency; overload;
    Function Total: currency;
  end;

implementation

end.
