object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 263
  ClientWidth = 459
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 40
    Top = 24
    object menu1: TMenuItem
      Caption = 'Menu'
      object Cadastrodeperodosletivos1: TMenuItem
        Caption = 'Per'#237'odos letivos'
        OnClick = Cadastrodeperodosletivos1Click
      end
      object urnos1: TMenuItem
        Caption = 'Turnos'
        OnClick = urnos1Click
      end
      object reas1: TMenuItem
        Caption = #193'reas'
        OnClick = reas1Click
      end
      object Cadastrodesries1: TMenuItem
        Caption = 'S'#233'ries'
        OnClick = Cadastrodesries1Click
      end
      object Colaboradores1: TMenuItem
        Caption = 'Colaboradores'
        OnClick = Colaboradores1Click
      end
      object Conceitos1: TMenuItem
        Caption = 'Conceitos'
        OnClick = Conceitos1Click
      end
      object Alunos1: TMenuItem
        Caption = 'Alunos'
        OnClick = Alunos1Click
      end
      object Matrias1: TMenuItem
        Caption = 'Mat'#233'rias'
        OnClick = Matrias1Click
      end
      object Matrculas1: TMenuItem
        Caption = 'Matr'#237'culas'
        OnClick = Matrculas1Click
      end
      object urmas1: TMenuItem
        Caption = 'Turmas'
        OnClick = urmas1Click
      end
      object Horrios1: TMenuItem
        Caption = 'Hor'#225'rios'
      end
      object Notas1: TMenuItem
        Caption = 'Notas'
      end
      object Resultadofinal1: TMenuItem
        Caption = 'Resultado final'
      end
    end
  end
end
