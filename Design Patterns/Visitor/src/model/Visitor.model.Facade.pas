unit Visitor.model.Facade;

interface

uses
  Visitor.model.interfaces;

Type
  TModelFacade = Class(TInterfacedObject, iFacade)
  Private
    FModalidade : TModalidade;
    Function ModalidadeVenda : iVisitor;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iFacade;
    Function Modalidade(Value: TModalidade): iFacade;
    Function PrecoVenda(Value: currency): currency;
    Function PrecoPromocao(Value: currency): currency;
  End;

implementation

{ TModelFacade }

uses Visitor.model.Atacado, Visitor.model.Item, Visitor.model.Varejo;

constructor TModelFacade.Create;
begin

end;

destructor TModelFacade.Destroy;
begin

  inherited;
end;

function TModelFacade.Modalidade(Value: TModalidade): iFacade;
begin
   Result := Self;
   FModalidade := Value;
end;

function TModelFacade.ModalidadeVenda: iVisitor;
begin
  case FModalidade of
    Varejo: Result := TModelVarejo.New.Visitor;
    Atacado: Result := TModelAtacado.New.Visitor;
  end;
end;

class function TModelFacade.New: iFacade;
begin
  Result := Self.Create;
end;

function TModelFacade.PrecoPromocao(Value: currency): currency;
var FItem : iItem;
begin
  FItem := TModelItem.New;
  FItem.PrecoUnitario := Value;
  Result := FItem
   .Regras
    .Accept(ModalidadeVenda)
   .PrecoPromocao;
  FItem.LimparMemoria;
end;

function TModelFacade.PrecoVenda(Value: currency): currency;
var FItem : iItem;
begin
  FItem := TModelItem.New;
  FItem.PrecoUnitario := Value;
  Result := FItem
   .Regras
    .Accept(ModalidadeVenda)
   .PrecoVenda;
  FItem.LimparMemoria;
end;

end.
