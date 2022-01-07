unit Interpreter.model.Context;

interface

uses
  Interpreter.model.interfaces;

Type
  TModelContext = Class(TInterfacedObject, iContext)
  Private
    FEntrada: string;
    FSaida  : string;
    Procedure SetEntrada(value: string);
    Function GetEntrada: string;
    Procedure SetSaida(value: string);
    Function GetSaida: string;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iContext;
    property Entrada: string read GetEntrada write SetEntrada;
    property Saida  : string read GetSaida   write SetSaida;
  End;

implementation

{ TModelContext }

constructor TModelContext.Create;
begin

end;

destructor TModelContext.Destroy;
begin

  inherited;
end;

Procedure TModelContext.SetEntrada(value: string);
begin
  FEntrada := value;
end;

Function TModelContext.GetEntrada: string;
begin
  Result := FEntrada;
end;

class function TModelContext.New: iContext;
begin
  Result := Self.Create;
end;

Procedure TModelContext.SetSaida(value: string);
begin
  FSaida := FSaida + value;
end;

function TModelContext.GetSaida: string;
begin
  Result := FSaida;
end;

end.
