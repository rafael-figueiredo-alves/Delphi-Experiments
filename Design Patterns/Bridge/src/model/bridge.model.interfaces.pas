unit bridge.model.interfaces;

interface

type

 EFormato = (FormatoCSV, FormatoTXT);

 TVenda = record
   codigo : integer;
   produto : string;
 end;

 iExport<t> = interface;

 iSource<t> = interface
   ['{754A5FF8-6476-49BA-BC69-DC07A21A0748}']
   Function AddItem(Value: t) : iSource<t>;
   Function LimpaLista : iSource<t>;
   Function Exportar(Value : iExport<t>) : iSource<t>;
 end;

 iExport<t> = interface
   ['{18FEA7E5-CCB8-4205-BB03-4B3419F5CF5D}']
   Function Exportar(Value : t) : iExport<t>;
 end;

 iFactoryMethod = interface
   ['{E617C2BF-DA20-47B3-BAF7-ABD1FFA08E1D}']
   Function Vendas : iSource<tVenda>;
   Function Exportador(Value : eFormato) : iExport<tvenda>;
 end;

implementation

end.
