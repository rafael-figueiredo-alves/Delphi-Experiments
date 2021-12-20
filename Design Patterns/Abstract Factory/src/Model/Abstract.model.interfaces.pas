unit Abstract.model.interfaces;

interface

type
  iPessoa = interface
    ['{3722D8EE-BC83-463E-9D7F-AC496845AFC9}']
    Function Nome : string;
  end;

  iNotaFiscal = interface
    ['{210B9A74-6057-4B47-835E-595B8B888E8E}']
    Function numero : integer;
  end;

  iTexto = interface
    ['{2D3141F1-48E0-448D-B35C-9F0B681CDCEA}']
    Function Texto : string;
  end;

  iFactory = interface
    ['{7DD7EB88-F099-4CE2-85AE-F3300BD2CE57}']
    Function Pessoa : iPessoa;
    Function NotaFiscal : iNotaFiscal;
    Function Texto : iTexto;
  end;

implementation

end.
