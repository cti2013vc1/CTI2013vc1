inherited frmAlunosCadastro: TfrmAlunosCadastro
  Caption = 'Cadastro de alunos'
  ClientHeight = 463
  ClientWidth = 428
  ExplicitWidth = 444
  ExplicitHeight = 502
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Width = 428
    Height = 398
    ExplicitLeft = -8
    ExplicitTop = 129
    ExplicitWidth = 428
    ExplicitHeight = 398
    inherited btnSalvar: TSpeedButton
      Left = 44
      Top = 324
      OnClick = btnSalvarClick
      ExplicitLeft = 32
      ExplicitTop = 324
    end
    inherited btnCancelar: TSpeedButton
      Left = 217
      Top = 324
      OnClick = btnCancelarClick
      ExplicitLeft = 167
      ExplicitTop = 317
    end
    object TLabel
      Left = 30
      Top = 157
      Width = 143
      Height = 18
      Caption = 'Data de Nascimento'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbledt_alu_codigo: TLabeledEdit
      Left = 32
      Top = 48
      Width = 49
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
    object lbledt_alu_nome: TLabeledEdit
      Left = 32
      Top = 112
      Width = 201
      Height = 26
      EditLabel.Width = 42
      EditLabel.Height = 18
      EditLabel.Caption = 'Nome'
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
    object lbledt_alu_inep: TLabeledEdit
      Left = 32
      Top = 240
      Width = 129
      Height = 26
      EditLabel.Width = 29
      EditLabel.Height = 18
      EditLabel.Caption = 'Inep'
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
      TabOrder = 2
    end
    object MK_DataNascimento: TMaskEdit
      Left = 30
      Top = 181
      Width = 131
      Height = 26
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 3
      Text = '  /  /    '
    end
    object dtpDtaNascimento: TDateTimePicker
      Left = 159
      Top = 181
      Width = 14
      Height = 26
      Date = 42167.616706678240000000
      Time = 42167.616706678240000000
      TabOrder = 4
      OnChange = dtpDtaNascimentoChange
    end
  end
  inherited Panel1: TPanel
    Width = 428
    ExplicitWidth = 376
    inherited Label1: TLabel
      Width = 227
      Caption = 'Cadastro de alunos'
      ExplicitWidth = 227
    end
  end
  inherited dsdados: TDataSource
    Left = 280
    Top = 305
  end
end
