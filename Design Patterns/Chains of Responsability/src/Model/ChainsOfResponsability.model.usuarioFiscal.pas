unit ChainsOfResponsability.model.usuarioFiscal;

interface

uses ChainsOfResponsability.model.interfaces;

Type
  TUsuarioFiscal = Class(TInterfacedObject, iUsuario, iResponsability)
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

{ TUsuarioFiscal }

constructor TUsuarioFiscal.Create;
begin

end;

function TUsuarioFiscal.Desconto(value: currency): iResponsability;
begin
  Result := Self;

  if value <= 30 then
   begin
    FResultado := 'Desconto pode ser concedido pelo Fiscal!';
    Exit;
   end;

   if not Assigned(FResponsability) then
    begin
     FResultado := 'Operação não pode ser realizada! Sorry!';
     Exit;
    end;

   FResultado := FResponsability.Desconto(value).Resultado;

end;

destructor TUsuarioFiscal.Destroy;
begin

  inherited;
end;

class function TUsuarioFiscal.New: iUsuario;
begin
  Result := Self.Create;
end;

function TUsuarioFiscal.NextResponsability(
  value: iResponsability): iResponsability;
begin
  Result := self;
  FResponsability := value;
end;

function TUsuarioFiscal.Responsability: iResponsability;
begin
  Result := Self;
end;

function TUsuarioFiscal.Resultado: string;
begin
  Result := FResultado;
end;

end.
