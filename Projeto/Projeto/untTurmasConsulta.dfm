inherited frmTurmasConsulta: TfrmTurmasConsulta
  Caption = 'Consulta de turmas'
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
          FieldName = 'TUR_CODIGO'
          Title.Caption = 'C'#243'digo da turma'
          Width = 106
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SER_CODIGO'
          Title.Caption = 'S'#233'rie'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PEL_CODIGO'
          Title.Caption = 'Per'#237'odos letivos'
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TUR_CODIGO'
          Title.Caption = 'Turno'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TUR_NOME'
          Title.Caption = 'Nome da turma'
          Width = 103
          Visible = True
        end>
    end
  end
end
