inherited frmMatriculasCadastro: TfrmMatriculasCadastro
  Caption = 'Cadastro de matr'#237'culas'
  ClientHeight = 505
  ClientWidth = 467
  OnShow = FormShow
  ExplicitWidth = 483
  ExplicitHeight = 544
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Width = 467
    Height = 440
    ExplicitWidth = 467
    ExplicitHeight = 440
    inherited btnSalvar: TSpeedButton
      Left = 71
      Top = 366
      OnClick = btnSalvarClick
      ExplicitLeft = 71
      ExplicitTop = 366
    end
    inherited btnCancelar: TSpeedButton
      Left = 243
      Top = 366
      OnClick = btnCancelarClick
      ExplicitLeft = 243
      ExplicitTop = 366
    end
    object Label2: TLabel
      Left = 33
      Top = 24
      Width = 105
      Height = 18
      Caption = 'Nome do aluno'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 33
      Top = 84
      Width = 107
      Height = 18
      Caption = 'Nome da turma'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 32
      Top = 148
      Width = 121
      Height = 18
      Caption = 'Nome da mat'#233'ria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 33
      Top = 210
      Width = 122
      Height = 18
      Caption = 'Data da matr'#237'cula'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lbledt_ano: TLabeledEdit
      Left = 32
      Top = 291
      Width = 100
      Height = 26
      EditLabel.Width = 28
      EditLabel.Height = 18
      EditLabel.Caption = 'Ano'
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
    object DBL_alu_codigo: TDBLookupComboBox
      Left = 32
      Top = 42
      Width = 350
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'ALU_CODIGO'
      ListField = 'ALU_NOME'
      ListSource = dsdados
      ParentFont = False
      TabOrder = 1
    end
    object DBL_turmas_codigo: TDBLookupComboBox
      Left = 32
      Top = 101
      Width = 350
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'TUR_CODIGO'
      ListField = 'TUR_NOME'
      ListSource = dsturmas
      ParentFont = False
      TabOrder = 2
    end
    object DBL_mat_codigo: TDBLookupComboBox
      Left = 33
      Top = 165
      Width = 350
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'MAT_CODIGO'
      ListField = 'MAT_NOME'
      ListSource = dsmaterias
      ParentFont = False
      TabOrder = 3
    end
    object MK_Data: TMaskEdit
      Left = 32
      Top = 229
      Width = 100
      Height = 26
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 4
      Text = '  /  /    '
    end
    object DTP_data: TDateTimePicker
      Left = 130
      Top = 229
      Width = 18
      Height = 26
      Date = 42172.680768518520000000
      Time = 42172.680768518520000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnChange = DTP_dataChange
    end
  end
  inherited Panel1: TPanel
    Width = 467
    ExplicitWidth = 467
    inherited Label1: TLabel
      Width = 271
      Caption = 'Cadastro de matr'#237'culas'
      ExplicitWidth = 271
    end
  end
  object dsmaterias: TDataSource
    Left = 376
    Top = 257
  end
  object dsturmas: TDataSource
    Left = 272
    Top = 297
  end
end
