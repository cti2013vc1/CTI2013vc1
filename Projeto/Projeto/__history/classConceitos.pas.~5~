unit classConceitos;

interface
uses
  FireDAC.Comp.Client, FireDAC.DApt;

type
  TclassConceitos = class
  private
    FCON_CODIGO: integer;
    FCON_NOME: string;
    FCON_LETRA: string;
    procedure SetCON_LETRA(const Value: string);
    procedure SetCON_CODIGO(const Value: integer);
    procedure SetCON_NOME(const Value: string);

  public
    property CON_NOME : string read FCON_NOME write SetCON_NOME;
    property CON_CODIGO : integer read FCON_CODIGO write SetCON_CODIGO;
    property CON_LETRA : string read FCON_LETRA write SetCON_LETRA;


 //Depois de colocar todos os campos clicke Ctrl + Shift + C

    //escrever a uses acima do type
 function ConsultarConceitos(): TFDQuery;
 function Inserir(): boolean;
 procedure Carregar();
 function Alterar() : boolean;
 function Excluir() : boolean;


     end;
implementation

uses untConexao;

{ TclassConceitos }

function TclassConceitos.Alterar: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('UPDATE ');
fdquery.SQL.Add('CONCEITOS ');//TABELA QUE VAI ALTERAR
fdquery.SQL.Add('SET ');
fdquery.SQL.Add('CON_NOME = :CON_NOME, ');  //CAMPO DE ALTERAÇÃO
fdquery.SQL.Add('CON_LETRA = :CON_LETRA ');  //CAMPO DE ALTERAÇÃO
//APOS O ULTIMO CAMPO NÃO VAI VIRGULA
fdquery.SQL.Add('WHERE ');
fdquery.SQL.Add('CON_CODIGO = :CON_CODIGO ');

fdquery.ParamByName('CON_CODIGO').Value := CON_CODIGO;
fdquery.ParamByName('CON_NOME').Value := CON_NOME;
fdquery.ParamByName('CON_LETRA').Value := CON_LETRA;
//executa no banco de dados
fdquery.ExecSQL;
//verifica se realmente fez a alteração no banco
if fdquery.RowsAffected > 0 then
  result := True else result := false

end;

procedure TclassConceitos.Carregar;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('SELECT * FROM CONCEITOS ');
fdquery.SQL.Add('WHERE CON_CODIGO = :CON_CODIGO ');

fdquery.ParamByName('CON_CODIGO').Value := FCON_CODIGO;

fdquery.Open();
FCON_NOME := fdquery.FieldByName('CON_NOME').Value;
FCON_LETRA := fdquery.FieldByName('CON_LETRA').Value;

end;

function TclassConceitos.ConsultarConceitos: TFDQuery;
var
con : TFDQuery;
begin
con := TFDQuery.Create(nil);
con.Connection := dmConexao.FDConnection1;
con.sql.Add(         'SELECT                '+
                     'CONCEITOS.CON_CODIGO,   '+
                     'CONCEITOS.CON_NOME,     '+
                     'CONCEITOS.CON_LETRA    '+
                     'FROM CONCEITOS    Order By CONCEITOS.CON_CODIGO      ');

con.Open();
result := con;

end;

function TclassConceitos.Excluir: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('DELETE ');
fdquery.SQL.Add('FROM ');
fdquery.SQL.Add('CONCEITOS ');
fdquery.SQL.Add('WHERE');
fdquery.SQL.Add('CON_CODIGO = :CON_CODIGO ');

fdquery.ParamByName('CON_CODIGO').Value := CON_CODIGO;

fdquery.ExecSQL;

if fdquery.RowsAffected > 0 then
    result := True else result := False;

end;

function TclassConceitos.Inserir: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('INSERT INTO ');
fdquery.SQL.Add('CONCEITOS ');//*
fdquery.SQL.Add('( ');
fdquery.SQL.Add('CON_CODIGO, ');//**
fdquery.SQL.Add('CON_NOME, ');//**
fdquery.SQL.Add('CON_LETRA ');//**
fdquery.SQL.Add(') ');
fdquery.SQL.Add('VALUES ');
fdquery.SQL.Add('( ');
fdquery.SQL.Add(':CON_CODIGO, ');//**
fdquery.SQL.Add(':CON_NOME, ');//**
fdquery.SQL.Add(':CON_LETRA ');//**
fdquery.SQL.Add(') ');
//atribuir os valores para os parametros da SQL
fdquery.ParamByName('CON_CODIGO').Value := FCON_CODIGO;
fdquery.ParamByName('CON_NOME').Value := FCON_NOME;
fdquery.ParamByName('CON_LETRA').Value := FCON_LETRA;

fdquery.ExecSQL();
if fdquery.RowsAffected > 0 then
  result := true
else
  result := false;

end;

procedure TclassConceitos.SetCON_LETRA(const Value: string);
begin
  FCON_LETRA := Value;
end;

procedure TclassConceitos.SetCON_CODIGO(const Value: integer);
begin
  FCON_CODIGO := Value;
end;

procedure TclassConceitos.SetCON_NOME(const Value: string);
begin
  FCON_NOME := Value;
end;

end.
