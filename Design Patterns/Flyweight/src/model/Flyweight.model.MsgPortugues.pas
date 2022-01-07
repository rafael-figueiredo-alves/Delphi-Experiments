unit Flyweight.model.MsgPortugues;

interface

uses
  Flyweight.model.interfaces;

Type
  TMsgPortugues = Class(TInterfacedObject, iMensagem)
  Private
    FEscrever : TEscreverMsg;
    FNome     : string;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iMensagem;
    Function EscreverMsg: iMensagem;
    Function Nome(Value: string): iMensagem;
    Function Escrever(Value: TEscreverMsg): iMensagem;
  End;

implementation

{ TMsgPortugues }

constructor TMsgPortugues.Create;
begin

end;

destructor TMsgPortugues.Destroy;
begin

  inherited;
end;

function TMsgPortugues.Escrever(Value: TEscreverMsg): iMensagem;
begin
  Result    := Self;
  FEscrever := Value;
end;

function TMsgPortugues.EscreverMsg: iMensagem;
begin
  Result := self;
  FEscrever('Olá, ' + FNome + '. Como você está?');
end;

class function TMsgPortugues.New: iMensagem;
begin
  Result := Self.Create;
end;

function TMsgPortugues.Nome(Value: string): iMensagem;
begin
  Result := Self;
  FNome  := Value;
end;

end.
