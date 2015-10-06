unit untAreasCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloCadastro, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons, Data.DB;

type
  TfrmAreasCadastro = class(Tfrm_modelo_cadastro)
    lbledt_arc_codigo: TLabeledEdit;
    lbledt_arc_nome: TLabeledEdit;
    Label2: TLabel;
    Label3: TLabel;
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
  frmAreasCadastro: TfrmAreasCadastro;

implementation

{$R *.dfm}

uses classAreas, untAlunosConsulta, untAreasConsulta;

procedure TfrmAreasCadastro.btnCancelarClick(Sender: TObject);
begin
  inherited;
Close;
end;

procedure TfrmAreasCadastro.btnSalvarClick(Sender: TObject);
var
areas : TClassAreas;
begin
  inherited;
  areas := TClassAreas.Create;

  if status = 'I' then
begin
   //Alimentar os atributos da classe
   areas.ARC_CODIGO := StrToInt(lbledt_arc_codigo.Text);
   areas.ARC_NOME := lbledt_arc_nome.Text;

    if areas.Inserir() then
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
  areas.ARC_CODIGO := StrToInt(lbledt_arc_codigo.Text);
  areas.ARC_NOME := lbledt_arc_nome.Text;


  if areas.Alterar() then
  begin
    ShowMessage('Registro alterado com sucesso!');
    //atualiza o grid
    frmAreasConsulta.FormShow(nil);
    //fecha o formulario
    Close;
  end;

end;
end;
procedure TfrmAreasCadastro.FormShow(Sender: TObject);
begin
  inherited;
  lbledt_arc_codigo.SetFocus;
end;

end.
