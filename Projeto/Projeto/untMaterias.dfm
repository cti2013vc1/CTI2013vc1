inherited frmMateriasCadastro: TfrmMateriasCadastro
  Caption = 'Cadastro de mat'#233'rias'
  OnShow = FormShow
  ExplicitWidth = 478
  ExplicitHeight = 520
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    object Label2: TLabel
      Left = 32
      Top = 189
      Width = 34
      Height = 18
      Caption = #193'rea'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lbledt_mat_codigo: TLabeledEdit
      Left = 32
      Top = 48
      Width = 193
      Height = 26
      EditLabel.Width = 52
      EditLabel.Height = 18
      EditLabel.Caption = 'C'#243'digo'
      EditLabel.Color = clBlack
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clBlack
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Arial'
      EditLabel.Font.Style = []
      EditLabel.ParentColor = False
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'lbledt_mat_codigo'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 32
      Top = 208
      Width = 193
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'ARC_CODIGO'
      ListField = 'ARC_NOME'
      ListSource = dsdados
      ParentFont = False
      TabOrder = 1
    end
    object lbledt_mat_nome: TLabeledEdit
      Left = 32
      Top = 128
      Width = 193
      Height = 26
      EditLabel.Width = 121
      EditLabel.Height = 18
      EditLabel.Caption = 'Nome da mat'#233'ria'
      EditLabel.Color = clBlack
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clBlack
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Arial'
      EditLabel.Font.Style = []
      EditLabel.ParentColor = False
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = 'lbledt_mat_nome'
    end
  end
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Width = 252
      Caption = 'Cadastro de mat'#233'rias'
      ExplicitWidth = 252
    end
  end
  inherited dsdados: TDataSource
    Left = 408
    Top = 409
  end
end
