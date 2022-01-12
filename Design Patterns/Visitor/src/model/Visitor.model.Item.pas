unit Visitor.model.Item;

interface

uses
  Visitor.model.interfaces;

Type
  TModelItem = Class(TInterfacedObject, iItem, iItemRegras, iVisitable)
  Private
    FVisitor : iVisitor;
    FPrecoUnitario : Currency;
    Procedure SetPrecoUnitario(Value : currency);
    Function GetPrecoUnitario: Currency;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iItem;
    Property PrecoUnitario : Currency read GetPrecoUnitario write SetPrecoUnitario;
    Function Regras: iVisitable;
    Function PrecoVenda: Currency;
    Function PrecoPromocao: Currency;
    Function Visitor: iVisitor;
    Function Accept(Value: iVisitor): iItemRegras;
    Procedure LimparMemoria;
  End;

implementation

uses
  Visitor.model.Varejo;

{ TModelItem }

function TModelItem.Accept(Value: iVisitor): iItemRegras;
begin
  FVisitor := Value;
  Result := FVisitor.Visit(self);
end;

constructor TModelItem.Create;
begin
  FVisitor := TModelVarejo.new.Visitor;
end;

destructor TModelItem.Destroy;
begin

  inherited;
end;

class function TModelItem.New: iItem;
begin
  Result := Self.Create;
end;

function TModelItem.PrecoPromocao: Currency;
begin
  Result := FVisitor.Visit(self).PrecoPromocao;
end;

Procedure TModelItem.SetPrecoUnitario(Value: Currency);
begin
  FPrecoUnitario := Value;
end;

function TModelItem.GetPrecoUnitario: Currency;
begin
  Result := FPrecoUnitario;
end;

procedure TModelItem.LimparMemoria;
begin
  FVisitor := nil;
end;

function TModelItem.PrecoVenda: Currency;
begin
  Result := FVisitor.Visit(self).PrecoVenda;
end;

function TModelItem.Regras: iVisitable;
begin
  Result := Self;
end;

function TModelItem.Visitor: iVisitor;
begin
  Result := FVisitor;
end;

end.
