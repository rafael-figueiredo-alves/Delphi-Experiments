unit Visitor.model.Varejo;

interface

uses
  Visitor.model.interfaces;

Type
  TModelVarejo = Class(TInterfacedObject, iItemRegras, iVisitor)
  Private
    FItem : iItem;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iItemRegras;
    Function PrecoVenda: Currency;
    Function PrecoPromocao: Currency;
    Function Visitor: iVisitor;
    Function Visit(Value: iItem): iItemRegras;
  End;

implementation

{ TModelVarejo }

constructor TModelVarejo.Create;
begin

end;

destructor TModelVarejo.Destroy;
begin

  inherited;
end;

class function TModelVarejo.New: iItemRegras;
begin
  Result := Self.Create;
end;

function TModelVarejo.PrecoPromocao: Currency;
begin
  Result := (FItem.PrecoUnitario * 0.75);  //com 25% de desconto
end;

function TModelVarejo.PrecoVenda: Currency;
begin
  Result := (FItem.PrecoUnitario * 1); //sem desconto
end;

function TModelVarejo.Visit(Value: iItem): iItemRegras;
begin
  FItem := Value;
  Result := self;
end;

function TModelVarejo.Visitor: iVisitor;
begin
  Result := Self;
end;

end.
