unit ChainsOfResponsability.model.item;

interface

uses
  ChainsOfResponsability.model.interfaces;

Type
  TModelItem = Class(TInterfacedObject, iItem, iOperacoes)
  Private
    FResultado : string;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iItem;
    Function Operacoes: iOperacoes;
    Function Desconto(Value: currency): iOperacoes;
    Function Resultado : string;
    Function &End: iItem;
  End;

implementation

{ TModelItem }

uses ChainsOfResponsability.model.usuarioCaixa,
  ChainsOfResponsability.model.usuarioFiscal,
  ChainsOfResponsability.model.usuarioGerente;

function TModelItem.&End: iItem;
begin
  Result := self;
end;

constructor TModelItem.Create;
begin

end;

function TModelItem.Desconto(Value: currency): iOperacoes;
begin
  Result := self;
  FResultado := TUsuarioCaixa.New
                 .Responsability
                  .NextResponsability(
                    TUsuarioFiscal.new
                     .Responsability
                      .NextResponsability(
                        TUsuarioGerente.New
                         .Responsability
                          .NextResponsability(nil)
                         )
                 ).Desconto(Value).Resultado;
end;

destructor TModelItem.Destroy;
begin

  inherited;
end;

class function TModelItem.New: iItem;
begin
  Result := Self.Create;
end;

function TModelItem.Operacoes: iOperacoes;
begin
  Result := Self;
end;

function TModelItem.Resultado: string;
begin
  Result := FResultado;
end;

end.
