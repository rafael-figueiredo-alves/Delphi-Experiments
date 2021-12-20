unit FactoryMethod.model.espanhol;

interface

uses
  FactoryMethod.model.interfaces;

Type
  TModelEspanhol = Class(TInterfacedObject, iIdioma)
    Private
    Public
     Constructor Create;
     Destructor Destroy; Override;
     Class function New: iIdioma;
     Function Say : string;
  End;

implementation

{ TModelEspanhol }

constructor TModelEspanhol.Create;
begin

end;

destructor TModelEspanhol.Destroy;
begin

  inherited;
end;

class function TModelEspanhol.New: iIdioma;
begin
  Result := Self.Create;
end;

function TModelEspanhol.Say: string;
begin
  Result := 'Hola';
end;

end.
