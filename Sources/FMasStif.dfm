object Form12: TForm12
  Left = 434
  Top = 577
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'WCDeveloper v1.0'
  ClientHeight = 192
  ClientWidth = 385
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 369
    Height = 65
    Caption = #1048#1085#1077#1088#1094#1080#1086#1085#1085#1072#1103' '#1089#1086#1089#1090#1072#1074#1083#1103#1102#1097#1072#1103
    TabOrder = 0
    object Label4: TLabel
      Left = 16
      Top = 32
      Width = 134
      Height = 18
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1084#1072#1089#1089#1091', '#1082#1075':'
    end
    object Edit1: TEdit
      Left = 232
      Top = 24
      Width = 121
      Height = 26
      TabOrder = 0
      Text = '0'
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 80
    Width = 369
    Height = 65
    Caption = #1048#1085#1077#1088#1094#1080#1086#1085#1085#1072#1103' '#1089#1086#1089#1090#1072#1074#1083#1103#1102#1097#1072#1103
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 174
      Height = 18
      Caption = #1042#1074#1077#1076#1080#1090#1077#1078#1105#1089#1090#1082#1086#1089#1090#1100', '#1053'/'#1084':'
    end
    object Edit2: TEdit
      Left = 232
      Top = 24
      Width = 121
      Height = 26
      TabOrder = 0
      Text = '0'
    end
  end
  object Button1: TButton
    Left = 80
    Top = 152
    Width = 217
    Height = 33
    Caption = #1055#1088#1080#1085#1103#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
end
