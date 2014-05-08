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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object plPages: TJvPageList
    Left = 241
    Top = 0
    Width = 510
    Height = 452
    ActivePage = plspBridge
    PropagateEnable = False
    Align = alClient
    object plspAbstractFactory: TJvStandardPage
      Left = 0
      Top = 0
      Width = 510
      Height = 452
      Caption = 'PageAbstractFactory'
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
      object lblAdapterInfo: TLabel
        Left = 48
        Top = 40
        Width = 221
        Height = 26
        Caption = 
          '* Last old customers ID at year 2000 = 15722'#13#10'* Last old custome' +
          'rs ID in database   = 30000'
      end
      object btnAddCustomer: TSpeedButton
        Left = 366
        Top = 314
        Width = 114
        Height = 28
        Caption = 'Add customer'
        OnClick = btnAddCustomerClick
      end
      object edtCustomerId: TEdit
        Left = 318
        Top = 111
        Width = 161
        Height = 21
        NumbersOnly = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TextHint = 'Enter old customers ID'
      end
      object lstCustomers: TListBox
        Left = 30
        Top = 138
        Width = 449
        Height = 170
        ItemHeight = 13
        TabOrder = 1
      end
    end
    object plspBridge: TJvStandardPage
      Left = 0
      Top = 0
      Width = 510
      Height = 452
      Caption = 'PageBridge'
      object lblKitchenSwitch: TLabel
        Left = 114
        Top = 297
        Width = 68
        Height = 13
        Caption = 'Kitchen switch'
      end
      object lblBathroomSwitch: TLabel
        Left = 314
        Top = 297
        Width = 79
        Height = 13
        Caption = 'Bathroom switch'
      end
      object lstSwitchInfo: TListBox
        Left = 87
        Top = 77
        Width = 337
        Height = 209
        ItemHeight = 13
        TabOrder = 0
      end
      object swKitchen: TJvSwitch
        Left = 122
        Top = 316
        Width = 50
        Height = 60
        Caption = 'Kitchen switch'
        TabOrder = 1
        OnOn = swKitchenOn
        OnOff = swKitchenOff
      end
      object swBathroom: TJvSwitch
        Left = 330
        Top = 316
        Width = 50
        Height = 60
        Caption = 'Bathroom switch'
        TabOrder = 2
        OnOn = swBathroomOn
        OnOff = swBathroomOff
      end
    end
    object plspBuilder: TJvStandardPage
      Left = 0
      Top = 0
      Width = 510
      Height = 452
      Caption = 'PageBuilder'
      object btnMeal1: TButton
        Left = 115
        Top = 317
        Width = 137
        Height = 33
        Caption = 'Make meal'
        TabOrder = 0
        OnClick = btnMeal1Click
      end
      object lstMeals: TListBox
        Left = 66
        Top = 102
        Width = 377
        Height = 209
        ItemHeight = 13
        TabOrder = 1
      end
      object btnMeal2: TButton
        Left = 258
        Top = 317
        Width = 139
        Height = 33
        Caption = 'Make kids meal'
        TabOrder = 2
        OnClick = btnMeal2Click
      end
    end
    object plspChainOfResponsibility: TJvStandardPage
      Left = 0
      Top = 0
      Width = 510
      Height = 452
      Caption = 'plspChainOfResponsibility'
    end
  end
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
    TabOrder = 1
    Items.NodeData = {
      0303000000440000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      000200000001134300720065006100740069006F006E0061006C002000500061
      0074007400650072006E0073003E0000000000000000000000FFFFFFFFFFFFFF
      FF00000000000000000000000001104100620073007400720061006300740020
      0046006100630074006F00720079002C0000000000000000000000FFFFFFFFFF
      FFFFFF00000000030000000000000001074200750069006C0064006500720044
      0000000000000000000000FFFFFFFFFFFFFFFF00000000000000000200000001
      135300740072007500630074007500720061006C002000500061007400740065
      0072006E0073002C0000000000000000000000FFFFFFFFFFFFFFFF0000000001
      00000000000000010741006400610070007400650072002A0000000000000000
      000000FFFFFFFFFFFFFFFF000000000200000000000000010642007200690064
      0067006500440000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      000100000001134200650068006100760069006F00720061006C002000500061
      0074007400650072006E0073004E0000000000000000000000FFFFFFFFFFFFFF
      FF000000000400000000000000011843006800610069006E00660020006F0066
      00200052006500730070006F006E0073006900620069006C00690074007900}
    Items.Links = {
      0800000000000000000000000300000000000000010000000200000000000000
      04000000}
  end
end
