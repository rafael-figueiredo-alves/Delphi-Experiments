unit Memento.model.mementoCareTaker;

interface

uses
  Memento.model.interfaces,
  System.Generics.Collections;

Type
  TModelMementoCareTaker = Class(TInterfacedObject, iMementoCareTaker<iNome>)
  Private
    FListaStates : TDictionary<string, iNome>;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iMementoCareTaker<iNome>;
    Function SaveState(Key: string; Value: iNome): iMementoCareTaker<iNome>;
    Function RestoreState(Key: String): iNome;
  End;

implementation

{ TModelMementoCareTaker }

constructor TModelMementoCareTaker.Create;
begin
  FListaStates := TDictionary<string, iNome>.create;
end;

destructor TModelMementoCareTaker.Destroy;
begin
  FListaStates.DisposeOf;
  inherited;
end;

class function TModelMementoCareTaker.New: iMementoCareTaker<iNome>;
begin
  Result := Self.Create;
end;

function TModelMementoCareTaker.RestoreState(Key: String): iNome;
begin
  Result := FListaStates.Items[Key];
end;

function TModelMementoCareTaker.SaveState(Key: string;
  Value: iNome): iMementoCareTaker<iNome>;
begin
  Result := self;
  FListaStates.Add(Key, Value);
end;

end.
