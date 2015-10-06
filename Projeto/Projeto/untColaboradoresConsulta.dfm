inherited frmColaboradoresConsulta: TfrmColaboradoresConsulta
  Caption = 'Consulta de colaboradores'
  ClientHeight = 475
  ClientWidth = 1140
  KeyPreview = True
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 1156
  ExplicitHeight = 514
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1140
    ExplicitWidth = 1140
    inherited Image2: TImage
      Left = 994
      ExplicitLeft = 658
    end
    inherited edtConsulta: TEdit
      Width = 863
      OnChange = edtConsultaChange
      ExplicitWidth = 863
    end
  end
  inherited Panel2: TPanel
    Width = 1140
    Height = 386
    ExplicitWidth = 1140
    ExplicitHeight = 386
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
      Width = 944
      Height = 313
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
          Width = 107
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
          Width = 447
          Visible = True
        end>
    end
  end
end
