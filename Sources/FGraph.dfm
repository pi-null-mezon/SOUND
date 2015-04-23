object Form4: TForm4
  Left = 400
  Top = 372
  BorderStyle = bsDialog
  Caption = 'WCDeveloper v1.0'
  ClientHeight = 385
  ClientWidth = 481
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 22
  object Chart1: TChart
    Left = 0
    Top = 0
    Width = 481
    Height = 385
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Brush.Color = clWhite
    Title.Brush.Style = bsClear
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clGray
    Title.Font.Height = -19
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold, fsItalic]
    Title.Text.Strings = (
      #1069#1087#1102#1088#1072' '#1079#1085#1072#1095#1077#1085#1080#1081' '#1095#1072#1089#1090#1086#1090#1085#1086#1081' '#1092#1091#1085#1082#1094#1080#1080)
    View3D = False
    TabOrder = 0
    object Series1: TLineSeries
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
      object TeeFunction1: TAddTeeFunction
      end
    end
  end
end
