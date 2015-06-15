unit untMateriasConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloConsulta, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmMateriasConsulta = class(Tfrm_modelo_consulta)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMateriasConsulta: TfrmMateriasConsulta;

implementation

{$R *.dfm}

uses classMaterias;

procedure TfrmMateriasConsulta.FormShow(Sender: TObject);
var
materias : TClassMaterias;

begin
  inherited;
  materias := TclassMaterias.Create;
  dsdados.DataSet := materias.ConsultarMaterias;

end;

end.
