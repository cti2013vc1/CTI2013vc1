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
  ShowMessage('Registro excluído com sucesso!');
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

procedure TfrmTurnosConsulta.FormShow(Sender: TObject);
var
tur : TclassTurnos;
begin
  inherited;
  tur := TclassTurnos.Create;
  dsdados.DataSet := tur.ConsultarTurnos();

end;

end.
