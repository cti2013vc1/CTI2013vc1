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
    procedure edtConsultaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfrmAlunosConsulta.edtConsultaChange(Sender: TObject);
var
alunos : TclassAlunos;
cond : string;
begin
alunos := TclassAlunos.Create;
  inherited;
  cond := 'ALU_CODIGO LIKE ''%'+edtConsulta.Text+'%'' OR ';
  cond := cond+ 'ALU_NOME LIKE ''%'+edtConsulta.Text+'%'' OR ';
  cond := cond+ 'ALU_DATANASCIMENTO LIKE ''%'+edtConsulta.Text+'%'' OR ';
  cond := cond+ 'ALU_INEP LIKE ''%'+edtConsulta.Text+'%'' ';

    //QUANDO CONSULTADO POR TODOS OS CAMPOS DO SELECT
  dsdados.DataSet := alunos.ConsultarAlunos(cond);

    //QUANDO CONSULTADO POR COLUNA
  {dsdados.DataSet := alunos.ConsultarAlunos
    (lblTitulo.Caption +' LIKE ''%'+edt_consulta.Text+'%''');  }
end;

procedure TfrmAlunosConsulta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
//Ctrl + I
if (Shift = [ssCtrl]) and (Key = 49) then
btnInserir.Click;
//Ctrl + E = Editar
if (Shift = [ssCtrl]) and (Key = 45) then
btnEditar.Click;
// Delete = Deletar
if (key = 46) then
btnExcluir.Click;
if (key = 27) then
  Close;
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
