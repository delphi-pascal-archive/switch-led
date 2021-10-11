object MainForm: TMainForm
  Left = 218
  Top = 130
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'TSwitchLed'
  ClientHeight = 105
  ClientWidth = 281
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object ONLbl: TLabel
    Left = 120
    Top = 16
    Width = 58
    Height = 16
    Caption = 'Color ON:'
  end
  object OFFLbl: TLabel
    Left = 120
    Top = 48
    Width = 64
    Height = 16
    Caption = 'Color OFF:'
  end
  object OnBox: TGroupBox
    Left = 8
    Top = 8
    Width = 49
    Height = 57
    Caption = ' ON '
    TabOrder = 0
  end
  object OffBox: TGroupBox
    Left = 64
    Top = 8
    Width = 49
    Height = 57
    Caption = ' OFF '
    TabOrder = 1
  end
  object QuitBtn: TButton
    Left = 8
    Top = 72
    Width = 265
    Height = 25
    Caption = 'Exit'
    TabOrder = 2
    OnClick = QuitBtnClick
  end
  object OnCombo: TComboBox
    Tag = 1
    Left = 192
    Top = 8
    Width = 81
    Height = 24
    Style = csDropDownList
    ItemHeight = 16
    ItemIndex = 5
    TabOrder = 3
    Text = 'Green'
    OnChange = ModifyColors
    Items.Strings = (
      'Aqua'
      'Pink'
      'Purple'
      'Red'
      'Yellow'
      'Green'
      'Blue'
      'Orange'
      'Black')
  end
  object OffCombo: TComboBox
    Tag = 2
    Left = 192
    Top = 39
    Width = 81
    Height = 24
    Style = csDropDownList
    ItemHeight = 16
    ItemIndex = 3
    TabOrder = 4
    Text = 'Red'
    OnChange = ModifyColors
    Items.Strings = (
      'Aqua'
      'Pink'
      'Purple'
      'Red'
      'Yellow'
      'Green'
      'Blue'
      'Orange'
      'Black')
  end
end
