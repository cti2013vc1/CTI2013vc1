unit untTurnosConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloConsulta, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmTurnosConsulta = class(Tfrm_modelo_consulta)
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtConsultaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTurnosConsulta: TfrmTurnosConsulta;

implementation

{$R *.dfm}

uses untTurnosCadastro, classTurnos, classFuncoes;

procedure TfrmTurnosConsulta.btnEditarClick(Sender: TObject);
var
   tur: TClassTurnos;
begin
  inherited;
  tur:= TClassTurnos.Create();
  LimparCampos(frmTurnosCadastro);
  tur.TUR_CODIGO := dsdados.DataSet.FieldByName ('TUR_CODIGO').Value;

  tur.Carregar;
  frmTurnosCadastro.lbledt_tur_codigo.Text := tur.TUR_CODIGO.ToString;
  frmTurnosCadastro.lbledt_tur_nome.Text := tur.TUR_NOME;
  frmTurnosCadastro.Show;
  //criar a variavel status dentro do public do
   frmTurnosCadastro.status := 'E';
end;

procedure TfrmTurnosConsulta.btnExcluirClick(Sender: TObject);
var
  tur : TclassTurnos;
begin
  inherited;
  tur := TclassTurnos.Create;
  tur.TUR_CODIGO :=  dsdados.DataSet.FieldByName('TUR_CODIGO').Value;

if tur.Excluir then
begin
  ShowMessage('Registro exclu�do com sucesso!');
  FormShow(nil);
end;

end;

procedure TfrmTurnosConsulta.btnInserirClick(Sender: TObject);
begin
  inherited;
  LimparCampos(frmTurnosCadastro);
  frmTurnosCadastro.Show;
  frmTurnosCadastro.status := 'I';
end;

procedure TfrmTurnosConsulta.edtConsultaChange(Sender: TObject);
var
turnos : TclassTurnos;
cond : string;
begin
turnos := TclassTurnos.Create;
  inherited;
  cond := 'TUR_CODIGO LIKE ''%'+edtConsulta.Text+'%'' OR ';
  cond := cond+ 'TUR_NOME LIKE ''%'+edtConsulta.Text+'%'' ';

    //QUANDO CONSULTADO POR TODOS OS CAMPOS DO SELECT
  dsdados.DataSet := turnos.ConsultarTurnos(cond);

    //QUANDO CONSULTADO POR COLUNA
  {dsdados.DataSet := turnos.ConsultarTurnos
    (lblTitulo.Caption +' LIKE ''%'+edt_consulta.Text+'%''');  }
end;
procedure TfrmTurnosConsulta.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmTurnosConsulta.FormShow(Sender: TObject);
var
tur : TclassTurnos;
begin
  inherited;
  tur := TclassTurnos.Create;
  dsdados.DataSet := tur.ConsultarTurnos();

end;

end.
