object frmDemo: TfrmDemo
  Left = 0
  Top = 0
  Caption = 'Design Patterns demo'
  ClientHeight = 452
  ClientWidth = 751
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pltvMenu: TJvPageListTreeView
    Left = 0
    Top = 0
    Width = 241
    Height = 452
    ShowButtons = True
    ShowLines = True
    PageDefault = 0
    PageList = plPages
    Align = alLeft
    Indent = 19
    TabOrder = 0
    Items.NodeData = {
      0301000000440000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      000200000001134300720065006100740069006F006E0061006C002000500061
      0074007400650072006E0073003E0000000000000000000000FFFFFFFFFFFFFF
      FF00000000000000000000000001104100620073007400720061006300740020
      0046006100630074006F00720079002C0000000000000000000000FFFFFFFFFF
      FFFFFF00000000010000000000000001074100640061007000740065007200}
    Items.Links = {03000000000000000000000001000000}
    ExplicitTop = 10
    ExplicitHeight = 586
  end
  object plPages: TJvPageList
    Left = 241
    Top = 0
    Width = 510
    Height = 452
    ActivePage = plspAbstractFactory
    PropagateEnable = False
    Align = alClient
    ExplicitWidth = 717
    ExplicitHeight = 586
    object plspAbstractFactory: TJvStandardPage
      Left = 0
      Top = 0
      Width = 510
      Height = 452
      Caption = 'PageAbstractFactory'
      ExplicitLeft = 6
      ExplicitTop = 3
      ExplicitWidth = 717
      ExplicitHeight = 586
      object btnCreateCar: TButton
        Left = 282
        Top = 314
        Width = 114
        Height = 28
        Caption = 'Create car'
        TabOrder = 0
        OnClick = btnCreateCarClick
      end
      object cbbFactorySelect: TComboBox
        Left = 115
        Top = 111
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
      object lstCarsCreated: TListBox
        Left = 115
        Top = 138
        Width = 281
        Height = 170
        ItemHeight = 13
        TabOrder = 2
      end
    end
    object plspAdapter: TJvStandardPage
      Left = 0
      Top = 0
      Width = 510
      Height = 452
      Caption = 'PageAdapter'
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
end
