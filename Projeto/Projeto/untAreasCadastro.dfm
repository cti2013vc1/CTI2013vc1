inherited frmAreasCadastro: TfrmAreasCadastro
  Caption = 'Cadastro de '#193'reas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited btnSalvar: TSpeedButton
      OnClick = btnSalvarClick
    end
    object lbledt_codigo: TLabeledEdit
      Left = 62
      Top = 56
      Width = 121
      Height = 21
      EditLabel.Width = 33
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'digo'
      TabOrder = 0
    end
    object lbledt_nome: TLabeledEdit
      Left = 62
      Top = 112
      Width = 121
      Height = 21
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome'
      TabOrder = 1
    end
  end
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Width = 216
      Caption = 'Cadastro de '#193'reas'
      ExplicitWidth = 216
    end
  end
end
