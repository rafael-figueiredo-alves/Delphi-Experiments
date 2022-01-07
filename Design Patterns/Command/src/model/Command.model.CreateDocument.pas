unit Command.model.CreateDocument;

interface

uses
  Command.model.interfaces;

Type
  TCreateDocumment = Class(TInterfacedObject, iCommand)
  Private
    FDocummentActions : iDocummentActions;
  Public
    Constructor Create(Value: iDocummentActions);
    Destructor Destroy; Override;
    Class function New(Value: iDocummentActions): iCommand;
    Function Execute: iCommand;
  End;

implementation

{ TCreateDocumment }

constructor TCreateDocumment.Create(Value: iDocummentActions);
begin
  FDocummentActions := Value;
end;

destructor TCreateDocumment.Destroy;
begin

  inherited;
end;

function TCreateDocumment.Execute: iCommand;
begin
  Result := self;
  FDocummentActions.CreateDocumment;
end;

class function TCreateDocumment.New(Value: iDocummentActions): iCommand;
begin
  Result := Self.Create(Value);
end;

end.
