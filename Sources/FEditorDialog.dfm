object Form7: TForm7
  Left = 501
  Top = 151
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'WCDeveloper v1.0'
  ClientHeight = 521
  ClientWidth = 377
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 227
    Height = 18
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099'        '#1079#1074#1077#1085#1072':'
  end
  object Label2: TLabel
    Left = 8
    Top = 96
    Width = 161
    Height = 18
    Caption = #1042#1093#1086#1076#1085#1086#1081' '#1076#1080#1072#1084#1077#1090#1088', '#1084#1084':'
  end
  object Label3: TLabel
    Left = 8
    Top = 56
    Width = 99
    Height = 18
    Caption = #1060#1086#1088#1084#1072' '#1079#1074#1077#1085#1072':'
  end
  object Label4: TLabel
    Left = 8
    Top = 136
    Width = 173
    Height = 18
    Caption = #1042#1099#1093#1086#1076#1085#1086#1081' '#1076#1080#1072#1084#1077#1090#1088', '#1084#1084':'
  end
  object Label5: TLabel
    Left = 8
    Top = 176
    Width = 178
    Height = 18
    Caption = #1055#1083#1086#1090#1085#1086#1089#1090#1100' '#1079#1074#1077#1085#1072', '#1082#1075'/'#1084'^3:'
  end
  object Label6: TLabel
    Left = 8
    Top = 216
    Width = 290
    Height = 18
    Caption = #1057#1082#1086#1088#1086#1089#1090#1100' '#1079#1074#1091#1082#1072' '#1074' '#1084#1072#1090#1077#1088#1080#1072#1083#1077' '#1079#1074#1077#1085#1072', '#1084'/'#1089':'
  end
  object Label7: TLabel
    Left = 8
    Top = 296
    Width = 262
    Height = 18
    Caption = #1044#1083#1103' '#1088#1072#1089#1095#1105#1090#1072' '#1076#1083#1080#1085#1085#1099' '#1079#1074#1077#1085#1072' '#1074#1074#1077#1076#1080#1090#1077':'
  end
  object Label8: TLabel
    Left = 8
    Top = 336
    Width = 132
    Height = 18
    Caption = #1044#1083#1080#1085#1085#1072' '#1079#1074#1077#1085#1072', '#1084#1084':'
  end
  object GlobPointLabel: TLabel
    Left = 168
    Top = 16
    Width = 18
    Height = 18
    Caption = '"i"'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 8
    Top = 256
    Width = 299
    Height = 18
    Caption = #1050#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090' '#1087#1086#1075#1083#1086#1097#1077#1085#1080#1103' '#1084#1072#1090#1077#1088#1080#1072#1083#1072', %:'
  end
  object Button1: TButton
    Left = 8
    Top = 360
    Width = 361
    Height = 33
    Caption = #1047#1072#1087#1086#1084#1085#1080#1090#1100' '#1087#1072#1088#1072#1084#1077#1090#1088#1099' '#1079#1074#1077#1085#1072' '
    TabOrder = 0
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 112
    Top = 48
    Width = 257
    Height = 26
    ItemHeight = 18
    TabOrder = 1
    Text = #1042#1099#1073#1077#1088#1080#1090#1077' '#1092#1086#1088#1084#1091' ('#1090#1080#1087') '#1079#1074#1077#1085#1072
    OnChange = ComboBox1Change
    Items.Strings = (
      #1062#1080#1083#1080#1085#1076#1088#1080#1095#1077#1089#1082#1080#1081' '#1088#1091#1087#1086#1088
      #1050#1086#1085#1080#1095#1077#1089#1082#1080#1081' '#1088#1091#1087#1086#1088
      #1069#1082#1089#1087#1086#1085#1077#1085#1090#1094#1080#1072#1083#1100#1085#1099#1081' '#1088#1091#1087#1086#1088
      #1057#1086#1089#1088#1077#1076#1086#1090#1086#1095#1077#1085#1085#1099#1081' '#1101#1083#1077#1084#1077#1085#1090
      #1055#1100#1077#1079#1086#1101#1083#1077#1082#1090#1088#1077#1090#1090#1072)
  end
  object D1: TEdit
    Left = 216
    Top = 88
    Width = 153
    Height = 26
    TabOrder = 2
    Text = '5'
    OnChange = D1Change
  end
  object D2: TEdit
    Left = 216
    Top = 128
    Width = 153
    Height = 26
    ReadOnly = True
    TabOrder = 3
    Text = '5'
  end
  object density: TEdit
    Left = 216
    Top = 168
    Width = 153
    Height = 26
    TabOrder = 4
    Text = '4500'
  end
  object soundvelocity: TEdit
    Left = 312
    Top = 208
    Width = 57
    Height = 26
    TabOrder = 5
    Text = '5055'
  end
  object Length: TEdit
    Left = 216
    Top = 328
    Width = 153
    Height = 26
    TabOrder = 6
    Text = '105'
  end
  object Button2: TButton
    Left = 280
    Top = 288
    Width = 89
    Height = 25
    Caption = 'root'
    TabOrder = 7
    OnClick = Button2Click
  end
  object psi0: TEdit
    Left = 312
    Top = 248
    Width = 57
    Height = 26
    TabOrder = 8
    Text = '0,1'
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 408
    Width = 361
    Height = 105
    Caption = #1042#1099#1073#1088#1072#1090#1100' '#1084#1072#1090#1077#1088#1080#1072#1083' '#1076#1083#1103' '#1079#1074#1077#1085#1072
    TabOrder = 9
    object Material: TComboBox
      Left = 16
      Top = 24
      Width = 329
      Height = 26
      ItemHeight = 18
      TabOrder = 0
      Text = #1042#1099#1073#1077#1088#1080#1090#1077' '#1084#1072#1090#1077#1088#1080#1072#1083' '#1080#1079' '#1073#1080#1073#1083#1080#1086#1090#1077#1082#1080
      Items.Strings = (
        #1058#1080#1090#1072#1085#1086#1074#1099#1081' '#1089#1087#1083#1072#1074' '#1042#1058'3-1'
        #1058#1080#1090#1072#1085#1086#1074#1099#1081' '#1089#1087#1083#1072#1074' '#1042#1058'5'
        #1055#1100#1077#1079#1086#1082#1077#1088#1072#1084#1080#1082#1072' '#1062#1058#1057'-19')
    end
    object Button3: TButton
      Left = 16
      Top = 56
      Width = 329
      Height = 33
      Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1087#1086#1083#1103' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080
      TabOrder = 1
      OnClick = Button3Click
    end
  end
end
