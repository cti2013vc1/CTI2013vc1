unit unt_modeloCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Data.DB;

type
  Tfrm_modelo_cadastro = class(TForm)
    Panel2: TPanel;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    dsdados: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_modelo_cadastro: Tfrm_modelo_cadastro;

implementation

{$R *.dfm}

end.
