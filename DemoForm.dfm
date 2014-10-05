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
    ActivePage = plspComposite
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
        Height = 28
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
        Height = 28
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
      Caption = 'PageChainOfResponsibility'
      object btnHandleRequests: TButton
        Left = 256
        Top = 271
        Width = 185
        Height = 28
        Caption = 'Handle Requests'
        TabOrder = 0
        OnClick = btnHandleRequestsClick
      end
      object lstHandlerOutput: TListBox
        Left = 48
        Top = 56
        Width = 393
        Height = 209
        ItemHeight = 13
        TabOrder = 1
      end
    end
    object plspCommand: TJvStandardPage
      Left = 0
      Top = 0
      Width = 510
      Height = 452
      Caption = 'PageCommand'
      object edtOrderName: TEdit
        Left = 86
        Top = 147
        Width = 186
        Height = 21
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TextHint = 'Type order name here...'
        OnChange = edtOrderNameChange
      end
      object btnAddOrder: TButton
        Left = 278
        Top = 144
        Width = 145
        Height = 28
        Caption = 'Add new order'
        Default = True
        Enabled = False
        TabOrder = 1
        OnClick = btnAddOrderClick
      end
      object lstCookWorkLog: TListBox
        Left = 86
        Top = 178
        Width = 337
        Height = 129
        ItemHeight = 13
        TabOrder = 2
      end
    end
    object plspFactoryMethod: TJvStandardPage
      Left = 0
      Top = 0
      Width = 510
      Height = 452
      Caption = 'PageFactoryMethod'
    end
    object plspObjectPool: TJvStandardPage
      Left = 0
      Top = 0
      Width = 510
      Height = 452
      Caption = 'PageObjectPool'
    end
    object plspPrototype: TJvStandardPage
      Left = 0
      Top = 0
      Width = 510
      Height = 452
      Caption = 'PagePrototype'
    end
    object plspSingleton: TJvStandardPage
      Left = 0
      Top = 0
      Width = 510
      Height = 452
      Caption = 'PageSingleton'
    end
    object plspComposite: TJvStandardPage
      Left = 0
      Top = 0
      Width = 510
      Height = 452
      Caption = 'PageComposite'
      object mmoStructure: TMemo
        Left = 58
        Top = 53
        Width = 393
        Height = 313
        TabOrder = 0
      end
      object btnCreateTreeStructure: TButton
        Left = 314
        Top = 372
        Width = 139
        Height = 28
        Caption = 'Create tree structure'
        TabOrder = 1
        OnClick = btnCreateTreeStructureClick
      end
    end
    object plspDecorator: TJvStandardPage
      Left = 0
      Top = 0
      Width = 510
      Height = 452
      Caption = 'PageDecorator'
    end
    object plspFacade: TJvStandardPage
      Left = 0
      Top = 0
      Width = 510
      Height = 452
      Caption = 'PageFacade'
    end
    object plspFlyweight: TJvStandardPage
      Left = 0
      Top = 0
      Width = 510
      Height = 452
      Caption = 'PageFlyweight'
    end
    object plspPrivateClassData: TJvStandardPage
      Left = 0
      Top = 0
      Width = 510
      Height = 452
      Caption = 'PagePrivateClassData'
    end
    object plspProxy: TJvStandardPage
      Left = 0
      Top = 0
      Width = 510
      Height = 452
      Caption = 'PageProxy'
    end
    object plspInterpreter: TJvStandardPage
      Left = 0
      Top = 0
      Width = 510
      Height = 452
      Caption = 'PageInterpreter'
    end
    object plspIterator: TJvStandardPage
      Left = 0
      Top = 0
      Width = 510
      Height = 452
      Caption = 'PageIterator'
    end
    object plspMediator: TJvStandardPage
      Left = 0
      Top = 0
      Width = 510
      Height = 452
      Caption = 'PageMediator'
    end
    object plspMemento: TJvStandardPage
      Left = 0
      Top = 0
      Width = 510
      Height = 452
      Caption = 'PageMemento'
    end
    object plspNullObject: TJvStandardPage
      Left = 0
      Top = 0
      Width = 510
      Height = 452
      Caption = 'PageNullObject'
    end
    object plspObserver: TJvStandardPage
      Left = 0
      Top = 0
      Width = 510
      Height = 452
      Caption = 'PageObserver'
    end
    object plspState: TJvStandardPage
      Left = 0
      Top = 0
      Width = 510
      Height = 452
      Caption = 'PageState'
    end
    object plspStrategy: TJvStandardPage
      Left = 0
      Top = 0
      Width = 510
      Height = 452
      Caption = 'PageStrategy'
    end
    object plspTemplateMethod: TJvStandardPage
      Left = 0
      Top = 0
      Width = 510
      Height = 452
      Caption = 'PageTemplateMethod'
    end
    object plspVisitor: TJvStandardPage
      Left = 0
      Top = 0
      Width = 510
      Height = 452
      Caption = 'PageVisitor'
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
      000600000001134300720065006100740069006F006E0061006C002000500061
      0074007400650072006E0073003E0000000000000000000000FFFFFFFFFFFFFF
      FF00000000000000000000000001104100620073007400720061006300740020
      0046006100630074006F00720079002C0000000000000000000000FFFFFFFFFF
      FFFFFF00000000030000000000000001074200750069006C006400650072003A
      0000000000000000000000FFFFFFFFFFFFFFFF00000000060000000000000001
      0E46006100630074006F007200790020004D006500740068006F006400340000
      000000000000000000FFFFFFFFFFFFFFFF000000000700000000000000010B4F
      0062006A00650063007400200050006F006F006C003000000000000000000000
      00FFFFFFFFFFFFFFFF0000000008000000000000000109500072006F0074006F
      007400790070006500300000000000000000000000FFFFFFFFFFFFFFFF000000
      0009000000000000000109530069006E0067006C00650074006F006E00440000
      000000000000000000FFFFFFFFFFFFFFFF000000000000000008000000011353
      00740072007500630074007500720061006C0020005000610074007400650072
      006E0073002C0000000000000000000000FFFFFFFFFFFFFFFF00000000010000
      0000000000010741006400610070007400650072002A00000000000000000000
      00FFFFFFFFFFFFFFFF0000000002000000000000000106420072006900640067
      006500300000000000000000000000FFFFFFFFFFFFFFFF000000000A00000000
      000000010943006F006D0070006F007300690074006500300000000000000000
      000000FFFFFFFFFFFFFFFF000000000B0000000000000001094400650063006F
      007200610074006F0072002A0000000000000000000000FFFFFFFFFFFFFFFF00
      0000000C00000000000000010646006100630061006400650030000000000000
      0000000000FFFFFFFFFFFFFFFF000000000D00000000000000010946006C0079
      00770065006900670068007400420000000000000000000000FFFFFFFFFFFFFF
      FF000000000E0000000000000001125000720069007600610074006500200043
      006C0061007300730020004400610074006100280000000000000000000000FF
      FFFFFFFFFFFFFF000000000F000000000000000105500072006F007800790044
      0000000000000000000000FFFFFFFFFFFFFFFF00000000000000000C00000001
      134200650068006100760069006F00720061006C002000500061007400740065
      0072006E0073004C0000000000000000000000FFFFFFFFFFFFFFFF0000000004
      00000000000000011743006800610069006E0020006F00660020005200650073
      0070006F006E0073006900620069006C006900740079002C0000000000000000
      000000FFFFFFFFFFFFFFFF000000000500000000000000010743006F006D006D
      0061006E006400340000000000000000000000FFFFFFFFFFFFFFFF0000000010
      00000000000000010B49006E007400650072007000720065007400650072002E
      0000000000000000000000FFFFFFFFFFFFFFFF00000000110000000000000001
      084900740065007200610074006F0072002E0000000000000000000000FFFFFF
      FFFFFFFFFF00000000120000000000000001084D00650064006900610074006F
      0072002C0000000000000000000000FFFFFFFFFFFFFFFF000000001300000000
      00000001074D0065006D0065006E0074006F00340000000000000000000000FF
      FFFFFFFFFFFFFF000000001400000000000000010B4E0075006C006C0020004F
      0062006A006500630074002E0000000000000000000000FFFFFFFFFFFFFFFF00
      000000150000000000000001084F006200730065007200760065007200280000
      000000000000000000FFFFFFFFFFFFFFFF000000001600000000000000010553
      0074006100740065002E0000000000000000000000FFFFFFFFFFFFFFFF000000
      0017000000000000000108530074007200610074006500670079003C00000000
      00000000000000FFFFFFFFFFFFFFFF000000001800000000000000010F540065
      006D0070006C0061007400650020006D006500740068006F0064002C00000000
      00000000000000FFFFFFFFFFFFFFFF0000000019000000000000000107560069
      007300690074006F007200}
    Items.Links = {
      1D00000000000000000000000300000006000000070000000800000009000000
      0000000001000000020000000A0000000B0000000C0000000D0000000E000000
      0F00000000000000040000000500000010000000110000001200000013000000
      140000001500000016000000170000001800000019000000}
  end
end
