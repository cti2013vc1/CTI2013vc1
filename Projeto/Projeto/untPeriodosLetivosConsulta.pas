unit untPeriodosLetivosConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloConsulta, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Data.DB;

type
  TfrmPeriodosLetivosConsulta = class(Tfrm_modelo_consulta)
    procedure FormShow(Sender: TObject);
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

uses classPeriodoLetivo, untPeriodosLetivosCadastro, untConexao;

procedure TfrmPeriodosLetivosConsulta.btnEditarClick(Sender: TObject);
var
  pel: TClassPeriodoLetivo;
begin
pel:= TClassPeriodoLetivo.Create();
pel.PEL_CODIGO := dsdados.DataSet.FieldByName ('PEL_CODIGO').Value;
pel.Carregar;
frmPeriodosLetivosCadastro.lbledt_codigo.Text := pel.PEL_CODIGO.ToString;
frmPeriodosLetivosCadastro.lbledt_nome.Text := pel.PEL_NOME;
frmPeriodosLetivosCadastro.lbledt_qtdenotas.Text := pel.QTDE_NOTAS.ToString;
frmPeriodosLetivosCadastro.Show;
//criar a variavel status dentro do public do
 frmPeriodosLetivosCadastro.status := 'E';
end;

procedure TfrmPeriodosLetivosConsulta.btnExcluirClick(Sender: TObject);
var
pel : TclassPeriodoLetivo;
begin
pel := TclassPeriodoLetivo.Create;
pel.PEL_CODIGO :=  dsdados.DataSet.FieldByName('PEL_CODIGO').Value;

if PEL.Excluir then
begin
  ShowMessage('Registro exclu�do com sucesso!');
  FormShow(nil);
end;

end;

procedure TfrmPeriodosLetivosConsulta.btnInserirClick(Sender: TObject);
begin
  inherited;
  frmPeriodosLetivosCadastro.Show;
  frmPeriodosLetivosCadastro.status := 'I';
end;

procedure TfrmPeriodosLetivosConsulta.FormShow(Sender: TObject);
var
  pel : TClassPeriodoLetivo ;
begin
  inherited;
  pel := TClassPeriodoLetivo.Create();
  dsdados.DataSet := pel.ConsultarPeriodoLetivo();

end;

end.


