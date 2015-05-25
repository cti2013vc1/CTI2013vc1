unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastrodeperodosletivos1: TMenuItem;
    procedure Cadastrodeperodosletivos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses untPeriodosLetivosConsulta;



procedure TfrmPrincipal.Cadastrodeperodosletivos1Click(Sender: TObject);
begin
frmPeriodosLetivosConsulta.Show;
end;

end.
