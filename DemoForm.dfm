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
      0302000000440000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      000100000001134300720065006100740069006F006E0061006C002000500061
      0074007400650072006E0073003E0000000000000000000000FFFFFFFFFFFFFF
      FF00000000000000000000000001104100620073007400720061006300740020
      0046006100630074006F0072007900440000000000000000000000FFFFFFFFFF
      FFFFFF0000000000000000020000000113530074007200750063007400750072
      0061006C0020005000610074007400650072006E0073002C0000000000000000
      000000FFFFFFFFFFFFFFFF000000000000000000000000010741006400610070
      007400650072002A0000000000000000000000FFFFFFFFFFFFFFFF0000000002
      000000000000000106420072006900640067006500}
    Items.Links = {050000000000000000000000000000000000000002000000}
  end
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
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
end
