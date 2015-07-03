unit classMaterias;

interface
uses
  FireDAC.Comp.Client, FireDAC.DApt;

type
  TclassMaterias = class
  private
    FMAT_CODIGO: integer;
    FMAT_NOME: string;
    FAREAS_ARC_CODIGO: integer;
    procedure SetAREAS_ARC_CODIGO(const Value: integer);
    procedure SetMAT_CODIGO(const Value: integer);
    procedure SetMAT_NOME(const Value: string);

  public
    property MAT_CODIGO : integer read FMAT_CODIGO write SetMAT_CODIGO;
    property MAT_NOME : string read FMAT_NOME write SetMAT_NOME;
    property AREAS_ARC_CODIGO : integer read FAREAS_ARC_CODIGO write SetAREAS_ARC_CODIGO;
 //Depois de colocar todos os campos clicke Ctrl + Shift + C

    //escrever a uses acima do type
 function ConsultarMaterias(): TFDQuery;
 function Inserir(): boolean;
 procedure Carregar();
 function Alterar() : boolean;
 function Excluir() : boolean;
  end;
implementation

{ TclassMaterias }
uses untConexao;

function TclassMaterias.Alterar: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('UPDATE ');
fdquery.SQL.Add('MATERIAS ');//TABELA QUE VAI ALTERAR
fdquery.SQL.Add('SET ');
fdquery.SQL.Add('MAT_NOME = :MAT_NOME, ');  //CAMPO DE ALTERA��O
fdquery.SQL.Add('AREAS_ARC_CODIGO = :AREAS_ARC_CODIGO ');  //CAMPO DE ALTERA��O
//APOS O ULTIMO CAMPO N�O VAI VIRGULA
fdquery.SQL.Add('WHERE ');
fdquery.SQL.Add('MAT_CODIGO = :MAT_CODIGO ');

fdquery.ParamByName('MAT_CODIGO').Value := MAT_CODIGO;
fdquery.ParamByName('MAT_NOME').Value := MAT_NOME;
fdquery.ParamByName('AREAS_ARC_CODIGO').Value := AREAS_ARC_CODIGO;
//executa no banco de dados
fdquery.ExecSQL;
//verifica se realmente fez a altera��o no banco
if fdquery.RowsAffected > 0 then
  result := True else result := false
end;

procedure TclassMaterias.Carregar;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('SELECT * FROM MATERIAS ');
fdquery.SQL.Add('WHERE MAT_CODIGO = :MAT_CODIGO ');

fdquery.ParamByName('MAT_CODIGO').Value := FMAT_CODIGO;

fdquery.Open();
FMAT_NOME := fdquery.FieldByName('MAT_NOME').Value;
FAREAS_ARC_CODIGO := fdquery.FieldByName('AREAS_ARC_CODIGO').Value;
end;

function TclassMaterias.ConsultarMaterias: TFDQuery;
var
con : TFDQuery;
begin
con := TFDQuery.Create(nil);
con.Connection := dmConexao.FDConnection1;
con.sql.Add(         'SELECT                 '+
                     'MATERIAS.MAT_CODIGO,   '+
                     'MATERIAS.MAT_NOME,      '+
                     'AREAS.ARC_CODIGO,       '+
                     'AREAS.ARC_NOME           '+
                     'FROM MATERIAS          '+
                     'LEFT OUTER JOIN AREAS ON ( AREAS.ARC_CODIGO = MATERIAS.AREAS_ARC_CODIGO ) Order By MATERIAS.MAT_CODIGO');
con.Open();
result := con;

end;

function TclassMaterias.Excluir: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('DELETE ');
fdquery.SQL.Add('FROM ');
fdquery.SQL.Add('MATERIAS ');
fdquery.SQL.Add('WHERE');
fdquery.SQL.Add('MAT_CODIGO = :MAT_CODIGO ');

fdquery.ParamByName('MAT_CODIGO').Value := MAT_CODIGO;

fdquery.ExecSQL;

if fdquery.RowsAffected > 0 then
    result := True else result := False;
end;

function TclassMaterias.Inserir: boolean;
var
fdquery : TFDQuery;
begin
fdquery := TFDQuery.Create(nil);
fdquery.Connection := DMConexao.FDConnection1;
fdquery.SQL.Add('INSERT INTO ');
fdquery.SQL.Add('MATERIAS ');//*
fdquery.SQL.Add('( ');
fdquery.SQL.Add('MAT_CODIGO, ');//**
fdquery.SQL.Add('AREAS_ARC_CODIGO, ');//**
fdquery.SQL.Add('MAT_NOME ');//**
fdquery.SQL.Add(') ');
fdquery.SQL.Add('VALUES ');
fdquery.SQL.Add('( ');
fdquery.SQL.Add(':MAT_CODIGO, ');//**
fdquery.SQL.Add(':AREAS_ARC_CODIGO, ');//**
fdquery.SQL.Add(':MAT_NOME ');//**
fdquery.SQL.Add(') ');
//atribuir os valores para os parametros da SQL
fdquery.ParamByName('MAT_CODIGO').Value := FMAT_CODIGO;
fdquery.ParamByName('AREAS_ARC_CODIGO').Value := FAREAS_ARC_CODIGO;
fdquery.ParamByName('MAT_NOME').Value := FMAT_NOME;

fdquery.ExecSQL();
if fdquery.RowsAffected > 0 then
  result := true
else
  result := false;

end;

procedure TclassMaterias.SetAREAS_ARC_CODIGO(const Value: integer);
begin
  FAREAS_ARC_CODIGO := Value;
end;

procedure TclassMaterias.SetMAT_CODIGO(const Value: integer);
begin
  FMAT_CODIGO := Value;
end;

procedure TclassMaterias.SetMAT_NOME(const Value: string);
begin
  FMAT_NOME := Value;
end;

end.
