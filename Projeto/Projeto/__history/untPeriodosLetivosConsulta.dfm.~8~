inherited frmPeriodosLetivosConsulta: TfrmPeriodosLetivosConsulta
  Caption = 'Consulta de per'#237'odos letivos'
  OnShow = FormShow
  ExplicitWidth = 693
  ExplicitHeight = 498
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    ExplicitTop = 95
    inherited SpeedButton2: TSpeedButton
      OnClick = SpeedButton2Click
    end
    inherited SpeedButton1: TSpeedButton
      OnClick = SpeedButton1Click
    end
    inherited DBGrid1: TDBGrid
      DataSource = DSdados
      Columns = <
        item
          Expanded = False
          FieldName = 'PEL_CODIGO'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PEL_NOME'
          Title.Caption = 'Nome do per'#237'odo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDE_NOTAS'
          Title.Caption = 'Quantidade de notas'
          Visible = True
        end>
    end
  end
  object DSdados: TDataSource
    Left = 632
    Top = 416
  end
end
