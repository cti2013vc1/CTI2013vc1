object frmRelNotas: TfrmRelNotas
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Notas Trimestrais'
  ClientHeight = 460
  ClientWidth = 973
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnImprimir: TButton
    Left = 8
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 0
    OnClick = btnImprimirClick
  end
  object dsNotas: TDataSource
    Left = 16
    Top = 16
  end
end