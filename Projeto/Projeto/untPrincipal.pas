unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastrodeperodosletivos1: TMenuItem;
    Cadastrodesries1: TMenuItem;
    menu1: TMenuItem;
    Colaboradores1: TMenuItem;
    Conceitos1: TMenuItem;
    Alunos1: TMenuItem;
    Matrias1: TMenuItem;
    Matrculas1: TMenuItem;
    urmas1: TMenuItem;
    Horrios1: TMenuItem;
    Notas1: TMenuItem;
    Resultadofinal1: TMenuItem;
    reas1: TMenuItem;
    urnos1: TMenuItem;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses untPeriodosLetivosConsulta, untSeriesCadastro, untSeriesConsulta,
  untColaboradoresConsulta, untConceitosConsulta, untAlunosCadastro,
  untAreasConsulta, untTurnosConsulta, untAlunosConsulta, untMaterias,
  untMateriasConsulta, untMateriasCadastro, untMatriculasConsulta,
  untTurmasConsulta;



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

procedure TfrmPrincipal.Matrculas1Click(Sender: TObject);
begin
frmMatriculasConsulta.Show;
end;

procedure TfrmPrincipal.Matrias1Click(Sender: TObject);
begin
frmMateriasConsulta.Show;
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
