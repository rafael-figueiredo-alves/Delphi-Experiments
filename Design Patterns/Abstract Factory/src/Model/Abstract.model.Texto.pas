unit Abstract.model.Texto;

interface

uses
  Abstract.model.interfaces;

Type
  TModelTexto = Class(TInterfacedObject, iTexto)
    Private
    Public
     Constructor Create;
     Destructor Destroy; Override;
     Class function New: iTexto;
     Function Texto : string;
  End;

implementation

{ TModelTexto }

constructor TModelTexto.Create;
begin

end;

destructor TModelTexto.Destroy;
begin

  inherited;
end;

class function TModelTexto.New: iTexto;
begin
  Result := Self.Create;
end;

function TModelTexto.Texto: string;
begin
  Result := 'Texto exemplo lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum';
end;

end.
