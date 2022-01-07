unit Command.model.invoker;

interface

uses
  Command.model.interfaces,
  System.Generics.Collections;

Type
  TInvoker = Class(TInterfacedObject, iInvoker)
  Private
    FListaAcoes : TList<iCommand>;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iInvoker;
    Function Add(Acao: iCommand): iInvoker;
    Function ExecuteAll: iInvoker;
  End;

implementation

{ TInvoker }

function TInvoker.Add(Acao: iCommand): iInvoker;
begin
  Result := Self;
  FListaAcoes.Add(Acao);
end;

constructor TInvoker.Create;
begin
  FListaAcoes := TList<iCommand>.create;
end;

destructor TInvoker.Destroy;
begin
  FListaAcoes.DisposeOf;
  inherited;
end;

function TInvoker.ExecuteAll: iInvoker;
var
  I: Integer;
begin
   Result := Self;
   for I := 0 to Pred(FListaAcoes.Count) do
    FListaAcoes[i].Execute;
end;

class function TInvoker.New: iInvoker;
begin
  Result := Self.Create;
end;

end.
