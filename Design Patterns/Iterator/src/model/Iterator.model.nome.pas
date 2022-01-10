unit Iterator.model.nome;

interface

uses
  Iterator.model.interfaces;

Type
  TModelNome = Class(TInterfacedObject, iNome)
  Private
    FNome: string;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iNome;
    Function nome(value: string): iNome; overload;
    Function nome: string; overload;
  End;

implementation

{ TModelNome }

constructor TModelNome.Create;
begin

end;

destructor TModelNome.Destroy;
begin

  inherited;
end;

class function TModelNome.New: iNome;
begin
  Result := Self.Create;
end;

function TModelNome.nome: string;
begin
  Result := FNome;
end;

function TModelNome.nome(value: string): iNome;
begin
  Result := self;
  FNome := value;
end;

end.
