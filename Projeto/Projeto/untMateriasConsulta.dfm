inherited frmMateriasConsulta: TfrmMateriasConsulta
  Caption = 'Consulta de Mat'#233'rias'
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
  end
end
