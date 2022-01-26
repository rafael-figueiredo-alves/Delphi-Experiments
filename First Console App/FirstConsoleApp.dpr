program FirstConsoleApp;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils, crt;

type
 Comandos = (tpCmdExit, tpCmdOutro);

var
 Fim : boolean;
 Retorno : string;

begin
  try
   Fim := False;
   while (fim <> true) do
   begin
     ClrScr
     writeln('Olá, tudo bem?');
     writeln('Pressione uma tecla para sair');
     Readln(retorno);
     writeln(retorno);
     if retorno = '1' then
      Fim := True
     else
      Continue;
   end;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
