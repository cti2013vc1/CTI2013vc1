unit untPeriodosLetivosConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloConsulta, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Data.DB;

type
  TfrmPeriodosLetivosConsulta = class(Tfrm_modelo_consulta)
    DSdados: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
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

procedure TfrmPeriodosLetivosConsulta.FormShow(Sender: TObject);
var
periodos : TclassPeriodoLetivo;
begin
  inherited;
  periodos := TclassPeriodoLetivo.Create();
  dsdados.DataSet := periodos.ConsultarPeriodoLetivo();
end;

procedure TfrmPeriodosLetivosConsulta.SpeedButton1Click(Sender: TObject);
begin
  inherited;
frmPeriodosLetivosCadastro.show;

frmPeriodosLetivosCadastro.ListarPeriodosLetivos;
//criar a variavel status dentro do public dofrmcadastroCidades
frmPeriodosLetivosCadastro.status := 'I';
end;

procedure TfrmPeriodosLetivosConsulta.SpeedButton2Click(Sender: TObject);
var
Pel : TClassPeriodoLetivo;
begin
  inherited;
  //alimentar todos os paises na tela de cadastro
  frmPeriodosLetivosCadastro.ListarPeriodosLetivos();

  Pel := TClassPeriodoLetivo.Create();
  Pel.PEL_CODIGO := dsdados.DataSet.FieldByName('PEL_CODIGO').Value;
  Pel.Carregar;
  frmPeriodosLetivosCadastro.lbl_pel_codigo := Pel.PEL_CODIGO.ToString;
  Enabled := false;
  frmPeriodosLetivosCadastro.lbl_pel_nome.Text := Pel.PEL_NOME;
  frmPeriodosLetivosCadastro.lbl_pel_qtde_notas.Text := Pel.QTDE_NOTAS.ToString;


  frmPeriodosLetivosCadastro.Show;
  //criar a variavel status dentro do public dofrmcadastroCidades
  frmPeriodosLetivosCadastro.status := 'E';
end;
end.
