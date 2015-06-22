unit untMatriculasCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloCadastro, Data.DB,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.Mask, Vcl.DBCtrls;

type
  TfrmMatriculasCadastro = class(Tfrm_modelo_cadastro)
    lbledt_ano: TLabeledEdit;
    DBL_alu_codigo: TDBLookupComboBox;
    DBL_turmas_codigo: TDBLookupComboBox;
    DBL_mat_codigo: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    MK_Data: TMaskEdit;
    DTP_data: TDateTimePicker;
    Label5: TLabel;
    dsmaterias: TDataSource;
    dsturmas: TDataSource;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure DTP_dataChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    status : string;
  end;

var
  frmMatriculasCadastro: TfrmMatriculasCadastro;

implementation

{$R *.dfm}

uses classMatriculas, untMatriculasConsulta, classAlunos, classMaterias,
  classTurmas;

procedure TfrmMatriculasCadastro.btnCancelarClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmMatriculasCadastro.btnSalvarClick(Sender: TObject);
var
matriculas : TClassMatriculas;
begin
  inherited;
  matriculas := TClassMatriculas.Create;

  if status = 'I' then
  begin
   //Alimentar os atributos da classe
   matriculas.ALUNOS_ALU_CODIGO := StrToInt(DBL_alu_codigo.KeyValue);
   matriculas.TURMAS_TUR_CODIGO := StrToInt(DBL_turmas_codigo.KeyValue);
   matriculas.MATERIAS_MAT_CODIGO := StrToInt(DBL_mat_codigo.KeyValue);
   matriculas.MAT_DATA := DTP_data.Date;
   matriculas.ANO := StrToInt(lbledt_ano.Text);


    if matriculas.Inserir() then
    begin
      ShowMessage('Resgistro inserido com sucesso!');
      //atualizar a grid no form de consulta
      frmMatriculasConsulta.FormShow(nil); //alt + F11
      //fecha o form de cadastro
      Close;
    end;
    end else  //se o status for editar
if status = 'E' then
begin
  //aqui vai os comandos para editar um registro
  //alimentar os atributos da classe
  matriculas.ALUNOS_ALU_CODIGO := StrToInt(DBL_alu_codigo.KeyValue);
   matriculas.TURMAS_TUR_CODIGO := StrToInt(DBL_turmas_codigo.KeyValue);
   matriculas.MATERIAS_MAT_CODIGO := StrToInt(DBL_mat_codigo.KeyValue);
   matriculas.MAT_DATA := DTP_data.Date;
   matriculas.ANO := StrToInt(lbledt_ano.Text);


  if matriculas.Alterar() then
  begin
    ShowMessage('Registro alterado com sucesso!');
    //atualiza o grid
    frmMatriculasConsulta.FormShow(nil);
    //fecha o formulario
    Close;
  end;

end;
  end;
procedure TfrmMatriculasCadastro.DTP_dataChange(Sender: TObject);
begin
  inherited;
  MK_Data.Text := FormatDateTime('dd/MM/yyyy',DTP_data.Date);

end;

procedure TfrmMatriculasCadastro.FormShow(Sender: TObject);
var
  alunos : TClassAlunos;
  turmas : TClassTurmas;
  materias : TClassMaterias;
begin
  inherited;
  //Aqui est�o os c�digos do data source que est� inclu�do no formul�rio para cada FK do banco.
  alunos := TClassAlunos.Create;
  dsdados.DataSet := alunos.ConsultarAlunos();

  turmas := TclassTurmas.Create;
  dsturmas.DataSet := turmas.ConsultarTurmas();

  materias := TClassMaterias.Create;
  dsmaterias.DataSet := materias.ConsultarMaterias();

end;

end.
