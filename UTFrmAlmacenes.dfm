inherited FrmAlmacenes: TFrmAlmacenes
  Caption = 'Cat'#225'logo de Almacenes'
  ExplicitWidth = 989
  ExplicitHeight = 523
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TcxGroupBox
    inherited GroupBoxFiltro: TcxGroupBox
      object JvLabel1: TJvLabel [0]
        Left = 11
        Top = 21
        Width = 97
        Height = 13
        Caption = 'C'#243'digo de Almac'#233'n:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      inherited BtnSearch: TcxButton
        OnClick = BtnSearchClick
      end
      object FCodigoAlmacen: TEdit
        Left = 31
        Top = 40
        Width = 121
        Height = 21
        TabOrder = 1
        OnKeyPress = FCodigoAlmacenKeyPress
      end
    end
  end
  inherited PanelPrincipal: TPanel
    inherited CxGridDatos: TcxGrid
      inherited CxDbGridDatos: TcxGridDBTableView
        object ColCodigoAlmacen: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CodigoAlmacen'
        end
        object ColNombreAlmacen: TcxGridDBColumn
          Caption = 'Nombre'
          DataBinding.FieldName = 'lNombreAlmacen'
        end
        object ColTituloCiudad: TcxGridDBColumn
          Caption = 'Ciudad'
          DataBinding.FieldName = 'TituloCiudad'
        end
        object ColTituloEstado: TcxGridDBColumn
          Caption = 'Estado'
          DataBinding.FieldName = 'TituloEstado'
        end
        object ColTituloPais: TcxGridDBColumn
          Caption = 'Pa'#237's'
          DataBinding.FieldName = 'TituloPais'
        end
      end
    end
  end
  inherited dsDatos: TDataSource
    Left = 320
    Top = 72
  end
  inherited DxBManagerMain: TdxBarManager
    DockControlHeights = (
      72
      0
      0
      0)
  end
  inherited dxSkinController1: TdxSkinController
    Left = 408
    Top = 64
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
  end
  inherited CxStyle2: TcxStyleRepository
    PixelsPerInch = 96
  end
  object frxReporteAlmacenes: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40938.823710208300000000
    ReportOptions.LastChange = 42116.835634803200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnReportPrint = 'no '
    Left = 320
    Top = 296
    Datasets = <
      item
      end
      item
      end
      item
        DataSetName = 'ReporteTipoNomina'
      end
      item
        DataSetName = 'ReporteVacaciones'
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
      object PageFooter1: TfrxPageFooter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 37.795300000000000000
        ParentFont = False
        Top = 453.543600000000000000
        Width = 740.409927000000000000
        object Memo12: TfrxMemoView
          Left = 514.016080000000000000
          Top = 7.559059999999931000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina: [Page#] de [TotalPages#]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 37.795287800000000000
        Top = 245.669450000000000000
        Width = 740.409927000000000000
        ReprintOnNewPage = True
        object Memo6: TfrxMemoView
          Left = 230.551330000000000000
          Top = 18.897650000000030000
          Width = 158.740260000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'A'#241'os:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 389.291370310000000000
          Top = 18.897650000000030000
          Width = 147.401606540000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'D'#237'as:')
          ParentFont = False
          VAlign = vaCenter
        end
        object ReporteTipoNominaTitulo: TfrxMemoView
          Left = 230.551330000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSkyBlue
          DataSetName = 'ReporteTipoNomina'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Tipo de N'#243'mina: [ReporteTipoNomina."Titulo"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 328.819110000000000000
        Width = 740.409927000000000000
        DataSetName = 'ReporteVacaciones'
        RowCount = 0
        object ReporteVacacionesAnios: TfrxMemoView
          Left = 230.551330000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Anios'
          DataSetName = 'ReporteVacaciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteVacaciones."Anios"]')
          ParentFont = False
        end
        object ReporteVacacionesDias: TfrxMemoView
          Left = 389.291590000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Dias'
          DataSetName = 'ReporteVacaciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteVacaciones."Dias"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Top = 306.141930000000000000
        Width = 740.409927000000000000
        Condition = 'ReporteVacaciones."IdTiponomina"'
      end
      object PageHeader1: TfrxPageHeader
        Height = 166.299320000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 158.740260000000000000
          Top = 60.472480000000000000
          Width = 570.709030000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cat'#225'logo de D'#237'as de Vacaciones.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 154.960730000000000000
          Top = 139.181200000000000000
          Width = 570.709030000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fecha: [FormatDateTime('#39'mmmm dd, yyyy'#39',Date)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Left = 22.677180000000000000
          Width = 128.504020000000000000
          Height = 124.724490000000000000
          ShowHint = False
          DataField = 'imagen1'
          KeepAspectRatio = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object ReporteOrganizacionReporteOrganizacion: TfrxMemoView
          Left = 158.740260000000000000
          Width = 570.709030000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -16
          Font.Name = 'times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteOrganizacion."TituloOrganizacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ReporteOrganizacionReporteOrganizacion1: TfrxMemoView
          Left = 22.677180000000000000
          Top = 128.504020000000000000
          Width = 128.504020000000000000
          Height = 34.015770000000010000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -8
          Font.Name = 'times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteOrganizacion."NombreOrganizacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 370.393940000000000000
        Width = 740.409927000000000000
        object Shape1: TfrxShapeView
          Left = 230.551330000000000000
          Width = 306.141930000000000000
          Height = 3.779530000000000000
          ShowHint = False
          Color = clSkyBlue
          Frame.Width = 0.100000000000000000
        end
      end
    end
  end
  object frxAlmacenes: TfrxDBDataset
    UserName = 'ReporteCiudades'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idciudad=idciudad'
      'codigociudad=codigociudad'
      'titulociudad=titulociudad'
      'descripcion=descripcion'
      'codigoestado=codigoestado'
      'tituloestado=tituloestado'
      'codigopais=codigopais'
      'titulopais=titulopais')
    DataSource = dsDatos
    BCDToCurrency = False
    Left = 320
    Top = 216
  end
  object cdCiudad: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 568
    Top = 216
  end
  object cdEstado: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 648
    Top = 216
  end
  object cdPais: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 736
    Top = 216
  end
end
