inherited frmAlunosConsulta: TfrmAlunosConsulta
  Caption = 'Consulta de alunos'
  Font.Name = 'Arial'
  OnShow = FormShow
  ExplicitWidth = 693
  ExplicitHeight = 498
  PixelsPerInch = 96
  TextHeight = 14
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
      Font.Height = -15
      Font.Name = 'Arial'
      Columns = <
        item
          Expanded = False
          FieldName = 'ALU_CODIGO'
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALU_NOME'
          Title.Caption = 'Nome'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 223
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALU_DATANASCIMENTO'
          Title.Caption = 'Data de nascimento'
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
          FieldName = 'ALU_INEP'
          Title.Caption = 'Inep'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 72
          Visible = True
        end>
    end
  end
end
