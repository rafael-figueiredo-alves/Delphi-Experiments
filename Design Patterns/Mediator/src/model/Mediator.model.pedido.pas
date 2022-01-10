unit Mediator.model.pedido;

interface

uses
  Mediator.model.interfaces;

Type
  TModelPedido = Class(TInterfacedObject, iColleague, iDisplay<iColleague>)
  Private
    FSetor: string;
    FMediator: iMediator;
    FDisplay : TEvDisplay;
  Public
    Constructor Create(Value: iMediator; Setor: string);
    Destructor Destroy; Override;
    Class function New(value: iMediator; Setor: string): iColleague;
    Function EnviarPedido(FDestino: iColleague; pedido: string): iColleague;
    Function ReceberPedido(FOrigem: iColleague; pedido: string): iColleague;
    Function GetSetor: string;
    Function Display: iDisplay<iColleague>;
    Function Exibir(Value: TEvDisplay): iDisplay<iColleague>;
    Function &End: iColleague;
  End;

implementation

uses
  System.SysUtils, FMX.Dialogs;

{ TModelPedido }

function TModelPedido.&End: iColleague;
begin
  Result := self;
end;

constructor TModelPedido.Create(Value: iMediator; Setor: string);
begin
  FMediator := value;
  FSetor := Setor;
  FMediator.AddColleague(self);
end;

destructor TModelPedido.Destroy;
begin
  FMediator.RemoveColleague(self.GetSetor);
  inherited;
end;

function TModelPedido.Display: iDisplay<iColleague>;
begin
  Result := Self;
end;

function TModelPedido.EnviarPedido(FDestino: iColleague;
  pedido: string): iColleague;
begin
  Result := self;
  FMediator.EnviarPedido(self, Fdestino, pedido);
  FDisplay(Format('O pedido %s foi enviado com sucesso para o setor %s', [Pedido, FDestino.GetSetor]));
end;

function TModelPedido.Exibir(Value: TEvDisplay): iDisplay<iColleague>;
begin
  Result := self;
  FDisplay := Value;
end;

function TModelPedido.GetSetor: string;
begin
  Result := FSetor;
end;

class function TModelPedido.New(value: iMediator; Setor: string)
  : iColleague;
begin
  Result := Self.Create(value, Setor);
end;

function TModelPedido.ReceberPedido(FOrigem: iColleague;
  pedido: string): iColleague;
begin
  Result := self;
  FDisplay(Format('O pedido %s foi entregue com sucesso do setor %s', [Pedido, FOrigem.GetSetor]));
end;

end.
