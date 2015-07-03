inherited frmTurmasCadastro: TfrmTurmasCadastro
  Caption = 'Cadastro de turmas'
  OnShow = FormShow
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
      Top = 77
      Width = 38
      Height = 18
      Caption = 'S'#233'rie'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 32
      Top = 133
      Width = 95
      Height = 18
      Caption = 'Per'#237'odo letivo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 32
      Top = 189
      Width = 38
      Height = 18
      Caption = 'Turno'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lbledt_tur_codigo: TLabeledEdit
      Left = 32
      Top = 41
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
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBL_ser_codigo: TDBLookupComboBox
      Left = 32
      Top = 96
      Width = 300
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'SER_CODIGO'
      ListField = 'SER_NOME'
      ListSource = ds_serie
      ParentFont = False
      TabOrder = 1
    end
    object DBL_periodos_letivos_codigo: TDBLookupComboBox
      Left = 32
      Top = 152
      Width = 300
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'PEL_CODIGO'
      ListField = 'PEL_NOME'
      ListSource = dsperiodoletivo
      ParentFont = False
      TabOrder = 2
    end
    object DBL_tur_codigo: TDBLookupComboBox
      Left = 32
      Top = 208
      Width = 300
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'TUR_CODIGO'
      ListField = 'TUR_NOME'
      ListSource = dsturnos
      ParentFont = False
      TabOrder = 3
    end
    object lbledt_tur_nome: TLabeledEdit
      Left = 32
      Top = 272
      Width = 300
      Height = 26
      EditLabel.Width = 107
      EditLabel.Height = 18
      EditLabel.Caption = 'Nome da turma'
      EditLabel.Font.Charset = DEFAULT_CHARSET
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
      TabOrder = 4
    end
  end
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Width = 233
      Caption = 'Cadastro de turmas'
      ExplicitWidth = 233
    end
  end
  inherited dsdados: TDataSource
    Top = 81
  end
  object dsperiodoletivo: TDataSource
    Left = 376
    Top = 217
  end
  object dsturnos: TDataSource
    Left = 384
    Top = 297
  end
  object ds_serie: TDataSource
    Left = 376
    Top = 153
  end
end
