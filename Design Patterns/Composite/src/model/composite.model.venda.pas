unit composite.model.venda;

interface

uses
  composite.model.interfaces,
  System.Generics.Collections;

Type
  TModelVenda = Class(TInterfacedObject, iVenda)
  Private
    FLista: tList<iItem>;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iVenda;
    Function AddItem(Value: iItem): iVenda;
    Function Total: currency;
  End;

implementation

{ TModelVenda }

function TModelVenda.AddItem(Value: iItem): iVenda;
begin
  Result := self;
  FLista.Add(value);
end;

constructor TModelVenda.Create;
begin
  Flista := TList<iItem>.create;
end;

destructor TModelVenda.Destroy;
begin
  FLista.DisposeOf;
  inherited;
end;

class function TModelVenda.New: iVenda;
begin
  Result := Self.Create;
end;

function TModelVenda.Total: currency;
var
  I: Integer;
begin
  Result := 0;
  for I := 0 to Pred(FLista.Count) do
   Result := Result + FLista[i].Total;
end;

end.
