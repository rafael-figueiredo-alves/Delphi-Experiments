unit TemplateMethod.model.somar;

interface

uses AbstractClass;

type
 tSomar = class(TAbstractClass)
   private
   protected
    Function Calcular : integer; override;
 end;

implementation


{ tMultiplicar }

function tSomar.Calcular: integer;
begin
  Result := FValor + 2;
end;

end.

