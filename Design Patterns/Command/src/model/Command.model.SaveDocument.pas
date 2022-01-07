unit Command.model.SaveDocument;

interface

uses
  Command.model.interfaces;

Type
  TSaveDocumment = Class(TInterfacedObject, iCommand)
  Private
    FDocummentActions : iDocummentActions;
  Public
    Constructor Create(Value: iDocummentActions);
    Destructor Destroy; Override;
    Class function New(Value: iDocummentActions): iCommand;
    Function Execute: iCommand;
  End;

implementation

{ TSaveDocumment }

constructor TSaveDocumment.Create(Value: iDocummentActions);
begin
  FDocummentActions := Value;
end;

destructor TSaveDocumment.Destroy;
begin

  inherited;
end;

function TSaveDocumment.Execute: iCommand;
begin
  Result := self;
  FDocummentActions.SaveDocumment;
end;

class function TSaveDocumment.New(Value: iDocummentActions): iCommand;
begin
  Result := Self.Create(Value);
end;

end.
