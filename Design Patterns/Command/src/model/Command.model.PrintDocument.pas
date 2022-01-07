unit Command.model.PrintDocument;

interface

uses
  Command.model.interfaces;

Type
  TPrintDocumment = Class(TInterfacedObject, iCommand)
  Private
    FDocummentActions : iDocummentActions;
  Public
    Constructor Create(Value: iDocummentActions);
    Destructor Destroy; Override;
    Class function New(Value: iDocummentActions): iCommand;
    Function Execute: iCommand;
  End;

implementation

{ TPrintDocumment }

constructor TPrintDocumment.Create(Value: iDocummentActions);
begin
  FDocummentActions := Value;
end;

destructor TPrintDocumment.Destroy;
begin

  inherited;
end;

function TPrintDocumment.Execute: iCommand;
begin
  Result := self;
  FDocummentActions.PrintDocumment;
end;

class function TPrintDocumment.New(Value: iDocummentActions): iCommand;
begin
  Result := Self.Create(Value);
end;

end.
