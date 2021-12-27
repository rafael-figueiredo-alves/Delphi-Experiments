unit builder.model.BuilderReport1;

interface

uses
  builder.model.interfaces;

Type
  TBuilderReport1 = Class(TInterfacedObject, iBuilder)
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

{ TBuilderReport1 }

function TBuilderReport1.Cabecalho: iBuilder;
begin
  Result := self;
  fProduto
        .AddTexto('Cabeçalho 0001')
        .AddTexto('##############');
end;

function TBuilderReport1.Corpo: iBuilder;
begin
  Result := self;
  fProduto
    .AddTexto('Corpo do relatório 01')
    .AddTexto('')
    .AddTexto('')
    .AddTexto('Fim do corpo...')
    .AddTexto('########################');
end;

constructor TBuilderReport1.Create;
begin
  fProduto := tProduct.New;
end;

destructor TBuilderReport1.Destroy;
begin

  inherited;
end;

class function TBuilderReport1.New: iBuilder;
begin
  Result := Self.Create;
end;

function TBuilderReport1.Produto: iProduct;
begin
  Result := fProduto;
end;

function TBuilderReport1.Rodape: iBuilder;
begin
  Result := self;
  fProduto
    .AddTexto('RODAPÉ DO REPORT 01 - Rafael Alves')
    .AddTexto(FormatDateTime('dd/mm/yyyy - hh:mm:ss', now));
end;

end.
