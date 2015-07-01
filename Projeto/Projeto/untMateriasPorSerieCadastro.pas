unit untMateriasPorSerieCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloCadastro, Data.DB,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBCtrls;

type
  TfrmMateriasPorSerieCadastro = class(Tfrm_modelo_cadastro)
    DBL_materias: TDBLookupComboBox;
    DBL_serie: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    dsmateria: TDataSource;
    dsserie: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMateriasPorSerieCadastro: TfrmMateriasPorSerieCadastro;

implementation

{$R *.dfm}

end.
