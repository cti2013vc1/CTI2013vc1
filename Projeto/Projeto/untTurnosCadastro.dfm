inherited frmTurnosCadastro: TfrmTurnosCadastro
  Caption = 'Cadastro de Turnos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited btnSalvar: TSpeedButton
      OnClick = btnSalvarClick
    end
    inherited btnCancelar: TSpeedButton
      OnClick = btnCancelarClick
    end
    object lbledt_codigo: TLabeledEdit
      Left = 32
      Top = 56
      Width = 113
      Height = 26
      EditLabel.Width = 33
      EditLabel.Height = 18
      EditLabel.Caption = 'C'#243'digo'
      EditLabel.Color = clSkyBlue
      EditLabel.ParentColor = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object lbledt_nome: TLabeledEdit
      Left = 32
      Top = 104
      Width = 113
      Height = 26
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome'
      EditLabel.Color = clSkyBlue
      EditLabel.ParentColor = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
end
