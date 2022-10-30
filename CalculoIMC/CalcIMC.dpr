program CalcIMC;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  MyFunctions in 'MyFunctions.pas';

var
 Peso       : Real;
 Altura     : Real;
 Entrada    : string;
 IMCTexto   : string;
 Enter      : char;

begin
  Writeln('=========================================================');
  Writeln('########     CALCULADORA DE IMC - DELPHI     ############');
  Writeln('=========================================================');
  Writeln('');
  Writeln('Informe seu peso:');
  Readln(entrada);
  Peso := ConverteEntrada(entrada);
  Writeln('Informe sua altura:');
  Readln(entrada);
  Altura := ConverteEntrada(Entrada);
  IMCTexto := CalculaIMC(Peso, Altura);
  Writeln('Seu IMC é igual a ', IMCTexto);
  Writeln('=========================================================');
  writeln(SituacaoIMC(IMCTexto));
  Writeln('');
  Writeln('');
  Writeln('Pressione [ENTER] para sair!');
  Readln(Enter);
end.
