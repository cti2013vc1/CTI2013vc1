inherited frmAreasConsulta: TfrmAreasConsulta
  Caption = 'Consulta de '#225'reas'
  ClientWidth = 673
  Font.Name = 'Arial'
  KeyPreview = True
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 689
  ExplicitHeight = 498
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 673
    ExplicitWidth = 673
    inherited Image2: TImage
      Left = 527
      ExplicitLeft = 527
    end
    inherited lblTitulo: TLabel
      Width = 25
      Height = 14
      ExplicitWidth = 25
      ExplicitHeight = 14
    end
    inherited edtConsulta: TEdit
      Width = 396
      OnChange = edtConsultaChange
      ExplicitWidth = 396
    end
  end
  inherited Panel2: TPanel
    Width = 673
    ExplicitWidth = 673
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
      Width = 477
      Font.Height = -15
      Font.Name = 'Arial'
      Columns = <
        item
          Expanded = False
          FieldName = 'ARC_CODIGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
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
          FieldName = 'ARC_NOME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = 'Nome'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 346
          Visible = True
        end>
    end
  end
end
