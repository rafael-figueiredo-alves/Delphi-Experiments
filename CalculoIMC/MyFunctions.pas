unit MyFunctions;

interface
 function ConverteEntrada(const valor: string): Real;
 function CalculaIMC(const Peso, Altura: Real): string;
 function SituacaoIMC(const IMC: string): string;

implementation

Uses system.StrUtils, System.SysUtils;

function ConverteEntrada(const valor: string): Real;
const EmptyStr = '';
begin        
  if valor = EmptyStr then
   Result := 1 //Para evitar erros
  else
   begin 
    ReplaceStr(valor, ',', '.');
    Result := StrToFloat(valor);
   end;
end;

function CalculaIMC(const Peso, Altura: Real): string;
var
 IMC: Real;
begin
  IMC := Peso / (Altura * Altura);
  Result := FormatFloat('#,0.00', IMC);
end;

function SituacaoIMC(const IMC: string): string;
var
 vIMC: Real;
begin
  vIMC := StrToFloat(imc);
  if (vIMC < 17) then
   Result := 'Muito abaixo do peso'
  else if ((vIMC >= 17) and (vIMC <= 18.49)) then
    Result := 'Abaixo do peso'
   else if ((vIMC >= 18.5) and (vIMC <= 24.99)) then
    Result := 'Peso normal'
   else if ((vIMC >= 25) and (vIMC <= 29.99)) then
    Result := 'Acima do peso'
   else if ((vIMC >= 30) and (vIMC <= 34.99)) then
    Result := 'Obesidade I'
   else if ((vIMC >= 35) and (vIMC <= 39.99)) then
    Result := 'Obesidade II (severa)'
   else
    Result := 'Obesidade III (mórbida)';
end;

end.
