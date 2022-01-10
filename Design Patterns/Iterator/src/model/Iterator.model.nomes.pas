unit Iterator.model.nomes;

interface

uses
  Iterator.model.interfaces,
  System.Generics.Collections;

Type
  TModelNomes = Class(TInterfacedObject, iNomes)
  Private
    FEscrever   : TEscreverNomes;
    FListaNomes : tList<iNome>;
    FIterator   : iIterator;
    Procedure CriarLista;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iNomes;
    Function ListarNomes: iNomes;
    Function Nomes : iIterator;
    Function EscreveNomes(Value: TEscreverNomes): iNomes;
  End;

implementation

{ TModelNomes }

uses Iterator.model.nome, Iterator.model.iterator;

constructor TModelNomes.Create;
begin
  CriarLista;
  FIterator := TModelIterator.New(FListaNomes);
end;

procedure TModelNomes.CriarLista;
begin
  FListaNomes := TList<iNome>.create;
  FListaNomes.Add(TModelNome.New.Nome('Rafael'));
  FListaNomes.Add(TModelNome.new.Nome('Rafaela'));
  FListaNomes.Add(TModelNome.new.Nome('Jailza'));
  FListaNomes.Add(TModelNome.New.Nome('Davi'));
end;

destructor TModelNomes.Destroy;
begin
  FListaNomes.DisposeOf;
  inherited;
end;

function TModelNomes.EscreveNomes(Value: TEscreverNomes): iNomes;
begin
  Result := self;
  FEscrever := Value;
end;

function TModelNomes.ListarNomes: iNomes;
begin
   Result := Self;
   while not FIterator.HasNext do
    FEscrever(FIterator.Next.Nome);
end;

class function TModelNomes.New: iNomes;
begin
  Result := Self.Create;
end;

function TModelNomes.Nomes: iIterator;
begin
  Result := FIterator;
end;

end.
