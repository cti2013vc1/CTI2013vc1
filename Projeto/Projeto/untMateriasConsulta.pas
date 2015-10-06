unit untMateriasConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloConsulta, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmMateriasConsulta = class(Tfrm_modelo_consulta)
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtConsultaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMateriasConsulta: TfrmMateriasConsulta;

implementation

{$R *.dfm}

uses classFuncoes, untMateriasCadastro, classMaterias;

procedure TfrmMateriasConsulta.btnEditarClick(Sender: TObject);
var
mat : TClassMaterias;
begin
  inherited;
  mat:= TClassMaterias.Create();
  mat.MAT_CODIGO := dsdados.DataSet.FieldByName ('MAT_CODIGO').Value;
  mat.Carregar;
  frmMateriasCadastro.lbledt_mat_codigo.Text := mat.MAT_CODIGO.ToString;
  frmMateriasCadastro.lbledt_mat_nome.Text := mat.MAT_NOME;
  frmMateriasCadastro.DBL_materias.KeyValue := mat.AREAS_ARC_CODIGO.ToString;
  frmMateriasCadastro.Show;
  //criar a variavel status dentro do public do
   frmMateriasCadastro.status := 'E';

end;

procedure TfrmMateriasConsulta.btnExcluirClick(Sender: TObject);
var
 mat : TClassMaterias;
begin
  inherited;
  mat:= TClassMaterias.Create;
  mat.MAT_CODIGO :=  dsdados.DataSet.FieldByName('MAT_CODIGO').Value;

if mat.Excluir then
begin
  ShowMessage('Registro excluído com sucesso!');
  FormShow(nil);
end;
end;

procedure TfrmMateriasConsulta.btnInserirClick(Sender: TObject);
begin
  inherited;
  LimparCampos(frmMateriasCadastro);
  frmMateriasCadastro.Show;
  frmMateriasCadastro.status := 'I';
end;

procedure TfrmMateriasConsulta.edtConsultaChange(Sender: TObject);
var
materias : TclassMaterias;
cond : string;
begin
materias := TclassMaterias.Create;
  inherited;
  cond := 'MAT_CODIGO LIKE ''%'+edtConsulta.Text+'%'' OR ';
  cond := cond+ 'ARC_NOME LIKE ''%'+edtConsulta.Text+'%'' OR ';
  cond := cond+ 'MAT_NOME LIKE ''%'+edtConsulta.Text+'%'' ';

    //QUANDO CONSULTADO POR TODOS OS CAMPOS DO SELECT
  dsdados.DataSet := materias.ConsultarMaterias(cond);

    //QUANDO CONSULTADO POR COLUNA
  {dsdados.DataSet := materias.ConsultarMaterias
    (lblTitulo.Caption +' LIKE ''%'+edt_consulta.Text+'%''');  }
end;

procedure TfrmMateriasConsulta.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmMateriasConsulta.FormShow(Sender: TObject);
var
mat : TClassMaterias;
begin
  inherited;
  mat := TClassMaterias.Create;
  dsdados.DataSet := mat.ConsultarMaterias();
end;

end.
