unit Facade.model.mensagem;

interface

uses
  Facade.model.interfaces;

Type
  TModelMensagem = Class(TInterfacedObject, iMensagem)
  Private
    FDecorator: iMensagem;
  Public
    Constructor Create(Decorator: iMensagem);
    Destructor Destroy; Override;
    Class function New(Decorator: iMensagem): iMensagem;
    Function MontarMensagem: string;
  End;

implementation

{ TModelMensagem }

Constructor TModelMensagem.Create(Decorator: iMensagem);
begin
  FDecorator := Decorator;
end;

destructor TModelMensagem.Destroy;
begin

  inherited;
end;

function TModelMensagem.MontarMensagem: string;
Var
  msg : string;
begin
  if Assigned(FDecorator) then
   msg := FDecorator.MontarMensagem + 'Hello, Rafael. Esta é uma mensagem simples.'
  else
   msg := 'Hello, Rafael. Esta é uma mensagem simples.';
  Result := msg;
end;

class function TModelMensagem.New(Decorator: iMensagem): iMensagem;
begin
  Result := Self.Create(Decorator);
end;

end.
