unit Decorator.model.mensagem2;

Interface

uses
  Decorator.model.interfaces;

Type
  TModelMensagem2 = Class(TInterfacedObject, iMensagem)
  Private
    FDecorator: iMensagem;
  Public
    Constructor Create(Decorator: iMensagem);
    Destructor Destroy; Override;
    Class function New(Decorator: iMensagem): iMensagem;
    Function MontarMensagem: string;
  End;

implementation

{ TModelMensagem2 }

Constructor TModelMensagem2.Create(Decorator: iMensagem);
begin
  FDecorator := Decorator;
end;

destructor TModelMensagem2.Destroy;
begin

  inherited;
end;

function TModelMensagem2.MontarMensagem: string;
Var
  msg : string;
begin
  if Assigned(FDecorator) then
   msg := FDecorator.MontarMensagem + ' Esta é a segunda decoração!'
  else
   msg := 'Esta é a segunda decoração!';
  Result := msg;
end;

class function TModelMensagem2.New(Decorator: iMensagem): iMensagem;
begin
  Result := Self.Create(Decorator);
end;

end.
