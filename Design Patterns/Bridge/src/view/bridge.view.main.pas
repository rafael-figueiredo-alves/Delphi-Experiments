unit bridge.view.main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo,
  bridge.model.interfaces;

type
  TForm7 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button3: TButton;
    Memo1: TMemo;
    Button4: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    Vendas : iSource<tvenda>;
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses
  bridge.model.FactoryMethod;

{$R *.fmx}

procedure TForm7.Button1Click(Sender: TObject);
begin
  Vendas
    .Exportar(
     TModelFactoryMethod.New.Exportador(FormatoCSV)
    );
  ShowMessage('Exportado para CSV com sucesso');
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
  Vendas
    .Exportar(
      TModelFactoryMethod.New.Exportador(FormatoTXT)
    );
  ShowMessage('Exportado para TXT com sucesso');
end;

procedure TForm7.Button3Click(Sender: TObject);
Var
 Venda : TVenda;
begin
  Venda.codigo := edit1.Text.ToInteger;
  Venda.produto := Edit2.Text;
  Vendas.AddItem(Venda);
  Memo1.Lines.Add(Venda.codigo.ToString + ' - ' + Venda.produto);
  Edit1.Text := '';
  Edit2.Text := '';
  Edit1.SetFocus;
end;

procedure TForm7.Button4Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Vendas.LimpaLista;
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
  vendas := tModelFactoryMethod.New.Vendas;
  Edit1.SetFocus;
end;

end.
