unit untSeriesCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloCadastro, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Buttons;

type
  TfrmSeriesCadastro = class(Tfrm_modelo_cadastro)
    lbledt_ser_codigo: TLabeledEdit;
    lbledt_ser_nome: TLabeledEdit;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    status : string;
  end;

var
  frmSeriesCadastro: TfrmSeriesCadastro;

implementation

{$R *.dfm}

uses classSeries, untSeriesConsulta;

procedure TfrmSeriesCadastro.btnCancelarClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmSeriesCadastro.btnSalvarClick(Sender: TObject);
var
  series: TClassSeries;
begin
  inherited;
  series := TClassSeries.Create;

  if status = 'I' then
begin
   //Alimentar os atributos da classe
   series.SER_CODIGO := StrToInt(lbledt_ser_codigo.Text);
   series.SER_NOME := lbledt_ser_nome.Text;

    if series.Inserir() then
    begin
      ShowMessage('Resgistro inserido com sucesso!');
      //atualizar a grid no form de consulta
      frmSeriesConsulta.FormShow(nil); //alt + F11
      //fecha o form de cadastro
      Close;
    end;
end else  //se o status for editar
if status = 'E' then
begin
  //aqui vai os comandos para editar um registro
  //alimentar os atributos da classe
  series.SER_CODIGO := StrToInt(lbledt_ser_codigo.Text);
  series.SER_NOME := lbledt_ser_nome.Text;


  if series.Alterar() then
  begin
    ShowMessage('Registro alterado com sucesso!');
    //atualiza o grid
    frmSeriesConsulta.FormShow(nil);
    //fecha o formulario
    Close;
  end;

end;
end;
end.
