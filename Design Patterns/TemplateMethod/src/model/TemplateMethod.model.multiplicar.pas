unit TemplateMethod.model.multiplicar;

interface

uses AbstractClass;

type
 tMultiplicar = class(TAbstractClass)
   private
   protected
    Function Calcular : integer; override;
 end;

implementation


{ tMultiplicar }

function tMultiplicar.Calcular: integer;
begin
  Result := FValor * 2;
end;

end.
