unit Mediator.model.pedido.mediator;

interface

uses
  Mediator.model.interfaces,
  System.Generics.Collections;

Type
  TModelMediator = Class(TInterfacedObject, iMediator)
  Private
    FListaColleagues : TObjectDictionary<string, iColleague>;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iMediator;
    Function AddColleague(Value: iColleague): iMediator;
    Function EnviarPedido(FOrigem, FDestino: iColleague; pedido: string)
      : iMediator;
    Function RemoveColleague(Value: string): iMediator;
    Function LiberarObjetos : iMediator;
  End;

implementation

uses
  System.SysUtils;

{ TModelMediator }

function TModelMediator.AddColleague(Value: iColleague): iMediator;
begin
  Result := Self;
  FListaColleagues.Add(Value.GetSetor, Value);
end;

constructor TModelMediator.Create;
begin
  FListaColleagues := TObjectDictionary<string, iColleague>.create;
end;

destructor TModelMediator.Destroy;
begin

  inherited;
end;

function TModelMediator.EnviarPedido(FOrigem, FDestino: iColleague;
  pedido: string): iMediator;
begin
  Result := self;
  FListaColleagues.Items[FDestino.GetSetor].ReceberPedido(FOrigem, pedido);
end;

function TModelMediator.LiberarObjetos: iMediator;
begin
  FListaColleagues.DisposeOf;
end;

class function TModelMediator.New: iMediator;
begin
  Result := Self.Create;
end;

function TModelMediator.RemoveColleague(Value: string): iMediator;
begin
  Result := self;
  FListaColleagues.Remove(Value);
end;

end.
