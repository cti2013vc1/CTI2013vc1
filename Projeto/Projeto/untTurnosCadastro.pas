unit untTurnosCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloCadastro, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons, Data.DB;

type
  TfrmTurnosCadastro = class(Tfrm_modelo_cadastro)
    lbledt_tur_codigo: TLabeledEdit;
    lbledt_tur_nome: TLabeledEdit;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    status : string;
  end;

var
  frmTurnosCadastro: TfrmTurnosCadastro;

implementation

{$R *.dfm}

uses classTurnos, untTurnosConsulta;

procedure TfrmTurnosCadastro.btnCancelarClick(Sender: TObject);
begin
  inherited;
    Close;
end;

procedure TfrmTurnosCadastro.btnSalvarClick(Sender: TObject);
var
  tur: TClassTurnos;
begin
  inherited;
  tur := TClassTurnos.Create;

  if status = 'I' then
begin
   //Alimentar os atributos da classe
   tur.TUR_CODIGO := StrToInt(lbledt_tur_codigo.Text);
   tur.TUR_NOME := lbledt_tur_nome.Text;

    if tur.Inserir() then
    begin
      ShowMessage('Resgistro inserido com sucesso!');
      //atualizar a grid no form de consulta
      frmTurnosConsulta.FormShow(nil); //alt + F11
      //fecha o form de cadastro
      Close;
    end;
end else  //se o status for editar
if status = 'E' then
begin
  //aqui vai os comandos para editar um registro
  //alimentar os atributos da classe
  tur.TUR_CODIGO := StrToInt(lbledt_tur_codigo.Text);
  tur.TUR_NOME := lbledt_tur_nome.Text;

  if tur.Alterar() then
  begin
    ShowMessage('Registro alterado com sucesso!');
    //atualiza o grid
    frmTurnosConsulta.FormShow(nil);
    //fecha o formulario
    Close;
  end;



end;
end;

procedure TfrmTurnosCadastro.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmTurnosCadastro.FormShow(Sender: TObject);
begin
  inherited;
  lbledt_tur_codigo.SetFocus;
end;

end.
