unit AbstractClass;

interface

Type
 TAbstractClass = class
   Protected
    FValor : integer;
    Function Calcular : integer; Virtual; Abstract;
   Public
    //Template Method
    Function Resultado : integer;
 end;

implementation

{ TAbstractClass }

function TAbstractClass.Resultado: integer;
begin
  FValor := 10;
  Result := Calcular;
end;

end.
