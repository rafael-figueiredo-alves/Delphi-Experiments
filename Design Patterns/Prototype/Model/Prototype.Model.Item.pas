unit Prototype.Model.Item;

interface

uses
  Prototype.Model.Interfaces;

Type
  TModelItem = Class(TInterfacedObject, iItem, iPrototype<iItem>)
    Private
     FCodigo : integer;
     Fdescricao : string;
    Public
     Constructor Create;
     Destructor Destroy; Override;
     Class function New: iItem;
     Function Codigo(Value: integer): iItem; overload;
     Function Codigo: integer; overload;
     Function Descricao(Value: string): iItem; overload;
     Function Descricao: string; overload;
     Function Prototype: iPrototype<iItem>;
     Function Clone : iItem;
  End;

implementation

{ TModelItem }

function TModelItem.Clone: iItem;
begin
  Result := TModelItem.New;
  Result.Codigo(FCodigo);
  Result.Descricao(Fdescricao);
end;

function TModelItem.Codigo: integer;
begin
  Result := FCodigo;
end;

function TModelItem.Codigo(Value: integer): iItem;
begin
  Result := self;
  FCodigo := value;
end;

constructor TModelItem.Create;
begin

end;

function TModelItem.Descricao: string;
begin
  Result := Fdescricao;
end;

function TModelItem.Descricao(Value: string): iItem;
begin
  Result := self;
  Fdescricao := Value;
end;

destructor TModelItem.Destroy;
begin

  inherited;
end;

class function TModelItem.New: iItem;
begin
  Result := Self.Create;
end;

function TModelItem.Prototype: iPrototype<iItem>;
begin
  Result := self;
end;

end.
