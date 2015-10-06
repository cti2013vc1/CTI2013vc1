inherited frmHorariosConsulta: TfrmHorariosConsulta
  Caption = 'Consulta de hor'#225'rios'
  ClientWidth = 936
  KeyPreview = True
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 952
  ExplicitHeight = 498
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 936
    ExplicitWidth = 936
    inherited Image2: TImage
      Left = 790
      ExplicitLeft = 657
    end
    inherited edtConsulta: TEdit
      Width = 659
      ExplicitWidth = 659
    end
  end
  inherited Panel2: TPanel
    Width = 936
    ExplicitWidth = 936
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
      Width = 740
      Font.Height = -15
      Font.Name = 'Arial'
      Columns = <
        item
          Expanded = False
          FieldName = 'HOR_CODIGO'
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
          Title.Caption = 'Colaborador'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 252
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TUR_NOME'
          Title.Caption = 'Turno'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 114
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MAT_NOME'
          Title.Caption = 'Mat'#233'ria'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 155
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ANO'
          Title.Caption = 'Ano'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 82
          Visible = True
        end>
    end
  end
end
