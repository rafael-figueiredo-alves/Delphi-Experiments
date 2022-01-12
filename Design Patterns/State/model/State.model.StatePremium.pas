unit State.model.StatePremium;

interface

uses
  State.model.interfaces;

Type
  TStatePremium = Class(TInterfacedObject, iState)
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

{ TStatePremium }

function TStatePremium.AddCompra(Value: currency): iState;
begin
  FTotal := FTotal + value;
end;

function TStatePremium.Categoria: string;
begin
  Result := 'Cliente Premium';
end;

constructor TStatePremium.Create(Value: currency);
begin
  FTotal := Value;
end;

destructor TStatePremium.Destroy;
begin

  inherited;
end;

class function TStatePremium.New(Value: currency): iState;
begin
  Result := Self.Create(Value);
end;

function TStatePremium.RemoveCompra(Value: currency): iState;
begin
  FTotal := FTotal - Value;
end;

function TStatePremium.Total: Currency;
begin
  Result := FTotal;
end;

function TStatePremium.TotalGasto: string;
begin
  Result := FormatCurr('R$ #,##0.00', FTotal);
end;

end.
