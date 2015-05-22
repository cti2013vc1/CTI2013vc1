program Project1;

uses
  Vcl.Forms,
  untPrincilpal in 'untPrincilpal.pas' {frmPrincipal},
  untConexao in 'untConexao.pas' {DMConexao: TDataModule},
  classPeriodoLetivo in 'classPeriodoLetivo.pas',
  classTurnos in 'classTurnos.pas',
  classMaterias in 'classMaterias.pas',
  classSeries in 'classSeries.pas',
  classColaboradores in 'classColaboradores.pas',
  classConceitos in 'classConceitos.pas',
  classAlunos in 'classAlunos.pas',
  classAreas in 'classAreas.pas',
  classTurmas in 'classTurmas.pas',
  classMatriculas in 'classMatriculas.pas',
  unt_modeloCadastro in 'unt_modeloCadastro.pas' {frm_modelo_cadastro},
  unt_modeloConsulta in 'unt_modeloConsulta.pas' {frm_modelo_consulta},
  untPeriodosLetivosCadastro in 'untPeriodosLetivosCadastro.pas' {frmPeriodosLetivosCadastro},
  untPeriodosLetivosConsulta in 'untPeriodosLetivosConsulta.pas' {frmPeriodosLetivosConsulta},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Light');
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(Tfrm_modelo_cadastro, frm_modelo_cadastro);
  Application.CreateForm(Tfrm_modelo_consulta, frm_modelo_consulta);
  Application.CreateForm(TfrmPeriodosLetivosCadastro, frmPeriodosLetivosCadastro);
  Application.CreateForm(TfrmPeriodosLetivosConsulta, frmPeriodosLetivosConsulta);
  Application.Run;
end.
