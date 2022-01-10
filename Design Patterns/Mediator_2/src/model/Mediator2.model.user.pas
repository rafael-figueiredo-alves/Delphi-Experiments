unit Mediator2.model.user;

interface

uses
  Mediator2.model.interfaces;

Type
  TModelUser = Class(TInterfacedObject, iColleague)
  Private
    FNome: string;
    FMediator: iMediator;
  Public
    Constructor Create (Mediator: iMediator; Nome: string);
    Destructor Destroy; Override;
    Class function New (Mediator: iMediator; Nome: string): iColleague;
    Function Enviar(Destinatario, Msg: string): string;
    Function Receber(Remetente, Msg: string): string;
    Function ObterNome: string;
    Function Entrar: iColleague;
    Function Sair: iColleague;
  End;

implementation

uses
  System.SysUtils;

{ TModelUser }

Constructor TModelUser.Create(Mediator: iMediator; Nome: string);
begin
  FNome := Nome;
  FMediator := Mediator;
end;

destructor TModelUser.Destroy;
begin

  inherited;
end;

function TModelUser.Entrar: iColleague;
begin
  Result := self;
  FMediator.Add(self);
end;

function TModelUser.Enviar(Destinatario, Msg: string): string;
begin
  Result := FMediator.EnviarMsg(self.ObterNome, Destinatario, msg);
end;

class function TModelUser.New(Mediator: iMediator; Nome: string): iColleague;
begin
  Result := Self.Create(Mediator, Nome);
end;

function TModelUser.ObterNome: string;
begin
  Result := FNome;
end;

function TModelUser.Receber(Remetente, Msg: string): string;
begin
  Result := Format('De [%s] para [%s]: %s', [remetente, self.ObterNome, Msg]);
end;

function TModelUser.Sair: iColleague;
begin
  Result := Self;
end;

end.
