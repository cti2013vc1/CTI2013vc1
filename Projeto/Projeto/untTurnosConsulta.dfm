inherited frmTurnosConsulta: TfrmTurnosConsulta
  Caption = 'Consulta de turnos'
  ClientWidth = 657
  Font.Name = 'Arial'
  OnShow = FormShow
  ExplicitWidth = 673
  ExplicitHeight = 498
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 657
    inherited Image2: TImage
      Left = 511
    end
    inherited Edit1: TEdit
      Width = 380
    end
  end
  inherited Panel2: TPanel
    Width = 657
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
      Width = 461
      Font.Height = -15
      Font.Name = 'Arial'
      Columns = <
        item
          Expanded = False
          FieldName = 'TUR_CODIGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TUR_NOME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = 'Nome do turno'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 326
          Visible = True
        end>
    end
  end
end
