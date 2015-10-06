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
    procedure edtConsultaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSeriesConsulta: TfrmSeriesConsulta;

implementation

{$R *.dfm}

uses classSeries, untSeriesCadastro, classFuncoes;

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
  LimparCampos(frmSeriesCadastro);
  frmSeriesCadastro.Show;
  frmSeriesCadastro.status := 'I';
end;

procedure TfrmSeriesConsulta.edtConsultaChange(Sender: TObject);
var
series : TclassSeries;
cond : string;
begin
series := TclassSeries.Create;
  inherited;
  cond := 'SER_CODIGO LIKE ''%'+edtConsulta.Text+'%'' OR ';
  cond := cond+ 'SER_NOME LIKE ''%'+edtConsulta.Text+'%'' ';

    //QUANDO CONSULTADO POR TODOS OS CAMPOS DO SELECT
  dsdados.DataSet := series.ConsultarSeries(cond);

    //QUANDO CONSULTADO POR COLUNA
  {dsdados.DataSet := alseries.ConsultarSeries
    (lblTitulo.Caption +' LIKE ''%'+edt_consulta.Text+'%''');  }
end;


procedure TfrmSeriesConsulta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
//Ctrl + I
if (Shift = [ssCtrl]) and (Key = 49) then
btnInserir.Click;
//Ctrl + E = Editar
if (Shift = [ssCtrl]) and (Key = 45) then
btnEditar.Click;
// Delete = Deletar
if (key = 46) then
btnExcluir.Click;
if (key = 27) then
  Close;
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
