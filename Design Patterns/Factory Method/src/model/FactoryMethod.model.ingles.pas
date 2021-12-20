unit FactoryMethod.model.ingles;

interface

uses
  FactoryMethod.model.interfaces;

Type
  TModelIngles = Class(TInterfacedObject, iIdioma)
    Private
    Public
     Constructor Create;
     Destructor Destroy; Override;
     Class function New: iIdioma;
     Function Say : string;
  End;

implementation

{ TModelIngles }

constructor TModelIngles.Create;
begin

end;

destructor TModelIngles.Destroy;
begin

  inherited;
end;

class function TModelIngles.New: iIdioma;
begin
  Result := Self.Create;
end;

function TModelIngles.Say: string;
begin
  Result := 'Hello';
end;

end.
