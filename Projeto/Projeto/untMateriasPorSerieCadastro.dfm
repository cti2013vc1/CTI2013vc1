inherited frm_modelo_cadastro1: Tfrm_modelo_cadastro1
  Caption = 'Cadastro de materias por s'#233'rie'
  ClientHeight = 333
  ClientWidth = 380
  ExplicitWidth = 396
  ExplicitHeight = 372
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Width = 380
    Height = 268
    ExplicitTop = 64
    ExplicitWidth = 380
    ExplicitHeight = 268
    inherited btnSalvar: TSpeedButton
      Left = 48
      Top = 194
      OnClick = btnSalvarClick
    end
    inherited btnCancelar: TSpeedButton
      Left = 186
      Top = 194
    end
    object Label2: TLabel
      Left = 32
      Top = 37
      Width = 121
      Height = 18
      Caption = 'Nome da mat'#233'ria'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 32
      Top = 101
      Width = 103
      Height = 18
      Caption = 'Nome da s'#233'rie'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DB_materias_mat_codigo: TDBLookupComboBox
      Left = 32
      Top = 56
      Width = 217
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'MATERIAS_MAT_CODIGO'
      ListField = 'MATERIAS_MAT_NOME'
      ListSource = dsdados
      ParentFont = False
      TabOrder = 0
    end
    object DB_series_ser_codigo: TDBLookupComboBox
      Left = 32
      Top = 120
      Width = 217
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'SERIES_SER_CODIGO'
      ListField = 'SERIES_SER_NOME'
      ListSource = dsdados
      ParentFont = False
      TabOrder = 1
    end
  end
  inherited Panel1: TPanel
    Width = 380
    inherited Label1: TLabel
      Width = 364
      Caption = 'Cadastro de mat'#233'rias por s'#233'rie'
      ExplicitWidth = 364
    end
  end
end
