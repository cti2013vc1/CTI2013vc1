inherited frmMateriasCadastro: TfrmMateriasCadastro
  Caption = 'Cadastro de mat'#233'rias'
  ClientHeight = 394
  ClientWidth = 368
  KeyPreview = True
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 384
  ExplicitHeight = 433
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Width = 368
    Height = 329
    ExplicitWidth = 368
    ExplicitHeight = 329
    inherited btnSalvar: TSpeedButton
      Left = 44
      Top = 255
      OnClick = btnSalvarClick
      ExplicitLeft = 36
      ExplicitTop = 255
    end
    inherited btnCancelar: TSpeedButton
      Left = 178
      Top = 255
      OnClick = btnCancelarClick
      ExplicitLeft = 158
      ExplicitTop = 255
    end
    object Label2: TLabel
      Left = 32
      Top = 168
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
      Width = 80
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
    object DBL_materias: TDBLookupComboBox
      Left = 32
      Top = 186
      Width = 250
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
      Top = 120
      Width = 250
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
    Width = 368
    ExplicitWidth = 368
    inherited Label1: TLabel
      Width = 252
      Caption = 'Cadastro de mat'#233'rias'
      ExplicitWidth = 252
    end
  end
  inherited dsdados: TDataSource
    Left = 312
    Top = 257
  end
end
