unit builder.model.BuilderReport3;

interface

uses
  builder.model.interfaces;

Type
  TBuilderReport3 = Class(TInterfacedObject, iBuilder)
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

{ TBuilderReport3 }

function TBuilderReport3.Cabecalho: iBuilder;
begin
  Result := self;
  fProduto
        .AddTexto('Cabeçalho 0003')
        .AddTexto('-------------------');
end;

function TBuilderReport3.Corpo: iBuilder;
begin
  Result := self;
  fProduto
    .AddTexto('Corpo do relatório 03')
    .AddTexto('')
    .AddTexto('Corpo terminando ....')
    .AddTexto('Fim do corpo!!!!')
    .AddTexto('-----------------------');
end;

constructor TBuilderReport3.Create;
begin
  fProduto := tProduct.New;
end;

destructor TBuilderReport3.Destroy;
begin

  inherited;
end;

class function TBuilderReport3.New: iBuilder;
begin
  Result := Self.Create;
end;

function TBuilderReport3.Produto: iProduct;
begin
  Result := fProduto;
end;

function TBuilderReport3.Rodape: iBuilder;
begin
  Result := self;
  fProduto
    .AddTexto('RODAPÉ DO REPORT 03 - Davi Alves')
    .AddTexto(FormatDateTime('dd/mm/yyyy - hh:mm:ss', now));
end;

end.
