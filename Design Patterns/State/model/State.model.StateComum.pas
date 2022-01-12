unit State.model.StateComum;

interface

uses
  State.model.interfaces;

Type
  TStateComum = Class(TInterfacedObject, iState)
  Private
    FTotal : Currency;
  Public
    Constructor Create(Value: currency);
    Destructor Destroy; Override;
    Class function New(Value: currency): iState;
    Function AddCompra(Value: currency): iState;
    Function RemoveCompra(Value: currency): iState;
    Function TotalGasto: string;
    Function Categoria: string;
    Function Total : Currency;
  End;

implementation

uses
  System.SysUtils;

{ TStateComum }

function TStateComum.AddCompra(Value: currency): iState;
begin
  Result := Self;
  FTotal := FTotal + value;
end;

function TStateComum.Categoria: string;
begin
  Result := 'Cliente Comum';
end;

constructor TStateComum.Create(Value: currency);
begin
  FTotal := Value;
end;

destructor TStateComum.Destroy;
begin

  inherited;
end;

class function TStateComum.New(Value: currency): iState;
begin
  Result := Self.Create(Value);
end;

function TStateComum.RemoveCompra(Value: currency): iState;
begin
  Result := Self;
  FTotal := FTotal - Value;
end;

function TStateComum.Total: Currency;
begin
  Result := FTotal;
end;

function TStateComum.TotalGasto: string;
begin
  Result := FormatCurr('R$ #,##0.00', FTotal);
end;

end.
