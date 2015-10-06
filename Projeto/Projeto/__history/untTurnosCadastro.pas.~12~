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

procedure TfrmTurnosCadastro.FormShow(Sender: TObject);
begin
  inherited;
  lbledt_tur_codigo.SetFocus;
end;

end.
