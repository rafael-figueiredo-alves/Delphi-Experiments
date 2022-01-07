unit ChainsOfResponsability.model.usuarioCaixa;

interface

uses ChainsOfResponsability.model.interfaces;

Type
  TUsuarioCaixa = Class(TInterfacedObject, iUsuario, iResponsability)
  Private
    FResponsability : iResponsability;
    FResultado      : string;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iUsuario;
    Function Responsability: iResponsability;
    Function NextResponsability(value: iResponsability): iResponsability;
    Function Desconto(value: currency): iResponsability;
    Function Resultado: string;
  End;

implementation

{ TUsuarioCaixa }

constructor TUsuarioCaixa.Create;
begin

end;

function TUsuarioCaixa.Desconto(value: currency): iResponsability;
begin
  Result := Self;

  if value <= 10 then
   begin
    FResultado := 'Desconto pode ser concedido pelo caixa!';
    Exit
   end;


   if not Assigned(FResponsability) then
    begin
     FResultado := 'Operação não pode ser realizada! Sorry!';
     Exit
    end;


   FResultado := FResponsability.Desconto(value).Resultado;

end;

destructor TUsuarioCaixa.Destroy;
begin

  inherited;
end;

class function TUsuarioCaixa.New: iUsuario;
begin
  Result := Self.Create;
end;

function TUsuarioCaixa.NextResponsability(
  value: iResponsability): iResponsability;
begin
  Result := self;
  FResponsability := value;
end;

function TUsuarioCaixa.Responsability: iResponsability;
begin
  Result := Self;
end;

function TUsuarioCaixa.Resultado: string;
begin
  Result := FResultado;
end;

end.
