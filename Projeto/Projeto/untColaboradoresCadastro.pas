unit untColaboradoresCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloCadastro, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmColaboradoresCadastro = class(Tfrm_modelo_cadastro)
    lbledt_col_codigo: TLabeledEdit;
    lbledt_col_nome: TLabeledEdit;
    lbledt_col_senha: TLabeledEdit;
    lbledt_col_nivel_acesso: TLabeledEdit;
    lbledt_col_usuario: TLabeledEdit;
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    status : string;
  end;

var
  frmColaboradoresCadastro: TfrmColaboradoresCadastro;

implementation

{$R *.dfm}

uses classColaboradores, untColaboradoresConsulta;

procedure TfrmColaboradoresCadastro.btnSalvarClick(Sender: TObject);
var
col : TClassColaboradores;
begin
  inherited;
  col := TClassColaboradores.Create;

  if status = 'I' then
begin
   //Alimentar os atributos da classe
   col.COL_CODIGO := StrToInt(lbledt_col_nome.Text);
   col.COL_NOME := lbledt_col_nome.Text;
   col.COL_SENHA := lbledt_col_senha.Text;
   col.COL_NIVEL_ACESSO := lbledt_col_nivel_acesso.Text;
   col.COL_USUARIO := lbledt_col_usuario.Text;

    if col.Inserir() then
    begin
      ShowMessage('Resgistro inserido com sucesso!');
      //atualizar a grid no form de consulta
      frmColaboradoresConsulta.FormShow(nil); //alt + F11
      //fecha o form de cadastro
      Close;
    end;
end else  //se o status for editar
if status = 'E' then
begin
  //aqui vai os comandos para editar um registro
  //alimentar os atributos da classe
  col.COL_CODIGO := StrToInt(lbledt_col_codigo.Text);
  col.COL_NOME := lbledt_col_nome.Text;
  col.COL_SENHA := lbledt_col_senha.Text;
  col.COL_NIVEL_ACESSO := lbledt_col_nivel_acesso.Text;
  col.COL_USUARIO := lbledt_col_usuario.Text;

  if col.Alterar() then
  begin
    ShowMessage('Registro alterado com sucesso!');
    //atualiza o grid
    frmColaboradoresConsulta.FormShow(nil);
    //fecha o formulario
    Close;
  end;



end;
end;


end.
