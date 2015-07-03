unit classHorarios;

interface

uses
  FireDAC.Comp.Client, FireDAC.DApt;

type
  TclassHorarios = class

  Private
    FANO: integer;
    FMATERIAS_MAT_CODIGO: integer;
    FCOLABORADORES_COL_CODIGO: integer;
    FHOR_CODIGO: integer;
    FTURMAS_TUR_CODIGO: integer;
    procedure SetANO(const Value: integer);
    procedure SetCOLABORADORES_COL_CODIGO(const Value: integer);
    procedure SetHOR_CODIGO(const Value: integer);
    procedure SetMATERIAS_MAT_CODIGO(const Value: integer);
    procedure SetTURMAS_TUR_CODIGO(const Value: integer);

  Public
  property HOR_CODIGO : integer read FHOR_CODIGO write SetHOR_CODIGO;
  property COLABORADORES_COL_CODIGO : integer read FCOLABORADORES_COL_CODIGO write SetCOLABORADORES_COL_CODIGO;
  property TURMAS_TUR_CODIGO : integer read FTURMAS_TUR_CODIGO write SetTURMAS_TUR_CODIGO;
  property MATERIAS_MAT_CODIGO : integer read FMATERIAS_MAT_CODIGO write SetMATERIAS_MAT_CODIGO;
  property ANO : integer read FANO write SetANO;

       //Depois de colocar todos os campos clicke Ctrl + Shift + C

    //escrever a uses acima do type
 function ConsultarHorarios(): TFDQuery;
 function Inserir(): boolean;
 procedure Carregar();
 function Alterar() : boolean;
 function Excluir() : boolean;
  end;

implementation

uses untConexao;
{ TclassHorarios }

function TclassHorarios.Alterar: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('UPDATE ');
fdquery.SQL.Add('HORARIOS ');//TABELA QUE VAI ALTERAR
fdquery.SQL.Add('SET ');
fdquery.SQL.Add('ANO = :ANO ');  //CAMPO DE ALTERAÇÃO
//APOS O ULTIMO CAMPO NÃO VAI VIRGULA
fdquery.SQL.Add('WHERE ');
fdquery.SQL.Add('HOR_CODIGO = :HOR_CODIGO and ');
fdquery.SQL.Add('COLABORADORES_COL_CODIGO = :COLABORADORES_COL_CODIGO AND ');
fdquery.SQL.Add('TURMAS_TUR_CODIGO = :TURMAS_TUR_CODIGO AND ');
fdquery.SQL.Add('MATERIAS_MAT_CODIGO = :MATERIAS_MAT_CODIGO ');

fdquery.ParamByName('HOR_CODIGO').Value := HOR_CODIGO;
fdquery.ParamByName('COLABORADORES_COL_CODIGO').Value := COLABORADORES_COL_CODIGO;
fdquery.ParamByName('TURMAS_TUR_CODIGO').Value := TURMAS_TUR_CODIGO;
fdquery.ParamByName('MATERIAS_MAT_CODIGO').Value := MATERIAS_MAT_CODIGO;
fdquery.ParamByName('ANO').Value := ANO;
//executa no banco de dados
fdquery.ExecSQL;
//verifica se realmente fez a alteração no banco
if fdquery.RowsAffected > 0 then
  result := True else result := false
end;

procedure TclassHorarios.Carregar;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('SELECT * FROM HORARIOS ');
fdquery.SQL.Add('WHERE HOR_CODIGO = :HOR_CODIGO AND ');
fdquery.SQL.Add('COLABORADORES_COL_CODIGO = :COLABORADORES_COL_CODIGO AND ');
fdquery.SQL.Add('TURMAS_TUR_CODIGO = :TURMAS_TUR_CODIGO AND ');
fdquery.SQL.Add('MATERIAS_MAT_CODIGO = :MATERIAS_MAT_CODIGO ');

fdquery.ParamByName('HOR_CODIGO').Value := FHOR_CODIGO;
fdquery.ParamByName('COLABORADORES_COL_CODIGO').Value := FCOLABORADORES_COL_CODIGO;
fdquery.ParamByName('TURMAS_TUR_CODIGO').Value := FTURMAS_TUR_CODIGO;
fdquery.ParamByName('MATERIAS_MAT_CODIGO').Value := FMATERIAS_MAT_CODIGO;

fdquery.Open();
FANO := fdquery.FieldByName('ANO').Value;

end;

function TclassHorarios.ConsultarHorarios: TFDQuery;
var
con : TFDQuery;
begin
con := TFDQuery.Create(nil);
con.Connection := dmConexao.FDConnection1;
con.sql.Add(         'SELECT                 '+
                     'HORARIOS.HOR_CODIGO,        '+
                     'COLABORADORES.COL_CODIGO,     '+
                     'COLABORADORES.COL_NOME,     '+
                     'TURMAS.TUR_CODIGO,      '+
                     'TURMAS.TUR_NOME,      '+
                     'MATERIAS.MAT_CODIGO,    '+
                     'MATERIAS.MAT_NOME,    '+
                     'HORARIOS.ANO    '+
                     'FROM HORARIOS          '+
                     'LEFT OUTER JOIN COLABORADORES ON ( COLABORADORES.COL_CODIGO = HORARIOS.COLABORADORES_COL_CODIGO ) '+
                     'LEFT OUTER JOIN TURMAS ON ( TURMAS.TUR_CODIGO = HORARIOS.TURMAS_TUR_CODIGO ) '+
                     'LEFT OUTER JOIN MATERIAS ON ( MATERIAS.MAT_CODIGO = HORARIOS.MATERIAS_MAT_CODIGO ) Order By HORARIOS.HOR_CODIGO');
con.Open();
result := con;

end;


function TclassHorarios.Excluir: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('DELETE ');
fdquery.SQL.Add('FROM ');
fdquery.SQL.Add('HORARIOS ');
fdquery.SQL.Add('WHERE');
fdquery.SQL.Add('HOR_CODIGO = :HOR_CODIGO AND ');
fdquery.SQL.Add('COLABORADORES_COL_CODIGO = :COLABORADORES_COL_CODIGO AND ');
fdquery.SQL.Add('TURMAS_TUR_CODIGO = :TURMAS_TUR_CODIGO AND ');
fdquery.SQL.Add('MATERIAS_MAT_CODIGO = :MATERIAS_MAT_CODIGO ');

fdquery.ParamByName('HOR_CODIGO').Value := HOR_CODIGO;
fdquery.ParamByName('COLABORADORES_COL_CODIGO').Value := COLABORADORES_COL_CODIGO;
fdquery.ParamByName('TURMAS_TUR_CODIGO').Value := TURMAS_TUR_CODIGO;
fdquery.ParamByName('MATERIAS_MAT_CODIGO').Value := MATERIAS_MAT_CODIGO;

fdquery.ExecSQL;

if fdquery.RowsAffected > 0 then
    result := True else result := False;

end;

function TclassHorarios.Inserir: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('INSERT INTO ');
fdquery.SQL.Add('HORARIOS ');//*
fdquery.SQL.Add('( ');
fdquery.SQL.Add('HOR_CODIGO, ');//**
fdquery.SQL.Add('COLABORADORES_COL_CODIGO, ');//**
fdquery.SQL.Add('TURMAS_TUR_CODIGO, ');//**
fdquery.SQL.Add('MATERIAS_MAT_CODIGO, ');//**
fdquery.SQL.Add('ANO ');//**
fdquery.SQL.Add(') ');
fdquery.SQL.Add('VALUES ');
fdquery.SQL.Add('( ');
fdquery.SQL.Add(':HOR_CODIGO, ');//**
fdquery.SQL.Add(':COLABORADORES_COL_CODIGO, ');//**
fdquery.SQL.Add(':TURMAS_TUR_CODIGO, ');//**
fdquery.SQL.Add(':MATERIAS_MAT_CODIGO, ');//**
fdquery.SQL.Add(':ANO ');//**
fdquery.SQL.Add(') ');
//atribuir os valores para os parametros da SQL
fdquery.ParamByName('HOR_CODIGO').Value := FHOR_CODIGO;
fdquery.ParamByName('COLABORADORES_COL_CODIGO').Value := FCOLABORADORES_COL_CODIGO;
fdquery.ParamByName('TURMAS_TUR_CODIGO').Value := FTURMAS_TUR_CODIGO;
fdquery.ParamByName('MATERIAS_MAT_CODIGO').Value := FMATERIAS_MAT_CODIGO;
fdquery.ParamByName('ANO').Value := FANO;

fdquery.ExecSQL();
if fdquery.RowsAffected > 0 then
  result := true
else
  result := false;

end;

procedure TclassHorarios.SetANO(const Value: integer);
begin
  FANO := Value;
end;

procedure TclassHorarios.SetCOLABORADORES_COL_CODIGO(const Value: integer);
begin
  FCOLABORADORES_COL_CODIGO := Value;
end;

procedure TclassHorarios.SetHOR_CODIGO(const Value: integer);
begin
  FHOR_CODIGO := Value;
end;

procedure TclassHorarios.SetMATERIAS_MAT_CODIGO(const Value: integer);
begin
  FMATERIAS_MAT_CODIGO := Value;
end;

procedure TclassHorarios.SetTURMAS_TUR_CODIGO(const Value: integer);
begin
  FTURMAS_TUR_CODIGO := Value;
end;

end.
