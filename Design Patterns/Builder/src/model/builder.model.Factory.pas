unit builder.model.Factory;

interface

uses
  builder.model.interfaces;

Type
  TFactory = Class(TInterfacedObject, iFactory)
  Private
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iFactory;
    Function Relatorio1: iProduct;
    Function Relatorio2: iProduct;
    Function Relatorio3: iProduct;
  End;

implementation

uses
  builder.model.Director, builder.model.BuilderReport1,
  builder.model.BuilderReport2, builder.model.BuilderReport3;

{ TFactory }

constructor TFactory.Create;
begin

end;

destructor TFactory.Destroy;
begin

  inherited;
end;

class function TFactory.New: iFactory;
begin
  Result := Self.Create;
end;

function TFactory.Relatorio1: iProduct;
Var
 Director : iDirector;
 Report1  : iBuilder;
begin
  Director := tDirector.New;
  Report1  := tbuilderreport1.New;
  Director.Construct(Report1);
  Result := Report1.Produto;
end;

function TFactory.Relatorio2: iProduct;
Var
 Director : iDirector;
 Report1  : iBuilder;
begin
  Director := tDirector.New;
  Report1  := tbuilderreport2.New;
  Director.Construct(Report1);
  Result := Report1.Produto;
end;

function TFactory.Relatorio3: iProduct;
Var
 Director : iDirector;
 Report1  : iBuilder;
begin
  Director := tDirector.New;
  Report1  := tbuilderreport3.New;
  Director.Construct(Report1);
  Result := Report1.Produto;
end;

end.
