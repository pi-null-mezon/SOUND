object Form14: TForm14
  Left = 322
  Top = 308
  Width = 736
  Height = 594
  BorderIcons = [biSystemMenu]
  Caption = 'WCDeveloper v1.0 NumericalSolution'
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
  object Label1: TLabel
    Left = 584
    Top = 16
    Width = 85
    Height = 18
    Caption = 'U Max, '#1084#1082#1084':'
  end
  object Label2: TLabel
    Left = 584
    Top = 104
    Width = 81
    Height = 18
    Caption = 'U Min, '#1084#1082#1084':'
  end
  object Label3: TLabel
    Left = 424
    Top = 528
    Width = 215
    Height = 18
    Caption = #1063#1080#1089#1083#1086' '#1096#1072#1075#1086#1074' '#1080#1085#1090#1077#1075#1088#1080#1088#1086#1074#1072#1085#1080#1103':'
  end
  object Label4: TLabel
    Left = 8
    Top = 528
    Width = 317
    Height = 18
    Caption = #1053#1072#1095#1072#1083#1100#1085#1086#1077' '#1091#1089#1083#1086#1074#1080#1077' '#1076#1083#1103' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1103', '#1084#1082#1084':'
  end
  object Label5: TLabel
    Left = 584
    Top = 256
    Width = 124
    Height = 18
    Caption = 'Sigma Max, '#1052#1055#1072':'
  end
  object Label6: TLabel
    Left = 584
    Top = 328
    Width = 120
    Height = 18
    Caption = 'Sigma Min, '#1052#1055#1072':'
  end
  object Label7: TLabel
    Left = 584
    Top = 192
    Width = 116
    Height = 18
    Caption = #1050#1086#1101#1092'. '#1091#1089#1080#1083#1077#1085#1080#1103':'
  end
  object Chart1: TChart
    Left = 8
    Top = 8
    Width = 569
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
    Left = 416
    Top = 488
    Width = 305
    Height = 25
    Caption = #1087#1088#1086#1080#1085#1090#1077#1075#1088#1080#1088#1086#1074#1072#1090#1100' '#1080' '#1087#1086#1089#1090#1088#1086#1080#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object MAX: TEdit
    Left = 584
    Top = 40
    Width = 121
    Height = 26
    TabOrder = 2
    Text = 'no data'
  end
  object MIN: TEdit
    Left = 584
    Top = 128
    Width = 121
    Height = 26
    TabOrder = 3
    Text = 'no data'
  end
  object Num: TEdit
    Left = 648
    Top = 520
    Width = 73
    Height = 26
    TabOrder = 4
    Text = '1000'
  end
  object U0: TEdit
    Left = 336
    Top = 520
    Width = 73
    Height = 26
    TabOrder = 5
    Text = '10'
  end
  object ComboBox2: TComboBox
    Left = 8
    Top = 488
    Width = 401
    Height = 26
    ItemHeight = 18
    TabOrder = 6
    Text = #1042#1099#1073#1077#1088#1080#1090#1077' '#1086#1073#1098#1077#1082#1090' '#1076#1083#1103' '#1088#1077#1096#1077#1085#1080#1103' '#1079#1072#1076#1072#1095#1080
    OnChange = ComboBox2Change
    Items.Strings = (
      #1058#1077#1082#1091#1097#1080#1081' '#1087#1086#1083#1091#1074#1086#1083#1085#1086#1074#1086#1081' '#1101#1083#1077#1084#1077#1085#1090
      #1042#1077#1089#1100' '#1074#1086#1083#1085#1086#1074#1086#1076' '#1080#1079' '#1089#1090#1077#1082#1072)
  end
  object Chart2: TChart
    Left = 8
    Top = 248
    Width = 569
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
    TabOrder = 7
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
  object SigmaMAX: TEdit
    Left = 584
    Top = 280
    Width = 121
    Height = 26
    TabOrder = 8
    Text = 'no data'
  end
  object SigmaMIN: TEdit
    Left = 584
    Top = 352
    Width = 121
    Height = 26
    TabOrder = 9
    Text = 'no data'
  end
  object Amp: TEdit
    Left = 584
    Top = 216
    Width = 121
    Height = 26
    TabOrder = 10
    Text = 'no data'
  end
  object GroupBox1: TGroupBox
    Left = 584
    Top = 384
    Width = 137
    Height = 97
    Caption = #1040#1063#1061
    TabOrder = 11
    object Button2: TButton
      Left = 16
      Top = 32
      Width = 105
      Height = 41
      Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100
      TabOrder = 0
      OnClick = Button2Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 569
    Height = 473
    Caption = #1040#1084#1087#1083#1080#1090#1091#1076#1085#1086'-'#1095#1072#1089#1090#1086#1090#1085#1072#1103' '#1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1072
    TabOrder = 12
    Visible = False
    object Label8: TLabel
      Left = 16
      Top = 368
      Width = 204
      Height = 18
      Caption = #1055#1088#1072#1074#1072#1103' '#1075#1088#1072#1085#1080#1094#1072' '#1087#1086' '#1095#1072#1089#1090#1086#1090#1077':'
    end
    object Label9: TLabel
      Left = 16
      Top = 336
      Width = 195
      Height = 18
      Caption = #1051#1077#1074#1072#1103' '#1075#1088#1072#1085#1080#1094#1072' '#1087#1086' '#1095#1072#1089#1090#1086#1090#1077':'
    end
    object Label10: TLabel
      Left = 16
      Top = 400
      Width = 91
      Height = 18
      Caption = #1063#1080#1089#1083#1086' '#1090#1086#1095#1077#1082':'
    end
    object Button3: TButton
      Left = 384
      Top = 432
      Width = 177
      Height = 33
      Caption = #1042#1099#1081#1090#1080' '#1080#1079' '#1088#1077#1078#1080#1084#1072' '#1040#1063#1061
      TabOrder = 0
      OnClick = Button3Click
    end
    object Chart3: TChart
      Left = 16
      Top = 24
      Width = 537
      Height = 297
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
      LeftAxis.Title.Caption = #1040#1084#1087#1083#1080#1090#1091#1076#1072' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1081' '#1087#1088#1072#1074#1086#1075#1086' '#1090#1086#1088#1094#1072', '#1084#1082#1084
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
      Top = 328
      Width = 145
      Height = 26
      TabOrder = 2
      Text = '0'
    end
    object RightBound: TEdit
      Left = 232
      Top = 360
      Width = 145
      Height = 26
      TabOrder = 3
      Text = '0'
    end
    object AFCHNum: TEdit
      Left = 304
      Top = 392
      Width = 73
      Height = 26
      ReadOnly = True
      TabOrder = 4
      Text = '100'
    end
    object TrackBar1: TTrackBar
      Left = 120
      Top = 392
      Width = 177
      Height = 33
      LineSize = 10
      Max = 1000
      Min = 10
      PageSize = 100
      Frequency = 100
      Position = 100
      TabOrder = 5
      ThumbLength = 27
      OnChange = TrackBar1Change
    end
    object Button4: TButton
      Left = 16
      Top = 432
      Width = 361
      Height = 33
      Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100
      TabOrder = 6
      OnClick = Button4Click
    end
  end
end
