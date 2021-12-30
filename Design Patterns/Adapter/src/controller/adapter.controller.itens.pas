unit adapter.controller.itens;

interface

uses
  adapter.controller.interfaces,
  adapter.model.interfaces,
  System.Generics.Collections;

Type
  TControllerItens = Class(TInterfacedObject, iControllerItens)
  Private
    FLista : tList<tItens>;
    FModelItens : iModelItens;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iControllerItens;
    Function Add(value: TItens): iControllerItens;
    Function LimparLista: iControllerItens;
    Function itens: tList<TItens>;
  End;

implementation

uses
  adapter.model.Itens;

{ TControllerItens }

function TControllerItens.Add(value: TItens): iControllerItens;
begin
  Result := self;
  FModelItens.Add(
   TModelItens.New
                .Produto(value.Produto)
                .Preço(value.Preço)
  );
end;

constructor TControllerItens.Create;
begin
  FLista := TList<TItens>.create;
  FModelItens := tmodelItens.New;
end;

destructor TControllerItens.Destroy;
begin
  FLista.DisposeOf;
  inherited;
end;

function TControllerItens.itens: tList<TItens>;
var
  I: Integer;
  Item : TItens;
begin
  FLista.Clear;
  for I := 0 to Pred(FModelItens.Itens.Count) do
   begin
     Item.Produto := FModelItens.Itens[i].Produto;
     Item.Preço   := FModelItens.Itens[i].Preço;
     FLista.Add(Item);
   end;
   Result := FLista;
end;

function TControllerItens.LimparLista: iControllerItens;
begin
  Result := self;
  FLista.Clear;
  FModelItens.LimparLista;
end;

class function TControllerItens.New: iControllerItens;
begin
  Result := Self.Create;
end;

end.
