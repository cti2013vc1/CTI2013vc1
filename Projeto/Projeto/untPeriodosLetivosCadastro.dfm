inherited frmPeriodosLetivosCadastro: TfrmPeriodosLetivosCadastro
  Caption = 'Cadastro de Per'#237'odos Letivos'
  ExplicitWidth = 478
  ExplicitHeight = 520
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited btnSalvar: TSpeedButton
      OnClick = btnSalvarClick
    end
    inherited btnCancelar: TSpeedButton
      OnClick = btnCancelarClick
    end
    object Label2: TLabel
      Left = 32
      Top = 224
      Width = 200
      Height = 13
      Caption = 'Obs.: A quantidade de per'#237'odos se refere'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 32
      Top = 243
      Width = 204
      Height = 13
      Caption = 'ao tipo de sistema adotado pela institui'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 32
      Top = 262
      Width = 343
      Height = 13
      Caption = 
        'Ex.: Bimestre: 4 per'#237'odos; Trimestre: 3 per'#237'odos; Semestre: 6 pe' +
        'r'#237'odos;'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbledt_codigo: TLabeledEdit
      Left = 32
      Top = 56
      Width = 80
      Height = 26
      EditLabel.Width = 52
      EditLabel.Height = 18
      EditLabel.Caption = 'C'#243'digo'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clBlack
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Arial'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
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
      Top = 128
      Width = 300
      Height = 26
      EditLabel.Width = 55
      EditLabel.Height = 18
      EditLabel.Caption = 'Per'#237'odo'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clBlack
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Arial'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object lbledt_qtdenotas: TLabeledEdit
      Left = 32
      Top = 198
      Width = 50
      Height = 26
      EditLabel.Width = 168
      EditLabel.Height = 18
      EditLabel.Caption = 'Quantidade de per'#237'odos'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clBlack
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Arial'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Width = 342
      Caption = 'Cadastro de Per'#237'odos Letivos'
      ExplicitWidth = 342
    end
  end
end
