unit builder.model.BuilderReport2;

interface

uses
  builder.model.interfaces;

Type
  TBuilderReport2 = Class(TInterfacedObject, iBuilder)
  Private
    fProduto : iProduct;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    Class function New: iBuilder;
    Function Cabecalho: iBuilder;
    Function Corpo: iBuilder;
    Function Rodape: iBuilder;
    Function Produto: iProduct;
  End;

implementation

uses
  builder.model.product, System.SysUtils;

{ TBuilderReport2 }

function TBuilderReport2.Cabecalho: iBuilder;
begin
  Result := self;
  fProduto
        .AddTexto('Cabeçalho 0002')
        .AddTexto('##############');
end;

function TBuilderReport2.Corpo: iBuilder;
begin
  Result := self;
  fProduto
    .AddTexto('Corpo do relatório 02')
    .AddTexto('')
    .AddTexto('X')
    .AddTexto('')
    .AddTexto('Fim do corpo...')
    .AddTexto('########################');
end;

constructor TBuilderReport2.Create;
begin
  fProduto := tProduct.New;
end;

destructor TBuilderReport2.Destroy;
begin

  inherited;
end;

class function TBuilderReport2.New: iBuilder;
begin
  Result := Self.Create;
end;

function TBuilderReport2.Produto: iProduct;
begin
  Result := fProduto;
end;

function TBuilderReport2.Rodape: iBuilder;
begin
  Result := self;
  fProduto
    .AddTexto('RODAPÉ DO REPORT 02 - Rafaela Alves')
    .AddTexto(FormatDateTime('hh:mm:ss - dd/mm/yyyy', now));
end;

end.
