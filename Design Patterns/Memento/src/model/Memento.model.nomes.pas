unit Memento.model.nomes;

interface

uses
  Memento.model.interfaces;

Type
  TModelNomes = Class(TInterfacedObject, iNome, iMemento<iNome>)
  Private
    FNome: string;
    FMementoCareTaker : iMementoCareTaker<iNome>;
    Function GetNome: string;
    Procedure SetNome(Value: string);
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iNome;
    Property Nome : string read GetNome write SetNome;
    Function Memento : iMemento<iNome>;
    Function Save(Key: string): iMemento<iNome>;
    Function Restore(Key: string): iNome;
  End;

implementation

{ TModelNomes }

uses Memento.model.mementoCareTaker;

constructor TModelNomes.Create;
begin
  FMementoCareTaker := TModelMementoCareTaker.New;
end;

destructor TModelNomes.Destroy;
begin

  inherited;
end;

function TModelNomes.Memento: iMemento<iNome>;
begin
  Result := self;
end;

class function TModelNomes.New: iNome;
begin
  Result := Self.Create;
end;

Procedure TModelNomes.SetNome(Value: string);
begin
  FNome := Value;
end;

function TModelNomes.Restore(Key: string): iNome;
Var OldState : iNome;
begin
  OldState := FMementoCareTaker.RestoreState(key);
  Self.Nome := OldState.Nome;
  Result := Self;
end;

function TModelNomes.Save(Key: string): iMemento<iNome>;
Var NewState : iNome;
begin
  Result := Self;
  NewState := TModelNomes.New;
  NewState.Nome := Self.Nome;
  FMementoCareTaker.SaveState(Key, NewState);
end;

function TModelNomes.GetNome: string;
begin
  Result := FNome;
end;

end.
