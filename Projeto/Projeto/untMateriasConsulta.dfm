inherited frmMateriasConsulta: TfrmMateriasConsulta
  Caption = 'frmMateriasConsulta'
  OnShow = FormShow
  ExplicitWidth = 693
  ExplicitHeight = 498
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited DBGrid1: TDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'MAT_CODIGO'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MAT_NOME'
          Title.Caption = 'Nome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ARC_NOME'
          Title.Caption = #193'rea'
          Visible = True
        end>
    end
  end
end
