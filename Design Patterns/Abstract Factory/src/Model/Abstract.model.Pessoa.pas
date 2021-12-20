unit Abstract.model.Pessoa;

interface

uses
  Abstract.model.interfaces;

Type
  TModelPessoa = Class(TInterfacedObject, iPessoa)
    Private
    Public
     Constructor Create;
     Destructor Destroy; Override;
     Class function New: iPessoa;
     Function Nome : string;
  End;

implementation

{ TModelPessoa }

constructor TModelPessoa.Create;
begin

end;

destructor TModelPessoa.Destroy;
begin

  inherited;
end;

class function TModelPessoa.New: iPessoa;
begin
  Result := Self.Create;
end;

function TModelPessoa.Nome: string;
begin
  Result := 'Rafael de Figueiredo Alves';
end;

end.
