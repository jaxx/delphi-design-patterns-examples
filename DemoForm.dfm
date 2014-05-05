object frmDemo: TfrmDemo
  Left = 0
  Top = 0
  Caption = 'Design Patterns demo'
  ClientHeight = 586
  ClientWidth = 958
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cbbFactorySelect: TComboBox
    Left = 40
    Top = 56
    Width = 281
    Height = 21
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TextHint = 'select car factory'
    Items.Strings = (
      'Renault factory'
      'Volvo factory'
      'Mercedes-Benz factory')
  end
  object btnCreateCar: TButton
    Left = 207
    Top = 305
    Width = 114
    Height = 28
    Caption = 'Create car'
    TabOrder = 0
    OnClick = btnCreateCarClick
  end
  object lstCarsCreated: TListBox
    Left = 40
    Top = 95
    Width = 281
    Height = 170
    ItemHeight = 13
    TabOrder = 2
  end
end
