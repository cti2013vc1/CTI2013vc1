unit untTurnosConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloConsulta, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmTurnosConsulta = class(Tfrm_modelo_consulta)
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
  frmTurnosConsulta: TfrmTurnosConsulta;

implementation

{$R *.dfm}

uses classTurnos, untTurnosCadastro, untConexao;

{ TfrmTurnosConsulta }

{ TfrmTurnosConsulta }

{ TfrmTurnosConsulta }

procedure TfrmTurnosConsulta.btnEditarClick(Sender: TObject);
var
  tur: TClassTurnos;
begin
tur:= TClassTurnos.Create();
tur.TUR_CODIGO := dsdados.DataSet.FieldByName ('TUR_CODIGO').Value;
tur.Carregar;
frmTurnosCadastro.lbledt_codigo.Text := tur.TUR_CODIGO.ToString;
frmTurnosCadastro.lbledt_nome.Text := tur.TUR_NOME;
frmTurnosConsulta.Show;
//criar a variavel status dentro do public do
 frmTurnosConsulta.status := 'E';

end;

procedure TfrmTurnosConsulta.btnExcluirClick(Sender: TObject);
var
tur : TclassTurnos;
begin
tur := TclassTurnos.Create;
tur.TUR_CODIGO :=  dsdados.DataSet.FieldByName('TUR_CODIGO').Value;

if TUR.Excluir then
begin
  ShowMessage('Registro exclu�do com sucesso!');
  FormShow(nil);
end;

end;

procedure TfrmTurnosConsulta.btnInserirClick(Sender: TObject);
begin
  inherited;
  frmTurnosConsulta.Show;
  frmTurnosConsulta.status := 'I';

end;

procedure TfrmTurnosConsulta.FormShow(Sender: TObject);
var
  tur : TclassTurnos ;
begin
  inherited;
  tur := TclassTurnos.Create();
  dsdados.DataSet := tur.ConsultarTurnos();

end;

end.
