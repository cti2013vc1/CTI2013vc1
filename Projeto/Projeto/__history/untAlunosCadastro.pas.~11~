unit untAlunosCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloCadastro, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ComCtrls;

type
  TfrmAlunosCadastro = class(Tfrm_modelo_cadastro)
    lbledt_alu_codigo: TLabeledEdit;
    lbledt_alu_nome: TLabeledEdit;
    lbledt_alu_inep: TLabeledEdit;
    MK_DataNascimento: TMaskEdit;
    dtpDtaNascimento: TDateTimePicker;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    status : string;
  end;

var
  frmAlunosCadastro: TfrmAlunosCadastro;

implementation

{$R *.dfm}

uses classAlunos, untAlunosConsulta;

procedure TfrmAlunosCadastro.btnCancelarClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmAlunosCadastro.btnSalvarClick(Sender: TObject);
var
  alunos : TClassAlunos;
begin
  inherited;
   alunos := TClassAlunos.Create;

  if status = 'I' then
  begin
   //Alimentar os atributos da classe
   alunos.ALU_CODIGO := StrToInt(lbledt_alu_codigo.Text);
   alunos.ALU_NOME := lbledt_alu_nome.Text;
   alunos.ALU_DATANASCIMENTO := dtpDtaNascimento.Date;
   alunos.ALU_INEP := lbledt_alu_nome.Text;

    if alunos.Inserir() then
    begin
      ShowMessage('Resgistro inserido com sucesso!');
      //atualizar a grid no form de consulta
      frmAlunosConsulta.FormShow(nil); //alt + F11
      //fecha o form de cadastro
      Close;
    end;
end else  //se o status for editar
if status = 'E' then
begin
  //aqui vai os comandos para editar um registro
  //alimentar os atributos da classe
  alunos.ALU_CODIGO := StrToInt(lbledt_alu_codigo.Text);
  alunos.ALU_NOME := lbledt_alu_nome.Text;
  alunos.ALU_DATANASCIMENTO := StrToDateTime (MK_DataNascimento.Text);
  alunos.ALU_INEP := lbledt_alu_nome.Text;


  if alunos.Alterar() then
  begin
    ShowMessage('Registro alterado com sucesso!');
    //atualiza o grid
    frmAlunosConsulta.FormShow(nil);
    //fecha o formulario
    Close;
  end;

end;
end;

end.
