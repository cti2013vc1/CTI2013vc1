inherited frmMatriculasConsulta: TfrmMatriculasConsulta
  Caption = 'Consulta de matr'#237'culas'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
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
      Columns = <
        item
          Expanded = False
          FieldName = 'ALU_CODIGO'
          Title.Caption = 'Nome do aluno'
          Width = 131
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TUR_CODIGO'
          Title.Caption = 'Nome da turma'
          Width = 124
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MAT_CODIGO'
          Title.Caption = 'Nome da mat'#233'ria'
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MAT_DATA'
          Title.Caption = 'Data'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ANO'
          Title.Caption = 'Ano'
          Visible = True
        end>
    end
  end
end
