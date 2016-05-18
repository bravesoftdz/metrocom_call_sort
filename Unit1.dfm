object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 137
  ClientWidth = 455
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 23
    Top = 8
    Width = 129
    Height = 13
    Caption = #1042#1093#1086#1076#1085#1086#1081' '#1092#1072#1081#1083' '#1084#1077#1090#1088#1086#1082#1086#1084#1072
  end
  object Label2: TLabel
    Left = 23
    Top = 38
    Width = 131
    Height = 13
    Caption = #1060#1072#1081#1083' '#1079#1074#1086#1085#1082#1086#1074' '#1087#1086' '#1087#1080#1085#1082#1086#1076#1091
  end
  object Label3: TLabel
    Left = 23
    Top = 70
    Width = 95
    Height = 13
    Caption = #1054#1089#1090#1072#1083#1100#1085#1099#1077' '#1079#1074#1086#1085#1082#1080
  end
  object Button1: TButton
    Left = 421
    Top = 8
    Width = 18
    Height = 21
    Caption = '...'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 158
    Top = 8
    Width = 265
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Button2: TButton
    Left = 421
    Top = 35
    Width = 18
    Height = 21
    Caption = '...'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit2: TEdit
    Left = 158
    Top = 35
    Width = 265
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
  object Button3: TButton
    Left = 23
    Top = 89
    Width = 122
    Height = 25
    Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 421
    Top = 62
    Width = 18
    Height = 21
    Caption = '...'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Edit3: TEdit
    Left = 159
    Top = 62
    Width = 264
    Height = 21
    TabOrder = 6
    Text = 'Edit1'
  end
  object pb: TProgressBar
    Left = 158
    Top = 89
    Width = 281
    Height = 25
    Smooth = True
    TabOrder = 7
  end
  object od: TOpenDialog
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 64
    Top = 117
  end
  object sd: TSaveDialog
    DefaultExt = 'txt'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 24
    Top = 117
  end
end
