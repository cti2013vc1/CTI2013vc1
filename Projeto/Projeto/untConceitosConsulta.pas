unit untConceitosConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloConsulta, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmConceitosConsulta = class(Tfrm_modelo_consulta)
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
  frmConceitosConsulta: TfrmConceitosConsulta;

implementation

{$R *.dfm}

uses classConceitos, untConceitosCadastro, classFuncoes;

procedure TfrmConceitosConsulta.btnEditarClick(Sender: TObject);
var
  conceitos : TclassConceitos;
begin
  inherited;
  conceitos:= TclassConceitos.Create();
  conceitos.CON_CODIGO := dsdados.DataSet.FieldByName ('CON_CODIGO').Value;
  conceitos.Carregar;
  frmConceitosCadastro.lbledt_con_codigo.Text := conceitos.CON_CODIGO.ToString;
  frmConceitosCadastro.lbledt_con_nome.Text := conceitos.CON_NOME;
  frmConceitosCadastro.lbledt_con_letra.Text := conceitos.CON_LETRA;
  frmConceitosCadastro.Show;
  //criar a variavel status dentro do public do
   frmConceitosCadastro.status := 'E';
end;

procedure TfrmConceitosConsulta.btnExcluirClick(Sender: TObject);
var
  conceitos : TclassConceitos;
begin
  inherited;
  conceitos := TclassConceitos.Create;
  conceitos.CON_CODIGO :=  dsdados.DataSet.FieldByName('CON_CODIGO').Value;

if conceitos.Excluir then
begin
  ShowMessage('Registro exclu�do com sucesso!');
  FormShow(nil);
end;

end;

procedure TfrmConceitosConsulta.btnInserirClick(Sender: TObject);
begin
  inherited;
  LimparCampos(frmConceitosCadastro);
  frmConceitosCadastro.Show;
  frmConceitosCadastro.status := 'I';
end;

procedure TfrmConceitosConsulta.edtConsultaChange(Sender: TObject);
var
conceitos : TclassConceitos;
cond : string;
begin
conceitos := TclassConceitos.Create;
  inherited;
  cond := 'CON_CODIGO LIKE ''%'+edtConsulta.Text+'%'' OR ';
  cond := cond+ 'CON_NOME LIKE ''%'+edtConsulta.Text+'%'' OR ';
  cond := cond+ 'CON_LETRA LIKE ''%'+edtConsulta.Text+'%'' ';

    //QUANDO CONSULTADO POR TODOS OS CAMPOS DO SELECT
  dsdados.DataSet := conceitos.ConsultarConceitos(cond);

    //QUANDO CONSULTADO POR COLUNA
  {dsdados.DataSet := conceitos.ConsultarConceitos
    (lblTitulo.Caption +' LIKE ''%'+edt_consulta.Text+'%''');  }
end;

procedure TfrmConceitosConsulta.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmConceitosConsulta.FormShow(Sender: TObject);
var
conceitos : TClassConceitos;
begin
  inherited;
   conceitos := TClassConceitos.Create;
   dsdados.DataSet := conceitos.ConsultarConceitos();
end;

end.
