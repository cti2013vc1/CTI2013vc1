inherited frmTurmasConsulta: TfrmTurmasConsulta
  Caption = 'Consulta de turmas'
  ClientWidth = 923
  Font.Name = 'Arial'
  KeyPreview = True
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 939
  ExplicitHeight = 498
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 923
    ExplicitWidth = 923
    inherited Image2: TImage
      Left = 777
      ExplicitLeft = 777
    end
    inherited lblTitulo: TLabel
      Width = 25
      Height = 14
      ExplicitWidth = 25
      ExplicitHeight = 14
    end
    inherited edtConsulta: TEdit
      Width = 646
      OnChange = edtConsultaChange
      ExplicitWidth = 646
    end
  end
  inherited Panel2: TPanel
    Width = 923
    ExplicitWidth = 923
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
      Width = 727
      Font.Height = -15
      Font.Name = 'Arial'
      Columns = <
        item
          Expanded = False
          FieldName = 'TUR_CODIGO'
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
          FieldName = 'TUR_NOME'
          Title.Caption = 'Nome da turma'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 245
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SER_NOME'
          Title.Caption = 'S'#233'rie'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PEL_NOME'
          Title.Caption = 'Per'#237'odos letivos'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 125
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TURNO_NOME'
          Title.Caption = 'Turno'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 140
          Visible = True
        end>
    end
  end
end
