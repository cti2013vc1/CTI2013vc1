inherited frmMatriculasConsulta: TfrmMatriculasConsulta
  Caption = 'Consulta de matr'#237'culas'
  ClientWidth = 1024
  Font.Name = 'Arial'
  OnShow = FormShow
  ExplicitWidth = 1040
  ExplicitHeight = 498
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 1024
    ExplicitWidth = 1024
    inherited Image2: TImage
      Left = 878
      ExplicitLeft = 878
    end
    inherited Edit1: TEdit
      Width = 747
      ExplicitWidth = 747
    end
  end
  inherited Panel2: TPanel
    Width = 1024
    ExplicitWidth = 1024
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
      Left = 164
      Width = 828
      Columns = <
        item
          Expanded = False
          FieldName = 'ALU_NOME'
          Title.Caption = 'Nome do aluno'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 131
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TUR_NOME'
          Title.Caption = 'Nome da turma'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 141
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MAT_NOME'
          Title.Caption = 'Nome da mat'#233'ria'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 158
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MAT_DATA'
          Title.Caption = 'Data'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 87
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
          Width = 75
          Visible = True
        end>
    end
  end
end
