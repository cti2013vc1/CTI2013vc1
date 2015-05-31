unit untAreasCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloCadastro, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmAreasCadastro = class(Tfrm_modelo_cadastro)
    lbledt_codigo: TLabeledEdit;
    lbledt_nome: TLabeledEdit;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAreasCadastro: TfrmAreasCadastro;

implementation

{$R *.dfm}

uses classAreas, untAreasConsulta;

procedure TfrmAreasCadastro.btnCancelarClick(Sender: TObject);
begin
  inherited;
    Close;
end;

procedure TfrmAreasCadastro.btnSalvarClick(Sender: TObject);
var
  are: TClassAreas;
begin
  inherited;
  are := TClassAreas.Create;

  if status = 'I' then
begin
   //Alimentar os atributos da classe
   are.ARC_CODIGO := StrToInt(lbledt_codigo.Text);
   are.ARC_NOME := lbledt_nome.Text;

    if are.Inserir() then
    begin
      ShowMessage('Resgistro inserido com sucesso!');
      //atualizar a grid no form de consulta
      frmAreasConsulta.FormShow(nil); //alt + F11
      //fecha o form de cadastro
      Close;
    end;
end else  //se o status for editar
if status = 'E' then
begin
  //aqui vai os comandos para editar um registro
  //alimentar os atributos da classe
  are.ARC_CODIGO := StrToInt(lbledt_codigo.Text);
  are.ARC_NOME := lbledt_nome.Text;

  if are.Alterar() then
  begin
    ShowMessage('Registro alterado com sucesso!');
    //atualiza o grid
    frmAreasConsulta.FormShow(nil);
    //fecha o formulario
    Close;
  end;



end;
end;

end.
