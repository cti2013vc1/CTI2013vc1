unit classMateriasPorSerie;

 interface

 uses
  FireDAC.Comp.Client, FireDAC.DApt;

type
  TclassAreas = class
private

  public
    property MATERIAS_MAT_CODIGO : integer;
    property SERIES_SER_CODIGO : integer;

    //Depois de colocar todos os campos clicke Ctrl + Shift + C

  //escrever a uses acima do type
 function ConsultarAlunos(): TFDQuery;
 function Inserir(): boolean;
 procedure Carregar();
 function Alterar() : boolean;
 function Excluir() : boolean;
 end;

implementation

{ TclassAreas }

end.
