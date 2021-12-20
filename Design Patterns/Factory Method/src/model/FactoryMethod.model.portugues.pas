unit FactoryMethod.model.portugues;

interface

uses
  FactoryMethod.model.interfaces;

Type
  TModelPortugues = Class(TInterfacedObject, iIdioma)
    Private
    Public
     Constructor Create;
     Destructor Destroy; Override;
     Class function New: iIdioma;
     Function Say : string;
  End;

implementation

{ TModelPortugues }

constructor TModelPortugues.Create;
begin

end;

destructor TModelPortugues.Destroy;
begin

  inherited;
end;

class function TModelPortugues.New: iIdioma;
begin
  Result := Self.Create;
end;

function TModelPortugues.Say: string;
begin
  Result := 'Olá';
end;

end.
