inherited frmColaboradoresConsulta: TfrmColaboradoresConsulta
  Caption = 'Consulta de colaboradores'
  ClientWidth = 771
  OnShow = FormShow
  ExplicitTop = 0
  ExplicitWidth = 787
  ExplicitHeight = 498
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 771
    ExplicitWidth = 804
    inherited Image2: TImage
      Left = 625
      ExplicitLeft = 658
    end
    inherited Edit1: TEdit
      Width = 494
      ExplicitWidth = 527
    end
  end
  inherited Panel2: TPanel
    Width = 771
    ExplicitWidth = 804
    inherited btnExcluir: TSpeedButton
      OnClick = btnExcluirClick
    end
    inherited btnEditar: TSpeedButton
      OnClick = btnEditarClick
    end
    inherited btnInserir: TSpeedButton
      OnClick = btnInserirClick
    end
    inherited DBGrid1: TDBGrid
      Width = 575
      Font.Height = -15
      Font.Name = 'Arial'
      Columns = <
        item
          Expanded = False
          FieldName = 'COL_CODIGO'
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COL_NOME'
          Title.Caption = 'Nome'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 494
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COL_SENHA'
          Title.Caption = 'Senha'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COL_NIVEL_ACESSO'
          Title.Caption = 'N'#237'vel de acesso'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 121
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COL_USUARIO'
          Title.Caption = 'Usu'#225'rio'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 436
          Visible = True
        end>
    end
  end
end
