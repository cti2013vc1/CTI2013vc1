inherited frmSeriesConsulta: TfrmSeriesConsulta
  Caption = 'Consulta de s'#233'ries'
  ClientWidth = 702
  Font.Name = 'Tekton Pro'
  OnShow = FormShow
  ExplicitWidth = 718
  ExplicitHeight = 498
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 702
    Caption = 'Consulta de s'#233'ries'
    inherited Image2: TImage
      Left = 556
    end
    inherited Edit1: TEdit
      Width = 425
    end
  end
  inherited Panel2: TPanel
    Width = 702
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
      Width = 506
      Font.Height = -15
      Font.Name = 'Arial'
      TitleFont.Height = -15
      TitleFont.Name = 'Arial'
      Columns = <
        item
          Expanded = False
          FieldName = 'SER_CODIGO'
          Title.Caption = 'C'#243'digo'
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SER_NOME'
          Title.Caption = 'Nome'
          Width = 397
          Visible = True
        end>
    end
  end
end
