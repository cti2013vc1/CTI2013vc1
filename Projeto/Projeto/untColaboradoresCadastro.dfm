inherited frmColaboradoresCadastro: TfrmColaboradoresCadastro
  Caption = 'Cadastro de colaboradores'
  ClientHeight = 505
  ClientWidth = 445
  ExplicitWidth = 461
  ExplicitHeight = 544
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Width = 445
    Height = 440
    ExplicitWidth = 431
    ExplicitHeight = 440
    inherited btnSalvar: TSpeedButton
      Left = 66
      Top = 366
      OnClick = btnSalvarClick
      ExplicitLeft = 62
      ExplicitTop = 366
    end
    inherited btnCancelar: TSpeedButton
      Left = 229
      Top = 366
      OnClick = btnCancelarClick
      ExplicitLeft = 220
      ExplicitTop = 366
    end
    object Label2: TLabel
      Left = 32
      Top = 228
      Width = 110
      Height = 18
      Caption = 'N'#237'vel de acesso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lbledt_col_codigo: TLabeledEdit
      Left = 32
      Top = 48
      Width = 80
      Height = 26
      EditLabel.Width = 52
      EditLabel.Height = 18
      EditLabel.Caption = 'C'#243'digo'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clBlack
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Arial'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object lbledt_col_nome: TLabeledEdit
      Left = 32
      Top = 112
      Width = 350
      Height = 26
      EditLabel.Width = 42
      EditLabel.Height = 18
      EditLabel.Caption = 'Nome'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clBlack
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Arial'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object lbledt_col_senha: TLabeledEdit
      Left = 32
      Top = 178
      Width = 200
      Height = 26
      EditLabel.Width = 45
      EditLabel.Height = 18
      EditLabel.Caption = 'Senha'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clBlack
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Arial'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 2
    end
    object lbledt_col_usuario: TLabeledEdit
      Left = 32
      Top = 310
      Width = 350
      Height = 26
      EditLabel.Width = 54
      EditLabel.Height = 18
      EditLabel.Caption = 'Usu'#225'rio'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clBlack
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Arial'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object RBSecretaria: TRadioButton
      Left = 32
      Top = 247
      Width = 113
      Height = 17
      Caption = 'Secretaria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object RBDiretoria: TRadioButton
      Left = 168
      Top = 247
      Width = 113
      Height = 17
      Caption = 'Diretoria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
  end
  inherited Panel1: TPanel
    Width = 445
    ExplicitWidth = 431
    inherited Label1: TLabel
      Width = 317
      Caption = 'Cadastro de colaboradores'
      ExplicitWidth = 317
    end
  end
end
