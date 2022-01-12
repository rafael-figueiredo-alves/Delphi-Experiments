unit Strategy.model.helper;

interface

type
  tDesconto = (Domingo, Segunda, Terça, Quarta, Quinta, Sexta, Sábado);

  THelperDesconto = record helper for tDesconto
    function DarDesconto(Value: currency): currency;
  end;

implementation

{ THelperDesconto }

function THelperDesconto.DarDesconto(Value: currency): currency;
begin
  case self of
    Domingo:
      Result := Value - (Value * 0.10);
    Segunda:
      Result := Value - (Value * 0.15);
    Terça:
      Result := Value - (Value * 0.2);
    Quarta:
      Result := Value - (Value * 0.3);
    Quinta:
      Result := Value - (Value * 0.4);
    Sexta:
      Result := Value - (Value * 0.5);
    Sábado:
      Result := Value - (Value * 0.75);
  end;
end;

end.
