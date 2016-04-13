object FrmRangoConsumos: TFrmRangoConsumos
  Left = 0
  Top = 0
  Caption = 'FrmRangoConsumos'
  ClientHeight = 446
  ClientWidth = 768
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 243
    Width = 768
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitLeft = -8
    ExplicitTop = 305
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 768
    Height = 73
    Align = alTop
    Caption = 'Rango de consumos del:'
    TabOrder = 0
    OnDblClick = GroupBox1DblClick
    object JvLabel1: TJvLabel
      Left = 16
      Top = 31
      Width = 78
      Height = 13
      Caption = 'Fecha de Inicio:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel2: TJvLabel
      Left = 224
      Top = 31
      Width = 89
      Height = 13
      Caption = 'Fecha de Periodo:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object FechaInicio: TJvDBDateEdit
      Left = 97
      Top = 29
      Width = 96
      Height = 21
      DataField = 'FechaInicio'
      DataSource = dsSolicitud
      TabOrder = 0
    end
    object FechaFin: TJvDBDateEdit
      Left = 318
      Top = 29
      Width = 96
      Height = 21
      DataField = 'FechaFin'
      DataSource = dsSolicitud
      TabOrder = 1
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 73
    Width = 768
    Height = 170
    Align = alClient
    TabOrder = 1
    ExplicitTop = 79
    ExplicitHeight = 200
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGrid2: TcxGrid
    Left = 0
    Top = 246
    Width = 768
    Height = 200
    Align = alBottom
    TabOrder = 2
    ExplicitLeft = 264
    ExplicitTop = 144
    ExplicitWidth = 250
    object cxGrid2DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2DBTableView1
    end
  end
  object dsSolicitud: TDataSource
    DataSet = cdSolicitud
    Left = 544
    Top = 184
  end
  object cdSolicitud: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 624
    Top = 184
  end
  object cdSolicitudUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 640
    Top = 272
  end
  object cdBuscarSolicitud: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 608
    Top = 8
  end
  object cdRegistroConsumoRango: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 376
    Top = 144
  end
end
