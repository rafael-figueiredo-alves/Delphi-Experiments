unit FactoryMethod.model.alemao;

interface

uses
  FactoryMethod.model.interfaces;

Type
  TModelAlemao = Class(TInterfacedObject, iIdioma)
    Private
    Public
     Constructor Create;
     Destructor Destroy; Override;
     Class function New: iIdioma;
     Function Say : string;
  End;

implementation

{ TModelAlemao }

constructor TModelAlemao.Create;
begin

end;

destructor TModelAlemao.Destroy;
begin

  inherited;
end;

class function TModelAlemao.New: iIdioma;
begin
  Result := Self.Create;
end;

function TModelAlemao.Say: string;
begin
  Result := 'Hallo';
end;

end.
