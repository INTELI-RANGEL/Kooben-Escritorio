object FrmConsultarExistencias: TFrmConsultarExistencias
  Left = 0
  Top = 0
  Caption = 'Consulta de Existencias'
  ClientHeight = 377
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTipoInsumo: TPanel
    Left = 0
    Top = 41
    Width = 527
    Height = 295
    Align = alClient
    TabOrder = 0
    object clbTipoInsumo: TCheckListBox
      Left = 1
      Top = 41
      Width = 525
      Height = 253
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 525
      Height = 40
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object btnTodos: TButton
        Left = 8
        Top = 9
        Width = 113
        Height = 25
        Caption = 'Seleccionar &Todos'
        TabOrder = 0
        OnClick = btnTodosClick
      end
      object btnNinguno: TButton
        Left = 127
        Top = 9
        Width = 113
        Height = 25
        Caption = 'Seleccionar &Ninguno'
        TabOrder = 1
        OnClick = btnNingunoClick
      end
      object btnInvertir: TButton
        Left = 246
        Top = 9
        Width = 113
        Height = 25
        Caption = '&Invertir Selecci'#243'n'
        TabOrder = 2
        OnClick = btnInvertirClick
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 336
    Width = 527
    Height = 41
    Align = alBottom
    Padding.Left = 6
    Padding.Top = 4
    Padding.Right = 6
    Padding.Bottom = 4
    TabOrder = 1
    object btnProceder: TAdvGlowButton
      Left = 320
      Top = 5
      Width = 100
      Height = 31
      Align = alRight
      Caption = '&Proceder'
      ImageIndex = 1
      Images = ClientModule1.PngImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btnProcederClick
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
      Left = 420
      Top = 5
      Width = 100
      Height = 31
      Align = alRight
      Caption = '&Cancelar'
      ImageIndex = 8
      Images = ClientModule1.PngImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = btnCancelarClick
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
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 527
    Height = 41
    Align = alTop
    TabOrder = 2
    object JvLabel1: TJvLabel
      Left = 16
      Top = 14
      Width = 62
      Height = 13
      Caption = 'Localizaci'#243'n:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object cbIdEmbarcacion: TComboBox
      Left = 84
      Top = 11
      Width = 405
      Height = 21
      Style = csDropDownList
      TabOrder = 0
    end
  end
  object pnlPreview: TPanel
    Left = 16
    Top = 88
    Width = 265
    Height = 113
    TabOrder = 3
    Visible = False
    object Panel5: TPanel
      Left = 1
      Top = 71
      Width = 263
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      Padding.Left = 6
      Padding.Top = 4
      Padding.Right = 6
      Padding.Bottom = 4
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 40
      ExplicitWidth = 185
      object AdvGlowButton2: TAdvGlowButton
        Left = 157
        Top = 4
        Width = 100
        Height = 33
        Align = alRight
        Cancel = True
        Caption = '&Cerrar'
        ImageIndex = 8
        Images = ClientModule1.PngImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        OnClick = AdvGlowButton2Click
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
        ExplicitLeft = 420
        ExplicitTop = 5
        ExplicitHeight = 31
      end
    end
    object frxPreview1: TfrxPreview
      Left = 1
      Top = 1
      Width = 263
      Height = 70
      Align = alClient
      OutlineVisible = False
      OutlineWidth = 120
      ThumbnailVisible = False
      UseReportHints = True
      ExplicitLeft = 40
      ExplicitTop = 8
      ExplicitWidth = 100
      ExplicitHeight = 100
    end
  end
  object cdExistencias: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 256
    Top = 192
  end
  object dsExistencias: TDataSource
    DataSet = cdExistencias
    Left = 344
    Top = 192
  end
  object cdEmbarcacion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 232
    Top = 248
  end
  object dsEmbarcacion: TDataSource
    DataSet = cdEmbarcacion
    Left = 304
    Top = 256
  end
  object cdTipoInsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 128
    Top = 208
  end
  object dsTipoInsumo: TDataSource
    DataSet = cdTipoInsumo
    Left = 128
    Top = 264
  end
  object fdsExistencias: TfrxDBDataset
    UserName = 'fdsExistencias'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FechaInventario=FechaInventario'
      'IdEmbarcacion=IdEmbarcacion'
      'IdInsumo=IdInsumo'
      'IdTipoInsumo=IdTipoInsumo'
      'CodigoTipoInsumo=CodigoTipoInsumo'
      'NombreTipoInsumo=NombreTipoInsumo'
      'Orden=Orden'
      'CodigoInsumo=CodigoInsumo'
      'NombreInsumo=NombreInsumo'
      'DescripcionInsumo=DescripcionInsumo'
      'iIdUnidad=iIdUnidad'
      'sNombre=sNombre'
      'Inventario=Inventario'
      'Entrada=Entrada'
      'Salida=Salida'
      'Existencia=Existencia'
      'StockMinimo=StockMinimo'
      'StockMaximo=StockMaximo'
      'AplicacionStock=AplicacionStock')
    DataSet = cdLocExistencias
    BCDToCurrency = False
    Left = 336
    Top = 120
  end
  object fdsEmbarcacion: TfrxDBDataset
    UserName = 'fdsEmbarcacion'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdEmbarcacion=IdEmbarcacion'
      'CodigoEmbarcacion=CodigoEmbarcacion'
      'NombreEmbarcacion=NombreEmbarcacion')
    DataSet = cdEmbarcacion
    BCDToCurrency = False
    Left = 424
    Top = 176
  end
  object frxExistencias: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42311.478286423600000000
    ReportOptions.LastChange = 42390.496460497680000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnDblClickObject = frxExistenciasDblClickObject
    Left = 128
    Top = 112
    Datasets = <
      item
        DataSet = fdsEmbarcacion
        DataSetName = 'fdsEmbarcacion'
      end
      item
        DataSet = fdsExistencias
        DataSetName = 'fdsExistencias'
      end
      item
        DataSet = ClientModule1.fdsOrganizacion
        DataSetName = 'fdsOrganizacion'
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
      object PageHeader1: TfrxPageHeader
        Height = 132.283550000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo5: TfrxMemoView
          Width = 737.008350000000000000
          Height = 132.283550000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 7.559060000000000000
          Top = 7.559059999999999000
          Width = 94.488250000000000000
          Height = 60.472480000000000000
          ShowHint = False
          DataField = 'Imagen'
          DataSet = ClientModule1.fdsOrganizacion
          DataSetName = 'fdsOrganizacion'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Left = 113.385900000000000000
          Top = 15.118120000000000000
          Width = 619.842920000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsOrganizacion."nombreorganizacion"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 113.385900000000000000
          Top = 37.795300000000000000
          Width = 619.842920000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsOrganizacion."tituloorganizacion"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Top = 68.031540000000010000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsOrganizacion."Etiqueta"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 113.385900000000000000
          Top = 64.252010000000000000
          Width = 619.842920000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'REPORTE DE EXISTENCIAS AL D'#205'A: [Date]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 90.708720000000000000
          Top = 109.606370000000000000
          Width = 642.520100000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            
              '[fdsEmbarcacion."CodigoEmbarcacion"] - [fdsEmbarcacion."NombreEm' +
              'barcacion"]')
        end
        object Memo22: TfrxMemoView
          Left = 7.559060000000000000
          Top = 109.606370000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Localizaci'#243'n:')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 45.354360000000000000
        Top = 211.653680000000000000
        Width = 740.409927000000000000
        Condition = 'fdsExistencias."IdTipoInsumo"'
        ReprintOnNewPage = True
        object Memo27: TfrxMemoView
          Left = 287.244280000000000000
          Top = 18.897650000000000000
          Width = 64.251919690000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'U. M.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 672.756340000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Stock Max.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 608.504330000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Stock Min.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 79.370130000000000000
          Top = 18.897650000000000000
          Width = 207.874059690000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            'Insumo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'digo Insumo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 351.496290000000000000
          Top = 18.897650000000000000
          Width = 64.251968500000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Inventario'
            '[fdsExistencias."FechaInventario"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 415.748300000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Recibido')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 480.000310000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Consumido')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 544.252320000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Existencia')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Memo.UTF8W = (
            '[fdsExistencias."NombreTipoInsumo"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 279.685220000000000000
        Width = 740.409927000000000000
        DataSet = fdsExistencias
        DataSetName = 'fdsExistencias'
        RowCount = 0
        Stretched = True
        object Memo6: TfrxMemoView
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'CodigoInsumo'
          DataSet = fdsExistencias
          DataSetName = 'fdsExistencias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[fdsExistencias."CodigoInsumo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 79.370130000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NombreInsumo'
          DataSet = fdsExistencias
          DataSetName = 'fdsExistencias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[fdsExistencias."NombreInsumo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 351.496290000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = fdsExistencias
          DataSetName = 'fdsExistencias'
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[fdsExistencias."Inventario"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 415.748300000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = fdsExistencias
          DataSetName = 'fdsExistencias'
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[fdsExistencias."Entrada"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Consumido: TfrxMemoView
          Left = 480.000310000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          OnPreviewDblClick = 'ConsumidoOnPreviewDblClick'
          ShowHint = False
          StretchMode = smMaxHeight
          Cursor = crHandPoint
          TagStr = '[fdsExistencias."IdInsumo"];[fdsExistencias."FechaInventario"]'
          DataSet = fdsExistencias
          DataSetName = 'fdsExistencias'
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[fdsExistencias."Salida"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 544.252320000000100000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Existencia'
          DataSet = fdsExistencias
          DataSetName = 'fdsExistencias'
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -9
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '(<fdsExistencias."Inventario"> + <fdsExistencias."Entrada"> - <f' +
            'dsExistencias."Salida">) < 0'
          Memo.UTF8W = (
            '[fdsExistencias."Existencia"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 608.504330000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = fdsExistencias
          DataSetName = 'fdsExistencias'
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Color = 8421631
          Highlight.Condition = 
            '(<fdsExistencias."StockMinimo"> > 0) AND (<fdsExistencias."Stock' +
            'Minimo"> > <fdsExistencias."Existencia">)'
          Memo.UTF8W = (
            '[fdsExistencias."StockMinimo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 672.756340000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = fdsExistencias
          DataSetName = 'fdsExistencias'
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Color = 16777088
          Highlight.Condition = 
            '(<fdsExistencias."StockMaximo"> > 0) AND (<fdsExistencias."Exist' +
            'encia"> > <fdsExistencias."StockMaximo">)'
          Memo.UTF8W = (
            '[fdsExistencias."StockMaximo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 287.244280000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sNombre'
          DataSet = fdsExistencias
          DataSetName = 'fdsExistencias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsExistencias."sNombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 30.236240000000000000
        Top = 317.480520000000000000
        Width = 740.409927000000000000
        object Memo19: TfrxMemoView
          Left = 540.472790000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Total Insumos: [COUNT(MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 408.189240000000000000
        Width = 740.409927000000000000
        object Memo20: TfrxMemoView
          Left = 506.457020000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Hoja [Page#] de [TotalPages#]')
          ParentFont = False
        end
      end
    end
  end
  object cdLocExistencias: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 216
    Top = 104
    object cdLocExistenciasFechaInventario: TDateField
      FieldName = 'FechaInventario'
    end
    object cdLocExistenciasIdEmbarcacion: TIntegerField
      FieldName = 'IdEmbarcacion'
    end
    object cdLocExistenciasIdInsumo: TIntegerField
      FieldName = 'IdInsumo'
    end
    object cdLocExistenciasIdTipoInsumo: TIntegerField
      FieldName = 'IdTipoInsumo'
    end
    object cdLocExistenciasCodigoTipoInsumo: TStringField
      FieldName = 'CodigoTipoInsumo'
      Size = 200
    end
    object cdLocExistenciasNombreTipoInsumo: TStringField
      FieldName = 'NombreTipoInsumo'
      Size = 500
    end
    object cdLocExistenciasOrden: TIntegerField
      FieldName = 'Orden'
    end
    object cdLocExistenciasCodigoInsumo: TStringField
      FieldName = 'CodigoInsumo'
      Size = 200
    end
    object cdLocExistenciasNombreInsumo: TStringField
      FieldName = 'NombreInsumo'
      Size = 500
    end
    object cdLocExistenciasDescripcionInsumo: TStringField
      FieldName = 'DescripcionInsumo'
      Size = 500
    end
    object cdLocExistenciasiIdUnidad: TIntegerField
      FieldName = 'iIdUnidad'
    end
    object cdLocExistenciassNombre: TStringField
      FieldName = 'sNombre'
      Size = 100
    end
    object cdLocExistenciasInventario: TFloatField
      FieldName = 'Inventario'
    end
    object cdLocExistenciasEntrada: TFloatField
      FieldName = 'Entrada'
    end
    object cdLocExistenciasSalida: TFloatField
      FieldName = 'Salida'
    end
    object cdLocExistenciasExistencia: TFloatField
      FieldName = 'Existencia'
    end
    object cdLocExistenciasStockMinimo: TFloatField
      FieldName = 'StockMinimo'
    end
    object cdLocExistenciasStockMaximo: TFloatField
      FieldName = 'StockMaximo'
    end
    object cdLocExistenciasAplicacionStock: TDateField
      FieldName = 'AplicacionStock'
    end
  end
  object cdSalidaDetalle: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 456
    Top = 96
  end
  object frxDetalle: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = frxPreview1
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42390.510635960650000000
    ReportOptions.LastChange = 42390.538820925930000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 416
    Top = 240
    Datasets = <
      item
        DataSet = fdsDetalle
        DataSetName = 'fdsDetalle'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 216.000000000000000000
      PaperHeight = 279.000000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object GroupHeader1: TfrxGroupHeader
        Height = 41.574830000000000000
        Top = 18.897650000000000000
        Width = 740.787880000000000000
        Condition = 'fdsDetalle."IdInsumo"'
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Width = 733.228820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fdsDetalle
          DataSetName = 'fdsDetalle'
          Memo.UTF8W = (
            '[fdsDetalle."CodigoInsumo"] - [fdsDetalle."NombreInsumo"]')
        end
        object Memo8: TfrxMemoView
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 147.401670000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'digo Salida')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 151.181200000000000000
          Top = 26.456710000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            'Fecha Salida')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 257.008040000000000000
          Top = 26.456710000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Registro en Almac'#233'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 408.189240000000000000
          Top = 26.456710000000000000
          Width = 226.771800000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Cantidad Solicitada')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 83.149660000000000000
        Width = 740.787880000000000000
        DataSet = fdsDetalle
        DataSetName = 'fdsDetalle'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Width = 147.401670000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CodigoRegistroMovimiento'
          DataSet = fdsDetalle
          DataSetName = 'fdsDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[fdsDetalle."CodigoRegistroMovimiento"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 151.181200000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'Aplicacion'
          DataSet = fdsDetalle
          DataSetName = 'fdsDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[fdsDetalle."Aplicacion"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 257.008040000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fdsDetalle
          DataSetName = 'fdsDetalle'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsDetalle."Registrado"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 332.598640000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sNombre'
          DataSet = fdsDetalle
          DataSetName = 'fdsDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsDetalle."sNombre"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 408.189240000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fdsDetalle
          DataSetName = 'fdsDetalle'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsDetalle."Solicitado"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 483.779840000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'UMedida'
          DataSet = fdsDetalle
          DataSetName = 'fdsDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[fdsDetalle."UMedida"]')
          ParentFont = False
        end
      end
    end
  end
  object fdsDetalle: TfrxDBDataset
    UserName = 'fdsDetalle'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdRegistroMovimiento=IdRegistroMovimiento'
      'CodigoRegistroMovimiento=CodigoRegistroMovimiento'
      'Referencia=Referencia'
      'Aplicacion=Aplicacion'
      'TipoMovimiento=TipoMovimiento'
      'IdInsumo=IdInsumo'
      'CodigoInsumo=CodigoInsumo'
      'NombreInsumo=NombreInsumo'
      'iIdUnidad=iIdUnidad'
      'sNombre=sNombre'
      'Solicitado=Solicitado'
      'Registrado=Registrado'
      'UMedida=UMedida')
    DataSet = cdSalidaDetalle
    BCDToCurrency = False
    Left = 480
    Top = 240
  end
  object cdUltimoInventario: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 200
  end
end
