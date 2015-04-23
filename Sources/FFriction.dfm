object Form11: TForm11
  Left = 339
  Top = 152
  Width = 793
  Height = 815
  BorderIcons = [biSystemMenu]
  Caption = 'WCDeveloper v1.0 FrictionNumericalSolution'
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object Label3: TLabel
    Left = 8
    Top = 560
    Width = 215
    Height = 18
    Caption = #1063#1080#1089#1083#1086' '#1096#1072#1075#1086#1074' '#1080#1085#1090#1077#1075#1088#1080#1088#1086#1074#1072#1085#1080#1103':'
  end
  object Chart1: TChart
    Left = 8
    Top = 40
    Width = 625
    Height = 233
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clBlack
    Title.Font.Height = -16
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold, fsItalic]
    Title.Text.Strings = (
      #1069#1087#1102#1088#1072' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1081)
    BottomAxis.Title.Caption = #1050#1086#1086#1088#1076#1080#1085#1072#1090#1072' '#1074#1086#1083#1085#1086#1074#1086#1076#1072', '#1084#1084
    LeftAxis.Title.Caption = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077', '#1084#1082#1084
    View3D = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 0
    object Series1: TLineSeries
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
      object TeeFunction1: TAddTeeFunction
      end
    end
    object Series2: TLineSeries
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
      object TeeFunction2: TAddTeeFunction
      end
    end
  end
  object Button1: TButton
    Left = 328
    Top = 520
    Width = 449
    Height = 25
    Caption = #1055#1088#1086#1080#1085#1090#1077#1075#1088#1080#1088#1086#1074#1072#1090#1100' '#1080' '#1087#1086#1089#1090#1088#1086#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Num: TEdit
    Left = 232
    Top = 552
    Width = 81
    Height = 26
    TabOrder = 2
    Text = '1000'
  end
  object ComboBox2: TComboBox
    Left = 8
    Top = 8
    Width = 769
    Height = 26
    ItemHeight = 18
    TabOrder = 3
    Text = #1042#1099#1073#1077#1088#1080#1090#1077' '#1086#1073#1098#1077#1082#1090' '#1076#1083#1103' '#1088#1077#1096#1077#1085#1080#1103' '#1079#1072#1076#1072#1095#1080
    OnChange = ComboBox2Change
    Items.Strings = (
      #1058#1077#1082#1091#1097#1080#1081' '#1087#1086#1083#1091#1074#1086#1083#1085#1086#1074#1086#1081' '#1101#1083#1077#1084#1077#1085#1090
      #1042#1077#1089#1100' '#1074#1086#1083#1085#1086#1074#1086#1076' '#1080#1079' '#1089#1090#1077#1082#1072)
  end
  object Chart2: TChart
    Left = 8
    Top = 280
    Width = 625
    Height = 233
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clBlack
    Title.Font.Height = -16
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold, fsItalic]
    Title.Text.Strings = (
      #1069#1087#1102#1088#1072' '#1085#1072#1087#1088#1103#1078#1077#1085#1080#1081)
    BottomAxis.Title.Caption = #1050#1086#1086#1088#1076#1080#1085#1072#1090#1072' '#1074#1086#1083#1085#1086#1074#1086#1076#1072', '#1084#1084
    LeftAxis.Title.Caption = #1053#1072#1087#1088#1103#1078#1077#1085#1080#1077', '#1052#1055#1072
    View3D = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 4
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
      object AddTeeFunction2: TAddTeeFunction
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 640
    Top = 40
    Width = 137
    Height = 233
    Caption = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1103
    TabOrder = 5
    object Label4: TLabel
      Left = 8
      Top = 40
      Width = 85
      Height = 18
      Caption = 'U Max, '#1084#1082#1084':'
    end
    object Label1: TLabel
      Left = 8
      Top = 103
      Width = 81
      Height = 18
      Caption = 'U Min, '#1084#1082#1084':'
    end
    object Label10: TLabel
      Left = 8
      Top = 168
      Width = 116
      Height = 18
      Caption = #1050#1086#1101#1092'. '#1091#1089#1080#1083#1077#1085#1080#1103':'
    end
    object MAX: TEdit
      Left = 8
      Top = 64
      Width = 121
      Height = 26
      ReadOnly = True
      TabOrder = 0
      Text = 'no data'
    end
    object MIN: TEdit
      Left = 8
      Top = 127
      Width = 121
      Height = 26
      ReadOnly = True
      TabOrder = 1
      Text = 'no data'
    end
    object Amp: TEdit
      Left = 8
      Top = 191
      Width = 121
      Height = 26
      ReadOnly = True
      TabOrder = 2
      Text = 'no data'
    end
  end
  object GroupBox2: TGroupBox
    Left = 640
    Top = 296
    Width = 137
    Height = 201
    Caption = #1053#1072#1087#1088#1103#1078#1077#1085#1080#1103
    TabOrder = 6
    object Label2: TLabel
      Left = 5
      Top = 39
      Width = 124
      Height = 18
      Caption = 'Sigma Max, '#1052#1055#1072':'
    end
    object Label7: TLabel
      Left = 9
      Top = 111
      Width = 120
      Height = 18
      Caption = 'Sigma Min, '#1052#1055#1072':'
    end
    object SigmaMAX: TEdit
      Left = 8
      Top = 63
      Width = 121
      Height = 26
      ReadOnly = True
      TabOrder = 0
      Text = 'no data'
    end
    object SigmaMIN: TEdit
      Left = 8
      Top = 136
      Width = 121
      Height = 26
      ReadOnly = True
      TabOrder = 1
      Text = 'no data'
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 600
    Width = 329
    Height = 97
    Caption = #1047#1072#1076#1072#1090#1100' '#1074#1077#1083#1080#1095#1080#1085#1099' '#1087#1088#1086#1077#1082#1094#1080#1081' '#1089#1080#1083#1099' '#1090#1086#1082#1072', '#1084#1040' '
    TabOrder = 7
    object Label5: TLabel
      Left = 16
      Top = 32
      Width = 167
      Height = 18
      Caption = #1055#1088#1086#1077#1082#1094#1080#1103' '#1089#1080#1083#1099' '#1090#1086#1082#1072' I1:'
    end
    object Label6: TLabel
      Left = 16
      Top = 64
      Width = 167
      Height = 18
      Caption = #1055#1088#1086#1077#1082#1094#1080#1103' '#1089#1080#1083#1099' '#1090#1086#1082#1072' I2:'
    end
    object I1: TEdit
      Left = 192
      Top = 24
      Width = 121
      Height = 26
      TabOrder = 0
      Text = '0,001'
    end
    object I2: TEdit
      Left = 192
      Top = 56
      Width = 121
      Height = 26
      TabOrder = 1
      Text = '0,001'
    end
  end
  object TrackBar1: TTrackBar
    Left = 320
    Top = 552
    Width = 465
    Height = 41
    LineSize = 100
    Max = 10000
    Min = 10
    PageSize = 1000
    Frequency = 1000
    Position = 1000
    TabOrder = 8
    TickMarks = tmBoth
    OnChange = TrackBar1Change
  end
  object GroupBox4: TGroupBox
    Left = 344
    Top = 600
    Width = 433
    Height = 97
    Caption = #1047#1072#1076#1072#1090#1100' '#1080#1084#1087#1077#1085#1076#1072#1085#1089#1085#1091#1102' '#1085#1072#1075#1088#1091#1079#1082#1091' '#1085#1072' '#1087#1088#1072#1074#1086#1084' '#1090#1086#1088#1094#1077', '#1053#1089'/'#1084' '
    TabOrder = 9
    object Label8: TLabel
      Left = 8
      Top = 32
      Width = 279
      Height = 18
      Caption = #1056#1077#1072#1083#1100#1085#1072#1103' '#1089#1086#1089#1090#1072#1074#1083#1103#1102#1097#1072#1103' '#1080#1084#1087#1077#1085#1076#1072#1085#1089#1072':'
    end
    object Label9: TLabel
      Left = 24
      Top = 64
      Width = 261
      Height = 18
      Caption = #1052#1085#1080#1084#1072#1103' '#1089#1086#1089#1090#1072#1074#1083#1103#1102#1097#1072#1103#1080#1084#1087#1077#1085#1076#1072#1085#1089#1072':'
    end
    object R: TEdit
      Left = 296
      Top = 24
      Width = 121
      Height = 26
      TabOrder = 0
      Text = '0'
    end
    object Xc: TEdit
      Left = 296
      Top = 56
      Width = 121
      Height = 26
      TabOrder = 1
      Text = '0'
    end
  end
  object Draw: TComboBox
    Left = 8
    Top = 520
    Width = 313
    Height = 26
    ItemHeight = 18
    TabOrder = 10
    Text = #1042#1099#1073#1077#1088#1080#1090#1077' '#1101#1087#1102#1088#1099' '#1076#1083#1103' '#1087#1086#1089#1090#1088#1086#1077#1085#1080#1103
    Items.Strings = (
      #1069#1087#1102#1088#1099' U1 '#1080' N1'
      #1069#1087#1102#1088#1099' U2 '#1080' N2'
      #1069#1087#1102#1088#1099' abs(U) '#1080' abs(N)')
  end
  object AFCH: TGroupBox
    Left = 16
    Top = 704
    Width = 177
    Height = 65
    Caption = #1040#1063#1061
    TabOrder = 11
    object Button2: TButton
      Left = 16
      Top = 24
      Width = 145
      Height = 25
      Caption = #1055#1086#1089#1090#1088#1086#1077#1085#1080#1077' '#1040#1063#1061
      TabOrder = 0
      OnClick = Button2Click
    end
  end
  object AFCHDraw: TGroupBox
    Left = 8
    Top = 40
    Width = 625
    Height = 473
    Caption = #1040#1084#1087#1083#1080#1090#1091#1076#1085#1086'-'#1095#1072#1089#1090#1086#1090#1085#1072#1103' '#1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1072
    TabOrder = 12
    Visible = False
    object Label11: TLabel
      Left = 16
      Top = 360
      Width = 204
      Height = 18
      Caption = #1055#1088#1072#1074#1072#1103' '#1075#1088#1072#1085#1080#1094#1072' '#1087#1086' '#1095#1072#1089#1090#1086#1090#1077':'
    end
    object Label12: TLabel
      Left = 16
      Top = 328
      Width = 195
      Height = 18
      Caption = #1051#1077#1074#1072#1103' '#1075#1088#1072#1085#1080#1094#1072' '#1087#1086' '#1095#1072#1089#1090#1086#1090#1077':'
    end
    object Label13: TLabel
      Left = 16
      Top = 392
      Width = 91
      Height = 18
      Caption = #1063#1080#1089#1083#1086' '#1090#1086#1095#1077#1082':'
    end
    object Button3: TButton
      Left = 384
      Top = 424
      Width = 225
      Height = 33
      Caption = #1042#1099#1081#1090#1080' '#1080#1079' '#1088#1077#1078#1080#1084#1072' '#1040#1063#1061
      TabOrder = 0
      OnClick = Button3Click
    end
    object Chart3: TChart
      Left = 16
      Top = 24
      Width = 593
      Height = 281
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Font.Charset = DEFAULT_CHARSET
      Title.Font.Color = clBlack
      Title.Font.Height = -19
      Title.Font.Name = 'Arial'
      Title.Font.Style = [fsBold, fsItalic]
      Title.Text.Strings = (
        #1040#1063#1061)
      BottomAxis.Title.Caption = #1063#1072#1089#1090#1086#1090#1072', '#1043#1094
      LeftAxis.Title.Caption = #1040#1084#1087#1083#1080#1090#1091#1076#1072' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1103' '#1087#1088#1072#1074#1086#1075#1086' '#1090#1086#1088#1094#1072', '#1084#1082#1084
      View3D = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 1
      object Series3: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clGreen
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
    end
    object LeftBound: TEdit
      Left = 232
      Top = 320
      Width = 145
      Height = 26
      TabOrder = 2
      Text = '0'
    end
    object RightBound: TEdit
      Left = 232
      Top = 352
      Width = 145
      Height = 26
      TabOrder = 3
      Text = '0'
    end
    object AFCHNum: TEdit
      Left = 304
      Top = 384
      Width = 73
      Height = 26
      TabOrder = 4
      Text = '100'
    end
    object Button4: TButton
      Left = 16
      Top = 424
      Width = 361
      Height = 33
      Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100
      TabOrder = 5
      OnClick = Button4Click
    end
    object TrackBar2: TTrackBar
      Left = 128
      Top = 376
      Width = 169
      Height = 41
      LineSize = 100
      Max = 10000
      Min = 10
      PageSize = 1000
      Frequency = 1000
      Position = 10
      TabOrder = 6
      ThumbLength = 26
      TickMarks = tmBoth
      OnChange = TrackBar2Change
    end
    object GroupBox5: TGroupBox
      Left = 392
      Top = 320
      Width = 217
      Height = 89
      Caption = #1048#1084#1087#1077#1085#1076#1072#1085#1089
      TabOrder = 7
      object Button5: TButton
        Left = 16
        Top = 32
        Width = 185
        Height = 41
        Caption = #1054#1090#1086#1073#1088#1072#1079#1080#1090#1100' '#1040#1063#1061
        TabOrder = 0
        OnClick = Button5Click
      end
    end
  end
  object Electric: TGroupBox
    Left = 8
    Top = 40
    Width = 625
    Height = 473
    Caption = #1056#1072#1089#1095#1105#1090' '#1080#1084#1087#1077#1085#1076#1072#1085#1089#1072' '#1087#1100#1077#1079#1086#1082#1077#1088#1072#1084#1080#1082#1080
    TabOrder = 13
    Visible = False
    object Label14: TLabel
      Left = 8
      Top = 448
      Width = 86
      Height = 18
      Caption = 'Max Z, '#1052#1054#1084
    end
    object Button6: TButton
      Left = 232
      Top = 440
      Width = 385
      Height = 25
      Caption = #1057#1074#1077#1088#1085#1091#1090#1100' '
      TabOrder = 0
      OnClick = Button6Click
    end
    object Chart4: TChart
      Left = 8
      Top = 24
      Width = 609
      Height = 201
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Font.Charset = DEFAULT_CHARSET
      Title.Font.Color = clBlack
      Title.Font.Height = -16
      Title.Font.Name = 'Arial'
      Title.Font.Style = [fsBold, fsItalic]
      Title.Text.Strings = (
        #1040#1063#1061' '#1101#1083#1077#1082#1090#1088#1080#1095#1077#1089#1082#1086#1075#1086' '#1080#1084#1087#1077#1085#1076#1072#1085#1089#1072)
      BottomAxis.Title.Caption = #1063#1072#1089#1090#1086#1090#1072', '#1043#1094
      LeftAxis.Title.Caption = #1054#1084
      View3D = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 1
      object Series4: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = 33023
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
        object TeeFunction4: TAddTeeFunction
        end
      end
    end
    object Chart5: TChart
      Left = 8
      Top = 232
      Width = 609
      Height = 201
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Font.Charset = DEFAULT_CHARSET
      Title.Font.Color = clBlack
      Title.Font.Height = -16
      Title.Font.Name = 'Arial'
      Title.Font.Style = [fsBold, fsItalic]
      Title.Text.Strings = (
        #1060#1063#1061' '#1101#1083#1077#1082#1090#1088#1080#1095#1077#1089#1082#1086#1075#1086' '#1080#1084#1087#1077#1085#1076#1072#1085#1089#1072)
      BottomAxis.Title.Caption = #1063#1072#1089#1090#1086#1090#1072', '#1043#1094
      LeftAxis.Title.Caption = #1088#1072#1076#1080#1072#1085
      View3D = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 2
      object LineSeries3: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = 33023
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
        object AddTeeFunction3: TAddTeeFunction
        end
      end
    end
    object MaxZ: TEdit
      Left = 104
      Top = 440
      Width = 121
      Height = 26
      TabOrder = 3
      Text = 'no data'
    end
  end
  object GroupBox6: TGroupBox
    Left = 200
    Top = 704
    Width = 577
    Height = 65
    Caption = #1056#1072#1089#1095#1105#1090' '#1084#1072#1089#1089#1099' '#1074#1086#1083#1085#1086#1074#1086#1076#1072
    TabOrder = 14
    object Label15: TLabel
      Left = 8
      Top = 32
      Width = 148
      Height = 18
      Caption = #1052#1072#1089#1089#1072' '#1074#1086#1083#1085#1086#1074#1086#1076#1072', '#1075':'
    end
    object SumMas: TButton
      Left = 304
      Top = 24
      Width = 265
      Height = 25
      Caption = #1042#1099#1095#1080#1089#1083#1080#1090#1100' '#1084#1072#1089#1089#1091
      TabOrder = 0
      OnClick = SumMasClick
    end
    object Summmas: TEdit
      Left = 168
      Top = 24
      Width = 121
      Height = 26
      TabOrder = 1
      Text = 'no data'
    end
  end
end
