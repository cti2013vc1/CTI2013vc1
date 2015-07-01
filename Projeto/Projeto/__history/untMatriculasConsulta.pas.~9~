unit untMatriculasConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloConsulta, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmMatriculasConsulta = class(Tfrm_modelo_consulta)
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    status : string;
  end;

var
  frmMatriculasConsulta: TfrmMatriculasConsulta;

implementation

{$R *.dfm}

uses classFuncoes, untMatriculasCadastro, classMatriculas;

procedure TfrmMatriculasConsulta.btnEditarClick(Sender: TObject);
var
   matriculas : TClassMatriculas;
begin
  inherited;
  matriculas:= TClassMatriculas.Create();
  matriculas.ANO := dsdados.DataSet.FieldByName ('ANO').Value;
  matriculas.Carregar;
  frmMatriculasCadastro.DBL_alu_codigo.KeyValue := matriculas.ALUNOS_ALU_CODIGO.ToString;
  frmMatriculasCadastro.DBL_turmas_codigo.KeyValue := matriculas.TURMAS_TUR_CODIGO.ToString;
  frmMatriculasCadastro.DBL_mat_codigo.KeyValue := matriculas.MATERIAS_MAT_CODIGO.ToString;
  frmMatriculasCadastro.MK_Data.Text := DateToStr(matriculas.MAT_DATA);
  frmMatriculasCadastro.Show;
  //criar a variavel status dentro do public do
   frmMatriculasCadastro.status := 'E';
end;

procedure TfrmMatriculasConsulta.btnExcluirClick(Sender: TObject);
var
matriculas : TclassMatriculas;
begin
  inherited;
  matriculas:= TclassMatriculas.Create;
  matriculas.ANO :=  dsdados.DataSet.FieldByName('ANO').Value;

if matriculas.Excluir then
begin
  ShowMessage('Registro excluído com sucesso!');
  FormShow(nil);
end;
end;

procedure TfrmMatriculasConsulta.btnInserirClick(Sender: TObject);
begin
  inherited;
  LimparCampos(frmMatriculasCadastro);
  frmMatriculasCadastro.Show;
  frmMatriculasCadastro.status := 'I';
end;

procedure TfrmMatriculasConsulta.FormShow(Sender: TObject);
var
matriculas : TclassMatriculas;
begin
  inherited;
  matriculas := TclassMatriculas.Create;
  dsdados.DataSet := matriculas.ConsultarMatriculas();

end;

end.
