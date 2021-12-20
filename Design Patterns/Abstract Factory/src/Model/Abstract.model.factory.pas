unit Abstract.model.factory;

interface

uses
  Abstract.model.interfaces;

Type
  TModelFactory = Class(TInterfacedObject, iFactory)
    Private
    Public
     Constructor Create;
     Destructor Destroy; Override;
     Class function New: iFactory;
     Function Pessoa: iPessoa;
     Function NotaFiscal: iNotaFiscal;
     Function Texto: iTexto;
  End;

implementation

uses
  Abstract.model.Pessoa, Abstract.model.NotaFiscal, Abstract.model.Texto;

constructor TModelFactory.Create;
begin

end;

destructor TModelFactory.Destroy;
begin

  inherited;
end;

class function TModelFactory.New: iFactory;
begin
  Result := Self.Create;
end;

function TModelFactory.NotaFiscal: iNotaFiscal;
begin
  Result := TModelNotafiscal.new;
end;

function TModelFactory.Pessoa: iPessoa;
begin
  Result := TModelPessoa.new;
end;

function TModelFactory.Texto: iTexto;
begin
  Result := TModelTexto.new;
end;

end.
