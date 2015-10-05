inherited frmMateriasConsulta: TfrmMateriasConsulta
  Caption = 'Consulta de Mat'#233'rias'
  ClientWidth = 690
  Font.Name = 'Arial'
  OnShow = FormShow
  ExplicitWidth = 706
  ExplicitHeight = 498
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 690
    ExplicitWidth = 690
    inherited Image2: TImage
      Left = 544
      ExplicitLeft = 544
    end
    inherited lblTitulo: TLabel
      Width = 25
      Height = 14
      ExplicitWidth = 25
      ExplicitHeight = 14
    end
    inherited edtConsulta: TEdit
      Top = 41
      Width = 413
      OnChange = edtConsultaChange
      ExplicitTop = 41
      ExplicitWidth = 413
    end
  end
  inherited Panel2: TPanel
    Width = 690
    ExplicitWidth = 690
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
      Width = 494
      Font.Height = -15
      Font.Name = 'Arial'
      Columns = <
        item
          Expanded = False
          FieldName = 'MAT_CODIGO'
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MAT_NOME'
          Title.Caption = 'Nome da mat'#233'ria'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 185
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ARC_NOME'
          Title.Caption = #193'rea'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 172
          Visible = True
        end>
    end
  end
end
