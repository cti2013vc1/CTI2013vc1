inherited frmAreasCadastro: TfrmAreasCadastro
  Caption = 'Cadastro de '#225'reas'
  ClientHeight = 361
  ClientWidth = 347
  OnShow = FormShow
  ExplicitWidth = 363
  ExplicitHeight = 400
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Width = 347
    Height = 296
    ExplicitWidth = 347
    ExplicitHeight = 296
    inherited btnSalvar: TSpeedButton
      Left = 39
      Top = 222
      OnClick = btnSalvarClick
      ExplicitLeft = 39
      ExplicitTop = 222
    end
    inherited btnCancelar: TSpeedButton
      Left = 164
      Top = 222
      OnClick = btnCancelarClick
      ExplicitLeft = 164
      ExplicitTop = 222
    end
    object Label2: TLabel
      Left = 32
      Top = 152
      Width = 266
      Height = 14
      Caption = 'As '#225'reas podem ser: Humanas, Natureza, Matem'#225'tica, '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 32
      Top = 168
      Width = 124
      Height = 14
      Caption = 'Linguagens ou Semin'#225'rio.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lbledt_arc_codigo: TLabeledEdit
      Left = 32
      Top = 56
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
    object lbledt_arc_nome: TLabeledEdit
      Left = 32
      Top = 120
      Width = 121
      Height = 26
      EditLabel.Width = 100
      EditLabel.Height = 18
      EditLabel.Caption = 'Nome da '#225'rea'
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
  end
  inherited Panel1: TPanel
    Width = 347
    ExplicitWidth = 347
    inherited Label1: TLabel
      Width = 214
      Caption = 'Cadastro de '#225'reas'
      ExplicitWidth = 214
    end
  end
end
