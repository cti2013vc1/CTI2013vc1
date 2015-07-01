inherited frmConceitosConsulta: TfrmConceitosConsulta
  Caption = 'Consulta de conceitos'
  OnShow = FormShow
  ExplicitWidth = 693
  ExplicitHeight = 498
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
      Font.Height = -15
      Font.Name = 'Arial'
      Columns = <
        item
          Expanded = False
          FieldName = 'CON_CODIGO'
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CON_NOME'
          Title.Caption = 'Nome'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CON_LETRA'
          Title.Caption = 'Letra'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 83
          Visible = True
        end>
    end
  end
end
