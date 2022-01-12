unit State.model.StatePlus;

interface

uses
  State.model.interfaces;

Type
  TStatePlus = Class(TInterfacedObject, iState)
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

{ TStatePlus }

function TStatePlus.AddCompra(Value: currency): iState;
begin
  FTotal := FTotal + value;
end;

function TStatePlus.Categoria: string;
begin
  Result := 'Cliente Plus';
end;

constructor TStatePlus.Create(Value: currency);
begin
  FTotal := Value;
end;

destructor TStatePlus.Destroy;
begin

  inherited;
end;

class function TStatePlus.New(Value: currency): iState;
begin
  Result := Self.Create(Value);
end;

function TStatePlus.RemoveCompra(Value: currency): iState;
begin
  FTotal := FTotal - Value;
end;

function TStatePlus.Total: Currency;
begin
  Result := FTotal;
end;

function TStatePlus.TotalGasto: string;
begin
  Result := FormatCurr('R$ #,##0.00', FTotal);
end;

end.
