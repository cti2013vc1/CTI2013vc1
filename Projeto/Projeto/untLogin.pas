unit untLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmLogin = class(TForm)
    lbledt_usuario: TLabeledEdit;
    lbledt_senha: TLabeledEdit;
    btnLogar: TSpeedButton;
    btnCancelar: TSpeedButton;
    procedure btnLogarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses classColaboradores, untPrincipal;

procedure TfrmLogin.btnCancelarClick(Sender: TObject);
begin
  frmPrincipal.finalizar_sistema := true;
  Close;
end;

procedure TfrmLogin.btnLogarClick(Sender: TObject);
var
  login : TClassColaboradores;
begin
  login := TClassColaboradores.Create;
  //valida o login e senha
  if login.ValidarLogin(lbledt_usuario.Text, lbledt_senha.Text) then
  begin
    //se retornou verdadeiro, acessa o sistema
    frmPrincipal.logado := true;
    Close;
  end else
  ShowMessage('Login e/ou senha inválido(s)');
end;

procedure TfrmLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
begin
if (key = 13) and (lbledt_senha.Text <> '') then //Simula o TAB como ENTER
begin
 btnLogar.Click;
 end else
if key = 13 then
Self.Perform(WM_NEXTDLGCTL,0,0);

if (key = 27) then
  btnCancelar.Click;
end;
end;

end.
