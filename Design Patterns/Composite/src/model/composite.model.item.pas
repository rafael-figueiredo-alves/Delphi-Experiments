unit composite.model.item;

interface

uses
  composite.model.interfaces;

Type
  TModelItem = Class(TInterfacedObject, iItem)
  Private
    FCodigo: integer;
    FProduto: string;
    FQuantidade: currency;
    FPre�o: currency;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iItem;
    Function Codigo(Value: integer): iItem; overload;
    Function Codigo : integer; overload;
    Function Produto(Value: string): iItem; overload;
    Function Produto : string; overload;
    Function Quantidade(Value: currency): iItem; overload;
    Function Quantidade : currency; overload;
    Function Pre�o(Value: currency): iItem; overload;
    Function Pre�o : currency; overload;
    Function Total: currency;
  End;

implementation

{ TModelItem }

function TModelItem.Codigo(Value: integer): iItem;
begin
  Result := self;
  FCodigo := value;
end;

function TModelItem.Codigo: integer;
begin
  Result := FCodigo;
end;

constructor TModelItem.Create;
begin

end;

destructor TModelItem.Destroy;
begin

  inherited;
end;

class function TModelItem.New: iItem;
begin
  Result := Self.Create;
end;

function TModelItem.Pre�o(Value: currency): iItem;
begin
  Result := self;
  FPre�o := value;
end;

function TModelItem.Produto(Value: string): iItem;
begin
  Result := self;
  FProduto := value;
end;

function TModelItem.Quantidade(Value: currency): iItem;
begin
  Result := self;
  FQuantidade := value;
end;

function TModelItem.Total: currency;
begin
  Result := (FQuantidade * FPre�o);
end;

function TModelItem.Pre�o: currency;
begin
  Result := FPre�o;
end;

function TModelItem.Produto: string;
begin
  Result := FProduto;
end;

function TModelItem.Quantidade: currency;
begin
  Result := FQuantidade;
end;

end.
