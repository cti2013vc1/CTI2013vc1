unit classSeries;

interface
uses
  FireDAC.Comp.Client, FireDAC.DApt;

type
  TclassSeries = class
  private
    FSER_CODIGO: integer;
    FSER_NOME: string;
    procedure SetSER_CODIGO(const Value: integer);
    procedure SetSER_NOME(const Value: string);

  public
    property SER_NOME : string read FSER_NOME write SetSER_NOME;
    property SER_CODIGO : integer read FSER_CODIGO write SetSER_CODIGO;


 //Depois de colocar todos os campos clicke Ctrl + Shift + C

    //escrever a uses acima do type
 function ConsultarSeries(condicao : string = ''): TFDQuery;
 function Inserir(): boolean;
 procedure Carregar();
 function Alterar() : boolean;
 function Excluir() : boolean;

     end;
implementation

{ TclassSeries }

uses untConexao;

function TclassSeries.Alterar: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('UPDATE ');
fdquery.SQL.Add('SERIES ');//TABELA QUE VAI ALTERAR
fdquery.SQL.Add('SET ');
fdquery.SQL.Add('SER_NOME = :SER_NOME ');  //CAMPO DE ALTERA��O
//APOS O ULTIMO CAMPO N�O VAI VIRGULA
fdquery.SQL.Add('WHERE ');
fdquery.SQL.Add('SER_CODIGO = :SER_CODIGO ');

fdquery.ParamByName('SER_CODIGO').Value := SER_CODIGO;
fdquery.ParamByName('SER_NOME').Value := SER_NOME;
//executa no banco de dados
fdquery.ExecSQL;
//verifica se realmente fez a altera��o no banco
if fdquery.RowsAffected > 0 then
  result := True else result := false

end;

procedure TclassSeries.Carregar;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('SELECT * FROM SERIES ');
fdquery.SQL.Add('WHERE SER_CODIGO = :SER_CODIGO ');

fdquery.ParamByName('SER_CODIGO').Value := FSER_CODIGO;

fdquery.Open();
FSER_NOME := fdquery.FieldByName('SER_NOME').Value;

end;

function TclassSeries.ConsultarSeries(condicao : string = ''): TFDQuery;
var
con : TFDQuery;
begin
con := TFDQuery.Create(nil);
con.Connection := dmConexao.FDConnection1;
con.sql.Add(         'SELECT                '+
                     'SERIES.SER_CODIGO,   '+
                     'SERIES.SER_NOME      '+
                     'FROM SERIES          ');
if condicao <> '' then
con.SQL.Add('WHERE '+condicao);
con.SQL.Add(' Order By SERIES.SER_CODIGO');
con.Open();
result := con;

end;

function TclassSeries.Excluir: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('DELETE ');
fdquery.SQL.Add('FROM ');
fdquery.SQL.Add('SERIES ');
fdquery.SQL.Add('WHERE');
fdquery.SQL.Add('SER_CODIGO = :SER_CODIGO ');

fdquery.ParamByName('SER_CODIGO').Value := SER_CODIGO;

fdquery.ExecSQL;

if fdquery.RowsAffected > 0 then
    result := True else result := False;

end;

function TclassSeries.Inserir: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('INSERT INTO ');
fdquery.SQL.Add('SERIES ');//*
fdquery.SQL.Add('( ');
fdquery.SQL.Add('SER_CODIGO, ');//**
fdquery.SQL.Add('SER_NOME ');//**
fdquery.SQL.Add(') ');
fdquery.SQL.Add('VALUES ');
fdquery.SQL.Add('( ');
fdquery.SQL.Add(':SER_CODIGO, ');//**
fdquery.SQL.Add(':SER_NOME ');//**
fdquery.SQL.Add(') ');
//atribuir os valores para os parametros da SQL
fdquery.ParamByName('SER_CODIGO').Value := FSER_CODIGO;
fdquery.ParamByName('SER_NOME').Value := FSER_NOME;

fdquery.ExecSQL();
if fdquery.RowsAffected > 0 then
  result := true
else
  result := false;

end;

procedure TclassSeries.SetSER_CODIGO(const Value: integer);
begin
  FSER_CODIGO := Value;
end;

procedure TclassSeries.SetSER_NOME(const Value: string);
begin
  FSER_NOME := Value;
end;

end.
