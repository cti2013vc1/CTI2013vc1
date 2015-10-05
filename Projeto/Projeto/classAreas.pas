unit classAreas;

interface

uses
  FireDAC.Comp.Client, FireDAC.DApt;

type
  TclassAreas = class
  private
    FARC_CODIGO: integer;
    FARC_NOME: string;
    procedure SetARC_CODIGO(const Value: integer);
    procedure SetARC_NOME(const Value: string);

  public
    property ARC_NOME : string read FARC_NOME write SetARC_NOME;
    property ARC_CODIGO : integer read FARC_CODIGO write SetARC_CODIGO;

 //Depois de colocar todos os campos clicke Ctrl + Shift + C

  //escrever a uses acima do type
 function ConsultarAreas(condicao : string = ''): TFDQuery;
 function Inserir(): boolean;
 procedure Carregar();
 function Alterar() : boolean;
 function Excluir() : boolean;


     end;
implementation

uses untConexao;


{ TclassAreas }

function TclassAreas.Alterar: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('UPDATE ');
fdquery.SQL.Add('AREAS ');//TABELA QUE VAI ALTERAR
fdquery.SQL.Add('SET ');
fdquery.SQL.Add('ARC_NOME = :ARC_NOME ');  //CAMPO DE ALTERAÇÃO
//APOS O ULTIMO CAMPO NÃO VAI VIRGULA
fdquery.SQL.Add('WHERE ');
fdquery.SQL.Add('ARC_CODIGO = :ARC_CODIGO ');

fdquery.ParamByName('ARC_CODIGO').Value := ARC_CODIGO;
fdquery.ParamByName('ARC_NOME').Value := ARC_NOME;
//executa no banco de dados
fdquery.ExecSQL;
//verifica se realmente fez a alteração no banco
if fdquery.RowsAffected > 0 then
  result := True else result := false

end;

procedure TclassAreas.Carregar;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('SELECT * FROM AREAS ');
fdquery.SQL.Add('WHERE ARC_CODIGO = :ARC_CODIGO ');

fdquery.ParamByName('ARC_CODIGO').Value := FARC_CODIGO;

fdquery.Open();
FARC_NOME := fdquery.FieldByName('ARC_NOME').Value;

end;

function TclassAreas.ConsultarAreas(condicao : string = ''): TFDQuery;
var
con : TFDQuery;
begin
con := TFDQuery.Create(nil);
con.Connection := dmConexao.FDConnection1;
con.sql.Add(         'SELECT                '+
                     'AREAS.ARC_CODIGO,   '+
                     'AREAS.ARC_NOME     '+
                     'FROM AREAS          ');
if condicao <> '' then
con.SQL.Add(' WHERE '+condicao);
con.SQL.Add(' Order By AREAS.ARC_CODIGO');
con.Open();
result := con;

end;

function TclassAreas.Excluir: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('DELETE ');
fdquery.SQL.Add('FROM ');
fdquery.SQL.Add('AREAS ');
fdquery.SQL.Add('WHERE');
fdquery.SQL.Add('ARC_CODIGO = :ARC_CODIGO ');

fdquery.ParamByName('ARC_CODIGO').Value := ARC_CODIGO;

fdquery.ExecSQL;

if fdquery.RowsAffected > 0 then
    result := True else result := False;

end;

function TclassAreas.Inserir: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('INSERT INTO ');
fdquery.SQL.Add('AREAS ');//*
fdquery.SQL.Add('( ');
fdquery.SQL.Add('ARC_CODIGO, ');//**
fdquery.SQL.Add('ARC_NOME ');//**
fdquery.SQL.Add(') ');
fdquery.SQL.Add('VALUES ');
fdquery.SQL.Add('( ');
fdquery.SQL.Add(':ARC_CODIGO, ');//**
fdquery.SQL.Add(':ARC_NOME ');//**
fdquery.SQL.Add(') ');
//atribuir os valores para os parametros da SQL
fdquery.ParamByName('ARC_CODIGO').Value := FARC_CODIGO;
fdquery.ParamByName('ARC_NOME').Value := FARC_NOME;

fdquery.ExecSQL();
if fdquery.RowsAffected > 0 then
  result := true
else
  result := false;

end;

procedure TclassAreas.SetARC_CODIGO(const Value: integer);
begin
  FARC_CODIGO := Value;
end;

procedure TclassAreas.SetARC_NOME(const Value: string);
begin
  FARC_NOME := Value;
end;

end.
