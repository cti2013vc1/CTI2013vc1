unit classResultadoFinal;

interface

uses
  FireDAC.Comp.Client, FireDAC.DApt;

type
  TclassResultadoFinal = class

  private
    FRES_CC: string;
    FRES_CA: string;
    FRES_FALTAS: integer;
    FALUNOS_ALU_CODIGO: integer;
    FANO: integer;
    FRES_OBS: string;
    FMATERIAS_MAT_CODIGO: integer;
    FRES_AULAS_DADAS: integer;
    FTURMAS_TUR_CODIGO: integer;
    procedure SetALUNOS_ALU_CODIGO(const Value: integer);
    procedure SetANO(const Value: integer);
    procedure SetMATERIAS_MAT_CODIGO(const Value: integer);
    procedure SetRES_AULAS_DADAS(const Value: integer);
    procedure SetRES_CA(const Value: string);
    procedure SetRES_CC(const Value: string);
    procedure SetRES_FALTAS(const Value: integer);
    procedure SetRES_OBS(const Value: string);
    procedure SetTURMAS_TUR_CODIGO(const Value: integer);

    public

    property ALUNOS_ALU_CODIGO : integer read FALUNOS_ALU_CODIGO write SetALUNOS_ALU_CODIGO;
    property TURMAS_TUR_CODIGO : integer read FTURMAS_TUR_CODIGO write SetTURMAS_TUR_CODIGO;
    property MATERIAS_MAT_CODIGO : integer read FMATERIAS_MAT_CODIGO write SetMATERIAS_MAT_CODIGO;
    property ANO : integer read FANO write SetANO;
    property RES_FALTAS : integer read FRES_FALTAS write SetRES_FALTAS;
    property RES_AULAS_DADAS : integer read FRES_AULAS_DADAS write SetRES_AULAS_DADAS;
    property RES_CC : string read FRES_CC write SetRES_CC;
    property RES_CA : string read FRES_CA write SetRES_CA;
    property RES_OBS : string read FRES_OBS write SetRES_OBS;

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
{ TclassResultadoFinal }

function TclassResultadoFinal.Alterar: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('UPDATE ');
fdquery.SQL.Add('RESULTADO_FINAL ');//TABELA QUE VAI ALTERAR
fdquery.SQL.Add('SET ');
fdquery.SQL.Add('RES_FALTAS = :RES_FALTAS, ');  //CAMPO DE ALTERA플O
fdquery.SQL.Add('RES_AULAS_DADAS = :RES_AULAS_DADAS, ');  //CAMPO DE ALTERA플O
fdquery.SQL.Add('RES_CC = :RES_CC, ');  //CAMPO DE ALTERA플O
fdquery.SQL.Add('RES_CA = :RES_CA, ');  //CAMPO DE ALTERA플O
fdquery.SQL.Add('RES_OBS = :RES_OBS ');  //CAMPO DE ALTERA플O
//APOS O ULTIMO CAMPO N홒 VAI VIRGULA
fdquery.SQL.Add('WHERE ');
fdquery.SQL.Add('ANO = :ANO AND ');
fdquery.SQL.Add('ALUNOS_ALU_CODIGO = :ALUNOS_ALU_CODIGO AND ');
fdquery.SQL.Add('TURMAS_TUR_CODIGO = :TURMAS_TUR_CODIGO AND ');
fdquery.SQL.Add('MATERIAS_MAT_CODIGO = :MATERIAS_MAT_CODIGO ');

fdquery.ParamByName('ANO').Value := ANO;
fdquery.ParamByName('ALUNOS_ALU_CODIGO').Value := ALUNOS_ALU_CODIGO;
fdquery.ParamByName('TURMAS_TUR_CODIGO').Value := TURMAS_TUR_CODIGO;
fdquery.ParamByName('MATERIAS_MAT_CODIGO').Value := MATERIAS_MAT_CODIGO;
fdquery.ParamByName('RES_FALTAS').Value := RES_FALTAS;
fdquery.ParamByName('RES_AULAS_DADAS').Value := RES_AULAS_DADAS;
fdquery.ParamByName('RES_CC').Value := RES_CC;
fdquery.ParamByName('RES_CA').Value := RES_CA;
fdquery.ParamByName('RES_OBS').Value := RES_OBS;
//executa no banco de dados
fdquery.ExecSQL;
//verifica se realmente fez a altera豫o no banco
if fdquery.RowsAffected > 0 then
  result := True else result := false
end;

procedure TclassResultadoFinal.Carregar;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('SELECT * FROM RESULTADO_FINAL ');
fdquery.SQL.Add('WHERE ANO = :ANO AND ');
fdquery.SQL.Add('ALUNOS_ALU_CODIGO = :ALUNOS_ALU_CODIGO AND ');
fdquery.SQL.Add('TURMAS_TUR_CODIGO = :TURMAS_TUR_CODIGO AND ');
fdquery.SQL.Add('MATERIAS_MAT_CODIGO = :MATERIAS_MAT_CODIGO ');

fdquery.ParamByName('ANO').Value := FANO;
fdquery.ParamByName('ALUNOS_ALU_CODIGO').Value := FALUNOS_ALU_CODIGO;
fdquery.ParamByName('TURMAS_TUR_CODIGO').Value := FTURMAS_TUR_CODIGO;
fdquery.ParamByName('MATERIAS_MAT_CODIGO').Value := FMATERIAS_MAT_CODIGO;

fdquery.Open();
FRES_FALTAS := fdquery.FieldByName('RES_FALTAS').Value;
FRES_AULAS_DADAS := fdquery.FieldByName('RES_AULAS_DADAS').Value;
FRES_CC := fdquery.FieldByName('RES_CC').Value;
FRES_CA := fdquery.FieldByName('RES_CA').Value;
FRES_OBS := fdquery.FieldByName('RES_OBS').Value;

end;

function TclassResultadoFinal.ConsultarAlunos: TFDQuery;
var
con : TFDQuery;
begin
con := TFDQuery.Create(nil);
con.Connection := dmConexao.FDConnection1;
con.sql.Add(         'SELECT                 '+
                     'RESULTADO_FINAL.ANO,        '+
                     'ALUNOS.ALU_CODIGO,     '+
                     'TURMAS.TUR_CODIGO,      '+
                     'MATERIAS.MAT_CODIGO,    '+
                     'RESULTADO_FINAL.RES_FALTAS,    '+
                     'RESULTADO_FINAL.RES_AULAS_DADAS,    '+
                     'RESULTADO_FINAL.RES_CC,    '+
                     'RESULTADO_FINAL.RES_CA,    '+
                     'RESULTADO_FINAL.RES_OBS    '+
                     'FROM MATERIAS          '+
                     'LEFT OUTER JOIN ALUNOS ON ( ALUNOS.ALUNOS_ALU_CODIGO = RESULTADO_FINAL.ALUNOS_ALU_CODIGO ) '+
                     'LEFT OUTER JOIN TURMAS ON ( TURMAS.TURMAS_TUR_CODIGO = RESULTADO_FINAL.TURMAS_TUR_CODIGO ) '+
                     'LEFT OUTER JOIN MATERIAS ON ( MATERIAS.MATERIAS_MAT_CODIGO = RESULTADO_FINAL.MATERIAS_MAT_CODIGO ) ');
con.Open();
result := con;

end;

function TclassResultadoFinal.Excluir: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('DELETE ');
fdquery.SQL.Add('FROM ');
fdquery.SQL.Add('RESULTADO_FINAL ');
fdquery.SQL.Add('WHERE');
fdquery.SQL.Add('ANO = :ANO AND ');
fdquery.SQL.Add('ALUNOS_ALU_CODIGO = :ALUNOS_ALU_CODIGO AND ');
fdquery.SQL.Add('TURMAS_TUR_CODIGO = :TURMAS_TUR_CODIGO AND ');
fdquery.SQL.Add('MATERIAS_MAT_CODIGO = :MATERIAS_MAT_CODIGO ');

fdquery.ParamByName('ANO').Value := ANO;
fdquery.ParamByName('ALUNOS_ALU_CODIGO').Value := ALUNOS_ALU_CODIGO;
fdquery.ParamByName('TURMAS_TUR_CODIGO').Value := TURMAS_TUR_CODIGO;
fdquery.ParamByName('MATERIAS_MAT_CODIGO').Value := MATERIAS_MAT_CODIGO;

fdquery.ExecSQL;

if fdquery.RowsAffected > 0 then
    result := True else result := False;

end;

function TclassResultadoFinal.Inserir: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('INSERT INTO ');
fdquery.SQL.Add('RESULTADO_FINAL ');//*
fdquery.SQL.Add('( ');
fdquery.SQL.Add('ANO, ');//**
fdquery.SQL.Add('ALUNOS_ALU_CODIGO, ');//**
fdquery.SQL.Add('TURMAS_TUR_CODIGO, ');//**
fdquery.SQL.Add('MATERIAS_MAT_CODIGO, ');//**
fdquery.SQL.Add('RES_FALTAS, ');//**
fdquery.SQL.Add('RES_AULAS_DADAS, ');//**
fdquery.SQL.Add('RES_CC, ');//**
fdquery.SQL.Add('RES_CA, ');//**
fdquery.SQL.Add('RES_OBS ');//**
fdquery.SQL.Add(') ');
fdquery.SQL.Add('VALUES ');
fdquery.SQL.Add('( ');
fdquery.SQL.Add(':ANO, ');//**
fdquery.SQL.Add(':ALUNOS_ALU_CODIGO, ');//**
fdquery.SQL.Add(':TURMAS_TUR_CODIGO, ');//**
fdquery.SQL.Add(':MATERIAS_MAT_CODIGO, ');//**
fdquery.SQL.Add(':RES_FALTAS, ');//**
fdquery.SQL.Add(':RES_AULAS_DADAS, ');//**
fdquery.SQL.Add(':RES_CC, ');//**
fdquery.SQL.Add(':RES_CA, ');//**
fdquery.SQL.Add(':RES_OBS ');//**
fdquery.SQL.Add(') ');
//atribuir os valores para os parametros da SQL
fdquery.ParamByName('ANO').Value := FANO;
fdquery.ParamByName('ALUNOS_ALU_CODIGO').Value := FALUNOS_ALU_CODIGO;
fdquery.ParamByName('TURMAS_TUR_CODIGO').Value := FTURMAS_TUR_CODIGO;
fdquery.ParamByName('MATERIAS_MAT_CODIGO').Value := FMATERIAS_MAT_CODIGO;
fdquery.ParamByName('RES_FALTAS').Value := FRES_FALTAS;
fdquery.ParamByName('RES_AULAS_DADAS').Value := FRES_AULAS_DADAS;
fdquery.ParamByName('RES_CC').Value := FRES_CC;
fdquery.ParamByName('RES_CA').Value := FRES_CA;
fdquery.ParamByName('RES_OBS').Value := FRES_OBS;

fdquery.ExecSQL();
if fdquery.RowsAffected > 0 then
  result := true
else
  result := false;

end;

procedure TclassResultadoFinal.SetALUNOS_ALU_CODIGO(const Value: integer);
begin
  FALUNOS_ALU_CODIGO := Value;
end;

procedure TclassResultadoFinal.SetANO(const Value: integer);
begin
  FANO := Value;
end;

procedure TclassResultadoFinal.SetMATERIAS_MAT_CODIGO(const Value: integer);
begin
  FMATERIAS_MAT_CODIGO := Value;
end;

procedure TclassResultadoFinal.SetRES_AULAS_DADAS(const Value: integer);
begin
  FRES_AULAS_DADAS := Value;
end;

procedure TclassResultadoFinal.SetRES_CA(const Value: string);
begin
  FRES_CA := Value;
end;

procedure TclassResultadoFinal.SetRES_CC(const Value: string);
begin
  FRES_CC := Value;
end;

procedure TclassResultadoFinal.SetRES_FALTAS(const Value: integer);
begin
  FRES_FALTAS := Value;
end;

procedure TclassResultadoFinal.SetRES_OBS(const Value: string);
begin
  FRES_OBS := Value;
end;

procedure TclassResultadoFinal.SetTURMAS_TUR_CODIGO(const Value: integer);
begin
  FTURMAS_TUR_CODIGO := Value;
end;

end.

