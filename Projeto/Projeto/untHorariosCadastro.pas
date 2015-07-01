unit untHorariosCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloCadastro, Data.DB,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBCtrls;

type
  TfrmHorariosCadastro = class(Tfrm_modelo_cadastro)
    lbledt_hor_codigo: TLabeledEdit;
    DBL_colaboradores: TDBLookupComboBox;
    DBL_turmas: TDBLookupComboBox;
    DBL_materias: TDBLookupComboBox;
    lbledt_ano: TLabeledEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ds_colaboradores: TDataSource;
    ds_turmas: TDataSource;
    ds_materias: TDataSource;
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
  frmHorariosCadastro: TfrmHorariosCadastro;

implementation

{$R *.dfm}

uses classHorarios, untHorariosConsulta, classColaboradores, classMaterias,
  classTurmas;

procedure TfrmHorariosCadastro.btnCancelarClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmHorariosCadastro.btnSalvarClick(Sender: TObject);
var
  hor : TClassHorarios;
begin
  inherited;
  hor := TClassHorarios.Create;

  if status = 'I' then
  begin
   //Alimentar os atributos da classe
   hor.HOR_CODIGO := StrToInt(lbledt_hor_codigo.Text);
   hor.COLABORADORES_COL_CODIGO := StrToInt(DBL_colaboradores.KeyValue);
   hor.TURMAS_TUR_CODIGO := StrToInt(DBL_turmas.KeyValue);
   hor.MATERIAS_MAT_CODIGO := StrToInt(DBL_materias.KeyValue);
   hor.ANO := StrToInt(lbledt_ano.Text);


    if hor.Inserir() then
    begin
      ShowMessage('Resgistro inserido com sucesso!');
      //atualizar a grid no form de consulta
      frmHorariosConsulta.FormShow(nil); //alt + F11
      //fecha o form de cadastro
      Close;
    end;
end else  //se o status for editar
if status = 'E' then
begin
  //aqui vai os comandos para editar um registro
  //alimentar os atributos da classe
   hor.HOR_CODIGO := StrToInt(lbledt_hor_codigo.Text);
   hor.COLABORADORES_COL_CODIGO := StrToInt(DBL_colaboradores.KeyValue);
   hor.TURMAS_TUR_CODIGO := StrToInt(DBL_turmas.KeyValue);
   hor.MATERIAS_MAT_CODIGO := StrToInt(DBL_materias.KeyValue);
   hor.ANO := StrToInt(lbledt_ano.Text);

  if hor.Alterar() then
  begin
    ShowMessage('Registro alterado com sucesso!');
    //atualiza o grid
    frmHorariosConsulta.FormShow(nil);
    //fecha o formulario
    Close;
  end;
end;
end;
procedure TfrmHorariosCadastro.FormShow(Sender: TObject);
var
  colaboradores : TClassColaboradores;
  turmas : TClassTurmas;
  materias : TClassMaterias;
begin
  inherited;
  colaboradores := TClassColaboradores.Create;
  ds_colaboradores.DataSet := colaboradores.ConsultarColaboradores();

  turmas := TClassTurmas.Create;
  ds_turmas.DataSet := turmas.ConsultarTurmas();

  materias := TClassMaterias.Create;
  ds_materias.DataSet := materias.ConsultarMaterias();

end;

end.
