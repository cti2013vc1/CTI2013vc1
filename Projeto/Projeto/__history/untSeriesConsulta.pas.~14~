unit untSeriesConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloConsulta, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmSeriesConsulta = class(Tfrm_modelo_consulta)
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
  frmSeriesConsulta: TfrmSeriesConsulta;

implementation

{$R *.dfm}

uses classSeries, untSeriesCadastro;

procedure TfrmSeriesConsulta.btnEditarClick(Sender: TObject);
var
   series: TClassSeries;
begin
  inherited;
  series:= TClassSeries.Create();
  series.SER_CODIGO := dsdados.DataSet.FieldByName ('SER_CODIGO').Value;
  series.Carregar;
  frmSeriesCadastro.lbledt_ser_codigo.Text := series.SER_CODIGO.ToString;
  frmSeriesCadastro.lbledt_ser_nome.Text := series.SER_NOME;
  frmSeriesCadastro.Show;
  //criar a variavel status dentro do public do
   frmSeriesCadastro.status := 'E';

end;

procedure TfrmSeriesConsulta.btnExcluirClick(Sender: TObject);
var
series : TclassSeries;
begin
  inherited;
  series := TclassSeries.Create;
  series.SER_CODIGO :=  dsdados.DataSet.FieldByName('SER_CODIGO').Value;

if series.Excluir then
begin
  ShowMessage('Registro excluído com sucesso!');
  FormShow(nil);
end;

end;

procedure TfrmSeriesConsulta.btnInserirClick(Sender: TObject);
begin
  inherited;
  frmSeriesCadastro.Show;
  frmSeriesCadastro.status := 'I';
end;

procedure TfrmSeriesConsulta.FormShow(Sender: TObject);
var
series : TClassSeries;
begin
  inherited;
  series := TclassSeries.Create;
  dsdados.DataSet := series.ConsultarSeries();
end;

end.
