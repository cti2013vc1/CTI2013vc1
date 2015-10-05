unit classNotas;

interface

uses
  FireDAC.Comp.Client, FireDAC.DApt;

type
  TclassNotas = class
  private
    FNOT_NOTA1: string;
    FNOT_NOTA6: string;
    FNOT_AULAS_DADAS: integer;
    FNOT_NOTA4: string;
    FNOT_NOTA5: string;
    FNOT_CC: string;
    FNOT_PPDAC: string;
    FNOT_CA: string;
    FNOT_PPDAA: string;
    FALUNOS_ALU_CODIGO: integer;
    FNOT_FALTAS: integer;
    FANO: integer;
    FPERIODO: integer;
    FMATERIAS_MAT_CODIGO: integer;
    FCOLABORADORES_COL_CODIGO: integer;
    FNOT_NOTA2: string;
    FNOT_NOTA3: string;
    FTURMAS_TUR_CODIGO: integer;
    procedure SetALUNOS_ALU_CODIGO(const Value: integer);
    procedure SetANO(const Value: integer);
    procedure SetCOLABORADORES_COL_CODIGO(const Value: integer);
    procedure SetMATERIAS_MAT_CODIGO(const Value: integer);
    procedure SetNOT_AULAS_DADAS(const Value: integer);
    procedure SetNOT_CA(const Value: string);
    procedure SetNOT_CC(const Value: string);
    procedure SetNOT_FALTAS(const Value: integer);
    procedure SetNOT_NOTA1(const Value: string);
    procedure SetNOT_NOTA2(const Value: string);
    procedure SetNOT_NOTA3(const Value: string);
    procedure SetNOT_NOTA4(const Value: string);
    procedure SetNOT_NOTA5(const Value: string);
    procedure SetNOT_NOTA6(const Value: string);
    procedure SetNOT_PPDAA(const Value: string);
    procedure SetNOT_PPDAC(const Value: string);
    procedure SetPERIODO(const Value: integer);
    procedure SetTURMAS_TUR_CODIGO(const Value: integer);

  public
    property ANO : integer read FANO write SetANO;
    property ALUNOS_ALU_CODIGO : integer read FALUNOS_ALU_CODIGO write SetALUNOS_ALU_CODIGO;
    property TURMAS_TUR_CODIGO : integer read FTURMAS_TUR_CODIGO write SetTURMAS_TUR_CODIGO;
    property MATERIAS_MAT_CODIGO : integer read FMATERIAS_MAT_CODIGO write SetMATERIAS_MAT_CODIGO;
    property PERIODO : integer read FPERIODO write SetPERIODO;
    property COLABORADORES_COL_CODIGO : integer read FCOLABORADORES_COL_CODIGO write SetCOLABORADORES_COL_CODIGO;
    property NOT_FALTAS : integer read FNOT_FALTAS write SetNOT_FALTAS;
    property NOT_AULAS_DADAS : integer read FNOT_AULAS_DADAS write SetNOT_AULAS_DADAS;
    property NOT_NOTA1 : string read FNOT_NOTA1 write SetNOT_NOTA1;
    property NOT_NOTA2 : string read FNOT_NOTA2 write SetNOT_NOTA2;
    property NOT_NOTA3 : string read FNOT_NOTA3 write SetNOT_NOTA3;
    property NOT_NOTA4 : string read FNOT_NOTA4 write SetNOT_NOTA4;
    property NOT_NOTA5 : string read FNOT_NOTA5 write SetNOT_NOTA5;
    property NOT_NOTA6 : string read FNOT_NOTA6 write SetNOT_NOTA6;
    property NOT_CC : string read FNOT_CC write SetNOT_CC;
    property NOT_PPDAC : string read FNOT_PPDAC write SetNOT_PPDAC;
    property NOT_CA : string read FNOT_CA write SetNOT_CA;
    property NOT_PPDAA : string read FNOT_PPDAA write SetNOT_PPDAA;
 //Depois de colocar todos os campos clicke Ctrl + Shift + C

    //escrever a uses acima do type
 function ConsultarMatriculas(): TFDQuery;
 function Inserir(): boolean;
 procedure Carregar();
 function Alterar() : boolean;
 function Excluir() : boolean;
 function RelatoriosNotas():TFDQuery;
  end;


implementation

uses untConexao;
{ TclassNotas }

function TclassNotas.Alterar: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('UPDATE ');
fdquery.SQL.Add('NOTAS ');//TABELA QUE VAI ALTERAR
fdquery.SQL.Add('SET ');
fdquery.SQL.Add('NOT_FALTAS = :NOT_FALTAS, ');  //CAMPO DE ALTERA플O
fdquery.SQL.Add('NOT_AULAS_DADAS = :NOT_AULAS_DADAS, ');  //CAMPO DE ALTERA플O
fdquery.SQL.Add('NOT_NOTA1 = :NOT_NOTA1, ');  //CAMPO DE ALTERA플O
fdquery.SQL.Add('NOT_NOTA2 = :NOT_NOTA2, ');  //CAMPO DE ALTERA플O
fdquery.SQL.Add('NOT_NOTA3 = :NOT_NOTA3, ');  //CAMPO DE ALTERA플O
fdquery.SQL.Add('NOT_NOTA4 = :NOT_NOTA4, ');  //CAMPO DE ALTERA플O
fdquery.SQL.Add('NOT_NOTA5 = :NOT_NOTA5, ');  //CAMPO DE ALTERA플O
fdquery.SQL.Add('NOT_NOTA6 = :NOT_NOTA6, ');  //CAMPO DE ALTERA플O
fdquery.SQL.Add('NOT_CC = :NOT_CC, ');  //CAMPO DE ALTERA플O
fdquery.SQL.Add('NOT_PPDAC = :NOT_PPDAC, ');  //CAMPO DE ALTERA플O
fdquery.SQL.Add('NOT_CA = :NOT_CA, ');  //CAMPO DE ALTERA플O
fdquery.SQL.Add('NOT_PPDAA = :NOT_PPDAA ');  //CAMPO DE ALTERA플O
//APOS O ULTIMO CAMPO N홒 VAI VIRGULA
fdquery.SQL.Add('WHERE ');
fdquery.SQL.Add('ANO = :ANO AND ');
fdquery.SQL.Add('ALUNOS_ALU_CODIGO = :ALUNOS_ALU_CODIGO AND ');
fdquery.SQL.Add('TURMAS_TUR_CODIGO = :TURMAS_TUR_CODIGO AND ');
fdquery.SQL.Add('PERIODO = :PERIODO AND ');
fdquery.SQL.Add('COLABORADORES_COL_CODIGO = :COLABORADORES_COL_CODIGO AND ');
fdquery.SQL.Add('MATERIAS_MAT_CODIGO = :MATERIAS_MAT_CODIGO ');

fdquery.ParamByName('ANO').Value := ANO;
fdquery.ParamByName('ALUNOS_ALU_CODIGO').Value := ALUNOS_ALU_CODIGO;
fdquery.ParamByName('TURMAS_TUR_CODIGO').Value := TURMAS_TUR_CODIGO;
fdquery.ParamByName('MATERIAS_MAT_CODIGO').Value := MATERIAS_MAT_CODIGO;
fdquery.ParamByName('PERIODO').Value := PERIODO;
fdquery.ParamByName('COLABORADORES_COL_CODIGO').Value := COLABORADORES_COL_CODIGO;
fdquery.ParamByName('NOT_FALTAS').Value := NOT_FALTAS;
fdquery.ParamByName('NOT_AULAS_DADAS').Value := NOT_AULAS_DADAS;
fdquery.ParamByName('NOT_NOTA1').Value := NOT_NOTA1;
fdquery.ParamByName('NOT_NOTA2').Value := NOT_NOTA2;
fdquery.ParamByName('NOT_NOTA3').Value := NOT_NOTA3;
fdquery.ParamByName('NOT_NOTA4').Value := NOT_NOTA4;
fdquery.ParamByName('NOT_NOTA5').Value := NOT_NOTA5;
fdquery.ParamByName('NOT_NOTA6').Value := NOT_NOTA6;
fdquery.ParamByName('NOT_CC').Value := NOT_CC;
fdquery.ParamByName('NOT_PPDAC').Value := NOT_PPDAC;
fdquery.ParamByName('NOT_CA').Value := NOT_CA;
fdquery.ParamByName('NOT_PPDAA').Value := NOT_PPDAA;
//executa no banco de dados
fdquery.ExecSQL;
//verifica se realmente fez a altera豫o no banco
if fdquery.RowsAffected > 0 then
  result := True else result := false
end;

procedure TclassNotas.Carregar;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('SELECT * FROM NOTAS ');
fdquery.SQL.Add('WHERE ANO = :ANO AND ');
fdquery.SQL.Add('ALUNOS_ALU_CODIGO = :ALUNOS_ALU_CODIGO AND ');
fdquery.SQL.Add('TURMAS_TUR_CODIGO = :TURMAS_TUR_CODIGO AND ');
fdquery.SQL.Add('PERIODO = :PERIODO AND ');
fdquery.SQL.Add('COLABORADORES_COL_CODIGO = :COLABORADORES_COL_CODIGO AND ');
fdquery.SQL.Add('MATERIAS_MAT_CODIGO = :MATERIAS_MAT_CODIGO ');

fdquery.ParamByName('ANO').Value := FANO;
fdquery.ParamByName('ALUNOS_ALU_CODIGO').Value := FALUNOS_ALU_CODIGO;
fdquery.ParamByName('TURMAS_TUR_CODIGO').Value := FTURMAS_TUR_CODIGO;
fdquery.ParamByName('PERIODO').Value := FPERIODO;
fdquery.ParamByName('COLABORADORES_COL_CODIGO').Value := FCOLABORADORES_COL_CODIGO;
fdquery.ParamByName('MATERIAS_MAT_CODIGO').Value := FMATERIAS_MAT_CODIGO;

fdquery.Open();
FNOT_FALTAS := fdquery.FieldByName('NOT_FALTAS').Value;
FNOT_AULAS_DADAS := fdquery.FieldByName('NOT_AULAS_DADAS').Value;
FNOT_NOTA1 := fdquery.FieldByName('NOT_NOTA1').Value;
FNOT_NOTA2 := fdquery.FieldByName('NOT_NOTA2').Value;
FNOT_NOTA3 := fdquery.FieldByName('NOT_NOTA3').Value;
FNOT_NOTA4 := fdquery.FieldByName('NOT_NOTA4').Value;
FNOT_NOTA5 := fdquery.FieldByName('NOT_NOTA5').Value;
FNOT_NOTA6 := fdquery.FieldByName('NOT_NOTA6').Value;
FNOT_CC := fdquery.FieldByName('NOT_CC').Value;
FNOT_PPDAC := fdquery.FieldByName('NOT_PPDAC').Value;
FNOT_CA := fdquery.FieldByName('NOT_CA').Value;
FNOT_PPDAA := fdquery.FieldByName('NOT_PPDAA').Value;

end;

function TclassNotas.ConsultarMatriculas: TFDQuery;
var
con : TFDQuery;
begin
con := TFDQuery.Create(nil);
con.Connection := dmConexao.FDConnection1;
con.sql.Add(         'SELECT                 '+
                     'NOTAS.ANO,   '+
                     'ALUNOS.ALU_CODIGO,     '+
                     'TURMAS.TUR_CODIGO,     '+
                     'MATERIAS.MAT_CODIGO,   '+
                     'COLABORADORES.COL_CODIGO,   '+
                     'NOTAS.PERIODO,          '+
                     'NOTAS.NOT_FALTAS,    '+
                     'NOTAS.NOT_AULAS_DADAS,    '+
                     'NOTAS.NOT_NOTA1,    '+
                     'NOTAS.NOT_NOTA2,    '+
                     'NOTAS.NOT_NOTA3,    '+
                     'NOTAS.NOT_NOTA4,    '+
                     'NOTAS.NOT_NOTA5,    '+
                     'NOTAS.NOT_NOTA6,    '+
                     'NOTAS.NOT_CC,    '+
                     'NOTAS.NOT_PPDAC,    '+
                     'NOTAS.NOT_CA,    '+
                     'NOTAS.NOT_PPDAA    '+
                     'FROM NOTAS          '+
                     'LEFT OUTER JOIN ALUNOS ON ( ALUNOS.ALUNOS_ALU_CODIGO = NOTAS.ALUNOS_ALU_CODIGO ) '+
                     'LEFT OUTER JOIN TURMAS ON ( TURMAS.TURMAS_TUR_CODIGO = NOTAS.TURMAS_TUR_CODIGO ) '+
                     'LEFT OUTER JOIN COLABORADORES ON ( COLABORADORES.COLABORADORES_COL_CODIGO = NOTAS.COLABORADORES_COL_CODIGO ) '+
                     'LEFT OUTER JOIN MATERIAS ON ( MATERIAS.MATERIAS_MAT_CODIGO = NOTAS.MATERIAS_MAT_CODIGO ) ');
con.Open();
result := con;

end;

function TclassNotas.Excluir: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('DELETE ');
fdquery.SQL.Add('FROM ');
fdquery.SQL.Add('NOTAS ');
fdquery.SQL.Add('WHERE');
fdquery.SQL.Add('ANO = :ANO AND ');
fdquery.SQL.Add('PERIODO = :PERIODO AND ');
fdquery.SQL.Add('COLABORADORES_COL_CODIGO = :COLABORADORES_COL_CODIGO AND ');
fdquery.SQL.Add('ALUNOS_ALU_CODIGO = :ALUNOS_ALU_CODIGO AND ');
fdquery.SQL.Add('TURMAS_TUR_CODIGO = :TURMAS_TUR_CODIGO AND ');
fdquery.SQL.Add('MATERIAS_MAT_CODIGO = :MATERIAS_MAT_CODIGO ');

fdquery.ParamByName('ANO').Value := ANO;
fdquery.ParamByName('PERIODO').Value := PERIODO;
fdquery.ParamByName('COLABORADORES_COL_CODIGO').Value := COLABORADORES_COL_CODIGO;
fdquery.ParamByName('ALUNOS_ALU_CODIGO').Value := ALUNOS_ALU_CODIGO;
fdquery.ParamByName('TURMAS_TUR_CODIGO').Value := TURMAS_TUR_CODIGO;
fdquery.ParamByName('MATERIAS_MAT_CODIGO').Value := MATERIAS_MAT_CODIGO;

fdquery.ExecSQL;

if fdquery.RowsAffected > 0 then
    result := True else result := False;

end;

function TclassNotas.Inserir: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('INSERT INTO ');
fdquery.SQL.Add('NOTAS ');//*
fdquery.SQL.Add('( ');
fdquery.SQL.Add('ANO, ');//**
fdquery.SQL.Add('ALUNOS_ALU_CODIGO, ');//**
fdquery.SQL.Add('TURMAS_TUR_CODIGO, ');//**
fdquery.SQL.Add('MATERIAS_MAT_CODIGO, ');//**
fdquery.SQL.Add('PERIODO, ');//**
fdquery.SQL.Add('COLABORADORES_COL_CODIGO, ');//**
fdquery.SQL.Add('NOT_FALTAS, ');//**
fdquery.SQL.Add('NOT_AULAS_DADAS, ');//**
fdquery.SQL.Add('NOT_NOTA1, ');//**
fdquery.SQL.Add('NOT_NOTA2, ');//**
fdquery.SQL.Add('NOT_NOTA3, ');//**
fdquery.SQL.Add('NOT_NOTA4, ');//**
fdquery.SQL.Add('NOT_NOTA5, ');//**
fdquery.SQL.Add('NOT_NOTA6, ');//**
fdquery.SQL.Add('NOT_CC, ');//**
fdquery.SQL.Add('NOT_PPDAC, ');//**
fdquery.SQL.Add('NOT_CA, ');//**
fdquery.SQL.Add('NOT_PPDAA ');//**

fdquery.SQL.Add(') ');
fdquery.SQL.Add('VALUES ');
fdquery.SQL.Add('( ');
fdquery.SQL.Add(':ANO, ');//**
fdquery.SQL.Add(':ALUNOS_ALU_CODIGO, ');//**
fdquery.SQL.Add(':TURMAS_TUR_CODIGO, ');//**
fdquery.SQL.Add(':MATERIAS_MAT_CODIGO, ');//**
fdquery.SQL.Add(':PERIODO, ');//**
fdquery.SQL.Add(':COLABORADORES_COL_CODIGO, ');//**

fdquery.SQL.Add(':NOT_FALTAS, ');//**
fdquery.SQL.Add(':NOT_AULAS_DADAS, ');//**
fdquery.SQL.Add(':NOT_NOTA1, ');//**
fdquery.SQL.Add(':NOT_NOTA2, ');//**
fdquery.SQL.Add(':NOT_NOTA3, ');//**
fdquery.SQL.Add(':NOT_NOTA4, ');//**
fdquery.SQL.Add(':NOT_NOTA5, ');//**
fdquery.SQL.Add(':NOT_NOTA6, ');//**
fdquery.SQL.Add(':NOT_CC, ');//**
fdquery.SQL.Add(':NOT_PPDAC, ');//**
fdquery.SQL.Add(':NOT_CA, ');//**
fdquery.SQL.Add(':NOT_PPDAA ');//**
fdquery.SQL.Add(') ');
//atribuir os valores para os parametros da SQL
fdquery.ParamByName('ANO').Value := FANO;
fdquery.ParamByName('ALUNOS_ALU_CODIGO').Value := FALUNOS_ALU_CODIGO;
fdquery.ParamByName('TURMAS_TUR_CODIGO').Value := FTURMAS_TUR_CODIGO;
fdquery.ParamByName('MATERIAS_MAT_CODIGO').Value := FMATERIAS_MAT_CODIGO;
fdquery.ParamByName('PERIODO').Value := FPERIODO;
fdquery.ParamByName('COLABORADORES_COL_CODIGO').Value := FCOLABORADORES_COL_CODIGO;
fdquery.ParamByName('NOT_FALTAS').Value := FNOT_FALTAS;
fdquery.ParamByName('NOT_AULAS_DADAS').Value := FNOT_AULAS_DADAS;
fdquery.ParamByName('NOT_NOTA1').Value := FNOT_NOTA1;
fdquery.ParamByName('NOT_NOTA2').Value := FNOT_NOTA2;
fdquery.ParamByName('NOT_NOTA3').Value := FNOT_NOTA3;
fdquery.ParamByName('NOT_NOTA4').Value := FNOT_NOTA4;
fdquery.ParamByName('NOT_NOTA5').Value := FNOT_NOTA5;
fdquery.ParamByName('NOT_NOTA6').Value := FNOT_NOTA6;
fdquery.ParamByName('NOT_CC').Value := FNOT_CC;
fdquery.ParamByName('NOT_PPDAC').Value := FNOT_PPDAC;
fdquery.ParamByName('NOT_CA').Value := FNOT_CA;
fdquery.ParamByName('NOT_PPDAA').Value := FNOT_PPDAA;

fdquery.ExecSQL();
if fdquery.RowsAffected > 0 then
  result := true
else
  result := false;

end;

function TclassNotas.RelatoriosNotas: TFDQuery;
var
con : TFDQuery;
begin
con := TFDQuery.Create(nil);
con.Connection := dmConexao.FDConnection1;
con.SQL.Add('SELECT alunos.ALU_NOME, ');
con.SQL.Add('notas.NOT_AULAS_DADAS, notas.NOT_FALTAS, ');
con.SQL.Add('NOTA1.CON_NOME AS  NOT_NOTA1, ');
con.SQL.Add('NOTA2.CON_NOME AS  NOT_NOTA2, ');
con.SQL.Add('NOTA3.CON_NOME AS  NOT_NOTA3, ');
con.SQL.Add('NOTA4.CON_NOME AS  NOT_NOTA4, ');
con.SQL.Add('NOTA5.CON_NOME AS  NOT_NOTA5, ');
con.SQL.Add('NOTA6.CON_NOME AS  NOT_NOTA6, ');
con.SQL.Add('NOTACC.CON_NOME AS  NOT_CC, ');
con.SQL.Add('NOTAPPDAC.CON_NOME AS  NOT_PPDAC, ');
con.SQL.Add('NOTACA.CON_NOME AS  NOT_CA, ');
con.SQL.Add('NOTAPPDAA.CON_NOME AS  NOT_PPDAA ');
con.SQL.Add('FROM MATRICULAS ');
con.SQL.Add('INNER JOIN alunos ON alunos.ALU_CODIGO = matriculas.ALUNOS_ALU_CODIGO ');
con.SQL.Add('LEFT OUTER JOIN notas ON ');
con.SQL.Add('notas.ANO = matriculas.ANO and notas.ALUNOS_ALU_CODIGO = matriculas.ALUNOS_ALU_CODIGO ');
con.SQL.Add('and notas.TURMAS_TUR_CODIGO = matriculas.TURMAS_TUR_CODIGO and notas.MATERIAS_MAT_CODIGO = matriculas.MATERIAS_MAT_CODIGO ');
con.SQL.Add('and notas.PERIODO = 1 ');
con.SQL.Add('LEFT OUTER JOIN conceitos NOTA1 ON NOTA1.CON_CODIGO = notas.NOT_NOTA1 ');
con.SQL.Add('LEFT OUTER JOIN conceitos NOTA2 ON NOTA2.CON_CODIGO = notas.NOT_NOTA2 ');
con.SQL.Add('LEFT OUTER JOIN conceitos NOTA3 ON NOTA3.CON_CODIGO = notas.NOT_NOTA3 ');
con.SQL.Add('LEFT OUTER JOIN conceitos NOTA4 ON NOTA4.CON_CODIGO = notas.NOT_NOTA4 ');
con.SQL.Add('LEFT OUTER JOIN conceitos NOTA5 ON NOTA5.CON_CODIGO = notas.NOT_NOTA5 ');
con.SQL.Add('LEFT OUTER JOIN conceitos NOTA6 ON NOTA6.CON_CODIGO = notas.NOT_NOTA6 ');
con.SQL.Add('LEFT OUTER JOIN conceitos NOTACC ON NOTACC.CON_CODIGO = notas.NOT_CC ');
con.SQL.Add('LEFT OUTER JOIN conceitos NOTAPPDAC ON NOTAPPDAC.CON_CODIGO = notas.NOT_PPDAC ');
con.SQL.Add('LEFT OUTER JOIN conceitos NOTACA ON NOTACA.CON_CODIGO = notas.NOT_CA ');
con.SQL.Add('LEFT OUTER JOIN conceitos NOTAPPDAA ON NOTAPPDAA.CON_CODIGO = notas.NOT_PPDAA ');
con.SQL.Add('WHERE matriculas.ANO = 2014 AND matriculas.TURMAS_TUR_CODIGO = 1 AND matriculas.MATERIAS_MAT_CODIGO = 1 ');
con.SQL.Add('ORDER BY alunos.ALU_NOME ');
con.SQL.Add('');

con.Open();
Result := con;

end;

procedure TclassNotas.SetALUNOS_ALU_CODIGO(const Value: integer);
begin
  FALUNOS_ALU_CODIGO := Value;
end;

procedure TclassNotas.SetANO(const Value: integer);
begin
  FANO := Value;
end;

procedure TclassNotas.SetCOLABORADORES_COL_CODIGO(const Value: integer);
begin
  FCOLABORADORES_COL_CODIGO := Value;
end;

procedure TclassNotas.SetMATERIAS_MAT_CODIGO(const Value: integer);
begin
  FMATERIAS_MAT_CODIGO := Value;
end;

procedure TclassNotas.SetNOT_AULAS_DADAS(const Value: integer);
begin
  FNOT_AULAS_DADAS := Value;
end;

procedure TclassNotas.SetNOT_CA(const Value: string);
begin
  FNOT_CA := Value;
end;

procedure TclassNotas.SetNOT_CC(const Value: string);
begin
  FNOT_CC := Value;
end;

procedure TclassNotas.SetNOT_FALTAS(const Value: integer);
begin
  FNOT_FALTAS := Value;
end;

procedure TclassNotas.SetNOT_NOTA1(const Value: string);
begin
  FNOT_NOTA1 := Value;
end;

procedure TclassNotas.SetNOT_NOTA2(const Value: string);
begin
  FNOT_NOTA2 := Value;
end;

procedure TclassNotas.SetNOT_NOTA3(const Value: string);
begin
  FNOT_NOTA3 := Value;
end;

procedure TclassNotas.SetNOT_NOTA4(const Value: string);
begin
  FNOT_NOTA4 := Value;
end;

procedure TclassNotas.SetNOT_NOTA5(const Value: string);
begin
  FNOT_NOTA5 := Value;
end;

procedure TclassNotas.SetNOT_NOTA6(const Value: string);
begin
  FNOT_NOTA6 := Value;
end;

procedure TclassNotas.SetNOT_PPDAA(const Value: string);
begin
  FNOT_PPDAA := Value;
end;

procedure TclassNotas.SetNOT_PPDAC(const Value: string);
begin
  FNOT_PPDAC := Value;
end;

procedure TclassNotas.SetPERIODO(const Value: integer);
begin
  FPERIODO := Value;
end;

procedure TclassNotas.SetTURMAS_TUR_CODIGO(const Value: integer);
begin
  FTURMAS_TUR_CODIGO := Value;
end;

end.

