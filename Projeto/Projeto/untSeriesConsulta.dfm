inherited frmSeriesConsulta: TfrmSeriesConsulta
  Caption = 'Consulta de s'#233'ries'
  ClientWidth = 702
  Font.Name = 'Tekton Pro'
  KeyPreview = True
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 718
  ExplicitHeight = 498
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 702
    Caption = 'Consulta de s'#233'ries'
    ExplicitWidth = 702
    inherited Image2: TImage
      Left = 556
      ExplicitLeft = 556
    end
    inherited lblTitulo: TLabel
      Width = 25
      Height = 14
      ExplicitWidth = 25
      ExplicitHeight = 14
    end
    inherited edtConsulta: TEdit
      OnChange = edtConsultaChange
    end
  end
  inherited Panel2: TPanel
    Width = 702
    ExplicitWidth = 702
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
