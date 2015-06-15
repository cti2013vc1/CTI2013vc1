unit untMateriasCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloCadastro, Data.DB,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBCtrls;

type
  TfrmMateriasCadastro = class(Tfrm_modelo_cadastro)
    lbledt_mat_codigo: TLabeledEdit;
    DBL_materias: TDBLookupComboBox;
    lbledt_mat_nome: TLabeledEdit;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    status : string;
  end;

var
  frmMateriasCadastro: TfrmMateriasCadastro;

implementation

{$R *.dfm}

uses classMaterias, classAreas, untMateriasConsulta, untAlunosConsulta;

procedure TfrmMateriasCadastro.btnCancelarClick(Sender: TObject);
begin
  inherited;
Close;
end;

procedure TfrmMateriasCadastro.btnSalvarClick(Sender: TObject);
var
  mat : TclassMaterias;
begin
  inherited;
  mat := TclassMaterias.Create;

  if status = 'I' then
  begin
   //Alimentar os atributos da classe
   mat.MAT_CODIGO := StrToInt(lbledt_mat_codigo.Text);
   mat.MAT_NOME := lbledt_mat_nome.Text;
   mat.AREAS_ARC_CODIGO := StrToInt(DBL_materias.KeyValue);

    if mat.Inserir() then
    begin
      ShowMessage('Resgistro inserido com sucesso!');
      //atualizar a grid no form de consulta
      frmMateriasConsulta.FormShow(nil); //alt + F11
      //fecha o form de cadastro
      Close;
    end;
end else  //se o status for editar
if status = 'E' then
begin
  //aqui vai os comandos para editar um registro
  //alimentar os atributos da classe
 mat.MAT_CODIGO := StrToInt(lbledt_mat_codigo.Text);
   mat.MAT_NOME := lbledt_mat_nome.Text;
   mat.AREAS_ARC_CODIGO := StrToInt(DBL_materias.KeyValue);


  if mat.Alterar() then
  begin
    ShowMessage('Registro alterado com sucesso!');
    //atualiza o grid
    frmAlunosConsulta.FormShow(nil);
    //fecha o formulario
    Close;
  end;

end;
end;

procedure TfrmMateriasCadastro.FormShow(Sender: TObject);
var
  areas : TclassAreas;

begin
  inherited;
  areas := TclassAreas.Create;
  dsdados.DataSet := areas.ConsultarAreas;
end;

end.
