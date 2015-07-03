unit classTurnos;

interface
uses
  FireDAC.Comp.Client, FireDAC.DApt;

type
  TclassTurnos = class
  private
    FTUR_CODIGO: integer;
    FTUR_NOME: string;
    procedure SetTUR_CODIGO(const Value: integer);
    procedure SetTUR_NOME(const Value: string);



  public
    property TUR_NOME : string read FTUR_NOME write SetTUR_NOME;
    property TUR_CODIGO : integer read FTUR_CODIGO write SetTUR_CODIGO;



 //Depois de colocar todos os campos clicke Ctrl + Shift + C

    //escrever a uses acima do type
 function ConsultarTurnos(): TFDQuery;
 function Inserir(): boolean;
 procedure Carregar();
 function Alterar() : boolean;
 function Excluir() : boolean;
end;

implementation

uses untConexao;
{ TclassTurnos }


function TclassTurnos.Alterar: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('UPDATE ');
fdquery.SQL.Add('TURNOS ');//TABELA QUE VAI ALTERAR
fdquery.SQL.Add('SET ');
fdquery.SQL.Add('TUR_NOME = :TUR_NOME ');  //CAMPO DE ALTERA��O
//APOS O ULTIMO CAMPO N�O VAI VIRGULA
fdquery.SQL.Add('WHERE ');
fdquery.SQL.Add('TUR_CODIGO = :TUR_CODIGO ');

fdquery.ParamByName('TUR_CODIGO').Value := TUR_CODIGO;
fdquery.ParamByName('TUR_NOME').Value := TUR_NOME;
//executa no banco de dados
fdquery.ExecSQL;
//verifica se realmente fez a altera��o no banco
if fdquery.RowsAffected > 0 then
  result := True else result := false

end;

procedure TclassTurnos.Carregar;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('SELECT * FROM TURNOS ');
fdquery.SQL.Add('WHERE TUR_CODIGO = :TUR_CODIGO ');

fdquery.ParamByName('TUR_CODIGO').Value := FTUR_CODIGO;

fdquery.Open();
FTUR_NOME := fdquery.FieldByName('TUR_NOME').Value;
end;

function TclassTurnos.ConsultarTurnos: TFDQuery;
var
con : TFDQuery;
begin
con := TFDQuery.Create(nil);
con.Connection := dmConexao.FDConnection1;
con.sql.Add(         'SELECT               '+
                     'TURNOS.TUR_CODIGO,   '+
                     'TURNOS.TUR_NOME      '+
                     'FROM TURNOS    Order By TURNOS.TUR_CODIGO       ');

con.Open();
result := con;
end;

function TclassTurnos.Excluir: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('DELETE ');
fdquery.SQL.Add('FROM ');
fdquery.SQL.Add('TURNOS ');
fdquery.SQL.Add('WHERE');
fdquery.SQL.Add('TUR_CODIGO = :TUR_CODIGO ');

fdquery.ParamByName('TUR_CODIGO').Value := TUR_CODIGO;

fdquery.ExecSQL;

if fdquery.RowsAffected > 0 then
    result := True else result := False;
end;

function TclassTurnos.Inserir: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('INSERT INTO ');
fdquery.SQL.Add('TURNOS ');//*
fdquery.SQL.Add('( ');
fdquery.SQL.Add('TUR_CODIGO, ');//**
fdquery.SQL.Add('TUR_NOME ');//**
fdquery.SQL.Add(') ');
fdquery.SQL.Add('VALUES ');
fdquery.SQL.Add('( ');
fdquery.SQL.Add(':TUR_CODIGO, ');//**
fdquery.SQL.Add(':TUR_NOME ');//**
fdquery.SQL.Add(') ');
//atribuir os valores para os parametros da SQL
fdquery.ParamByName('TUR_CODIGO').Value := FTUR_CODIGO;
fdquery.ParamByName('TUR_NOME').Value := FTUR_NOME;

fdquery.ExecSQL();
if fdquery.RowsAffected > 0 then
  result := true
else
  result := false;

end;

procedure TclassTurnos.SetTUR_CODIGO(const Value: integer);
begin
  FTUR_CODIGO := Value;
end;

procedure TclassTurnos.SetTUR_NOME(const Value: string);
begin
  FTUR_NOME := Value;
end;

end.
