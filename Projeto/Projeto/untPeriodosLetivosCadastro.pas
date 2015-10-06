unit untPeriodosLetivosCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloCadastro, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons, Data.DB;

type
  TfrmPeriodosLetivosCadastro = class(Tfrm_modelo_cadastro)
    lbledt_codigo: TLabeledEdit;
    lbledt_nome: TLabeledEdit;
    lbledt_qtdenotas: TLabeledEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    status : string;

  end;

var
  frmPeriodosLetivosCadastro: TfrmPeriodosLetivosCadastro;

implementation

{$R *.dfm}


uses classPeriodoLetivo, untPeriodosLetivosConsulta;

procedure TfrmPeriodosLetivosCadastro.btnCancelarClick(Sender: TObject);
begin
  inherited;
    Close;
end;

procedure TfrmPeriodosLetivosCadastro.btnSalvarClick(Sender: TObject);
var
  pel: TClassPeriodoLetivo;
begin
  inherited;
  pel := TClassPeriodoLetivo.Create;

  if status = 'I' then
begin
   //Alimentar os atributos da classe
   pel.PEL_CODIGO := StrToInt(lbledt_codigo.Text);
   pel.PEL_NOME := lbledt_nome.Text;
   pel.QTDE_NOTAS := StrToInt(lbledt_qtdenotas.Text);

    if pel.Inserir() then
    begin
      ShowMessage('Resgistro inserido com sucesso!');
      //atualizar a grid no form de consulta
      frmPeriodosLetivosConsulta.FormShow(nil); //alt + F11
      //fecha o form de cadastro
      Close;
    end;
end else  //se o status for editar
if status = 'E' then
begin
  //aqui vai os comandos para editar um registro
  //alimentar os atributos da classe
  pel.PEL_CODIGO := StrToInt(lbledt_codigo.Text);
  pel.PEL_NOME := lbledt_nome.Text;
  pel.QTDE_NOTAS := StrToInt(lbledt_qtdenotas.Text);


  if pel.Alterar() then
  begin
    ShowMessage('Registro alterado com sucesso!');
    //atualiza o grid
    frmPeriodosLetivosConsulta.FormShow(nil);
    //fecha o formulario
    Close;
  end;



end;
end;

procedure TfrmPeriodosLetivosCadastro.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
//Enter = Simula o tab
if (key = 13) then
  self.Perform(WM_NEXTDLGCTL,0,0);
//Ctrl + S = Salvar
if (key = 73) then
  btnSalvar.Click;
//Esc = Sair
if (key = 27) then
  btnCancelar.Click;
end;

procedure TfrmPeriodosLetivosCadastro.FormShow(Sender: TObject);
begin
  inherited;
  lbledt_codigo.SetFocus;
end;

end.
