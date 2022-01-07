unit Interpreter.model.interfaces;

interface

type

 iContext = interface
   ['{E8156160-9D2F-4E0C-A2DC-A3C874F76D93}']
   Procedure SetEntrada (value: string);
   Function GetEntrada: string;
   Procedure SetSaida (Value: string);
   Function GetSaida: String;
   property Entrada: string read GetEntrada write SetEntrada;
   property Saida  : string read GetSaida   write SetSaida;
 end;

 iExpression = interface
   ['{4870F320-5805-42BD-B8FD-3D5B138D1C4D}']
   Function Interpreter (value: iContext) : iExpression;
 end;

 iSyntax = interface
   ['{8A03A9E7-2FE2-4807-A6A5-2B886C191281}']
   Function Process (value: string) : string;
 end;

implementation

end.
