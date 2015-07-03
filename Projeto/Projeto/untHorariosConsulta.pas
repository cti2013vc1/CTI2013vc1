unit untHorariosConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloConsulta, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmHorariosConsulta = class(Tfrm_modelo_consulta)
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
  frmHorariosConsulta: TfrmHorariosConsulta;

implementation

{$R *.dfm}

uses classFuncoes, untHorariosCadastro, classHorarios;

procedure TfrmHorariosConsulta.btnEditarClick(Sender: TObject);
var
  hor : TClassHorarios;
begin
  inherited;
  hor:= TClassHorarios.Create();
  hor.HOR_CODIGO := dsdados.DataSet.FieldByName ('HOR_CODIGO').Value;
  hor.COLABORADORES_COL_CODIGO := dsdados.DataSet.FieldByName('COL_CODIGO').Value;
  hor.TURMAS_TUR_CODIGO := dsdados.DataSet.FieldByName('TUR_CODIGO').Value;
  hor.MATERIAS_MAT_CODIGO := dsdados.DataSet.FieldByName('MAT_CODIGO').Value;
  hor.Carregar;
  frmHorariosCadastro.lbledt_hor_codigo.Text := hor.HOR_CODIGO.ToString;
  frmHorariosCadastro.DBL_colaboradores.KeyValue := hor.COLABORADORES_COL_CODIGO;
  frmHorariosCadastro.DBL_turmas.KeyValue := hor.TURMAS_TUR_CODIGO;
  frmHorariosCadastro.DBL_materias.KeyValue := hor.MATERIAS_MAT_CODIGO;
  frmHorariosCadastro.lbledt_ano.Text := IntToStr(hor.ANO);
  frmHorariosCadastro.Show;
  //criar a variavel status dentro do public do
   frmHorariosCadastro.status := 'E';

end;

procedure TfrmHorariosConsulta.btnExcluirClick(Sender: TObject);
var
  hor : TClassHorarios;
begin
  inherited;
  hor:= TClassHorarios.Create;
  hor.HOR_CODIGO :=  dsdados.DataSet.FieldByName('TUR_CODIGO').Value;

if hor.Excluir then
begin
  ShowMessage('Registro exclu�do com sucesso!');
  FormShow(nil);
end;
end;

procedure TfrmHorariosConsulta.btnInserirClick(Sender: TObject);
begin
  inherited;
  LimparCampos(frmHorariosCadastro);
  frmHorariosCadastro.Show;
  frmHorariosCadastro.status := 'I';
end;

procedure TfrmHorariosConsulta.FormShow(Sender: TObject);
var
hor : TClassHorarios;
begin
  inherited;
  hor := TClassHorarios.Create;
  dsdados.DataSet := hor.ConsultarHorarios();
end;

end.
