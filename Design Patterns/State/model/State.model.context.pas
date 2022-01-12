unit State.model.context;

interface

uses
  State.model.interfaces;

Type
  TContext = Class(TInterfacedObject, iContext)
  Private
    FState: iState;
    Procedure AlterarState;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iContext;
    Function AddCompra(Value: Currency): iContext;
    Function RemoveCompra(Value: Currency): iContext;
    Function TotalGasto: string;
    Function Categoria: string;
  End;

implementation

{ TContext }

uses State.model.StateComum,
     State.model.StatePlus,
     State.model.StatePremium;

function TContext.AddCompra(Value: Currency): iContext;
begin
  Result := self;
  FState.AddCompra(Value);
  AlterarState;
end;

procedure TContext.AlterarState;
Var Total : Currency;
begin
  Total := FState.Total;

  if (Total <= 300) then
   begin
     FState := TStateComum.New(total);
     Exit
   end;

   if (Total <= 1000) then
    begin
      FState := TStatePlus.New(total);
      Exit
    end;

    FState := TStatePremium.New(total);
end;

function TContext.Categoria: string;
begin
  Result := FState.Categoria;
end;

constructor TContext.Create;
begin
  FState := TStateComum.New(0);
end;

destructor TContext.Destroy;
begin

  inherited;
end;

class function TContext.New: iContext;
begin
  Result := Self.Create;
end;

function TContext.RemoveCompra(Value: Currency): iContext;
begin
  Result := Self;
  FState.RemoveCompra(Value);
  AlterarState;
end;

function TContext.TotalGasto: string;
begin
  Result := FState.TotalGasto;
end;

end.
