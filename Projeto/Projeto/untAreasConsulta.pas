unit untAreasConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloConsulta, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmAreasConsulta = class(TfrmAreasConsulta)
    procedure FormShow(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAreasConsulta: TfrmAreasConsulta;

implementation

{$R *.dfm}

uses ClassAreas, untAreasCadastro, untConexao;

procedure TfrmAreasConsulta.btnEditarClick(Sender: TObject);
var
  are: TClassAreas;
begin
are:= TClassAreas.Create();
are.ARC_CODIGO := dsdados.DataSet.FieldByName ('ARC_CODIGO').Value;
are.Carregar;
frmAreasCadastro.lbledt_codigo.Text := are.ARC_CODIGO.ToString;
frmAreasCadastro.lbledt_nome.Text := are.ARC_NOME;
frmAreasCadastro.Show;
//criar a variavel status dentro do public do
 frmAreasCadastro.status := 'E';
end;


procedure TfrmAreasConsulta.btnExcluirClick(Sender: TObject);
var
are : TClassAreas;
begin
are := TClassAreas.Create;
are.ARC_CODIGO :=  dsdados.DataSet.FieldByName('ARC_CODIGO').Value;

if ARE.Excluir then
begin
  ShowMessage('Registro excluído com sucesso!');
  FormShow(nil);
end;

end;

procedure TfrmAreasConsulta.btnInserirClick(Sender: TObject);
begin
  inherited;
  frmAreasCadastro.Show;
  frmAreasCadastro.status := 'I';
end;

procedure TfrmAreasConsulta.FormShow(Sender: TObject);
var
  are : TClassAreas ;
begin
  inherited;
  are := TClassAreas.Create();
  dsdados.DataSet := are.ConsultarAreas();

end;

end.
