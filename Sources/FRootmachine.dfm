object Form3: TForm3
  Left = 439
  Top = 200
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'WCDeveloper v1.0'
  ClientHeight = 304
  ClientWidth = 385
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 22
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 250
    Height = 22
    Caption = #1051#1077#1074#1072#1103' '#1075#1088#1072#1085#1080#1094#1072' '#1087#1086#1080#1089#1082#1072' '#1082#1086#1088#1085#1103':'
  end
  object Label2: TLabel
    Left = 16
    Top = 72
    Width = 261
    Height = 22
    Caption = #1055#1088#1072#1074#1072#1103' '#1075#1088#1072#1085#1080#1094#1072' '#1087#1086#1080#1089#1082#1072' '#1082#1086#1088#1085#1103':'
  end
  object Label3: TLabel
    Left = 16
    Top = 120
    Width = 198
    Height = 22
    Caption = #1058#1086#1095#1085#1086#1089#1090#1100' '#1074#1099#1095#1080#1089#1083#1077#1085#1080#1103':'
  end
  object Label4: TLabel
    Left = 16
    Top = 216
    Width = 70
    Height = 22
    Caption = #1050#1086#1088#1077#1085#1100':'
  end
  object Edit1: TEdit
    Left = 288
    Top = 16
    Width = 81
    Height = 30
    TabOrder = 0
    Text = '0,01'
  end
  object Edit2: TEdit
    Left = 288
    Top = 64
    Width = 81
    Height = 30
    TabOrder = 1
    Text = '0,02'
  end
  object Edit3: TEdit
    Left = 288
    Top = 112
    Width = 81
    Height = 30
    TabOrder = 2
    Text = '0,00001'
  end
  object Edit4: TEdit
    Left = 104
    Top = 208
    Width = 265
    Height = 30
    TabOrder = 3
    Text = 'no data'
  end
  object Button1: TButton
    Left = 16
    Top = 160
    Width = 129
    Height = 33
    Caption = #1042#1099#1095#1080#1089#1083#1080#1090#1100
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 160
    Width = 209
    Height = 33
    Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100' '#1101#1087#1102#1088#1091
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 16
    Top = 256
    Width = 353
    Height = 33
    Caption = #1047#1072#1087#1086#1084#1085#1080#1090#1100' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1076#1083#1080#1085#1085#1099' '#1076#1083#1103' '#1079#1074#1077#1085#1072
    TabOrder = 6
    OnClick = Button3Click
  end
end
