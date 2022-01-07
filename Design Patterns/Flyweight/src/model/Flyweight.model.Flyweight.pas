unit Flyweight.model.Flyweight;

interface

uses
  Flyweight.model.interfaces, System.Generics.Collections;

Type
  TFlyweight = Class(TInterfacedObject, iFlyweight)
  Private
    FListaMensagens : TDictionary<string, iMensagem>;
    Function Idioma(Value: TpIdioma) : string;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iFlyweight;
    Function GetMensagem(Value: TpIdioma): iMensagem;
  End;

implementation

uses
  System.TypInfo, Flyweight.model.MsgEnglish, Flyweight.model.MsgEspanol,
  Flyweight.model.MsgPortugues;

{ TFlyweight }

constructor TFlyweight.Create;
begin
  FListaMensagens := TDictionary<string, iMensagem>.create;
end;

destructor TFlyweight.Destroy;
begin
  FListaMensagens.DisposeOf;
  inherited;
end;

function TFlyweight.GetMensagem(Value: TpIdioma): iMensagem;
begin
  if not FListaMensagens.TryGetValue(Idioma(value), Result) then
   begin
     case Value of
       PtBR: Result := TMsgPortugues.New;
       EN:   Result := TMsgEnglish.New;
       ES:   Result := TMsgEspanol.New;
     end;
     FListaMensagens.Add(Idioma(value), Result);
   end;

end;

//Função para converter Enumerado em String
function TFlyweight.Idioma(Value: TpIdioma): string;
begin
  Result := GetEnumName(TypeInfo(TpIdioma), integer(Value));
end;

class function TFlyweight.New: iFlyweight;
begin
  Result := Self.Create;
end;

end.
