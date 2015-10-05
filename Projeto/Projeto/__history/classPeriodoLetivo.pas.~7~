unit classPeriodoLetivo;

interface
uses
  FireDAC.Comp.Client, FireDAC.DApt;

type
  TclassPeriodoLetivo = class
  private
    FPEL_CODIGO: integer;
    FPEL_NOME: string;
    FQTDE_NOTAS: integer;
    procedure SetPEL_CODIGO(const Value: integer);
    procedure SetPEL_NOME(const Value: string);
    procedure SetQTDE_NOTAS(const Value: integer);


  public
    property PEL_NOME : string read FPEL_NOME write SetPEL_NOME;
    property PEL_CODIGO : integer read FPEL_CODIGO write SetPEL_CODIGO;
    property QTDE_NOTAS : integer read FQTDE_NOTAS write SetQTDE_NOTAS;


 //Depois de colocar todos os campos clicke Ctrl + Shift + C

    //escrever a uses acima do type
 function ConsultarPeriodoLetivo(): TFDQuery;
 function Inserir(): boolean;
 procedure Carregar();
 function Alterar() : boolean;
 function Excluir() : boolean;


     end;
implementation

uses untConexao;

{ TclassPeriodoLetivo }

function TclassPeriodoLetivo.Alterar: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('UPDATE ');
fdquery.SQL.Add('PERIODOS_LETIVOS ');//TABELA QUE VAI ALTERAR
fdquery.SQL.Add('SET ');
fdquery.SQL.Add('PEL_NOME = :PEL_NOME, ');  //CAMPO DE ALTERAÇÃO
fdquery.SQL.Add('QTDE_NOTAS = :QTDE_NOTAS ');  //CAMPO DE ALTERAÇÃO
//APOS O ULTIMO CAMPO NÃO VAI VIRGULA
fdquery.SQL.Add('WHERE ');
fdquery.SQL.Add('PEL_CODIGO = :PEL_CODIGO ');

fdquery.ParamByName('PEL_CODIGO').Value := PEL_CODIGO;
fdquery.ParamByName('PEL_NOME').Value := PEL_NOME;
fdquery.ParamByName('QTDE_NOTAS').Value := QTDE_NOTAS;
//executa no banco de dados
fdquery.ExecSQL;
//verifica se realmente fez a alteração no banco
if fdquery.RowsAffected > 0 then
  result := True else result := false

end;

procedure TclassPeriodoLetivo.Carregar;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('SELECT * FROM PERIODOS_LETIVOS ');
fdquery.SQL.Add('WHERE PEL_CODIGO = :PEL_CODIGO ');

fdquery.ParamByName('PEL_CODIGO').Value := FPEL_CODIGO;

fdquery.Open();
FPEL_NOME := fdquery.FieldByName('PEL_NOME').Value;
FQTDE_NOTAS := fdquery.FieldByName('QTDE_NOTAS').Value;

end;

function TclassPeriodoLetivo.ConsultarPeriodoLetivo: TFDQuery;
var
con : TFDQuery;
begin
con := TFDQuery.Create(nil);
con.Connection := dmConexao.FDConnection1;
con.sql.Add(         'SELECT                '+
                     'PERIODOS_LETIVOS.PEL_CODIGO,   '+
                     'PERIODOS_LETIVOS.PEL_NOME,     '+
                     'PERIODOS_LETIVOS.QTDE_NOTAS    '+
                     'FROM PERIODOS_LETIVOS    Order By PERIODOS_LETIVOS.PEL_CODIGO      ');

con.Open();
result := con;

end;

function TclassPeriodoLetivo.Excluir: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('DELETE ');
fdquery.SQL.Add('FROM ');
fdquery.SQL.Add('PERIODOS_LETIVOS ');
fdquery.SQL.Add('WHERE');
fdquery.SQL.Add('PEL_CODIGO = :PEL_CODIGO ');

fdquery.ParamByName('PEL_CODIGO').Value := PEL_CODIGO;

fdquery.ExecSQL;

if fdquery.RowsAffected > 0 then
    result := True else result := False;
end;

function TclassPeriodoLetivo.Inserir: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('INSERT INTO ');
fdquery.SQL.Add('PERIODOS_LETIVOS ');//*
fdquery.SQL.Add('( ');
fdquery.SQL.Add('PEL_CODIGO, ');//**
fdquery.SQL.Add('PEL_NOME, ');//**
fdquery.SQL.Add('QTDE_NOTAS ');//**
fdquery.SQL.Add(') ');
fdquery.SQL.Add('VALUES ');
fdquery.SQL.Add('( ');
fdquery.SQL.Add(':PEL_CODIGO, ');//**
fdquery.SQL.Add(':PEL_NOME, ');//**
fdquery.SQL.Add(':QTDE_NOTAS ');//**
fdquery.SQL.Add(') ');
//atribuir os valores para os parametros da SQL
fdquery.ParamByName('PEL_CODIGO').Value := FPEL_CODIGO;
fdquery.ParamByName('PEL_NOME').Value := FPEL_NOME;
fdquery.ParamByName('QTDE_NOTAS').Value := FQTDE_NOTAS;

fdquery.ExecSQL();
if fdquery.RowsAffected > 0 then
  result := true
else
  result := false;

end;

procedure TclassPeriodoLetivo.SetPEL_CODIGO(const Value: integer);
begin
  FPEL_CODIGO := Value;
end;

procedure TclassPeriodoLetivo.SetPEL_NOME(const Value: string);
begin
  FPEL_NOME := Value;
end;

procedure TclassPeriodoLetivo.SetQTDE_NOTAS(const Value: integer);
begin
  FQTDE_NOTAS := Value;
end;

end.
