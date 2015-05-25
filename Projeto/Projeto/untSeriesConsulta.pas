unit untSeriesConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unt_modeloConsulta, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmSeriesConsulta = class(Tfrm_modelo_consulta)
    procedure btnInserirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSeriesConsulta: TfrmSeriesConsulta;

implementation

{$R *.dfm}

uses untSeriesCadastro;

procedure TfrmSeriesConsulta.btnInserirClick(Sender: TObject);
begin
  inherited;
frmSeriesCadastro.Show;
frmSeriesCadastro.status := 'I';
end;

end.
