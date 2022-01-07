unit Flyweight.model.MsgEnglish;

interface

uses
  Flyweight.model.interfaces;

Type
  TMsgEnglish = Class(TInterfacedObject, iMensagem)
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

{ TMsgEnglish }

constructor TMsgEnglish.Create;
begin

end;

destructor TMsgEnglish.Destroy;
begin

  inherited;
end;

function TMsgEnglish.Escrever(Value: TEscreverMsg): iMensagem;
begin
  Result    := Self;
  FEscrever := Value;
end;

function TMsgEnglish.EscreverMsg: iMensagem;
begin
  Result := self;
  FEscrever('Hello, ' + FNome + '. How are you?');
end;

class function TMsgEnglish.New: iMensagem;
begin
  Result := Self.Create;
end;

function TMsgEnglish.Nome(Value: string): iMensagem;
begin
  Result := Self;
  FNome  := Value;
end;

end.
