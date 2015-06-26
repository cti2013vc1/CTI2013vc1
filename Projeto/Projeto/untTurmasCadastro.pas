unit untTurmasCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloCadastro, Data.DB,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBCtrls;

type
  TfrmTurmasCadastro = class(Tfrm_modelo_cadastro)
    lbledt_tur_codigo: TLabeledEdit;
    DBL_ser_codigo: TDBLookupComboBox;
    DBL_periodos_letivos_codigo: TDBLookupComboBox;
    DBL_tur_codigo: TDBLookupComboBox;
    lbledt_tur_nome: TLabeledEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dsperiodoletivo: TDataSource;
    dsturnos: TDataSource;
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
  frmTurmasCadastro: TfrmTurmasCadastro;

implementation

{$R *.dfm}

uses classTurmas, untTurmasConsulta, classSeries, classPeriodoLetivo,
  classTurnos;

procedure TfrmTurmasCadastro.btnCancelarClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmTurmasCadastro.btnSalvarClick(Sender: TObject);
var
   turmas : TClassTurmas;
begin
  inherited;
  turmas := TClassTurmas.Create;

  if status = 'I' then
  begin
   //Alimentar os atributos da classe
   turmas.TUR_CODIGO := StrToInt(lbledt_tur_codigo.Text);
   turmas.SERIES_SER_CODIGO := StrToInt(DBL_ser_codigo.KeyValue);
   turmas.PERIODOS_LETIVOS_PEL_CODIGO := StrToInt(DBL_periodos_letivos_codigo.KeyValue);
   turmas.TURNOS_TUR_CODIGO := StrToInt(DBL_tur_codigo.KeyValue);
   turmas.TUR_NOME := lbledt_tur_nome.Text;


    if turmas.Inserir() then
    begin
      ShowMessage('Resgistro inserido com sucesso!');
      //atualizar a grid no form de consulta
      frmTurmasConsulta.FormShow(nil); //alt + F11
      //fecha o form de cadastro
      Close;
    end;
end else  //se o status for editar
if status = 'E' then
begin
  //aqui vai os comandos para editar um registro
  //alimentar os atributos da classe
    turmas.TUR_CODIGO := StrToInt(lbledt_tur_codigo.Text);
    turmas.SERIES_SER_CODIGO := StrToInt(DBL_ser_codigo.KeyValue);
    turmas.PERIODOS_LETIVOS_PEL_CODIGO := StrToInt(DBL_periodos_letivos_codigo.KeyValue);
    turmas.TURNOS_TUR_CODIGO := StrToInt(DBL_tur_codigo.KeyValue);
    turmas.TUR_NOME := lbledt_tur_nome.Text;


  if turmas.Alterar() then
  begin
    ShowMessage('Registro alterado com sucesso!');
    //atualiza o grid
    frmTurmasConsulta.FormShow(nil);
    //fecha o formulario
    Close;
  end;

end;
end;

procedure TfrmTurmasCadastro.FormShow(Sender: TObject);
var
  series : TClassSeries;
  periodos : TClassPeriodoLetivo;
  turnos  : TClassTurnos;
begin
  inherited;
  series := TClassSeries.Create;
  dsdados.DataSet := series.ConsultarSeries();

  periodos := TClassPeriodoLetivo.Create;
  dsperiodoletivo.DataSet := periodos.ConsultarPeriodoLetivo();

  turnos := TclassTurnos.Create;
  dsturnos.DataSet := turnos.ConsultarTurnos();
end;

end.
