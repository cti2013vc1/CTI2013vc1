unit classAlunos;

interface
uses
  FireDAC.Comp.Client, FireDAC.DApt;

type
  TclassAlunos = class
  private
    FALU_CODIGO: integer;
    FALU_NOME: string;
    FALU_DATANASCIMENTO: tdate;
    FALU_INEP: string;
    procedure SetALU_DATANASCIMENTO(const Value: tdate);
    procedure SetALU_NOME(const Value: string);
    procedure SetALU_CODIGO(const Value: integer);
    procedure SetALU_INEP(const Value: string);

  public
    property ALU_NOME : string read FALU_NOME write SetALU_NOME;
    property ALU_CODIGO : integer read FALU_CODIGO write SetALU_CODIGO;
    property ALU_DATANASCIMENTO : tdate read FALU_DATANASCIMENTO write SetALU_DATANASCIMENTO;
    property ALU_INEP : string read FALU_INEP write SetALU_INEP;


 //Depois de colocar todos os campos clicke Ctrl + Shift + C

    //escrever a uses acima do type
 function ConsultarAlunos(): TFDQuery;
 function Inserir(): boolean;
 procedure Carregar();
 function Alterar() : boolean;
 function Excluir() : boolean;


     end;
implementation

uses untConexao;
{ TclassAlunos }

function TclassAlunos.Alterar: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('UPDATE ');
fdquery.SQL.Add('ALUNOS ');//TABELA QUE VAI ALTERAR
fdquery.SQL.Add('SET ');
fdquery.SQL.Add('ALU_NOME = :ALU_NOME, ');  //CAMPO DE ALTERAÇÃO
fdquery.SQL.Add('ALU_DATANASCIMENTO = :ALU_DATANASCIMENTO, ');  //CAMPO DE ALTERAÇÃO
fdquery.SQL.Add('ALU_INEP = :ALU_INEP ');  //CAMPO DE ALTERAÇÃO
//APOS O ULTIMO CAMPO NÃO VAI VIRGULA
fdquery.SQL.Add('WHERE ');
fdquery.SQL.Add('ALU_CODIGO = :ALU_CODIGO ');

fdquery.ParamByName('ALU_CODIGO').Value := ALU_CODIGO;
fdquery.ParamByName('ALU_NOME').Value := ALU_NOME;
fdquery.ParamByName('ALU_DATANASCIMENTO').Value := ALU_DATANASCIMENTO;
fdquery.ParamByName('ALU_INEP').Value := ALU_INEP;
//executa no banco de dados
fdquery.ExecSQL;
//verifica se realmente fez a alteração no banco
if fdquery.RowsAffected > 0 then
  result := True else result := false

end;

procedure TclassAlunos.Carregar;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('SELECT * FROM ALUNOS ');
fdquery.SQL.Add('WHERE ALU_CODIGO = :ALU_CODIGO ');

fdquery.ParamByName('ALU_CODIGO').Value := FALU_CODIGO;

fdquery.Open();
FALU_NOME := fdquery.FieldByName('ALU_NOME').Value;
FALU_DATANASCIMENTO := fdquery.FieldByName('ALU_DATANASCIMENTO').Value;
FALU_INEP := fdquery.FieldByName('ALU_INEP').Value;

end;

function TclassAlunos.ConsultarAlunos: TFDQuery;
var
con : TFDQuery;
begin
con := TFDQuery.Create(nil);
con.Connection := dmConexao.FDConnection1;
con.sql.Add(         'SELECT                '+
                     'ALUNOS.ALU_CODIGO,   '+
                     'ALUNOS.ALU_NOME,     '+
                     'ALUNOS.ALU_DATANASCIMENTO,     '+
                     'ALUNOS.ALU_INEP     '+
                     'FROM ALUNOS          ');

con.Open();
result := con;

end;

function TclassAlunos.Excluir: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('DELETE ');
fdquery.SQL.Add('FROM ');
fdquery.SQL.Add('ALUNOS ');
fdquery.SQL.Add('WHERE');
fdquery.SQL.Add('ALU_CODIGO = :ALU_CODIGO ');

fdquery.ParamByName('ALU_CODIGO').Value := ALU_CODIGO;

fdquery.ExecSQL;

if fdquery.RowsAffected > 0 then
    result := True else result := False;

end;

function TclassAlunos.Inserir: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('INSERT INTO ');
fdquery.SQL.Add('ALUNOS ');//*
fdquery.SQL.Add('( ');
fdquery.SQL.Add('ALU_CODIGO, ');//**
fdquery.SQL.Add('ALU_NOME, ');//**
fdquery.SQL.Add('ALU_DATANASCIMENTO, ');//**
fdquery.SQL.Add('ALU_INEP ');//**
fdquery.SQL.Add(') ');
fdquery.SQL.Add('VALUES ');
fdquery.SQL.Add('( ');
fdquery.SQL.Add(':ALU_CODIGO, ');//**
fdquery.SQL.Add(':ALU_NOME, ');//**
fdquery.SQL.Add(':ALU_DATANASCIMENTO, ');//**
fdquery.SQL.Add(':ALU_INEP ');//**
fdquery.SQL.Add(') ');
//atribuir os valores para os parametros da SQL
fdquery.ParamByName('ALU_CODIGO').Value := FALU_CODIGO;
fdquery.ParamByName('ALU_NOME').Value := FALU_NOME;
fdquery.ParamByName('ALU_DATANASCIMENTO').Value := FALU_DATANASCIMENTO;
fdquery.ParamByName('ALU_INEP').Value := FALU_INEP;

fdquery.ExecSQL();
if fdquery.RowsAffected > 0 then
  result := true
else
  result := false;


end;

procedure TclassAlunos.SetALU_CODIGO(const Value: integer);
begin
  FALU_CODIGO := Value;
end;

procedure TclassAlunos.SetALU_DATANASCIMENTO(const Value: tdate);
begin
  FALU_DATANASCIMENTO := Value;
end;

procedure TclassAlunos.SetALU_INEP(const Value: string);
begin

end;

procedure TclassAlunos.SetALU_NOME(const Value: string);
begin
  FALU_NOME := Value;
end;

end.
