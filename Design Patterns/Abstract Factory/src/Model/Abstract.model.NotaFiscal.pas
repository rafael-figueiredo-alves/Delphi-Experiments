unit Abstract.model.NotaFiscal;

interface

uses
  Abstract.model.interfaces;

Type
  TModelNotaFiscal = Class(TInterfacedObject, iNotaFiscal)
    Private
    Public
     Constructor Create;
     Destructor Destroy; Override;
     Class function New: iNotaFiscal;
     Function numero : integer;
  End;

implementation

{ TModelNotaFiscal }

constructor TModelNotaFiscal.Create;
begin

end;

destructor TModelNotaFiscal.Destroy;
begin

  inherited;
end;

class function TModelNotaFiscal.New: iNotaFiscal;
begin
  Result := Self.Create;
end;

function TModelNotaFiscal.numero: integer;
begin
  Result := 1407;
end;

end.
