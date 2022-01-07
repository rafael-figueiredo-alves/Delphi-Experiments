unit Flyweight.model.MsgEspanol;

interface

uses
  Flyweight.model.interfaces;

Type
  TMsgEspanol = Class(TInterfacedObject, iMensagem)
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

{ TMsgEspanol }

constructor TMsgEspanol.Create;
begin

end;

destructor TMsgEspanol.Destroy;
begin

  inherited;
end;

function TMsgEspanol.Escrever(Value: TEscreverMsg): iMensagem;
begin
  Result    := Self;
  FEscrever := Value;
end;

function TMsgEspanol.EscreverMsg: iMensagem;
begin
  Result := self;
  FEscrever('Hola, ' + FNome + '. ¿Cómo te va?');
end;

class function TMsgEspanol.New: iMensagem;
begin
  Result := Self.Create;
end;

function TMsgEspanol.Nome(Value: string): iMensagem;
begin
  Result := Self;
  FNome  := Value;
end;

end.
