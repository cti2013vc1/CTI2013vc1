unit untPeriodosLetivosCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloCadastro, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons, Data.DB;

type
  TfrmPeriodosLetivosCadastro = class(Tfrm_modelo_cadastro)
    lbl_pel_codigo: TLabeledEdit;
    lbl_pel_nome: TLabeledEdit;
    lbl_pel_qtde_notas: TLabeledEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
  status : string;
  procedure ListarPeriodosLetivos();

    { Public declarations }
  end;

var
  frmPeriodosLetivosCadastro: TfrmPeriodosLetivosCadastro;

implementation

{$R *.dfm}

uses classPeriodoLetivo, untPeriodosLetivosConsulta;

procedure TfrmPeriodosLetivosCadastro.ListarPeriodosLetivos;
begin

end;

procedure TfrmPeriodosLetivosCadastro.SpeedButton1Click(Sender: TObject);
var
periodos : TclassPeriodoLetivo;
begin
  inherited;
periodos := TclassPeriodoLetivo.Create;

if status = 'I' then
 begin

    //alimentar os atributos da classe
    periodos.PEL_CODIGO := StrToInt (lbl_pel_codigo.Text);
    periodos.PEL_NOME := lbl_pel_nome.Text;
    periodos.QTDE_NOTAS := StrToInt (lbl_pel_qtde_notas.Text);


    if periodos.Inserir() then
  begin
      ShowMessage('Registro Inserido com Sucesso');
      //atualiza a grid no form de consulta
      frmPeriodosLetivosConsulta.FormShow(nil);
      //fecha o form de cadastro
      close;
  end;
end else //se o status foi editar
if status = 'E' then
begin
    //aqui vai os comandos para editar um registro
    //alimentar is atributos da classe
    periodos.PEL_CODIGO := StrToInt (lbl_pel_codigo.Text);
    periodos.PEL_NOME := lbl_pel_nome.Text;
    periodos.QTDE_NOTAS := StrToInt (lbl_pel_qtde_notas.Text);

    if periodos.Alterar() then
    begin
      ShowMessage('Registro alterado com sucesso!');
      //atualiza o grid
      frmPeriodosLetivosConsulta.FormShow(nil);
      //fecha o formulário
      close;

end;
end;
end;

procedure TfrmPeriodosLetivosCadastro.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
