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
   frmColaboradoresCadastro.RBDiretoria.Checked := True;
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

procedure TfrmColaboradoresConsulta.FormShow(Sender: TObject);
var
  col : TClassColaboradores;
begin
  inherited;
  col := TClassColaboradores.Create();
  dsdados.DataSet := col.ConsultarColaboradores();


end;

end.
