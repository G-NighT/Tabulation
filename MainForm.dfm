object Form1: TForm1
  Left = 307
  Top = 292
  Caption = #1055#1088#1086#1089#1090#1077#1081#1096#1072#1103' '#1079#1072#1076#1072#1095#1072' '#1087#1086#1089#1090#1088#1086#1077#1085#1080#1103' '#1075#1088#1072#1092#1080#1082#1072' '#1092#1091#1085#1082#1094#1080#1080
  ClientHeight = 650
  ClientWidth = 1085
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 177
    Top = 38
    Width = 176
    Height = 16
    Caption = #1053#1072#1095#1072#1083#1100#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' (X0) ='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 186
    Top = 63
    Width = 167
    Height = 16
    Caption = #1050#1086#1085#1077#1095#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' (X1) ='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 167
    Top = 8
    Width = 265
    Height = 24
    Caption = #1047#1072#1076#1072#1081#1090#1077' '#1072#1088#1075#1091#1084#1077#1085#1090#1099' '#1092#1091#1085#1082#1094#1080#1080':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 463
    Top = 8
    Width = 599
    Height = 24
    Caption = #1063#1090#1086#1073#1099' '#1089#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077' '#1085#1091#1078#1085#1086' '#1089#1076#1077#1083#1072#1090#1100' '#1082#1083#1080#1082' '#1087#1086' '#1076#1080#1072#1075#1088#1072#1084#1084#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel
    Left = 177
    Top = 148
    Width = 154
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1082#1086#1088#1085#1077#1081' '#1087#1088#1080' D>0 = '
  end
  object Label14: TLabel
    Left = 177
    Top = 167
    Width = 105
    Height = 13
    Caption = #1047#1085#1072#1095#1077#1085#1080#1077' '#1096#1072#1075#1072' (D) = '
  end
  object Label4: TLabel
    Left = 24
    Top = 149
    Width = 129
    Height = 31
    Alignment = taCenter
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 616
    Width = 1069
    Height = 34
    State = pbsPaused
    TabOrder = 0
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 186
    Width = 457
    Height = 295
    ColCount = 3
    DefaultColWidth = 150
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Button1: TButton
    Left = 177
    Top = 94
    Width = 120
    Height = 27
    Cursor = crHandPoint
    Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 519
    Width = 217
    Height = 91
    Caption = #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1099#1077' '#1079#1085#1072#1095#1077#1085#1080#1103' '
    TabOrder = 3
    Visible = False
    object Label1: TLabel
      Left = 16
      Top = 20
      Width = 90
      Height = 16
      Caption = #1047#1085#1072#1095#1077#1085#1080#1077' T = '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 42
      Width = 90
      Height = 16
      Caption = #1047#1085#1072#1095#1077#1085#1080#1077' Y = '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 64
      Width = 88
      Height = 16
      Caption = #1047#1085#1072#1095#1077#1085#1080#1103' X = '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object GroupBox3: TGroupBox
    Left = 231
    Top = 519
    Width = 226
    Height = 91
    Caption = #1052#1080#1085#1080#1084#1072#1083#1100#1085#1099#1077' '#1079#1085#1072#1095#1077#1085#1080#1103' '
    TabOrder = 4
    Visible = False
    object Label7: TLabel
      Left = 16
      Top = 20
      Width = 90
      Height = 16
      Caption = #1047#1085#1072#1095#1077#1085#1080#1077' T = '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 16
      Top = 42
      Width = 90
      Height = 16
      Caption = #1047#1085#1072#1095#1077#1085#1080#1077' Y = '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 16
      Top = 64
      Width = 88
      Height = 16
      Caption = #1047#1085#1072#1095#1077#1085#1080#1103' X = '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object Edit1: TEdit
    Left = 359
    Top = 37
    Width = 73
    Height = 21
    TabOrder = 5
    Text = '0'
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 359
    Top = 61
    Width = 73
    Height = 21
    TabOrder = 6
    Text = '40'
    OnKeyPress = Edit2KeyPress
  end
  object Button2: TButton
    Left = 8
    Top = 487
    Width = 449
    Height = 26
    Caption = #1053#1072#1081#1090#1080' '#1084#1072#1082#1089#1080#1084#1072#1083#1100#1085#1099#1077' '#1080' '#1084#1080#1085#1080#1084#1072#1083#1100#1085#1099#1077' '#1079#1085#1072#1095#1077#1085#1080#1103' '#1092#1091#1085#1082#1094#1080#1081
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Visible = False
    WordWrap = True
    OnClick = Button2Click
  end
  object Panel1: TPanel
    Left = 24
    Top = 14
    Width = 129
    Height = 129
    TabOrder = 8
    object Label12: TLabel
      Left = 16
      Top = 16
      Width = 95
      Height = 91
      Alignment = taCenter
      Caption = 
        #1055#1088#1086#1075#1088#1072#1084#1084#1072' '#1088#1072#1079#1088#1072#1073#1086#1090#1072#1085#1072': '#1089#1090#1091#1076#1077#1085#1090#1086#1084' '#1075#1088#1091#1087#1087#1099' '#1055#1048#1073'-152, '#1052#1080#1085#1083#1080#1075#1072#1088#1077#1077#1074#1099#1084' '#1052 +
        #1072#1082#1089#1080#1084#1086#1084' '#1040#1083#1077#1082#1089#1072#1085#1076#1088#1086#1074#1080#1095#1077#1084
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
  end
  object Chart1: TChart
    Left = 463
    Top = 38
    Width = 614
    Height = 572
    Cursor = crUpArrow
    BackWall.Brush.Style = bsClear
    Legend.Alignment = laTop
    Legend.CheckBoxes = True
    Legend.CustomPosition = True
    Legend.Left = 50
    Legend.ResizeChart = False
    Legend.Top = 12
    Legend.VertMargin = -1
    Title.Font.Style = [fsBold]
    Title.Margins.Left = 28
    Title.Margins.Top = 16
    Title.Margins.Right = 12
    Title.Text.Strings = (
      #169' '#1056#1072#1073#1086#1090#1072' '#1074#1099#1087#1086#1083#1085#1077#1085#1072' '#1052#1080#1085#1083#1080#1075#1072#1088#1077#1077#1074#1099#1084' '#1052#1072#1082#1089#1080#1084#1086#1084)
    Chart3DPercent = 6
    View3D = False
    Color = clWhite
    TabOrder = 9
    OnClick = Chart1Click
    DefaultCanvas = 'TGDIPlusCanvas'
    PrintMargins = (
      15
      17
      15
      17)
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      SeriesColor = clBlue
      Title = '(Sin((2t^3)+4)+((Cos^2)((3t^2)+5t)))'
      Brush.BackColor = clDefault
      ClickableLine = False
      Pointer.Brush.Gradient.EndColor = 10708548
      Pointer.Gradient.EndColor = 10708548
      Pointer.HorizSize = 2
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.VertSize = 2
      Pointer.Visible = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series2: TLineSeries
      SeriesColor = clRed
      Title = #1047#1072#1090#1091#1093#1072#1102#1097#1080#1081' '#1090#1072#1085#1075#1077#1085#1089
      Brush.BackColor = clDefault
      Pointer.HorizSize = 2
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.VertSize = 2
      Pointer.Visible = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Button3: TButton
    Left = 312
    Top = 94
    Width = 120
    Height = 27
    Cursor = crHandPoint
    Caption = #1054#1089#1090#1072#1085#1086#1074#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = Button3Click
  end
  object CheckBox1: TCheckBox
    Left = 177
    Top = 127
    Width = 105
    Height = 17
    Caption = #1057#1083#1091#1095#1072#1081#1085#1099#1081' '#1096#1072#1075
    TabOrder = 11
  end
  object CheckBox2: TCheckBox
    Left = 312
    Top = 127
    Width = 120
    Height = 17
    Caption = #1059#1084#1077#1085#1100#1096#1072#1090#1100' '#1096#1072#1075
    TabOrder = 12
  end
end
