unit Prototype.Model.ListaItens;

interface

uses
  Prototype.Model.Interfaces,
  System.Generics.Collections;

Type
  TModelListaItens = Class(TInterfacedObject, iListaItens)
    Private
     FLista : tList<iItem>;
     FRegistraItem : TRegistraItem;
    Public
     Constructor Create;
     Destructor Destroy; Override;
     Class function New: iListaItens;
     Function AdicionarItem(Codigo: integer; Descricao: string): iListaItens;
     Function RepetirÚltimoItem: iListaItens;
     Function RegistrarItem(Value: TRegistraItem): iListaItens;
  End;

implementation

uses
  Prototype.Model.Item,
  System.SysUtils;

{ TModelListaItens }

function TModelListaItens.AdicionarItem(Codigo: integer;
  Descricao: string): iListaItens;
Var
 Item : iItem;
begin
  Result := self;
  Item := tModelItem.New;
  Item.Codigo(Codigo);
  Item.Descricao(Descricao);
  Flista.Add(Item);
  FRegistraItem(inttostr(Item.Codigo) + ' - ' + item.Descricao);
end;

constructor TModelListaItens.Create;
begin
  FLista := TList<iItem>.create;
end;

destructor TModelListaItens.Destroy;
begin
  Flista.DisposeOf;
  inherited;
end;

class function TModelListaItens.New: iListaItens;
begin
  Result := Self.Create;
end;

function TModelListaItens.RegistrarItem(Value: TRegistraItem): iListaItens;
begin
  Result := Self;
  FRegistraItem := Value;
end;

function TModelListaItens.RepetirÚltimoItem: iListaItens;
begin
  Result := self;
  FLista.Add(FLista[Pred(FLista.Count)].Prototype.Clone);
  FRegistraItem(inttostr(FLista[Pred(FLista.Count)].Codigo) + ' - ' + FLista[Pred(FLista.Count)].Descricao);
end;

end.
