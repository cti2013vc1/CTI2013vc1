inherited frmColaboradoresCadastro: TfrmColaboradoresCadastro
  Caption = 'Cadastro de colaboradores'
  ClientHeight = 505
  ClientWidth = 431
  ExplicitTop = -83
  ExplicitWidth = 447
  ExplicitHeight = 544
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Width = 431
    Height = 440
    ExplicitTop = 64
    ExplicitWidth = 431
    ExplicitHeight = 440
    inherited btnSalvar: TSpeedButton
      Left = 62
      Top = 366
      OnClick = btnSalvarClick
    end
    inherited btnCancelar: TSpeedButton
      Left = 220
      Top = 366
    end
    object lbledt_col_codigo: TLabeledEdit
      Left = 32
      Top = 48
      Width = 121
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
      Width = 121
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
      Width = 121
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
      TabOrder = 2
    end
    object lbledt_col_nivel_acesso: TLabeledEdit
      Left = 32
      Top = 242
      Width = 121
      Height = 26
      EditLabel.Width = 111
      EditLabel.Height = 18
      EditLabel.Caption = 'Nivel de acesso'
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
    object lbledt_col_usuario: TLabeledEdit
      Left = 32
      Top = 310
      Width = 121
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
      TabOrder = 4
    end
  end
  inherited Panel1: TPanel
    Width = 431
    inherited Label1: TLabel
      Width = 317
      Caption = 'Cadastro de colaboradores'
      ExplicitWidth = 317
    end
  end
end
