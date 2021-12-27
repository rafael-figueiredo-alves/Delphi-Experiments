unit singleton.model.interfaces;

interface

type
 iData = interface
   ['{8194F6BE-DF64-4D77-931C-40C1F0CEF4B2}']
   Function data: string; overload;
   Function data(value: string): iData; overload;
 end;

implementation

end.
