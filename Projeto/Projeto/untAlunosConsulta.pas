unit untAlunosConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloConsulta, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmAlunosConsulta = class(Tfrm_modelo_consulta)
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
  frmAlunosConsulta: TfrmAlunosConsulta;

implementation

{$R *.dfm}

uses classAlunos, untAlunosCadastro, classFuncoes;

procedure TfrmAlunosConsulta.btnEditarClick(Sender: TObject);
var
alunos : TClassAlunos;
begin
  inherited;
  alunos:= TClassAlunos.Create();
  alunos.ALU_CODIGO := dsdados.DataSet.FieldByName ('ALU_CODIGO').Value;
  alunos.Carregar;
  frmAlunosCadastro.lbledt_alu_codigo.Text := alunos.ALU_CODIGO.ToString;
  frmAlunosCadastro.lbledt_alu_nome.Text := alunos.ALU_NOME;
  frmAlunosCadastro.MK_DataNascimento.Text := DateToStr(alunos.ALU_DATANASCIMENTO);
  frmAlunosCadastro.lbledt_alu_inep.Text := alunos.ALU_INEP;
  frmAlunosCadastro.Show;
  //criar a variavel status dentro do public do
   frmAlunosCadastro.status := 'E';

end;

procedure TfrmAlunosConsulta.btnExcluirClick(Sender: TObject);
var
  alunos : TClassAlunos;
begin
  inherited;
  alunos:= TClassAlunos.Create;
  alunos.ALU_CODIGO :=  dsdados.DataSet.FieldByName('ALU_CODIGO').Value;

if alunos.Excluir then
begin
  ShowMessage('Registro exclu�do com sucesso!');
  FormShow(nil);
end;
end;

procedure TfrmAlunosConsulta.btnInserirClick(Sender: TObject);
begin
  inherited;
  LimparCampos(frmAlunosCadastro);
  frmAlunosCadastro.Show;
  frmAlunosCadastro.status := 'I';
end;

procedure TfrmAlunosConsulta.FormShow(Sender: TObject);
var
alunos : TClassAlunos;
begin
  inherited;
  alunos := TClassAlunos.Create;
  dsdados.DataSet := alunos.ConsultarAlunos();
end;

end.
