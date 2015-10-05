unit classTurmas;

interface

uses
  FireDAC.Comp.Client, FireDAC.DApt, Dialogs;

type
  TclassTurmas = class
  private
    FTUR_CODIGO: integer;
    FTUR_NOME: string;
    FSERIES_SER_CODIGO: integer;
    FPERIODOS_LETIVOS_PEL_CODIGO: integer;
    FTURNOS_TUR_CODIGO: integer;
    procedure SetPERIODOS_LETIVOS_PEL_CODIGO(const Value: integer);
    procedure SetSERIES_SER_CODIGO(const Value: integer);
    procedure SetTUR_CODIGO(const Value: integer);
    procedure SetTUR_NOME(const Value: string);
    procedure SetTURNOS_TUR_CODIGO(const Value: integer);

  public
    property TUR_NOME : string read FTUR_NOME write SetTUR_NOME;
    property TUR_CODIGO : integer read FTUR_CODIGO write SetTUR_CODIGO;
    property SERIES_SER_CODIGO : integer read FSERIES_SER_CODIGO write SetSERIES_SER_CODIGO;
    property PERIODOS_LETIVOS_PEL_CODIGO : integer read FPERIODOS_LETIVOS_PEL_CODIGO write SetPERIODOS_LETIVOS_PEL_CODIGO;
    property TURNOS_TUR_CODIGO : integer read FTURNOS_TUR_CODIGO write SetTURNOS_TUR_CODIGO;


 //Depois de colocar todos os campos clicke Ctrl + Shift + C

    //escrever a uses acima do type
 function ConsultarTurmas(condicao : string = ''): TFDQuery;
 function Inserir(): boolean;
 procedure Carregar();
 function Alterar() : boolean;
 function Excluir() : boolean;


     end;
implementation

uses untConexao;


{ TclassTurmas }

function TclassTurmas.Alterar: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('UPDATE ');
fdquery.SQL.Add('TURMAS ');//TABELA QUE VAI ALTERAR
fdquery.SQL.Add('SET ');
fdquery.SQL.Add('TUR_NOME = :TUR_NOME, ');  //CAMPO DE ALTERA��O
fdquery.SQL.Add('SERIES_SER_CODIGO = :SERIES_SER_CODIGO, ');  //CAMPO DE ALTERA��O
fdquery.SQL.Add('PERIODOS_LETIVOS_PEL_CODIGO = :PERIODOS_LETIVOS_PEL_CODIGO, ');  //CAMPO DE ALTERA��O
fdquery.SQL.Add('TURNOS_TUR_CODIGO = :TURNOS_TUR_CODIGO ');  //CAMPO DE ALTERA��O
//APOS O ULTIMO CAMPO N�O VAI VIRGULA
fdquery.SQL.Add('WHERE ');
fdquery.SQL.Add('TUR_CODIGO = :TUR_CODIGO ');

fdquery.ParamByName('TUR_CODIGO').Value := TUR_CODIGO;
fdquery.ParamByName('TUR_NOME').Value := TUR_NOME;
fdquery.ParamByName('SERIES_SER_CODIGO').Value := SERIES_SER_CODIGO;
fdquery.ParamByName('PERIODOS_LETIVOS_PEL_CODIGO').Value := PERIODOS_LETIVOS_PEL_CODIGO;
fdquery.ParamByName('TURNOS_TUR_CODIGO').Value := TURNOS_TUR_CODIGO;
//executa no banco de dados
fdquery.ExecSQL;
//verifica se realmente fez a altera��o no banco
if fdquery.RowsAffected > 0 then
  result := True else result := false

end;

procedure TclassTurmas.Carregar;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('SELECT * FROM TURMAS ');
fdquery.SQL.Add('WHERE TUR_CODIGO = :TUR_CODIGO ');

fdquery.ParamByName('TUR_CODIGO').Value := FTUR_CODIGO;

fdquery.Open();
FTUR_NOME := fdquery.FieldByName('TUR_NOME').Value;
FSERIES_SER_CODIGO := fdquery.FieldByName('SERIES_SER_CODIGO').Value;
FPERIODOS_LETIVOS_PEL_CODIGO := fdquery.FieldByName('PERIODOS_LETIVOS_PEL_CODIGO').Value;
FTURNOS_TUR_CODIGO := fdquery.FieldByName('TURNOS_TUR_CODIGO').Value;

end;

function TclassTurmas.ConsultarTurmas(condicao : string = ''): TFDQuery;
var
con : TFDQuery;
begin
con := TFDQuery.Create(nil);
con.Connection := dmConexao.FDConnection1;
con.sql.Add(         'SELECT                '+
                     'TURMAS.TUR_CODIGO,   '+
                     'SERIES.SER_CODIGO,       '+
                     'SERIES.SER_NOME,       '+
                     'PERIODOS_LETIVOS.PEL_CODIGO,       '+
                     'PERIODOS_LETIVOS.PEL_NOME,       '+
                     'TURNOS.TUR_CODIGO,       '+
                     'TURNOS.TUR_NOME AS TURNO_NOME,       '+
                     'TURMAS.TUR_NOME      '+
                     'FROM TURMAS          '+
                     'LEFT OUTER JOIN SERIES ON ( SERIES.SER_CODIGO = TURMAS.SERIES_SER_CODIGO ) '+
                     'LEFT OUTER JOIN periodos_letivos ON ( PERIODOS_LETIVOS.PEL_CODIGO = TURMAS.PERIODOS_LETIVOS_PEL_CODIGO ) '+
                     'LEFT OUTER JOIN TURNOS ON ( TURNOS.TUR_CODIGO = TURMAS.TURNOS_TUR_CODIGO )  ');
if condicao <> '' then
con.SQL.Add('WHERE '+condicao);
con.SQL.Add(' Order By TURMAS.TUR_CODIGO');
con.Open();
result := con;
end;

function TclassTurmas.Excluir: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('DELETE ');
fdquery.SQL.Add('FROM ');
fdquery.SQL.Add('TURMAS ');
fdquery.SQL.Add('WHERE');
fdquery.SQL.Add('TUR_CODIGO = :TUR_CODIGO ');

fdquery.ParamByName('TUR_CODIGO').Value := TUR_CODIGO;

fdquery.ExecSQL;

if fdquery.RowsAffected > 0 then
    result := True else result := False;

end;

function TclassTurmas.Inserir: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('INSERT INTO ');
fdquery.SQL.Add('TURMAS ');//*
fdquery.SQL.Add('( ');
fdquery.SQL.Add('TUR_CODIGO, ');//**
fdquery.SQL.Add('SERIES_SER_CODIGO, ');//**
fdquery.SQL.Add('PERIODOS_LETIVOS_PEL_CODIGO, ');//**
fdquery.SQL.Add('TURNOS_TUR_CODIGO, ');//**
fdquery.SQL.Add('TUR_NOME ');//**
fdquery.SQL.Add(') ');
fdquery.SQL.Add('VALUES ');
fdquery.SQL.Add('( ');
fdquery.SQL.Add(':TUR_CODIGO, ');//**
fdquery.SQL.Add(':SERIES_SER_CODIGO, ');//**
fdquery.SQL.Add(':PERIODOS_LETIVOS_PEL_CODIGO, ');//**
fdquery.SQL.Add(':TURNOS_TUR_CODIGO, ');//**
fdquery.SQL.Add(':TUR_NOME ');//**
fdquery.SQL.Add(') ');
//atribuir os valores para os parametros da SQL
fdquery.ParamByName('TUR_CODIGO').Value := FTUR_CODIGO;
fdquery.ParamByName('SERIES_SER_CODIGO').Value := FSERIES_SER_CODIGO;
fdquery.ParamByName('PERIODOS_LETIVOS_PEL_CODIGO').Value := FPERIODOS_LETIVOS_PEL_CODIGO;
fdquery.ParamByName('TURNOS_TUR_CODIGO').Value := FTURNOS_TUR_CODIGO;
fdquery.ParamByName('TUR_NOME').Value := FTUR_NOME;

fdquery.ExecSQL();
if fdquery.RowsAffected > 0 then
  result := true
else
  result := false;

end;

procedure TclassTurmas.SetPERIODOS_LETIVOS_PEL_CODIGO(const Value: integer);
begin
  FPERIODOS_LETIVOS_PEL_CODIGO := Value;
end;

procedure TclassTurmas.SetSERIES_SER_CODIGO(const Value: integer);
begin
  FSERIES_SER_CODIGO := Value;
end;

procedure TclassTurmas.SetTURNOS_TUR_CODIGO(const Value: integer);
begin
  FTURNOS_TUR_CODIGO := Value;
end;

procedure TclassTurmas.SetTUR_CODIGO(const Value: integer);
begin
  FTUR_CODIGO := Value;
end;

procedure TclassTurmas.SetTUR_NOME(const Value: string);
begin
  FTUR_NOME := Value;
end;

end.
