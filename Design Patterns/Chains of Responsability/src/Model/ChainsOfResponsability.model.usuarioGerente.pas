unit ChainsOfResponsability.model.usuarioGerente;

interface

uses ChainsOfResponsability.model.interfaces;

Type
  TUsuarioGerente = Class(TInterfacedObject, iUsuario, iResponsability)
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

{ TUsuarioGerente }

constructor TUsuarioGerente.Create;
begin

end;

function TUsuarioGerente.Desconto(value: currency): iResponsability;
begin
  Result := Self;

  if value <= 70 then
   begin
    FResultado := 'Desconto pode ser concedido pelo Gerente!';
    Exit;
   end;

   FResultado := 'Operação não pode ser realizada! Sorry!'

end;

destructor TUsuarioGerente.Destroy;
begin

  inherited;
end;

class function TUsuarioGerente.New: iUsuario;
begin
  Result := Self.Create;
end;

function TUsuarioGerente.NextResponsability(
  value: iResponsability): iResponsability;
begin
  Result := self;
  FResponsability := value;
end;

function TUsuarioGerente.Responsability: iResponsability;
begin
  Result := Self;
end;

function TUsuarioGerente.Resultado: string;
begin
  Result := FResultado;
end;

end.
