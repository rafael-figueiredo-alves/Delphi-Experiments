unit singleton.model.Data;

interface

uses
  singleton.model.interfaces;

Type
  TModelData = Class(TInterfacedObject, iData)
  Private
    class var FInstance : iData;
    FData: string;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iData;
    Function Data: string; overload;
    Function Data(value: string): iData; overload;
  End;

implementation

{ TModelData }

constructor TModelData.Create;
begin

end;

function TModelData.Data(value: string): iData;
begin
  Result := self;
  FData := value;
end;

function TModelData.Data: string;
begin
  if FData <> '' then
    Result := FData
  else
    Result := '27/12/2021';
end;

destructor TModelData.Destroy;
begin

  inherited;
end;

class function TModelData.New: iData;
begin
  if not Assigned(FInstance) then
   FInstance := Self.Create;
  Result := FInstance;
end;

end.
