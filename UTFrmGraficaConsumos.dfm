object FrmGraficaConsumos: TFrmGraficaConsumos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Gr'#225'fica de Consumos'
  ClientHeight = 195
  ClientWidth = 537
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object JvLabel3: TJvLabel
    Left = 33
    Top = 21
    Width = 51
    Height = 13
    Caption = 'Ubicaci'#243'n:'
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
  end
  object JvLabel1: TJvLabel
    Left = 48
    Top = 75
    Width = 36
    Height = 13
    Caption = 'Desde:'
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
  end
  object JvLabel2: TJvLabel
    Left = 50
    Top = 102
    Width = 34
    Height = 13
    Caption = 'Hasta:'
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
  end
  object JvLabel4: TJvLabel
    Left = 17
    Top = 48
    Width = 67
    Height = 13
    Caption = 'Ingredientes:'
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
  end
  object NombreEmbarcacion: TComboBox
    Left = 112
    Top = 21
    Width = 369
    Height = 21
    Style = csDropDownList
    TabOrder = 0
  end
  object Desde: TcxDateEdit
    Left = 112
    Top = 75
    EditValue = 0d
    Properties.AssignedValues.DisplayFormat = True
    Properties.AssignedValues.EditFormat = True
    Properties.DateButtons = [btnToday]
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 1
    Width = 121
  end
  object Hasta: TcxDateEdit
    Left = 112
    Top = 102
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 2
    Width = 121
  end
  object Panel1: TPanel
    Left = 0
    Top = 154
    Width = 537
    Height = 41
    Align = alBottom
    Padding.Left = 4
    Padding.Top = 4
    Padding.Right = 4
    Padding.Bottom = 4
    TabOrder = 3
    ExplicitLeft = -10
    ExplicitTop = 146
    object btnAceptar: TAdvGlowButton
      Left = 332
      Top = 5
      Width = 100
      Height = 31
      Align = alRight
      Caption = '&Aceptar'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btnAceptarClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object btnCancelar: TAdvGlowButton
      Left = 432
      Top = 5
      Width = 100
      Height = 31
      Align = alRight
      Caption = '&Cancelar'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
  end
  object NombreIngrediente: TComboBox
    Left = 112
    Top = 48
    Width = 369
    Height = 21
    Style = csDropDownList
    TabOrder = 4
  end
  object dsEmbarcacion: TDataSource
    DataSet = ClientModule1.cdEmbarcacion
    Left = 320
    Top = 88
  end
  object frxDSGraficaConsumo: TfrxDBDataset
    UserName = 'frxDSGraficaConsumo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CodigoTipoInsumo=CodigoTipoInsumo'
      'NombreTipoInsumo=NombreTipoInsumo'
      'IdInsumo=IdInsumo'
      'CodigoInsumo=CodigoInsumo'
      'NombreInsumo=NombreInsumo'
      'Fecha=Fecha'
      'Cantidad=Cantidad'
      'sNombre=sNombre')
    DataSet = cdReporte
    BCDToCurrency = False
    Left = 32
    Top = 128
  end
  object cdReporte: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 136
    Top = 128
  end
  object frxReporte: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42249.821679201390000000
    ReportOptions.LastChange = 42249.827020462960000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 456
    Top = 72
    Datasets = <
      item
        DataSet = frxDSGraficaConsumo
        DataSetName = 'frxDSGraficaConsumo'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 400.630180000000000000
        Top = 18.897650000000000000
        Width = 740.787880000000000000
        DataSet = frxDSGraficaConsumo
        DataSetName = 'frxDSGraficaConsumo'
        RowCount = 0
        object Chart1: TfrxChartView
          Left = 18.897650000000000000
          Top = 15.118120000000000000
          Width = 695.433520000000000000
          Height = 370.393940000000000000
          ShowHint = False
          Chart = {
            5450463006544368617274054368617274044C656674020003546F7002000557
            696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
            697369626C65080D4672616D652E56697369626C6508165669657733444F7074
            696F6E732E526F746174696F6E02000A426576656C4F75746572070662764E6F
            6E6505436F6C6F720707636C576869746511436F6C6F7250616C65747465496E
            646578020D000B544C696E655365726965730753657269657331134D61726B73
            2E4172726F772E56697369626C6509194D61726B732E43616C6C6F75742E4272
            7573682E436F6C6F720707636C426C61636B1B4D61726B732E43616C6C6F7574
            2E4172726F772E56697369626C65090D4D61726B732E56697369626C65081650
            6F696E7465722E496E666C6174654D617267696E73090D506F696E7465722E53
            74796C65070B707352656374616E676C650F506F696E7465722E56697369626C
            65080C5856616C7565732E4E616D650601580D5856616C7565732E4F72646572
            070B6C6F417363656E64696E670C5956616C7565732E4E616D650601590D5956
            616C7565732E4F7264657207066C6F4E6F6E65000000}
          ChartElevation = 345
          SeriesData = <
            item
              DataType = dtDBData
              DataBand = frxReporte.MasterData1
              DataSet = frxDSGraficaConsumo
              DataSetName = 'frxDSGraficaConsumo'
              SortOrder = soNone
              TopN = 0
              XType = xtText
              Source1 = 'frxDSGraficaConsumo."Fecha"'
              Source2 = 'frxDSGraficaConsumo."Cantidad"'
              XSource = 'frxDSGraficaConsumo."Fecha"'
              YSource = 'frxDSGraficaConsumo."Cantidad"'
            end>
        end
      end
    end
  end
  object cdInsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 240
    Top = 128
  end
end
