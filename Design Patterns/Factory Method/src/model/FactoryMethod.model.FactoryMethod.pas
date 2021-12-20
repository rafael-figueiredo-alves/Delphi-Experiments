unit FactoryMethod.model.FactoryMethod;

interface

Uses FactoryMethod.model.interfaces;

type

 Eidioma = (Ingles, Portugues, Espanhol, Italiano, Alemao, Frances);
 Function DigaOla (idioma : Eidioma) : iIdioma;

implementation

uses
  FactoryMethod.model.ingles,
  FactoryMethod.model.portugues, FactoryMethod.model.espanhol,
  FactoryMethod.model.italiano, FactoryMethod.model.alemao,
  FactoryMethod.model.frances;

Function DigaOla (idioma : Eidioma) : iIdioma;
begin
  case idioma of
    Ingles: Result := TModelIngles.new;
    Portugues: Result := TModelPortugues.new;
    Espanhol: Result := TModelEspanhol.new;
    Italiano: Result := TModelItaliano.new;
    Alemao: Result := TModelAlemao.new;
    Frances: Result := TModelFrances.new;
  end;
end;

end.
