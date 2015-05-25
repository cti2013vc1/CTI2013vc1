inherited frmColaboradoresConsulta: TfrmColaboradoresConsulta
  Caption = 'Consulta de colaboradores'
  OnShow = FormShow
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
      Columns = <
        item
          Expanded = False
          FieldName = 'COL_CODIGO'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COL_NOME'
          Title.Caption = 'Nome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COL_SENHA'
          Title.Caption = 'Senha'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COL_NIVEL_ACESSO'
          Title.Caption = 'N'#237'vel de acesso'
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COL_USUARIO'
          Title.Caption = 'Usu'#225'rio'
          Visible = True
        end>
    end
  end
end
