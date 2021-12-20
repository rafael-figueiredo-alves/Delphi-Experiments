unit FactoryMethod.model.frances;

interface

uses
  FactoryMethod.model.interfaces;

Type
  TModelFrances = Class(TInterfacedObject, iIdioma)
    Private
    Public
     Constructor Create;
     Destructor Destroy; Override;
     Class function New: iIdioma;
     Function Say : string;
  End;

implementation

{ TModelFrances }

constructor TModelFrances.Create;
begin

end;

destructor TModelFrances.Destroy;
begin

  inherited;
end;

class function TModelFrances.New: iIdioma;
begin
  Result := Self.Create;
end;

function TModelFrances.Say: string;
begin
  Result := 'Bonjour';
end;

end.
