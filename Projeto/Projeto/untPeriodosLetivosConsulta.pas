unit untPeriodosLetivosConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloConsulta, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmPeriodosLetivosConsulta = class(Tfrm_modelo_consulta)
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPeriodosLetivosConsulta: TfrmPeriodosLetivosConsulta;

implementation

{$R *.dfm}

uses classPeriodoLetivo, untPeriodosLetivosCadastro;

procedure TfrmPeriodosLetivosConsulta.btnEditarClick(Sender: TObject);
var
  pel: TClassPeriodoLetivo;
begin
  inherited;
  pel:= TClassPeriodoLetivo.Create();
  pel.PEL_CODIGO := dsdados.DataSet.FieldByName ('PEL_CODIGO').Value;  pel.Carregar;
  frm_paises_cadastro.lbledt_codigo.Text := pai.PAI_CODIGO.ToString;  frmPeriodosLetivosCadastro.lbledt_nome.Text := pel.PEL_NOME;  frmPeriodosLetivosCadastro.lbledt_qtdenotas.Text := pel.QTDE_NOTAS;  frmPeriodosLetivosCadastro.Show;  //criar a variavel status dentro do public do  frmPeriodosLetivosCadastro.status := 'E';end;

procedure TfrmPeriodosLetivosConsulta.btnExcluirClick(Sender: TObject);
begin
  ShowMessage('Registro excluído com sucesso!');
  FormShow(nil);
end;

procedure TfrmPeriodosLetivosConsulta.btnInserirClick(Sender: TObject);
begin
  inherited;
  frmPeriodosLetivosCadastro.Show;
  frmPeriodosLetivosCadastro.status := 'I';
end;
procedure TfrmPeriodosLetivosConsulta.FormShow(Sender: TObject);
var
  pel : TClassPeriodoLetivo
begin
  inherited;
  pel := TClassPeriodoLetivo.Create();
  dsdados.DataSet := pel.ConsultarPeriodosLetivos();
  //Para acertar o script apertar alt + F11 e selecionar a class desejadaend;

end.
