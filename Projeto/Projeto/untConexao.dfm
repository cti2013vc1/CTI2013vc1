object DMConexao: TDMConexao
  OldCreateOrder = False
  Height = 282
  Width = 534
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Server=phpmyadmin.paginas.setrem.com.br'
      'Database=pacelli_tarde'
      'User_Name=ctitarde'
      'Password=Ctivesp15'
      'DriverID=MySQL')
    Connected = True
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
