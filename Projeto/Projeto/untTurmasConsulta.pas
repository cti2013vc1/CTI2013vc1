unit untTurmasConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloConsulta, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmTurmasConsulta = class(Tfrm_modelo_consulta)
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTurmasConsulta: TfrmTurmasConsulta;

implementation

{$R *.dfm}

uses classFuncoes, untTurmasCadastro, classTurmas;

procedure TfrmTurmasConsulta.btnEditarClick(Sender: TObject);
var
   turmas : TClassTurmas;
begin
  inherited;
  turmas:= TClassTurmas.Create();
  turmas.TUR_CODIGO := dsdados.DataSet.FieldByName ('TUR_CODIGO').Value;
  turmas.Carregar;
  frmTurmasCadastro.lbledt_tur_codigo.Text := turmas.TUR_CODIGO.ToString;
  frmTurmasCadastro.DBL_ser_codigo.KeyValue := turmas.SERIES_SER_CODIGO.ToString;
  frmTurmasCadastro.DBL_periodos_letivos_codigo.KeyValue := turmas.PERIODOS_LETIVOS_PEL_CODIGO.ToString;
  frmTurmasCadastro.DBL_tur_codigo.KeyValue := turmas.TURNOS_TUR_CODIGO.ToString;
  frmTurmasCadastro.lbledt_tur_nome.Text := turmas.TUR_NOME;
  frmTurmasCadastro.Show;
  //criar a variavel status dentro do public do
   frmTurmasCadastro.status := 'E';
end;

procedure TfrmTurmasConsulta.btnExcluirClick(Sender: TObject);
var
  turmas : TClassTurmas;
begin
  inherited;
  turmas:= TClassTurmas.Create;
  turmas.TUR_CODIGO :=  dsdados.DataSet.FieldByName('TUR_CODIGO').Value;

if turmas.Excluir then
begin
  ShowMessage('Registro exclu�do com sucesso!');
  FormShow(nil);
end;
end;

procedure TfrmTurmasConsulta.btnInserirClick(Sender: TObject);
begin
  inherited;
  LimparCampos(frmTurmasCadastro);
  frmTurmasCadastro.Show;
  frmTurmasCadastro.status := 'I';
end;

procedure TfrmTurmasConsulta.FormShow(Sender: TObject);
var
  turmas : TClassTurmas;
begin
  inherited;
  turmas := TClassTurmas.Create;
  dsdados.DataSet := turmas.ConsultarTurmas();
end;

end.
