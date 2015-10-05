unit untRelNotas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB;

type
  TfrmRelNotas = class(TForm)
    dsNotas: TDataSource;
    btnImprimir: TButton;
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelNotas: TfrmRelNotas;

implementation

{$R *.dfm}

uses classNotas;

procedure TfrmRelNotas.btnImprimirClick(Sender: TObject);
var
notas : TclassNotas;
begin
notas := TclassNotas.Create();

dsNotas.DataSet := Notas.RelatoriosNotas();
end;

end.
