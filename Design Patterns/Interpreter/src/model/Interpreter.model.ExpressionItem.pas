unit Interpreter.model.ExpressionItem;

interface

uses
  Interpreter.model.interfaces, System.Classes;

Type
  TModelExpressionItem = Class(TInterfacedObject, iExpression)
  Private
    FListaExpressoes : tStringList;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iExpression;
    Function Interpreter(value: iContext): iExpression;
  End;

implementation

uses
  System.SysUtils;

{ TModelExpressionItem }

constructor TModelExpressionItem.Create;
begin
  FListaExpressoes := TStringList.Create;
end;

destructor TModelExpressionItem.Destroy;
begin
  FListaExpressoes.DisposeOf;
  inherited;
end;

function TModelExpressionItem.Interpreter(value: iContext): iExpression;
begin
  Result := self;
  ExtractStrings([' '], [], PWideChar(value.Entrada), FListaExpressoes);
  if Pos('VENDIDO O ITEM', UpperCase(value.Saida)) > 0 then
   value.Saida := FListaExpressoes[1];
  if Pos('CANCELADO O ITEM', UpperCase(value.Saida)) > 0 then
   value.Saida := FListaExpressoes[1];
  if Pos('DEVOLVIDO O ITEM', UpperCase(value.Saida)) > 0 then
   value.Saida := FListaExpressoes[1];
  if Pos('ALUGADO O ITEM', UpperCase(value.Saida)) > 0 then
   value.Saida := FListaExpressoes[1];
  if Pos('COMPRADO O ITEM', UpperCase(value.Saida)) > 0 then
   value.Saida := FListaExpressoes[1];
end;

class function TModelExpressionItem.New: iExpression;
begin
  Result := Self.Create;
end;

end.
