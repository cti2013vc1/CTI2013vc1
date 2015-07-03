inherited frmConceitosCadastro: TfrmConceitosCadastro
  Caption = 'Cadastro de conceitos'
  ClientHeight = 416
  ClientWidth = 389
  OnShow = FormShow
  ExplicitWidth = 405
  ExplicitHeight = 455
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Width = 389
    Height = 351
    ExplicitWidth = 389
    ExplicitHeight = 351
    inherited btnSalvar: TSpeedButton
      Left = 50
      Top = 277
      OnClick = btnSalvarClick
      ExplicitLeft = 50
      ExplicitTop = 277
    end
    inherited btnCancelar: TSpeedButton
      Left = 192
      Top = 277
      OnClick = btnCancelarClick
      ExplicitLeft = 192
      ExplicitTop = 277
    end
    object Label2: TLabel
      Left = 32
      Top = 128
      Width = 139
      Height = 14
      Caption = 'Pode ser: CSA, CPA ou CRA;'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 32
      Top = 208
      Width = 193
      Height = 14
      Caption = 'Pode ser: S (CSA), P (CPA) ou R (CRA);'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lbledt_con_codigo: TLabeledEdit
      Left = 32
      Top = 40
      Width = 121
      Height = 26
      Color = clWhite
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
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object lbledt_con_nome: TLabeledEdit
      Left = 32
      Top = 104
      Width = 121
      Height = 26
      EditLabel.Width = 127
      EditLabel.Height = 18
      EditLabel.Caption = 'Nome do conceito'
      EditLabel.Color = clBlack
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clBlack
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Arial'
      EditLabel.Font.Style = []
      EditLabel.ParentColor = False
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object lbledt_con_letra: TLabeledEdit
      Left = 32
      Top = 184
      Width = 121
      Height = 26
      EditLabel.Width = 36
      EditLabel.Height = 18
      EditLabel.Caption = 'Letra'
      EditLabel.Color = clBlack
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clBlack
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Arial'
      EditLabel.Font.Style = []
      EditLabel.ParentColor = False
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  inherited Panel1: TPanel
    Width = 389
    ExplicitWidth = 389
    inherited Label1: TLabel
      Width = 264
      Caption = 'Cadastro de Conceitos'
      ExplicitWidth = 264
    end
  end
end
