unit untMatriculasConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloConsulta, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Mask;

type
  TfrmMatriculasConsulta = class(Tfrm_modelo_consulta)
    cbkPorAluno: TCheckBox;
    edtPorAluno: TEdit;
    edtPorTurma: TEdit;
    cbkPorTuma: TCheckBox;
    edtPorMateria: TEdit;
    cbkPorMateria: TCheckBox;
    cbkPorData: TCheckBox;
    edtPorAno: TEdit;
    cbkPorAno: TCheckBox;
    btnConsultar: TSpeedButton;
    mkDataIncial: TMaskEdit;
    mkDataFinal: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtConsultaChange(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfrmMatriculasConsulta.btnConsultarClick(Sender: TObject);
var
  matriculas : TclassMatriculas;
  cond : string;
begin
  matriculas := TclassMatriculas.Create;
  inherited;
  cond := '1=1 ';

if cbkPorAluno.Checked = True then
  cond := cond + 'AND ALUNOS.ALU_NOME LIKE ''%'+edtPorAluno.Text+'%'' ';
if cbkPorTuma.Checked = True then
  cond := cond + 'AND TURMAS.TUR_NOME LIKE ''%'+edtPorTurma.Text+'%'' ';
if cbkPorMateria.Checked = True then
  cond := cond + 'AND MATERIAS.MAT_NOME LIKE ''%'+edtPorMateria.Text+'%'' ';
if cbkPorData.Checked = True then
  cond := cond + 'AND MATRICULAS.MAT_DATA >= '''+FormatDateTime('yyyy-MM-dd',StrToDate(mkDataIncial.Text))
  +''' AND MATRICULAS.MAT_DATA <= '''+FormatDateTime('yyyy-MM-dd',StrToDate(mkDataFinal.Text))+''' ';
if cbkPorAno.Checked = True then
  cond := cond + 'AND MATRICULAS.ANO = '+edtPorAno.Text+' ';
  //ShowMessage(cond);
  dsdados.DataSet := matriculas.ConsultarMatriculas(cond);
  end;

procedure TfrmMatriculasConsulta.btnEditarClick(Sender: TObject);
var
   matriculas : TClassMatriculas;
begin
  inherited;
  matriculas:= TClassMatriculas.Create();
  matriculas.ANO := dsdados.DataSet.FieldByName ('ANO').Value;
  matriculas.ALUNOS_ALU_CODIGO := dsdados.DataSet.FieldByName('ALU_CODIGO').Value;
  matriculas.TURMAS_TUR_CODIGO := dsdados.DataSet.FieldByName('TUR_CODIGO').Value;
  matriculas.MATERIAS_MAT_CODIGO := dsdados.DataSet.FieldByName('MAT_CODIGO').Value;
  matriculas.Carregar;
  frmMatriculasCadastro.DBL_alu_codigo.KeyValue := matriculas.ALUNOS_ALU_CODIGO;
  frmMatriculasCadastro.DBL_turmas_codigo.KeyValue := matriculas.TURMAS_TUR_CODIGO;
  frmMatriculasCadastro.DBL_mat_codigo.KeyValue := matriculas.MATERIAS_MAT_CODIGO;
  frmMatriculasCadastro.MK_Data.Text := DateToStr(matriculas.MAT_DATA);
  frmMatriculasCadastro.lbledt_ano.Text := IntToStr(matriculas.ANO);
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
  matriculas.ALUNOS_ALU_CODIGO :=  dsdados.DataSet.FieldByName('ALU_CODIGO').Value;
  matriculas.TURMAS_TUR_CODIGO :=  dsdados.DataSet.FieldByName('TUR_CODIGO').Value;
  matriculas.MATERIAS_MAT_CODIGO :=  dsdados.DataSet.FieldByName('MAT_CODIGO').Value;


if matriculas.Excluir then
begin
  ShowMessage('Registro exclu�do com sucesso!');
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

procedure TfrmMatriculasConsulta.edtConsultaChange(Sender: TObject);
var
matriculas : TclassMatriculas;
cond : string;
begin
matriculas := TclassMatriculas.Create;
  inherited;
  cond := 'ANO LIKE ''%'+edtConsulta.Text+'%'' OR ';
  cond := cond+ 'ALU_NOME LIKE ''%'+edtConsulta.Text+'%'' OR ';
  cond := cond+ 'TUR_NOME LIKE ''%'+edtConsulta.Text+'%'' OR ';
  cond := cond+ 'TUR_NOME LIKE ''%'+edtConsulta.Text+'%'' OR ';
  cond := cond+ 'MAT_DATA LIKE ''%'+edtConsulta.Text+'%'' ';

    //QUANDO CONSULTADO POR TODOS OS CAMPOS DO SELECT
  dsdados.DataSet := matriculas.ConsultarMatriculas(cond);

    //QUANDO CONSULTADO POR COLUNA
  {dsdados.DataSet := matriculas.ConsultarMatriculas
    (lblTitulo.Caption +' LIKE ''%'+edt_consulta.Text+'%''');  }
end;

procedure TfrmMatriculasConsulta.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmMatriculasConsulta.FormShow(Sender: TObject);
var
matriculas : TclassMatriculas;
begin
  inherited;
  matriculas := TclassMatriculas.Create;
  dsdados.DataSet := matriculas.ConsultarMatriculas();

end;

end.
