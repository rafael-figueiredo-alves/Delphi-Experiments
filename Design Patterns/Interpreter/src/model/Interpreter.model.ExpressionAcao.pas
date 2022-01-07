unit Interpreter.model.ExpressionAcao;

interface

uses
  Interpreter.model.interfaces;

Type
  TModelExpressionAcao = Class(TInterfacedObject, iExpression)
  Private
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iExpression;
    Function Interpreter(value: iContext): iExpression;
  End;

implementation

uses
  System.SysUtils;

{ TModelExpressionAcao }

constructor TModelExpressionAcao.Create;
begin

end;

destructor TModelExpressionAcao.Destroy;
begin

  inherited;
end;

function TModelExpressionAcao.Interpreter(value: iContext): iExpression;
begin
  Result := Self;
  if POS('VENDER', UpperCase(value.Entrada)) > 0 then
   Value.Saida := 'Vendido o item ';
  if POS('CANCELAR', UpperCase(value.Entrada)) > 0 then
   Value.Saida := 'Cancelado o item ';
  if POS('DEVOLVER', UpperCase(value.Entrada)) > 0 then
   Value.Saida := 'Devolvido o item ';
  if POS('ALUGAR', UpperCase(value.Entrada)) > 0 then
   Value.Saida := 'Alugado o item ';
  if POS('COMPRAR', UpperCase(value.Entrada)) > 0 then
   Value.Saida := 'Comprado o item ';
end;

class function TModelExpressionAcao.New: iExpression;
begin
  Result := Self.Create;
end;

end.
