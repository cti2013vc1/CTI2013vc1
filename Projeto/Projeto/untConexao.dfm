object DMConexao: TDMConexao
  OldCreateOrder = False
  Height = 282
  Width = 534
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Server=paginas.setrem.com.br'
      'User_Name=ctitarde'
      'Database=pacelli_tarde'
      'Password=Ctivesp15'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 40
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 448
    Top = 168
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 448
    Top = 224
  end
end
