inherited frmSeriesCadastro: TfrmSeriesCadastro
  Caption = 'Cadastro de s'#233'ries'
  ClientHeight = 446
  ClientWidth = 766
  KeyPreview = True
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 782
  ExplicitHeight = 485
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Width = 766
    Height = 381
    ExplicitWidth = 766
    ExplicitHeight = 381
    inherited btnSalvar: TSpeedButton
      Left = 612
      Top = 299
      OnClick = btnSalvarClick
      ExplicitLeft = 612
      ExplicitTop = 223
    end
    inherited btnCancelar: TSpeedButton
      Left = 426
      Top = 299
      OnClick = btnCancelarClick
      ExplicitLeft = 239
      ExplicitTop = 352
    end
    object SpeedButton1: TSpeedButton
      Left = 129
      Top = 299
      Width = 113
      Height = 46
      Anchors = [akBottom]
      Caption = 'Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 25
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        76020000424D7602000000000000760000002800000020000000200000000100
        04000000000000020000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF70007FF
        FFFFFFFFFF800000FFFFFFFF700007F8000FFFFFFF800000FFFFFFFF000007F8
        000FFFFFFF800000FFFFFFFF000007F8000FFFFFFF800000FFFFFFFF000007F8
        000FFFFFFF800000FFFFFFFF000007F8000FFFFFFF800000FFFFFFFF000007F8
        000FFFFFFF800000FFFFFFFF000007F8000FFFFFFF800000FFFFFFFF000007FF
        FFFFFFFFFF700000FFFFFFFF000000000000000000000000FFFFFFFF00000000
        0000000000000000FFFFFFFF000000000000000000000000FFFFFFFF00078888
        8888888888887000FFFFFFFF000FFFFFFFFFFFFFFFFFF000FFFFFFFF000FFFFF
        FFFFFFFFFFFFF000FFFFFFFF000FFFFFFFFFFFFFFFFFF000FFFFFFFF000FFFFF
        FFFFFFFFFFFFF000FFFFFFFF000FFFFFFFFFFFFFFFFFF000FFFFFFFF000FFFFF
        FFFFFFFFFFFFF000FFFFFFFF000FFFFFFFFFFFFFFFFFF000FFFFFFFF000FFFFF
        FFFFFFFFFFFFF000FFFFFFFF000FFFFFFFFFFFFFFFFFF7F0FFFFFFFF000FFFFF
        FFFFFFFFFFFFF000FFFFFFFF000FFFFFFFFFFFFFFFFFF000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      OnClick = btnSalvarClick
      ExplicitLeft = 57
      ExplicitTop = 275
    end
    object lbledt_ser_codigo: TLabeledEdit
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
    object lbledt_ser_nome: TLabeledEdit
      Left = 32
      Top = 120
      Width = 300
      Height = 26
      EditLabel.Width = 103
      EditLabel.Height = 18
      EditLabel.Caption = 'Nome da s'#233'rie'
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
    object Panel3: TPanel
      Left = 370
      Top = 6
      Width = 383
      Height = 275
      TabOrder = 2
    end
  end
  inherited Panel1: TPanel
    Width = 766
    ExplicitWidth = 766
    inherited Image1: TImage
      Left = 41
      Top = 3
      ExplicitLeft = 41
      ExplicitTop = 3
    end
    inherited Label1: TLabel
      Width = 218
      Caption = 'Cadastro de s'#233'ries'
      ExplicitWidth = 218
    end
  end
  inherited dsdados: TDataSource
    Left = 712
    Top = 17
  end
end
