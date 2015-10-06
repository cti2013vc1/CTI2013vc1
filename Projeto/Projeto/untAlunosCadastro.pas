unit untAlunosCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloCadastro, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ComCtrls,
  Data.DB;

type
  TfrmAlunosCadastro = class(Tfrm_modelo_cadastro)
    lbledt_alu_codigo: TLabeledEdit;
    lbledt_alu_nome: TLabeledEdit;
    lbledt_alu_inep: TLabeledEdit;
    MK_DataNascimento: TMaskEdit;
    dtpDtaNascimento: TDateTimePicker;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure dtpDtaNascimentoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
   alunos.ALU_DATANASCIMENTO := StrToDate (MK_DataNascimento.Text);
   alunos.ALU_INEP := lbledt_alu_inep.Text;

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
  alunos.ALU_DATANASCIMENTO := dtpDtaNascimento.Date;
  alunos.ALU_INEP := lbledt_alu_inep.Text;


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

procedure TfrmAlunosCadastro.dtpDtaNascimentoChange(Sender: TObject);
begin
  inherited;
MK_DataNascimento.Text := FormatDateTime('dd/MM/yyyy',dtpDtaNascimento.Date);
end;

procedure TfrmAlunosCadastro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
//Enter = Simula o tab
if (key = 13) then
  self.Perform(WM_NEXTDLGCTL,0,0);
//Ctrl + S = Salvar
if (key = 73) then
  btnSalvar.Click;
//Esc = Sair
if (key = 27) then
  btnCancelar.Click;
end;


procedure TfrmAlunosCadastro.FormShow(Sender: TObject);
begin
  inherited;
  lbledt_alu_codigo.SetFocus;
end;

end.
