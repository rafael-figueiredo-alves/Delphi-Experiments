unit Iterator.model.iterator;

interface

uses
  Iterator.model.interfaces,
  System.Generics.Collections;

Type
  TModelIterator = Class(TInterfacedObject, iIterator)
  Private
    FListaNomes : TList<iNome>;
    FCount      : integer;
  Public
    Constructor Create(Value: TList<iNome>);
    Destructor Destroy; Override;
    Class function New(Value: TList<iNome>): iIterator;
    Function HasNext: Boolean;
    Function Next: iNome;
  End;

implementation

{ TModelIterator }

constructor TModelIterator.Create(Value:TList<iNome>);
begin
  FListaNomes := Value;
  FCount      := 0;
end;

destructor TModelIterator.Destroy;
begin

  inherited;
end;

function TModelIterator.HasNext: Boolean;
begin
  Result := (FCount = FListaNomes.Count);
end;

class function TModelIterator.New(Value: TList<iNome>): iIterator;
begin
  Result := Self.Create(Value);
end;

function TModelIterator.Next: iNome;
begin
  Result := FListaNomes[FCount];
  Inc(FCount);
end;

end.
