unit Mediator.model.mediator;

interface

uses
  Mediator.model.interfaces, System.Generics.Collections;

Type
  TMediator = Class(TInterfacedObject, iMediator)
  Private
    FListaUsers : TObjectDictionary<string, iColleague>;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iMediator;
    Function Add(Value: iColleague): iMediator;
    Function Remove(const Value: string): iMediator;
    Function EnviarMsg(Const Remetente, Destinatario, Msg: string): string;
    Function User(Value: string): iColleague;
    Function LiberarObjetos : iMediator;
  End;

implementation

{ TMediator }

function TMediator.Add(Value: iColleague): iMediator;
begin
  Result := self;
  FListaUsers.Add(value.ObterNome, Value);
end;

constructor TMediator.Create;
begin
  FListaUsers := TObjectDictionary<string, iColleague>.create;
end;

destructor TMediator.Destroy;
begin

  inherited;
end;

function TMediator.EnviarMsg(const Remetente, Destinatario,
  Msg: string): string;
Var
  UserRemetente, UserDestinatario : iColleague;
begin
  UserRemetente := FListaUsers.Items[Remetente];
  UserDestinatario := FListaUsers.Items[Destinatario];
  Result := UserDestinatario.Receber(UserRemetente.ObterNome, Msg);
end;

function TMediator.LiberarObjetos: iMediator;
begin
  FListaUsers.DisposeOf;
end;

class function TMediator.New: iMediator;
begin
  Result := Self.Create;
end;

function TMediator.Remove(const Value: string): iMediator;
begin
  Result := Self;
  FListaUsers.Remove(Value);
end;

function TMediator.User(Value: string): iColleague;
begin
  Result := FListaUsers.Items[Value];
end;

end.
