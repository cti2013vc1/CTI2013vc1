inherited frmSeriesConsulta: TfrmSeriesConsulta
  Caption = 'Consulta de s'#233'ries'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Caption = 'Consulta de s'#233'ries'
  end
  inherited Panel2: TPanel
    ExplicitTop = 95
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
          FieldName = 'SER_CODIGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -40
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SER_NOME'
          Title.Caption = 'Nome'
          Visible = True
        end>
    end
  end
end
