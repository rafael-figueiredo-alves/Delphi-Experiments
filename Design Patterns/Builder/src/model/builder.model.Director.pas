unit builder.model.Director;

interface

uses
  builder.model.interfaces;

Type
  TDirector = Class(TInterfacedObject, iDirector)
  Private
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iDirector;
    Function Construct(builder: iBuilder): iDirector;
  End;

implementation

{ TDirector }

function TDirector.Construct(builder: iBuilder): iDirector;
begin
  Result := self;
  builder
   .Cabecalho
   .Corpo
   .Rodape;
end;

constructor TDirector.Create;
begin

end;

destructor TDirector.Destroy;
begin

  inherited;
end;

class function TDirector.New: iDirector;
begin
  Result := Self.Create;
end;

end.
