unit untMateriasCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloCadastro, Data.DB,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBCtrls;

type
  TfrmMateriasCadastro = class(Tfrm_modelo_cadastro)
    lbledt_mat_codigo: TLabeledEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    lbledt_mat_nome: TLabeledEdit;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMateriasCadastro: TfrmMateriasCadastro;

implementation

{$R *.dfm}

uses classMaterias, classAreas;

procedure TfrmMateriasCadastro.FormShow(Sender: TObject);
var
  areas : TclassAreas;

begin
  inherited;
  areas := TclassAreas.Create;
  dsdados.DataSet := areas.ConsultarAreas;
end;

end.
