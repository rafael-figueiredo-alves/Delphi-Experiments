unit Visitor.model.Atacado;

interface

uses
  Visitor.model.interfaces;

Type
  TModelAtacado = Class(TInterfacedObject, iItemRegras, iVisitor)
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

{ TModelAtacado }

constructor TModelAtacado.Create;
begin

end;

destructor TModelAtacado.Destroy;
begin

  inherited;
end;

class function TModelAtacado.New: iItemRegras;
begin
  Result := Self.Create;
end;

function TModelAtacado.PrecoPromocao: Currency;
begin
  Result := (FItem.PrecoUnitario * 0.4);  //com 60% de desconto
end;

function TModelAtacado.PrecoVenda: Currency;
begin
  Result := (FItem.PrecoUnitario * 0.85); //com 15% de desconto
end;

function TModelAtacado.Visit(Value: iItem): iItemRegras;
begin
  FItem := Value;
  Result := self;
end;

function TModelAtacado.Visitor: iVisitor;
begin
  Result := Self;
end;

end.
