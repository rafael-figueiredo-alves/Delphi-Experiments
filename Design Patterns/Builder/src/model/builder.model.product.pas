unit builder.model.product;

interface

uses
  builder.model.interfaces, System.Classes;

Type
  TProduct = Class(TInterfacedObject, iProduct)
  Private
    FTexto: Tstringlist;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iProduct;
    Function AddTexto(Value: string): iProduct;
    Function Resultado: Tstringlist;
  End;

implementation

{ TProduct }

function TProduct.AddTexto(Value: string): iProduct;
begin
  Result := self;
  FTexto.Add(Value);
end;

constructor TProduct.Create;
begin
  FTexto := TStringList.Create;
end;

destructor TProduct.Destroy;
begin
  FTexto.DisposeOf;
  inherited;
end;

class function TProduct.New: iProduct;
begin
  Result := Self.Create;
end;

function TProduct.Resultado: Tstringlist;
begin
  Result := FTexto;
end;

end.
