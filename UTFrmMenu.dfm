object FrmMenu: TFrmMenu
  Left = 0
  Top = 0
  Caption = 'Men'#250' Peri'#243'dico'
  ClientHeight = 524
  ClientWidth = 763
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gbEncabezado: TGroupBox
    Left = 0
    Top = 0
    Width = 763
    Height = 81
    Align = alTop
    Caption = 'Rango de consumos del:'
    TabOrder = 0
    OnDblClick = gbEncabezadoDblClick
    object JvLabel1: TJvLabel
      Left = 16
      Top = 50
      Width = 78
      Height = 13
      Caption = 'Fecha de Inicio:'
      Transparent = True
      OnDblClick = gbEncabezadoDblClick
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel2: TJvLabel
      Left = 221
      Top = 50
      Width = 89
      Height = 13
      Caption = 'Fecha de Periodo:'
      Transparent = True
      OnDblClick = gbEncabezadoDblClick
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object Desde: TDBText
      Left = 100
      Top = 50
      Width = 80
      Height = 17
      DataField = 'Desde'
      DataSource = dsMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Hasta: TDBText
      Left = 316
      Top = 50
      Width = 80
      Height = 17
      DataField = 'Hasta'
      DataSource = dsMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnDblClick = gbEncabezadoDblClick
    end
    object Panel4: TPanel
      Left = 2
      Top = 15
      Width = 759
      Height = 29
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      OnDblClick = gbEncabezadoDblClick
      object JvLabel3: TJvLabel
        Left = 24
        Top = 7
        Width = 68
        Height = 13
        Caption = 'C'#243'digo Men'#250':'
        Transparent = True
        OnDblClick = gbEncabezadoDblClick
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object CodigoMenu: TDBText
        Left = 98
        Top = 8
        Width = 421
        Height = 17
        DataField = 'CodigoMenu'
        DataSource = dsMenu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnDblClick = gbEncabezadoDblClick
      end
      object Panel1: TPanel
        Left = 574
        Top = 0
        Width = 185
        Height = 29
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object JvLabel4: TJvLabel
          Left = 34
          Top = 7
          Width = 39
          Height = 13
          Caption = 'Estado:'
          Transparent = True
          OnDblClick = gbEncabezadoDblClick
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object Estado: TDBText
          Left = 79
          Top = 8
          Width = 101
          Height = 17
          DataField = 'Estado'
          DataSource = dsMenu
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnDblClick = gbEncabezadoDblClick
        end
      end
    end
  end
  object pnlAbajo: TPanel
    Left = 0
    Top = 483
    Width = 763
    Height = 41
    Align = alBottom
    Padding.Left = 6
    Padding.Top = 4
    Padding.Bottom = 4
    TabOrder = 1
    object btnImprimir: TAdvGlowButton
      Left = 7
      Top = 5
      Width = 100
      Height = 31
      Align = alLeft
      Caption = '&Imprimir'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btnImprimirClick
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
  object pcMenu: TPageControl
    Left = 0
    Top = 81
    Width = 763
    Height = 402
    ActivePage = tsMenu
    Align = alClient
    TabOrder = 2
    object tsMenu: TTabSheet
      Caption = '&Menu'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object sgMenu: TAdvStringGrid
        Left = 0
        Top = 0
        Width = 755
        Height = 374
        Cursor = crDefault
        Align = alClient
        DefaultColWidth = 160
        DrawingStyle = gdsClassic
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        OnColumnSize = sgMenuColumnSize
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ControlLook.FixedGradientHoverFrom = clGray
        ControlLook.FixedGradientHoverTo = clWhite
        ControlLook.FixedGradientDownFrom = clGray
        ControlLook.FixedGradientDownTo = clSilver
        ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownHeader.Font.Color = clWindowText
        ControlLook.DropDownHeader.Font.Height = -11
        ControlLook.DropDownHeader.Font.Name = 'Tahoma'
        ControlLook.DropDownHeader.Font.Style = []
        ControlLook.DropDownHeader.Visible = True
        ControlLook.DropDownHeader.Buttons = <>
        ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownFooter.Font.Color = clWindowText
        ControlLook.DropDownFooter.Font.Height = -11
        ControlLook.DropDownFooter.Font.Name = 'Tahoma'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'Tahoma'
        FilterDropDown.Font.Style = []
        FilterDropDownClear = '(All)'
        FixedColWidth = 10
        FixedRowHeight = 22
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
        Grouping.HeaderUnderline = True
        Grouping.MergeHeader = True
        Grouping.ShowGroupCount = True
        Grouping.Summary = True
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'Tahoma'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'Tahoma'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'Tahoma'
        SearchFooter.Font.Style = []
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurrence'
        SearchFooter.HintFindPrev = 'Find previous occurrence'
        SearchFooter.HintHighlight = 'Highlight occurrences'
        SearchFooter.MatchCaseCaption = 'Match case'
        Version = '5.8.0.2'
        ColWidths = (
          10
          160
          160
          160
          160)
      end
    end
    object tsIngredientes: TTabSheet
      Caption = 'Ingredientes'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 755
        Height = 333
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsMenuDatos
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object CodigoInsumo: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CodigoInsumo'
          end
          object NombreInsumo: TcxGridDBColumn
            Caption = 'Nombre Insumo'
            DataBinding.FieldName = 'NombreInsumo'
          end
          object Cantidad: TcxGridDBColumn
            DataBinding.FieldName = 'Cantidad'
          end
          object sNombre: TcxGridDBColumn
            Caption = 'U.M.'
            DataBinding.FieldName = 'sNombre'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 333
        Width = 755
        Height = 41
        Align = alBottom
        Caption = 'Panel3'
        TabOrder = 1
      end
    end
  end
  object cdBuscarMenu: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 520
    Top = 64
  end
  object cdMenuDatosDisp: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 360
    Top = 112
  end
  object cdMenu: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 640
    Top = 112
  end
  object cdMenuUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 640
    Top = 312
  end
  object dsMenu: TDataSource
    DataSet = cdMenu
    Left = 584
    Top = 112
  end
  object cdMenuDatosUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 344
    Top = 184
  end
  object cdMenuDatos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 200
    Top = 200
  end
  object dsMenuDatos: TDataSource
    DataSet = cdMenuDatos
    Left = 128
    Top = 200
  end
  object cdConfiguracion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 232
    Top = 272
  end
  object frxMenuPeriodico: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42229.751444699100000000
    ReportOptions.LastChange = 42233.506897789350000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 408
    Top = 328
    Datasets = <
      item
        DataSet = ClientModule1.fdsOrganizacion
        DataSetName = 'fdsOrganizacion'
      end
      item
        DataSet = frxdsEncabMenu
        DataSetName = 'frxdsEncabMenu'
      end
      item
        DataSet = frxdsMenuDatos
        DataSetName = 'frxdsMenuDatos'
      end
      item
        DataSet = frxdsRepoMenu
        DataSetName = 'frxdsRepoMenu'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 2.500000000000000000
      RightMargin = 2.500000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 75.590600000000000000
        Top = 249.448980000000000000
        Width = 1037.103032000000000000
        Child = frxMenuPeriodico.Child1
        DataSet = frxdsRepoMenu
        DataSetName = 'frxdsRepoMenu'
        KeepChild = True
        RowCount = 0
        Stretched = True
        object Picture2: TfrxPictureView
          Left = 147.401670000000000000
          Width = 147.401670000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'Imagen2'
          DataSet = frxdsRepoMenu
          DataSetName = 'frxdsRepoMenu'
          Frame.Typ = [ftLeft, ftTop]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture3: TfrxPictureView
          Left = 294.803340000000000000
          Width = 147.401670000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'Imagen3'
          DataSet = frxdsRepoMenu
          DataSetName = 'frxdsRepoMenu'
          Frame.Typ = [ftLeft, ftTop]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture4: TfrxPictureView
          Left = 442.205010000000000000
          Width = 147.401670000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'Imagen4'
          DataSet = frxdsRepoMenu
          DataSetName = 'frxdsRepoMenu'
          Frame.Typ = [ftLeft, ftTop]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture5: TfrxPictureView
          Left = 589.606680000000000000
          Width = 147.401670000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'Imagen5'
          DataSet = frxdsRepoMenu
          DataSetName = 'frxdsRepoMenu'
          Frame.Typ = [ftLeft, ftTop]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture6: TfrxPictureView
          Left = 737.008350000000000000
          Width = 147.401670000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'Imagen6'
          DataSet = frxdsRepoMenu
          DataSetName = 'frxdsRepoMenu'
          Frame.Typ = [ftLeft, ftTop]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture7: TfrxPictureView
          Left = 884.410020000000000000
          Width = 147.401670000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'Imagen7'
          DataSet = frxdsRepoMenu
          DataSetName = 'frxdsRepoMenu'
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture1: TfrxPictureView
          Width = 147.401670000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'Imagen1'
          DataSet = frxdsRepoMenu
          DataSetName = 'frxdsRepoMenu'
          Frame.Typ = [ftLeft, ftTop]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 18.897650000000000000
        Top = 207.874150000000000000
        Width = 1037.103032000000000000
        Condition = 'frxdsEncabMenu."Receta1"'
        ReprintOnNewPage = True
        object Memo15: TfrxMemoView
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdsEncabMenu."Receta1"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 147.401670000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdsEncabMenu."Receta2"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 294.803340000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdsEncabMenu."Receta3"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 442.205010000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdsEncabMenu."Receta4"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 589.606680000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdsEncabMenu."Receta5"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 737.008350000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdsEncabMenu."Receta6"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 884.410020000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdsEncabMenu."Receta7"]')
          ParentFont = False
        end
      end
      object Child1: TfrxChild
        Height = 18.897650000000000000
        Top = 347.716760000000000000
        Width = 1037.103032000000000000
        Stretched = True
        object Memo3: TfrxMemoView
          Left = 294.803340000000000000
          Width = 147.401574800000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Receta3'
          DataSet = frxdsRepoMenu
          DataSetName = 'frxdsRepoMenu'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = '@Arial Unicode MS'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxdsRepoMenu."Receta3"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 442.204726850000000000
          Width = 147.401574800000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Receta4'
          DataSet = frxdsRepoMenu
          DataSetName = 'frxdsRepoMenu'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = '@Arial Unicode MS'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxdsRepoMenu."Receta4"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 589.606301650000000000
          Width = 147.401574800000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Receta5'
          DataSet = frxdsRepoMenu
          DataSetName = 'frxdsRepoMenu'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = '@Arial Unicode MS'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxdsRepoMenu."Receta5"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 884.410020000000000000
          Width = 147.401574800000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Receta7'
          DataSet = frxdsRepoMenu
          DataSetName = 'frxdsRepoMenu'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = '@Arial Unicode MS'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxdsRepoMenu."Receta7"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 147.401577240000000000
          Width = 147.401574800000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Receta1'
          DataSet = frxdsRepoMenu
          DataSetName = 'frxdsRepoMenu'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = '@Arial Unicode MS'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxdsRepoMenu."Receta1"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 737.007876460000000000
          Width = 147.401574800000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Receta6'
          DataSet = frxdsRepoMenu
          DataSetName = 'frxdsRepoMenu'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = '@Arial Unicode MS'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxdsRepoMenu."Receta6"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Width = 147.401574800000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Receta1'
          DataSet = frxdsRepoMenu
          DataSetName = 'frxdsRepoMenu'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = '@Arial Unicode MS'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxdsRepoMenu."Receta1"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 128.504020000000000000
        Top = 18.897650000000000000
        Width = 1037.103032000000000000
        object Picture15: TfrxPictureView
          Width = 185.196970000000000000
          Height = 109.606370000000000000
          ShowHint = False
          DataField = 'Imagen'
          DataSet = ClientModule1.fdsOrganizacion
          DataSetName = 'fdsOrganizacion'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo29: TfrxMemoView
          Left = 188.976500000000000000
          Width = 839.055660000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsOrganizacion."nombreorganizacion"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Top = 109.606370000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsOrganizacion."Etiqueta"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 188.976500000000000000
          Top = 26.456710000000000000
          Width = 839.055660000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsOrganizacion."tituloorganizacion"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 188.976500000000000000
          Top = 68.031540000000010000
          Width = 839.055660000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Menu Semanal')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 2.500000000000000000
      RightMargin = 2.500000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData2: TfrxMasterData
        Height = 75.590600000000000000
        Top = 249.448980000000000000
        Width = 1037.103032000000000000
        Child = frxMenuPeriodico.Child2
        DataSet = frxdsRepoMenu
        DataSetName = 'frxdsRepoMenu'
        KeepChild = True
        RowCount = 0
        Stretched = True
        object Picture8: TfrxPictureView
          Left = 147.401670000000000000
          Width = 147.401670000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'Imagen9'
          DataSet = frxdsRepoMenu
          DataSetName = 'frxdsRepoMenu'
          Frame.Typ = [ftLeft, ftTop]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture9: TfrxPictureView
          Left = 294.803340000000000000
          Width = 147.401670000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'Imagen10'
          DataSet = frxdsRepoMenu
          DataSetName = 'frxdsRepoMenu'
          Frame.Typ = [ftLeft, ftTop]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture10: TfrxPictureView
          Left = 442.205010000000000000
          Width = 147.401670000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'Imagen11'
          DataSet = frxdsRepoMenu
          DataSetName = 'frxdsRepoMenu'
          Frame.Typ = [ftLeft, ftTop]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture11: TfrxPictureView
          Left = 589.606680000000000000
          Width = 147.401670000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'Imagen12'
          DataSet = frxdsRepoMenu
          DataSetName = 'frxdsRepoMenu'
          Frame.Typ = [ftLeft, ftTop]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture12: TfrxPictureView
          Left = 737.008350000000000000
          Width = 147.401670000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'Imagen13'
          DataSet = frxdsRepoMenu
          DataSetName = 'frxdsRepoMenu'
          Frame.Typ = [ftLeft, ftTop]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture13: TfrxPictureView
          Left = 884.410020000000000000
          Width = 147.401670000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'Imagen14'
          DataSet = frxdsRepoMenu
          DataSetName = 'frxdsRepoMenu'
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture14: TfrxPictureView
          Width = 147.401670000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'Imagen8'
          DataSet = frxdsRepoMenu
          DataSetName = 'frxdsRepoMenu'
          Frame.Typ = [ftLeft, ftTop]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 18.897650000000000000
        Top = 207.874150000000000000
        Width = 1037.103032000000000000
        Condition = 'frxdsEncabMenu."Receta1"'
        ReprintOnNewPage = True
        object Memo22: TfrxMemoView
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdsEncabMenu."Receta8"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 147.401670000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdsEncabMenu."Receta9"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 294.803340000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdsEncabMenu."Receta10"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 442.205010000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdsEncabMenu."Receta11"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 589.606680000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdsEncabMenu."Receta12"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 737.008350000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdsEncabMenu."Receta13"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 884.410020000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdsEncabMenu."Receta14"]')
          ParentFont = False
        end
      end
      object Child2: TfrxChild
        Height = 18.897650000000000000
        Top = 347.716760000000000000
        Width = 1037.103032000000000000
        Stretched = True
        object Memo14: TfrxMemoView
          Left = 884.409448820000000000
          Width = 147.401574800000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Receta14'
          DataSet = frxdsRepoMenu
          DataSetName = 'frxdsRepoMenu'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = '@Arial Unicode MS'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxdsRepoMenu."Receta14"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 737.007874020000000000
          Width = 147.401574800000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Receta13'
          DataSet = frxdsRepoMenu
          DataSetName = 'frxdsRepoMenu'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = '@Arial Unicode MS'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxdsRepoMenu."Receta13"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 442.204724410000000000
          Width = 147.401574800000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Receta11'
          DataSet = frxdsRepoMenu
          DataSetName = 'frxdsRepoMenu'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = '@Arial Unicode MS'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxdsRepoMenu."Receta11"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 589.606299210000000000
          Width = 147.401574800000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Receta12'
          DataSet = frxdsRepoMenu
          DataSetName = 'frxdsRepoMenu'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = '@Arial Unicode MS'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxdsRepoMenu."Receta12"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Width = 147.401574800000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Receta8'
          DataSet = frxdsRepoMenu
          DataSetName = 'frxdsRepoMenu'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = '@Arial Unicode MS'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxdsRepoMenu."Receta8"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 147.401574800000000000
          Width = 147.401574800000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Receta9'
          DataSet = frxdsRepoMenu
          DataSetName = 'frxdsRepoMenu'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = '@Arial Unicode MS'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxdsRepoMenu."Receta9"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 294.803149610000000000
          Width = 147.401574800000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Receta10'
          DataSet = frxdsRepoMenu
          DataSetName = 'frxdsRepoMenu'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = '@Arial Unicode MS'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxdsRepoMenu."Receta10"]')
          ParentFont = False
        end
      end
      object PageHeader2: TfrxPageHeader
        Height = 128.504020000000000000
        Top = 18.897650000000000000
        Width = 1037.103032000000000000
        object Picture16: TfrxPictureView
          Width = 185.196970000000000000
          Height = 109.606370000000000000
          ShowHint = False
          DataField = 'Imagen'
          DataSet = ClientModule1.fdsOrganizacion
          DataSetName = 'fdsOrganizacion'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo33: TfrxMemoView
          Left = 188.976500000000000000
          Width = 839.055660000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsOrganizacion."nombreorganizacion"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Top = 109.606370000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsOrganizacion."Etiqueta"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 188.976500000000000000
          Top = 26.456710000000000000
          Width = 839.055660000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsOrganizacion."tituloorganizacion"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 188.976500000000000000
          Top = 68.031540000000010000
          Width = 839.055660000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Menu Semanal')
          ParentFont = False
        end
      end
    end
  end
  object frxdsMenuDatos: TfrxDBDataset
    UserName = 'frxdsMenuDatos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdMenuDatos=IdMenuDatos'
      'IdMenu=IdMenu'
      'IdInsumo=IdInsumo'
      'CodigoInsumo=CodigoInsumo'
      'NombreInsumo=NombreInsumo'
      'DescripcionInsumo=DescripcionInsumo'
      'Cantidad=Cantidad'
      'iIdUnidad=iIdUnidad'
      'sCodigo=sCodigo'
      'sNombre=sNombre')
    DataSet = cdMenuDatos
    BCDToCurrency = False
    Left = 40
    Top = 200
  end
  object cdMenuDatosListado: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 200
    Top = 144
  end
  object cdRepoMenu: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 80
    Top = 328
    object cdRepoMenuImagen1: TBlobField
      FieldName = 'Imagen1'
    end
    object cdRepoMenuImagen2: TBlobField
      FieldName = 'Imagen2'
    end
    object cdRepoMenuImagen3: TBlobField
      FieldName = 'Imagen3'
    end
    object cdRepoMenuImagen4: TBlobField
      FieldName = 'Imagen4'
    end
    object cdRepoMenuImagen5: TBlobField
      FieldName = 'Imagen5'
    end
    object cdRepoMenuImagen6: TBlobField
      FieldName = 'Imagen6'
    end
    object cdRepoMenuImagen7: TBlobField
      FieldName = 'Imagen7'
    end
    object cdRepoMenuImagen8: TBlobField
      FieldName = 'Imagen8'
    end
    object cdRepoMenuImagen9: TBlobField
      FieldName = 'Imagen9'
    end
    object cdRepoMenuImagen10: TBlobField
      FieldName = 'Imagen10'
    end
    object cdRepoMenuImagen11: TBlobField
      FieldName = 'Imagen11'
    end
    object cdRepoMenuImagen12: TBlobField
      FieldName = 'Imagen12'
    end
    object cdRepoMenuImagen13: TBlobField
      FieldName = 'Imagen13'
    end
    object cdRepoMenuImagen14: TBlobField
      FieldName = 'Imagen14'
    end
    object cdRepoMenuReceta1: TStringField
      FieldName = 'Receta1'
      Size = 2000
    end
    object cdRepoMenuReceta2: TStringField
      FieldName = 'Receta2'
      Size = 2000
    end
    object cdRepoMenuReceta3: TStringField
      FieldName = 'Receta3'
      Size = 2000
    end
    object cdRepoMenuReceta4: TStringField
      FieldName = 'Receta4'
      Size = 2000
    end
    object cdRepoMenuReceta5: TStringField
      FieldName = 'Receta5'
      Size = 2000
    end
    object cdRepoMenuReceta6: TStringField
      FieldName = 'Receta6'
      Size = 2000
    end
    object cdRepoMenuReceta7: TStringField
      FieldName = 'Receta7'
      Size = 2000
    end
    object cdRepoMenuReceta8: TStringField
      FieldName = 'Receta8'
      Size = 2000
    end
    object cdRepoMenuReceta9: TStringField
      FieldName = 'Receta9'
      Size = 2000
    end
    object cdRepoMenuReceta10: TStringField
      FieldName = 'Receta10'
      Size = 2000
    end
    object cdRepoMenuReceta11: TStringField
      FieldName = 'Receta11'
      Size = 2000
    end
    object cdRepoMenuReceta12: TStringField
      FieldName = 'Receta12'
      Size = 2000
    end
    object cdRepoMenuReceta13: TStringField
      FieldName = 'Receta13'
      Size = 2000
    end
    object cdRepoMenuReceta14: TStringField
      FieldName = 'Receta14'
      Size = 2000
    end
  end
  object frxdsRepoMenu: TfrxDBDataset
    UserName = 'frxdsRepoMenu'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Imagen1=Imagen1'
      'Imagen2=Imagen2'
      'Imagen3=Imagen3'
      'Imagen4=Imagen4'
      'Imagen5=Imagen5'
      'Imagen6=Imagen6'
      'Imagen7=Imagen7'
      'Imagen8=Imagen8'
      'Imagen9=Imagen9'
      'Imagen10=Imagen10'
      'Imagen11=Imagen11'
      'Imagen12=Imagen12'
      'Imagen13=Imagen13'
      'Imagen14=Imagen14'
      'Receta1=Receta1'
      'Receta2=Receta2'
      'Receta3=Receta3'
      'Receta4=Receta4'
      'Receta5=Receta5'
      'Receta6=Receta6'
      'Receta7=Receta7'
      'Receta8=Receta8'
      'Receta9=Receta9'
      'Receta10=Receta10'
      'Receta11=Receta11'
      'Receta12=Receta12'
      'Receta13=Receta13'
      'Receta14=Receta14')
    DataSet = cdRepoMenu
    BCDToCurrency = False
    Left = 160
    Top = 328
  end
  object cdEncabMenu: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 80
    Top = 384
    object StringField1: TStringField
      FieldName = 'Receta1'
      Size = 2000
    end
    object StringField2: TStringField
      FieldName = 'Receta2'
      Size = 2000
    end
    object StringField3: TStringField
      FieldName = 'Receta3'
      Size = 2000
    end
    object StringField4: TStringField
      FieldName = 'Receta4'
      Size = 2000
    end
    object StringField5: TStringField
      FieldName = 'Receta5'
      Size = 2000
    end
    object StringField6: TStringField
      FieldName = 'Receta6'
      Size = 2000
    end
    object StringField7: TStringField
      FieldName = 'Receta7'
      Size = 2000
    end
    object StringField8: TStringField
      FieldName = 'Receta8'
      Size = 2000
    end
    object StringField9: TStringField
      FieldName = 'Receta9'
      Size = 2000
    end
    object StringField10: TStringField
      FieldName = 'Receta10'
      Size = 2000
    end
    object StringField11: TStringField
      FieldName = 'Receta11'
      Size = 2000
    end
    object StringField12: TStringField
      FieldName = 'Receta12'
      Size = 2000
    end
    object StringField13: TStringField
      FieldName = 'Receta13'
      Size = 2000
    end
    object StringField14: TStringField
      FieldName = 'Receta14'
      Size = 2000
    end
  end
  object frxdsEncabMenu: TfrxDBDataset
    UserName = 'frxdsEncabMenu'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Receta1=Receta1'
      'Receta2=Receta2'
      'Receta3=Receta3'
      'Receta4=Receta4'
      'Receta5=Receta5'
      'Receta6=Receta6'
      'Receta7=Receta7'
      'Receta8=Receta8'
      'Receta9=Receta9'
      'Receta10=Receta10'
      'Receta11=Receta11'
      'Receta12=Receta12'
      'Receta13=Receta13'
      'Receta14=Receta14')
    DataSet = cdEncabMenu
    BCDToCurrency = False
    Left = 160
    Top = 384
  end
end
