unit Command.model.Facade;

interface

uses
  Command.model.interfaces;

Type
  TModelFacade = Class(TInterfacedObject, iFacade)
  Private
    FDocummentActions : iDocummentActions;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iFacade;
    Function ExecutarTudo: iFacade;
    Function Salvar: iFacade;
    Function Imprimir: iFacade;
    Function Mostrar(Value: TListarAcoes): iFacade;
  End;

implementation

{ TModelFacade }

uses
     Command.model.DocummentActions,
     Command.model.invoker,
     Command.model.CreateDocument,
     Command.model.PrintDocument,
     Command.model.SaveDocument;

constructor TModelFacade.Create;
begin
  FDocummentActions := TDocummentActions.New;
end;

destructor TModelFacade.Destroy;
begin

  inherited;
end;

function TModelFacade.ExecutarTudo: iFacade;
begin
  Result := self;
  TInvoker.New
    .Add(TCreateDocumment.New(FDocummentActions))
    .Add(TSaveDocumment.New(FDocummentActions))
    .Add(TPrintDocumment.New(FDocummentActions))
    .ExecuteAll;
end;

function TModelFacade.Imprimir: iFacade;
begin
  Result := self;
  TInvoker.New
    .Add(TCreateDocumment.New(FDocummentActions))
    .Add(TPrintDocumment.New(FDocummentActions))
    .ExecuteAll;
end;

function TModelFacade.Mostrar(Value: TListarAcoes): iFacade;
begin
  Result := self;
  FDocummentActions.ListarAcoes(value)
end;

class function TModelFacade.New: iFacade;
begin
  Result := Self.Create;
end;

function TModelFacade.Salvar: iFacade;
begin
  Result := self;
  TInvoker.New
    .Add(TCreateDocumment.New(FDocummentActions))
    .Add(TSaveDocumment.New(FDocummentActions))
    .ExecuteAll;
end;

end.
