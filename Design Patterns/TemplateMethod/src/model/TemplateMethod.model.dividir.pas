unit TemplateMethod.model.dividir;

interface

uses AbstractClass;

type
 tdividir = class(TAbstractClass)
   private
   protected
    Function Calcular : integer; override;
 end;

implementation


{ tMultiplicar }

function tdividir.Calcular: integer;
begin
  Result := FValor div 2;
end;

end.
