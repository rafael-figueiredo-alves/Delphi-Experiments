unit Interpreter.model.Syntax;

interface

uses
  Interpreter.model.interfaces, System.Generics.Collections;

Type
  TModelSyntax = Class(TInterfacedObject, iSyntax)
  Private
    FListaExpressoes : TList<iExpression>;
    FContext         : iContext;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iSyntax;
    Function Process(value: string): string;
  End;

implementation

{ TModelSyntax }

uses Interpreter.model.Context, Interpreter.model.ExpressionAcao,
  Interpreter.model.ExpressionItem;

constructor TModelSyntax.Create;
begin
  FListaExpressoes := TList<iExpression>.create;
  FContext         := TModelContext.New;
end;

destructor TModelSyntax.Destroy;
begin
  FListaExpressoes.DisposeOf;
  inherited;
end;

class function TModelSyntax.New: iSyntax;
begin
  Result := Self.Create;
end;

function TModelSyntax.Process(value: string): string;
var
  I: Integer;
begin
  FContext.Entrada := value;
  FListaExpressoes.Add(TModelExpressionAcao.New);
  FListaExpressoes.Add(TModelExpressionItem.New);

  for I := 0 to Pred(FListaExpressoes.Count) do
   FListaExpressoes[i].Interpreter(FContext);

  Result := FContext.Saida;
end;

end.
