object Form9: TForm9
  Left = 377
  Top = 67
  Width = 665
  Height = 943
  BorderIcons = [biSystemMenu]
  Caption = 'WCDeveloper v1.0 AnalyticalSolution'
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object Label1: TLabel
    Left = 56
    Top = 688
    Width = 410
    Height = 18
    Caption = #1047#1072#1076#1072#1081#1090#1077' '#1072#1084#1087#1083#1080#1090#1091#1076#1091' '#1082#1086#1083#1077#1073#1072#1085#1080#1081' '#1074' '#1085#1072#1095#1072#1083#1077' '#1074#1086#1083#1085#1086#1074#1086#1076#1072', '#1084#1082#1084':'
  end
  object Label2: TLabel
    Left = 8
    Top = 784
    Width = 364
    Height = 18
    Caption = #1040#1084#1087#1083#1080#1090#1091#1076#1072' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1081' '#1074' '#1082#1086#1085#1094#1077' '#1074#1086#1083#1085#1086#1074#1086#1076#1072', '#1084#1082#1084':'
  end
  object Label3: TLabel
    Left = 8
    Top = 816
    Width = 257
    Height = 18
    Caption = #1050#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090' '#1091#1089#1080#1083#1077#1085#1080#1103' '#1074#1086#1083#1085#1086#1074#1086#1076#1072':'
  end
  object Label4: TLabel
    Left = 8
    Top = 848
    Width = 314
    Height = 18
    Caption = #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1085#1072#1087#1088#1103#1078#1077#1085#1080#1103', '#1052#1055#1072':'
  end
  object Label5: TLabel
    Left = 8
    Top = 880
    Width = 306
    Height = 18
    Caption = #1052#1080#1085#1080#1084#1072#1083#1100#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1085#1072#1087#1088#1103#1078#1077#1085#1080#1103', '#1052#1055#1072':'
  end
  object Label6: TLabel
    Left = 8
    Top = 752
    Width = 317
    Height = 23
    Caption = #1056#1072#1089#1095#1105#1090#1085#1099#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099' '#1089#1080#1089#1090#1077#1084#1099':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsItalic, fsUnderline]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 472
    Top = 680
    Width = 177
    Height = 26
    TabOrder = 0
    Text = '10'
  end
  object Button1: TButton
    Left = 360
    Top = 744
    Width = 289
    Height = 25
    Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100' '#1101#1087#1102#1088#1099
    TabOrder = 1
    OnClick = Button1Click
  end
  object Chart1: TChart
    Left = 8
    Top = 8
    Width = 641
    Height = 217
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clBlack
    Title.Font.Height = -16
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold, fsItalic]
    Title.Text.Strings = (
      #1043#1077#1086#1084#1077#1090#1088#1080#1103)
    BottomAxis.Title.Caption = #1076#1083#1080#1085#1085#1072', '#1084#1084
    LeftAxis.Title.Caption = #1088#1072#1076#1080#1091#1089', '#1084#1084
    View3D = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 2
    object Series1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlack
      ShowInLegend = False
      LinePen.Visible = False
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      object TeeFunction1: TAddTeeFunction
      end
    end
    object Series2: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlue
      ShowInLegend = False
      LinePen.Width = 2
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      object TeeFunction2: TAddTeeFunction
      end
    end
    object Series3: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlue
      ShowInLegend = False
      LinePen.Width = 2
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      object TeeFunction3: TAddTeeFunction
      end
    end
    object Series4: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlack
      ShowInLegend = False
      LinePen.Visible = False
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      object TeeFunction4: TAddTeeFunction
      end
    end
  end
  object Button2: TButton
    Left = 360
    Top = 712
    Width = 289
    Height = 25
    Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100' '#1075#1077#1086#1084#1077#1090#1088#1080#1102
    TabOrder = 3
    OnClick = Button2Click
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 712
    Width = 329
    Height = 26
    ItemHeight = 18
    TabOrder = 4
    Text = #1042#1099#1073#1077#1088#1080#1090#1077' '#1086#1073#1098#1077#1082#1090' '#1076#1083#1103' '#1087#1086#1089#1090#1088#1086#1077#1085#1080#1103
    OnChange = ComboBox1Change
    Items.Strings = (
      #1058#1077#1082#1091#1097#1080#1081' '#1087#1086#1083#1091#1074#1086#1083#1085#1086#1074#1086#1081' '#1101#1083#1077#1084#1077#1085#1090
      #1042#1086#1083#1085#1086#1074#1086#1076' '#1087#1086#1083#1085#1086#1089#1090#1100#1102' ('#1089#1090#1101#1082')')
  end
  object Chart2: TChart
    Left = 8
    Top = 232
    Width = 641
    Height = 217
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clBlack
    Title.Font.Height = -16
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold, fsItalic]
    Title.Text.Strings = (
      #1069#1087#1102#1088#1072' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1081)
    BottomAxis.Title.Caption = #1076#1083#1080#1085#1085#1072', '#1084#1084
    LeftAxis.Title.Caption = #1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077', '#1084#1082#1084
    View3D = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 5
    object Series5: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      ShowInLegend = False
      LinePen.Width = 2
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      object TeeFunction5: TAddTeeFunction
      end
    end
    object Series6: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = -1
      ShowInLegend = False
      LinePen.Width = 2
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      object TeeFunction6: TAddTeeFunction
      end
    end
  end
  object Chart3: TChart
    Left = 8
    Top = 456
    Width = 641
    Height = 217
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clBlack
    Title.Font.Height = -16
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold, fsItalic]
    Title.Text.Strings = (
      #1069#1087#1102#1088#1072' '#1085#1072#1087#1088#1103#1078#1077#1085#1080#1081)
    BottomAxis.Title.Caption = #1076#1083#1080#1085#1085#1072', '#1084#1084
    LeftAxis.Title.Caption = #1085#1072#1087#1088#1103#1078#1077#1085#1080#1077', '#1052#1055#1072
    View3D = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 6
    object LineSeries1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      ShowInLegend = False
      LinePen.Width = 2
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      object AddTeeFunction1: TAddTeeFunction
      end
    end
    object LineSeries2: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = -1
      ShowInLegend = False
      LinePen.Width = 2
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      object AddTeeFunction2: TAddTeeFunction
      end
    end
  end
  object rightboundU: TEdit
    Left = 392
    Top = 776
    Width = 113
    Height = 26
    ReadOnly = True
    TabOrder = 7
    Text = '0'
  end
  object Amplify: TEdit
    Left = 392
    Top = 808
    Width = 113
    Height = 26
    ReadOnly = True
    TabOrder = 8
    Text = '0'
  end
  object MaxSigma: TEdit
    Left = 392
    Top = 840
    Width = 113
    Height = 26
    ReadOnly = True
    TabOrder = 9
    Text = '0'
  end
  object MinSigma: TEdit
    Left = 392
    Top = 872
    Width = 113
    Height = 26
    ReadOnly = True
    TabOrder = 10
    Text = '0'
  end
  object GroupBox1: TGroupBox
    Left = 512
    Top = 776
    Width = 137
    Height = 121
    Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
    TabOrder = 11
    object Button3: TButton
      Left = 8
      Top = 32
      Width = 121
      Height = 33
      Caption = #1047#1072#1076#1072#1090#1100' '#1095#1072#1089#1090#1086#1090#1091
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button5: TButton
      Left = 8
      Top = 80
      Width = 121
      Height = 33
      Caption = #1054#1087#1090#1080#1084#1080#1079#1072#1094#1080#1103
      TabOrder = 1
      OnClick = Button5Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 641
    Height = 889
    Caption = #1054#1087#1090#1080#1084#1080#1079#1072#1094#1080#1103' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1091#1095#1072#1089#1090#1082#1072' '#1074#1086#1083#1085#1086#1074#1086#1076#1072
    TabOrder = 12
    Visible = False
    object Label10: TLabel
      Left = 144
      Top = 32
      Width = 354
      Height = 18
      Caption = #1050#1086#1083#1080#1095#1077#1089#1082#1090#1074#1086' '#1079#1074#1077#1085#1100#1077#1074' '#1074' '#1088#1072#1089#1095#1080#1090#1099#1074#1072#1077#1084#1086#1084' '#1091#1095#1072#1089#1090#1082#1077':'
    end
    object Label11: TLabel
      Left = 16
      Top = 64
      Width = 482
      Height = 18
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1085#1086#1084#1077#1088' '#1079#1074#1077#1085#1072', '#1087#1072#1088#1072#1084#1077#1090#1088#1099' '#1082#1086#1090#1086#1088#1086#1075#1086' '#1073#1091#1076#1091#1090' '#1074#1072#1088#1100#1080#1088#1086#1074#1072#1090#1100#1089#1103':'
    end
    object Label15: TLabel
      Left = 16
      Top = 312
      Width = 483
      Height = 18
      Caption = #1050#1088#1080#1090#1077#1088#1080#1081' '#1086#1087#1090#1080#1084#1080#1079#1072#1094#1080#1080': '#1076#1086#1073#1080#1090#1100#1089#1103' '#1082#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090#1072' '#1091#1089#1080#1083#1077#1085#1080#1103' '#1091#1095#1072#1089#1090#1082#1072':'
    end
    object Lable16: TLabel
      Left = 96
      Top = 280
      Width = 403
      Height = 18
      Caption = #1058#1077#1082#1091#1097#1080#1081' '#1082#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090#1090' '#1091#1089#1080#1083#1077#1085#1080#1103' '#1091#1095#1072#1089#1090#1082#1072' ('#1076#1083#1103' '#1089#1087#1088#1072#1074#1082#1080'):'
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 88
      Width = 625
      Height = 169
      Caption = #1058#1077#1082#1091#1097#1080#1077' '#1079#1085#1072#1095#1077#1085#1080#1103' '
      TabOrder = 1
      object Label7: TLabel
        Left = 8
        Top = 32
        Width = 128
        Height = 18
        Caption = #1044#1083#1080#1085#1085#1072' '#1079#1074#1077#1085#1072', '#1084#1084
      end
      object Label8: TLabel
        Left = 8
        Top = 64
        Width = 157
        Height = 18
        Caption = #1042#1093#1086#1076#1085#1086#1081' '#1076#1080#1072#1084#1077#1090#1088', '#1084#1084
      end
      object Label9: TLabel
        Left = 8
        Top = 96
        Width = 169
        Height = 18
        Caption = #1042#1099#1093#1086#1076#1085#1086#1081' '#1076#1080#1072#1084#1077#1090#1088', '#1084#1084
      end
      object TLength: TEdit
        Left = 192
        Top = 24
        Width = 137
        Height = 26
        TabOrder = 0
        Text = 'no data'
      end
      object TD1: TEdit
        Left = 192
        Top = 56
        Width = 137
        Height = 26
        TabOrder = 1
        Text = 'no data'
        OnChange = TD1Change
      end
      object TD2: TEdit
        Left = 192
        Top = 88
        Width = 137
        Height = 26
        TabOrder = 2
        Text = 'no data'
      end
      object Button6: TButton
        Left = 8
        Top = 128
        Width = 321
        Height = 33
        Caption = #1055#1088#1080#1085#1103#1090#1100' '#1074#1074#1077#1076#1105#1085#1085#1099#1077' '#1079#1085#1072#1095#1077#1085#1080#1103
        TabOrder = 3
        OnClick = Button6Click
      end
    end
    object Button4: TButton
      Left = 8
      Top = 848
      Width = 625
      Height = 33
      Caption = #1057#1074#1077#1088#1085#1091#1090#1100' '#1086#1082#1085#1086' '#1086#1087#1090#1080#1084#1080#1079#1072#1094#1080#1080
      TabOrder = 0
      OnClick = Button4Click
    end
    object TempNum: TEdit
      Left = 504
      Top = 24
      Width = 129
      Height = 26
      ReadOnly = True
      TabOrder = 2
      Text = '0'
    end
    object TOpt: TEdit
      Left = 504
      Top = 56
      Width = 129
      Height = 26
      TabOrder = 3
      Text = 'enter some value'
      OnChange = TOptChange
    end
    object GroupBox4: TGroupBox
      Left = 8
      Top = 664
      Width = 625
      Height = 169
      Caption = #1054#1087#1090#1080#1084#1072#1083#1100#1085#1099#1077' '#1079#1085#1072#1095#1077#1085#1080#1103' '
      TabOrder = 4
      object Label12: TLabel
        Left = 8
        Top = 32
        Width = 128
        Height = 18
        Caption = #1044#1083#1080#1085#1085#1072' '#1079#1074#1077#1085#1072', '#1084#1084
      end
      object Label13: TLabel
        Left = 8
        Top = 64
        Width = 157
        Height = 18
        Caption = #1042#1093#1086#1076#1085#1086#1081' '#1076#1080#1072#1084#1077#1090#1088', '#1084#1084
      end
      object Label14: TLabel
        Left = 8
        Top = 96
        Width = 169
        Height = 18
        Caption = #1042#1099#1093#1086#1076#1085#1086#1081' '#1076#1080#1072#1084#1077#1090#1088', '#1084#1084
      end
      object OLength: TEdit
        Left = 192
        Top = 24
        Width = 105
        Height = 26
        TabOrder = 0
        Text = 'no data'
      end
      object OD1: TEdit
        Left = 192
        Top = 56
        Width = 105
        Height = 26
        TabOrder = 1
        Text = 'no data'
      end
      object OD2: TEdit
        Left = 192
        Top = 88
        Width = 105
        Height = 26
        TabOrder = 2
        Text = 'no data'
      end
      object Button8: TButton
        Left = 8
        Top = 128
        Width = 289
        Height = 33
        Caption = #1055#1077#1088#1077#1079#1072#1087#1080#1089#1072#1090#1100' '#1075#1077#1086#1084#1077#1090#1088#1080#1102' '#1079#1074#1077#1085#1072
        TabOrder = 3
        OnClick = Button8Click
      end
    end
    object WhatFor: TComboBox
      Left = 8
      Top = 344
      Width = 625
      Height = 26
      ItemHeight = 18
      TabOrder = 5
      Text = #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1072#1088#1072#1084#1077#1090#1088' '#1076#1083#1103' '#1074#1072#1088#1100#1080#1088#1086#1074#1072#1085#1080#1103
      Items.Strings = (
        #1042#1093#1086#1076#1085#1086#1081' '#1076#1080#1072#1084#1077#1090#1088' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1079#1074#1077#1085#1072
        #1042#1099#1093#1086#1076#1085#1086#1081' '#1076#1080#1072#1084#1077#1090#1088' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1079#1074#1077#1085#1072)
    end
    object Button7: TButton
      Left = 320
      Top = 624
      Width = 313
      Height = 33
      Caption = #1056#1072#1089#1095#1105#1090' '#1086#1087#1090#1080#1084#1072#1083#1100#1085#1099#1093' '#1079#1085#1072#1095#1077#1085#1080#1081
      TabOrder = 6
      OnClick = Button7Click
    end
    object Amp: TEdit
      Left = 504
      Top = 304
      Width = 129
      Height = 26
      TabOrder = 7
      Text = '-5'
    end
    object Edit2: TEdit
      Left = 504
      Top = 272
      Width = 129
      Height = 26
      ReadOnly = True
      TabOrder = 8
      Text = '0'
    end
    object Chart4: TChart
      Left = 16
      Top = 384
      Width = 609
      Height = 233
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Font.Charset = DEFAULT_CHARSET
      Title.Font.Color = clBlack
      Title.Font.Height = -16
      Title.Font.Name = 'Arial'
      Title.Font.Style = [fsBold, fsItalic]
      Title.Text.Strings = (
        #1047#1072#1074#1080#1089#1080#1084#1086#1089#1090#1100' '#1082#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090#1072' '#1091#1089#1080#1083#1077#1085#1080#1103' '#1086#1090' '#1076#1080#1072#1084#1077#1090#1088#1072)
      BottomAxis.Title.Caption = #1042#1072#1088#1100#1080#1088#1091#1077#1084#1099#1081' '#1076#1080#1072#1084#1077#1090#1088', '#1084#1084
      LeftAxis.Title.Caption = #1050#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090' '#1091#1089#1080#1083#1077#1085#1080#1103
      View3D = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 9
      object Series7: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clMaroon
        ShowInLegend = False
        LinePen.Width = 2
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
        object TeeFunction7: TAddTeeFunction
        end
      end
      object Series8: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clBlack
        ShowInLegend = False
        LinePen.Width = 2
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
    end
    object Button9: TButton
      Left = 8
      Top = 624
      Width = 313
      Height = 33
      Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100' '#1079#1072#1074#1080#1089#1080#1084#1086#1089#1090#1100
      TabOrder = 10
      OnClick = Button9Click
    end
  end
end
