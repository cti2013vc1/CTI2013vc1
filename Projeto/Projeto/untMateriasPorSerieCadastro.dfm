inherited frmMateriasPorSerieCadastro: TfrmMateriasPorSerieCadastro
  Caption = 'Cadastro de mat'#233'rias por s'#233'rie'
  ClientHeight = 384
  ClientWidth = 504
  ExplicitWidth = 520
  ExplicitHeight = 423
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Width = 504
    Height = 319
    ExplicitWidth = 504
    ExplicitHeight = 319
    inherited btnSalvar: TSpeedButton
      Left = 81
      Top = 245
      ExplicitLeft = 81
      ExplicitTop = 245
    end
    inherited btnCancelar: TSpeedButton
      Left = 268
      Top = 245
      ExplicitLeft = 268
      ExplicitTop = 245
    end
    object Label2: TLabel
      Left = 40
      Top = 40
      Width = 53
      Height = 18
      Caption = 'Mat'#233'ria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 40
      Top = 115
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
    object DBL_materias: TDBLookupComboBox
      Left = 40
      Top = 61
      Width = 420
      Height = 21
      KeyField = 'MAT_CODIGO'
      ListField = 'MAT_NOME'
      ListSource = dsmateria
      TabOrder = 0
    end
    object DBL_serie: TDBLookupComboBox
      Left = 40
      Top = 135
      Width = 420
      Height = 21
      TabOrder = 1
    end
  end
  inherited Panel1: TPanel
    Width = 504
    ExplicitWidth = 504
    inherited Label1: TLabel
      Width = 364
      Caption = 'Cadastro de mat'#233'rias por s'#233'rie'
      ExplicitWidth = 364
    end
  end
  inherited dsdados: TDataSource
    Left = 440
    Top = 321
  end
  object dsmateria: TDataSource
    Left = 456
    Top = 153
  end
  object dsserie: TDataSource
    Left = 456
    Top = 241
  end
end
