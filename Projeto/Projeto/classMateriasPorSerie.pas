unit classMateriasPorSerie;
 interface
type
  TclassAreas = class
private
    FSERIES_SER_CODIGO: integer;
    FMATERIAS_MAT_CODIGO: integer;
    procedure SetMATERIAS_MAT_CODIGO(const Value: integer);
    procedure SetSERIES_SER_CODIGO(const Value: integer);

  public
    property MATERIAS_MAT_CODIGO : integer  read FMATERIAS_MAT_CODIGO write SetMATERIAS_MAT_CODIGO;
    property SERIES_SER_CODIGO : integer read FSERIES_SER_CODIGO write SetSERIES_SER_CODIGO;

    //Depois de colocar todos os campos clicke Ctrl + Shift + C

  //escrever a uses acima do type
 function ConsultarAreas(): TFDQuery;
 function Inserir(): boolean;
 procedure Carregar();
 function Alterar() : boolean;
 function Excluir() : boolean;
 end;
implementation
{ TclassAreas }

procedure TclassAreas.SetMATERIAS_MAT_CODIGO(const Value: integer);
begin
  FMATERIAS_MAT_CODIGO := Value;
end;

procedure TclassAreas.SetSERIES_SER_CODIGO(const Value: integer);
begin
  FSERIES_SER_CODIGO := Value;
end;

end.
