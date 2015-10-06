unit untColaboradoresConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloConsulta, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmColaboradoresConsulta = class(Tfrm_modelo_consulta)
    procedure btnInserirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
  frmColaboradoresConsulta: TfrmColaboradoresConsulta;

implementation

{$R *.dfm}

uses untColaboradoresCadastro, classColaboradores, classFuncoes;

procedure TfrmColaboradoresConsulta.btnEditarClick(Sender: TObject);
var
  col : TclassColaboradores;
begin
  inherited;
  col:= TclassColaboradores.Create();
  col.COL_CODIGO := dsdados.DataSet.FieldByName ('COL_CODIGO').Value;
  col.Carregar;
  frmColaboradoresCadastro.lbledt_col_codigo.Text := col.COL_CODIGO.ToString;
  frmColaboradoresCadastro.lbledt_col_nome.Text := col.COL_NOME;
  frmColaboradoresCadastro.lbledt_col_senha.Text := col.COL_SENHA;
 if col.COL_NIVEL_ACESSO = 'S' then
   begin
   frmColaboradoresCadastro.RBSecretaria.Checked := True;
   end
   else if col.COL_NIVEL_ACESSO = 'D' then
   begin
   frmColaboradoresCadastro.RBProfessor.Checked := True;
   end;
  frmColaboradoresCadastro.lbledt_col_usuario.Text := col.COL_USUARIO;

  frmColaboradoresCadastro.Show;
  //criar a variavel status dentro do public do
   frmColaboradoresCadastro.status := 'E';
end;

procedure TfrmColaboradoresConsulta.btnExcluirClick(Sender: TObject);
var
  col : TclassColaboradores;
begin
  inherited;
  col := TclassColaboradores.Create;
  col.COL_CODIGO :=  dsdados.DataSet.FieldByName('COL_CODIGO').Value;

if col.Excluir then
begin
  ShowMessage('Registro excluído com sucesso!');
  FormShow(nil);
end;
end;

procedure TfrmColaboradoresConsulta.btnInserirClick(Sender: TObject);
begin
  inherited;
  LimparCampos(frmColaboradoresCadastro);
  frmColaboradoresCadastro.Show;
  frmColaboradoresCadastro.status := 'I';
end;

procedure TfrmColaboradoresConsulta.edtConsultaChange(Sender: TObject);
var
colaboradores : TclassColaboradores;
cond : string;
begin
colaboradores := TclassColaboradores.Create;
  inherited;
  cond := 'COL_CODIGO LIKE ''%'+edtConsulta.Text+'%'' OR ';
  cond := cond+ 'COL_NOME LIKE ''%'+edtConsulta.Text+'%'' OR ';
  cond := cond+ 'COL_SENHA LIKE ''%'+edtConsulta.Text+'%'' OR ';
  cond := cond+ 'COL_NIVEL_ACESSO LIKE ''%'+edtConsulta.Text+'%'' OR ';
  cond := cond+ 'COL_USUARIO LIKE ''%'+edtConsulta.Text+'%'' ';

    //QUANDO CONSULTADO POR TODOS OS CAMPOS DO SELECT
  dsdados.DataSet := colaboradores.ConsultarColaboradores(cond);

    //QUANDO CONSULTADO POR COLUNA
  {dsdados.DataSet := colaboradores.ConsultarColaboradores
    (lblTitulo.Caption +' LIKE ''%'+edt_consulta.Text+'%''');  }
end;

procedure TfrmColaboradoresConsulta.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmColaboradoresConsulta.FormShow(Sender: TObject);
var
  col : TClassColaboradores;
begin
  inherited;
  col := TClassColaboradores.Create();
  dsdados.DataSet := col.ConsultarColaboradores();


end;

end.
