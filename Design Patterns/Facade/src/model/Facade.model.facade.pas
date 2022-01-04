unit Facade.model.facade;

interface

uses
  Facade.model.interfaces;

Type
  TModelFacade = Class(TInterfacedObject, iFacade)
  Private
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iFacade;
    Function MsgSimples: string;
    Function MsgComDecor1: string;
    Function MsgComDecor1e2: string;
    Function MsgDecor1e2: string;
  End;

implementation

uses
  Facade.model.mensagem1, Facade.model.mensagem, Facade.model.mensagem2;

{ TModelFacade }

constructor TModelFacade.Create;
begin

end;

destructor TModelFacade.Destroy;
begin

  inherited;
end;

function TModelFacade.MsgComDecor1: string;
begin
   Result := TModelMensagem1.New(tModelMensagem.New(nil)).MontarMensagem;
end;

function TModelFacade.MsgComDecor1e2: string;
begin
  Result := TModelMensagem2.New(TModelMensagem1.New(TModelMensagem.New(nil))).MontarMensagem;
end;

function TModelFacade.MsgDecor1e2: string;
begin
   Result := TModelMensagem2.New(TModelMensagem1.New(nil)).MontarMensagem;
end;

function TModelFacade.MsgSimples: string;
begin
  Result := TModelMensagem.New(nil).MontarMensagem;
end;

class function TModelFacade.New: iFacade;
begin
  Result := Self.Create;
end;

end.
