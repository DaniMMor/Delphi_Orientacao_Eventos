object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 336
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pb1: TProgressBar
    Left = 21
    Top = 56
    Width = 539
    Height = 17
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 21
    Top = 79
    Width = 539
    Height = 249
    Lines.Strings = (
      '')
    TabOrder = 1
  end
  object btn1: TButton
    Left = 21
    Top = 8
    Width = 91
    Height = 42
    Caption = 'Ativar'
    TabOrder = 2
    OnClick = btn1Click
  end
end
