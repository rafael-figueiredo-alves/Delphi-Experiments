unit FactoryMethod.model.italiano;

interface

uses
  FactoryMethod.model.interfaces;

Type
  TModelItaliano = Class(TInterfacedObject, iIdioma)
    Private
    Public
     Constructor Create;
     Destructor Destroy; Override;
     Class function New: iIdioma;
     Function Say : string;
  End;

implementation

{ TModelItaliano }

constructor TModelItaliano.Create;
begin

end;

destructor TModelItaliano.Destroy;
begin

  inherited;
end;

class function TModelItaliano.New: iIdioma;
begin
  Result := Self.Create;
end;

function TModelItaliano.Say: string;
begin
  Result := 'Ciao';
end;

end.
