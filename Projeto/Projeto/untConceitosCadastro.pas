unit untConceitosCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloCadastro, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons, Data.DB;

type
  TfrmConceitosCadastro = class(Tfrm_modelo_cadastro)
    lbledt_con_codigo: TLabeledEdit;
    lbledt_con_nome: TLabeledEdit;
    lbledt_con_letra: TLabeledEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
     status : string;
  end;

var
  frmConceitosCadastro: TfrmConceitosCadastro;

implementation

{$R *.dfm}

uses classConceitos, untConceitosConsulta;

procedure TfrmConceitosCadastro.btnCancelarClick(Sender: TObject);
begin
  inherited;
Close;
end;

procedure TfrmConceitosCadastro.btnSalvarClick(Sender: TObject);
var
   conceitos : TClassConceitos;
begin
  inherited;
  conceitos := TClassConceitos.Create;

  if status = 'I' then
begin
   //Alimentar os atributos da classe
   conceitos.CON_CODIGO := StrToInt(lbledt_con_codigo.Text);
   conceitos.CON_NOME := lbledt_con_nome.Text;
   conceitos.CON_LETRA := lbledt_con_letra.Text;

    if conceitos.Inserir() then
    begin
      ShowMessage('Resgistro inserido com sucesso!');
      //atualizar a grid no form de consulta
      frmConceitosConsulta.FormShow(nil); //alt + F11
      //fecha o form de cadastro
      Close;
    end;
end else  //se o status for editar
if status = 'E' then
begin
  //aqui vai os comandos para editar um registro
  //alimentar os atributos da classe
  conceitos.CON_CODIGO := StrToInt(lbledt_con_codigo.Text);
   conceitos.CON_NOME := lbledt_con_nome.Text;
   conceitos.CON_LETRA := lbledt_con_letra.Text;


  if conceitos.Alterar() then
  begin
    ShowMessage('Registro alterado com sucesso!');
    //atualiza o grid
    frmConceitosConsulta.FormShow(nil);
    //fecha o formulario
    Close;
  end;
end;

end;

procedure TfrmConceitosCadastro.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmConceitosCadastro.FormShow(Sender: TObject);
begin
  inherited;
  lbledt_con_codigo.SetFocus;
end;

end.
