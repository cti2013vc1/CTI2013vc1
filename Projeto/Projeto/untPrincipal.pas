unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    Menu: TMainMenu;
    Cadastrodeperodosletivos1: TMenuItem;
    Cadastrodesries1: TMenuItem;
    Colaboradores1: TMenuItem;
    Conceitos1: TMenuItem;
    Alunos1: TMenuItem;
    Matrias1: TMenuItem;
    Matrculas1: TMenuItem;
    urmas1: TMenuItem;
    Horrios1: TMenuItem;
    reas1: TMenuItem;
    urnos1: TMenuItem;
    Image1: TImage;
    Image2: TImage;
    Panel1: TPanel;
    Relatrios1: TMenuItem;
    NotasTrimestrais1: TMenuItem;
    Grficos1: TMenuItem;
    Escolhergrfico1: TMenuItem;
    procedure Cadastrodeperodosletivos1Click(Sender: TObject);
    procedure Cadastrodesries1Click(Sender: TObject);
    procedure Colaboradores1Click(Sender: TObject);
    procedure Conceitos1Click(Sender: TObject);
    procedure Alunos1Click(Sender: TObject);
    procedure reas1Click(Sender: TObject);
    procedure urnos1Click(Sender: TObject);
    procedure Matrias1Click(Sender: TObject);
    procedure Matrculas1Click(Sender: TObject);
    procedure urmas1Click(Sender: TObject);
    procedure Horrios1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NotasTrimestrais1Click(Sender: TObject);
    //procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    logado : Boolean;
    finalizar_sistema : Boolean;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses untPeriodosLetivosConsulta, untSeriesCadastro, untSeriesConsulta,
  untColaboradoresConsulta, untConceitosConsulta, untAlunosCadastro,
  untTurnosConsulta, untAlunosConsulta, untMaterias,
  untMateriasConsulta, untMateriasCadastro, untMatriculasConsulta,
  untTurmasConsulta, untHorariosConsulta, untLogin, untAreasConsulta,
  untRelNotas;



procedure TfrmPrincipal.Alunos1Click(Sender: TObject);
begin
frmAlunosConsulta.Show;
end;

procedure TfrmPrincipal.Cadastrodeperodosletivos1Click(Sender: TObject);
begin
frmPeriodosLetivosConsulta.Show;
end;

procedure TfrmPrincipal.Cadastrodesries1Click(Sender: TObject);
begin
frmSeriesConsulta.Show;
end;

procedure TfrmPrincipal.Colaboradores1Click(Sender: TObject);
begin
frmColaboradoresConsulta.Show;
end;

procedure TfrmPrincipal.Conceitos1Click(Sender: TObject);
begin
frmConceitosConsulta.Show;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  //Aqui ele diz que quando o usu�rio clicar em fechar o sistema, o formul�rio de login abre at� que a senha esteja verdadeira
{while logado = false do
  begin
  if finalizar_sistema = true then
  begin
    Application.Terminate;
    Break;
  end;
    frmLogin.ShowModal;
  end;  }
end;


procedure TfrmPrincipal.Horrios1Click(Sender: TObject);
begin
frmHorariosConsulta.Show;
end;

procedure TfrmPrincipal.Matrculas1Click(Sender: TObject);
begin
frmMatriculasConsulta.Show;
end;

procedure TfrmPrincipal.Matrias1Click(Sender: TObject);
begin
frmMateriasConsulta.Show;
end;

procedure TfrmPrincipal.NotasTrimestrais1Click(Sender: TObject);
begin
frmRelNotas.Show;
end;

procedure TfrmPrincipal.reas1Click(Sender: TObject);
begin
frmAreasConsulta.Show;
end;

procedure TfrmPrincipal.urmas1Click(Sender: TObject);
begin
frmTurmasConsulta.Show;
end;

procedure TfrmPrincipal.urnos1Click(Sender: TObject);
begin
frmTurnosConsulta.Show;
end;

end.
