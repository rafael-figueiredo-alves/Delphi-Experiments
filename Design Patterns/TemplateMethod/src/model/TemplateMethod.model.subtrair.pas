unit TemplateMethod.model.subtrair;

interface

uses AbstractClass;

type
 tsubtrair = class(TAbstractClass)
   private
   protected
    Function Calcular : integer; override;
 end;

implementation


{ tMultiplicar }

function tsubtrair.Calcular: integer;
begin
  Result := FValor - 2;
end;

end.

