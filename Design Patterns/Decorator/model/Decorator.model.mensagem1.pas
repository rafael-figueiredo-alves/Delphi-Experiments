unit Decorator.model.mensagem1;

Interface

uses
  Decorator.model.interfaces;

Type
  TModelMensagem1 = Class(TInterfacedObject, iMensagem)
  Private
    FDecorator: iMensagem;
  Public
    Constructor Create(Decorator: iMensagem);
    Destructor Destroy; Override;
    Class function New(Decorator: iMensagem): iMensagem;
    Function MontarMensagem: string;
  End;

implementation

{ TModelMensagem1 }

Constructor TModelMensagem1.Create(Decorator: iMensagem);
begin
  FDecorator := Decorator;
end;

destructor TModelMensagem1.Destroy;
begin

  inherited;
end;

function TModelMensagem1.MontarMensagem: string;
Var
  msg : string;
begin
  if Assigned(FDecorator) then
   msg := FDecorator.MontarMensagem + ' Esta é a primeira decoração!'
  else
   msg := 'Esta é a primeira decoração!';
  Result := msg;
end;

class function TModelMensagem1.New(Decorator: iMensagem): iMensagem;
begin
  Result := Self.Create(Decorator);
end;

end.
