inherited frmMatriculasConsulta: TfrmMatriculasConsulta
  Caption = 'Consulta de matr'#237'culas'
  ClientWidth = 1036
  Font.Name = 'Arial'
  OnShow = FormShow
  ExplicitLeft = -262
  ExplicitWidth = 1052
  ExplicitHeight = 498
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 1036
    ExplicitWidth = 1024
    inherited Image2: TImage
      Left = 890
      ExplicitLeft = 878
    end
    inherited Edit1: TEdit
      Width = 759
      ExplicitWidth = 747
    end
  end
  inherited Panel2: TPanel
    Width = 1036
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
      Width = 840
      Font.Height = -15
      Font.Name = 'Arial'
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
          Width = 300
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
          Width = 140
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
          Width = 201
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
