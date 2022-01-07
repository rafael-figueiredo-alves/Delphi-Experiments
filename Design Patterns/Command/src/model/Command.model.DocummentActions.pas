unit Command.model.DocummentActions;

interface

uses
  Command.model.interfaces;

Type
  TDocummentActions = Class(TInterfacedObject, iDocummentActions)
  Private
    FListar : TListarAcoes;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iDocummentActions;
    Function CreateDocumment: iDocummentActions;
    Function SaveDocumment: iDocummentActions;
    function PrintDocumment: iDocummentActions;
    Function ListarAcoes(Value: TListarAcoes): iDocummentActions;
  End;

implementation

{ TDocummentActions }

constructor TDocummentActions.Create;
begin

end;

function TDocummentActions.CreateDocumment: iDocummentActions;
begin
  Result := Self;
  FListar('Documento foi CRIADO com sucesso!');
end;

destructor TDocummentActions.Destroy;
begin

  inherited;
end;

function TDocummentActions.ListarAcoes(Value: TListarAcoes): iDocummentActions;
begin
  Result := self;
  FListar := Value;
end;

class function TDocummentActions.New: iDocummentActions;
begin
  Result := Self.Create;
end;

function TDocummentActions.PrintDocumment: iDocummentActions;
begin
  Result := self;
  FListar('Documento sendo IMPRESSO com sucesso!');
end;

function TDocummentActions.SaveDocumment: iDocummentActions;
begin
  Result := self;
  FListar('Documento SALVO com sucesso!');
end;

end.
