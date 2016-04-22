object FrmCotizacion: TFrmCotizacion
  Left = 0
  Top = 0
  Caption = 'Cotizaci'#243'n'
  ClientHeight = 398
  ClientWidth = 653
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  ShowHint = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 653
    Height = 41
    Align = alTop
    TabOrder = 0
    object JvLabel1: TJvLabel
      Left = 8
      Top = 11
      Width = 93
      Height = 19
      Caption = 'Cotizaci'#243'n:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -16
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object CodigoCotizacion: TEdit
      Left = 107
      Top = 6
      Width = 358
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object btnBuscar: TAdvGlowButton
      Left = 471
      Top = 6
      Width = 26
      Height = 27
      Hint = 'Haga click aqu'#237' para buscar Cotizaci'#243'n'
      ImageIndex = 20
      Images = ClientModule1.PngImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = btnBuscarClick
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
    object btnNuevo: TAdvGlowButton
      Left = 498
      Top = 6
      Width = 26
      Height = 27
      Hint = 'Haga click aqu'#237' para agregar una nueva Cotizaci'#243'n'
      ImageIndex = 0
      Images = ClientModule1.PngImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      OnClick = btnNuevoClick
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
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 653
    Height = 357
    Align = alClient
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 1
      Top = 188
      Width = 651
      Height = 3
      Cursor = crVSplit
      Align = alTop
      ExplicitTop = 129
      ExplicitWidth = 227
    end
    object pnlGenerales: TPanel
      Left = 1
      Top = 1
      Width = 651
      Height = 128
      Align = alTop
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 649
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object JvLabel2: TJvLabel
          Left = 16
          Top = 5
          Width = 39
          Height = 13
          Caption = 'Cliente:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object NombreCliente: TDBText
          Left = 61
          Top = 5
          Width = 83
          Height = 13
          AutoSize = True
          DataField = 'NombreCliente'
          DataSource = dsCotizacionUpt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Panel4: TPanel
        Left = 1
        Top = 26
        Width = 649
        Height = 54
        Align = alClient
        BevelOuter = bvNone
        Enabled = False
        Padding.Right = 6
        TabOrder = 1
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 65
          Height = 54
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
        end
        object DomicilioCliente: TDBMemo
          Left = 65
          Top = 0
          Width = 578
          Height = 54
          TabStop = False
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          DataField = 'DomicilioCliente'
          DataSource = dsCotizacionUpt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
      end
      object Panel6: TPanel
        Left = 1
        Top = 80
        Width = 649
        Height = 47
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object JvLabel3: TJvLabel
          Left = 20
          Top = 6
          Width = 35
          Height = 13
          Caption = 'Fecha:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object Fecha: TDBText
          Left = 61
          Top = 6
          Width = 33
          Height = 13
          AutoSize = True
          DataField = 'Fecha'
          DataSource = dsCotizacionUpt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object pnlFirmas: TPanel
          Left = 0
          Top = 24
          Width = 649
          Height = 23
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          OnResize = pnlFirmasResize
          object pnlElabora: TPanel
            Left = 0
            Top = 0
            Width = 249
            Height = 23
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object JvLabel4: TJvLabel
              Left = 13
              Top = 2
              Width = 42
              Height = 13
              Caption = 'Elabora:'
              Transparent = True
              HotTrackFont.Charset = DEFAULT_CHARSET
              HotTrackFont.Color = clWindowText
              HotTrackFont.Height = -11
              HotTrackFont.Name = 'Tahoma'
              HotTrackFont.Style = []
            end
            object NombreElabora: TDBText
              Left = 61
              Top = 2
              Width = 86
              Height = 13
              AutoSize = True
              DataField = 'NombreElabora'
              DataSource = dsCotizacionUpt
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object Panel9: TPanel
            Left = 249
            Top = 0
            Width = 400
            Height = 23
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object NombreAutoriza: TDBText
              Left = 58
              Top = 2
              Width = 92
              Height = 13
              AutoSize = True
              DataField = 'NombreAutoriza'
              DataSource = dsCotizacionUpt
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object JvLabel5: TJvLabel
              Left = 6
              Top = 2
              Width = 46
              Height = 13
              Caption = 'Autoriza:'
              Transparent = True
              HotTrackFont.Charset = DEFAULT_CHARSET
              HotTrackFont.Color = clWindowText
              HotTrackFont.Height = -11
              HotTrackFont.Name = 'Tahoma'
              HotTrackFont.Style = []
            end
          end
        end
      end
    end
    object pnlPartidas: TPanel
      Left = 1
      Top = 191
      Width = 651
      Height = 165
      Align = alClient
      TabOrder = 1
      object Panel7: TPanel
        Left = 1
        Top = 123
        Width = 649
        Height = 41
        Align = alBottom
        Padding.Left = 6
        Padding.Top = 4
        Padding.Right = 6
        Padding.Bottom = 4
        TabOrder = 0
        object bntAceptar: TAdvGlowButton
          Left = 542
          Top = 5
          Width = 100
          Height = 31
          Align = alRight
          Caption = '&Aceptar'
          ImageIndex = 1
          Images = ClientModule1.PngImageList1
          ModalResult = 1
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 0
          OnClick = bntAceptarClick
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
        object btnImprimir: TAdvGlowButton
          Left = 7
          Top = 5
          Width = 100
          Height = 31
          Align = alLeft
          Caption = '&Imprimir'
          ImageIndex = 1
          Images = ClientModule1.PngImageList1
          ModalResult = 1
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 1
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
      object gridPartidas: TcxGrid
        Left = 1
        Top = 1
        Width = 649
        Height = 122
        Align = alClient
        TabOrder = 1
        object tvDatos: TcxGridDBTableView
          PopupMenu = pmPartidas
          OnKeyDown = tvDatosKeyDown
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = tvDatosCellDblClick
          DataController.DataSource = dsCotizacionDatos
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          object ColCodigoInsumo: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CodigoInsumo'
          end
          object ColNombreInsumo: TcxGridDBColumn
            Caption = 'Nombre'
            DataBinding.FieldName = 'NombreInsumo'
          end
          object ColCantidad: TcxGridDBColumn
            DataBinding.FieldName = 'Cantidad'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
          end
          object ColTituloPresentacion: TcxGridDBColumn
            Caption = 'Presentaci'#243'n'
            DataBinding.FieldName = 'TituloPresentacion'
          end
          object ColTituloMarca: TcxGridDBColumn
            Caption = 'Marca'
            DataBinding.FieldName = 'TituloMarca'
          end
          object ColPrecio: TcxGridDBColumn
            DataBinding.FieldName = 'Precio'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
          end
          object ColCostoI: TcxGridDBColumn
            Caption = 'Costo Inicial'
            DataBinding.FieldName = 'CostoI'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
          end
          object ColpUtilidad: TcxGridDBColumn
            Caption = '% Utilidad'
            DataBinding.FieldName = 'pUtilidad'
          end
          object ColUtilidad: TcxGridDBColumn
            DataBinding.FieldName = 'Utilidad'
          end
          object ColPrecioU: TcxGridDBColumn
            Caption = 'Precio Unitario'
            DataBinding.FieldName = 'PrecioU'
          end
          object ColCosto: TcxGridDBColumn
            DataBinding.FieldName = 'Costo'
          end
        end
        object gridPartidasLevel1: TcxGridLevel
          GridView = tvDatos
        end
      end
    end
    object Panel8: TPanel
      Left = 1
      Top = 129
      Width = 651
      Height = 59
      Align = alTop
      BevelOuter = bvNone
      Padding.Top = 10
      Padding.Right = 6
      TabOrder = 2
      object IdInsumo: TEdit
        Left = 56
        Top = 10
        Width = 589
        Height = 21
        Align = alClient
        TabOrder = 0
        OnEnter = IdInsumoEnter
        OnExit = IdInsumoExit
        OnKeyPress = IdInsumoKeyPress
      end
      object Panel10: TPanel
        Left = 0
        Top = 10
        Width = 56
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object JvLabel6: TJvLabel
          Left = 12
          Top = 0
          Width = 41
          Height = 13
          Caption = 'Insumo:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
      end
      object Panel11: TPanel
        Left = 0
        Top = 31
        Width = 645
        Height = 28
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object NombreInsumo: TDBText
          Left = 202
          Top = 6
          Width = 87
          Height = 13
          AutoSize = True
          DataField = 'NombreInsumo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CodigoInsumo: TDBText
          Left = 57
          Top = 6
          Width = 81
          Height = 13
          AutoSize = True
          DataField = 'CodigoInsumo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblGuion: TJvLabel
          Left = 144
          Top = 4
          Width = 9
          Height = 19
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -16
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
      end
    end
  end
  object cdBuscarCotizacion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 376
    Top = 48
  end
  object cdCotizacionUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 184
    Top = 120
  end
  object cdClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 456
    Top = 48
  end
  object cdElabora: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 256
    Top = 264
  end
  object cdAutoriza: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 384
    Top = 264
  end
  object dsCotizacionUpt: TDataSource
    DataSet = cdCotizacionUpt
    Left = 184
    Top = 72
  end
  object cdCotizacionDatosUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 312
  end
  object dsCotizacionDatos: TDataSource
    DataSet = cdCotizacionDatos
    Left = 56
    Top = 264
  end
  object dsInsumo: TDataSource
    DataSet = cdInsumo
    Left = 592
    Top = 56
  end
  object cdInsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 592
    Top = 120
  end
  object cdMarca: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 104
  end
  object cdPresentacion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 424
    Top = 104
  end
  object cdExistenciasGenerales: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 304
    Top = 304
  end
  object pmPartidas: TAdvPopupMenu
    OnPopup = pmPartidasPopup
    Version = '2.5.3.4'
    Left = 416
    Top = 184
    object EditarPartida1: TMenuItem
      Caption = 'Editar Partida'
      OnClick = EditarPartida1Click
    end
    object EliminarPartida1: TMenuItem
      Caption = 'Eliminar Partida'
      OnClick = EliminarPartida1Click
    end
  end
  object repCotizacion: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42394.546894826400000000
    ReportOptions.LastChange = 42480.495113472220000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = repCotizacionGetValue
    Left = 552
    Top = 184
    Datasets = <
      item
        DataSet = ClientModule1.fdsOrganizacion
        DataSetName = 'fdsOrganizacion'
      end
      item
        DataSet = frxCotizacionDatos
        DataSetName = 'frxCotizacionDatos'
      end
      item
        DataSet = frxImpuestos
        DataSetName = 'frxImpuestos'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader2: TfrxPageHeader
        Height = 139.842610000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo47: TfrxMemoView
          Width = 740.787489450000000000
          Height = 109.606370000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Picture2: TfrxPictureView
          Left = 3.779530000000000000
          Top = 3.779530000000001000
          Width = 113.385900000000000000
          Height = 86.929190000000000000
          ShowHint = False
          DataField = 'Imagen'
          DataSet = ClientModule1.fdsOrganizacion
          DataSetName = 'fdsOrganizacion'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo48: TfrxMemoView
          Left = 128.504020000000000000
          Top = 7.559059999999999000
          Width = 608.503939450000000000
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
        object Memo49: TfrxMemoView
          Left = 128.504020000000000000
          Top = 26.456710000000000000
          Width = 608.503939450000000000
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
        object Memo50: TfrxMemoView
          Left = 128.504020000000000000
          Top = 64.252010000000000000
          Width = 608.503939450000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'COTIZACION')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 3.779530000000000000
          Top = 90.708720000000000000
          Width = 113.385900000000000000
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
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 15.118120000000000000
        Top = 219.212740000000000000
        Width = 740.409927000000000000
        Condition = 'frxCotizacionDatos."IdCotizacion"'
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Width = 86.929190000000010000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 90.708720000000000000
          Width = 219.212740000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            'Insumo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 309.921460000000000000
          Width = 113.385826770000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            'Marca')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 423.307360000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 15000804
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            'Cantidad')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 487.559370000000000000
          Width = 113.385826770000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            'Presentaci'#243'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 600.945270000000100000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 15000804
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            'Precio')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 665.197280000000000000
          Width = 71.811023620000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            'Costo')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 11.338590000000000000
        Top = 257.008040000000000000
        Width = 740.409927000000000000
        DataSet = frxCotizacionDatos
        DataSetName = 'frxCotizacionDatos'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Width = 86.929190000000010000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'CodigoInsumo'
          DataSet = frxCotizacionDatos
          DataSetName = 'frxCotizacionDatos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            '[frxCotizacionDatos."CodigoInsumo"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 90.708720000000000000
          Width = 219.212740000000000000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NombreInsumo'
          DataSet = frxCotizacionDatos
          DataSetName = 'frxCotizacionDatos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            '[frxCotizacionDatos."NombreInsumo"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 423.307360000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Cantidad'
          DataSet = frxCotizacionDatos
          DataSetName = 'frxCotizacionDatos'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxCotizacionDatos."Cantidad"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 487.559370000000000000
          Width = 113.385826770000000000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'TituloPresentacion'
          DataSet = frxCotizacionDatos
          DataSetName = 'frxCotizacionDatos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            '[frxCotizacionDatos."TituloPresentacion"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 309.921460000000000000
          Width = 113.385900000000000000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'TituloMarca'
          DataSet = frxCotizacionDatos
          DataSetName = 'frxCotizacionDatos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            '[frxCotizacionDatos."TituloMarca"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 600.945270000000100000
          Width = 64.251968500000000000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'PrecioU'
          DataSet = frxCotizacionDatos
          DataSetName = 'frxCotizacionDatos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxCotizacionDatos."PrecioU"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 665.197280000000000000
          Width = 71.811023620000000000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Costo'
          DataSet = frxCotizacionDatos
          DataSetName = 'frxCotizacionDatos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxCotizacionDatos."Costo"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 11.338590000000000000
        Top = 393.071120000000000000
        Width = 740.409927000000000000
        DataSet = frxImpuestos
        DataSetName = 'frxImpuestos'
        RowCount = 0
        Stretched = True
        object Memo15: TfrxMemoView
          Left = 15.118120000000000000
          Width = 627.401980000000000000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[frxImpuestos."TituloImpuesto"], Art'#237'culos ([frxImpuestos."Cta"]' +
              '), impuesto del [frxImpuestos."LeyendaImpuesto"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 642.520100000000000000
          Width = 94.488249999999990000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxImpuestos."Impuesto"] ')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 23.811023622047240000
        Top = 347.716760000000000000
        Width = 740.409927000000000000
        Condition = 'frxImpuestos."IdCotizacion"'
        object Memo16: TfrxMemoView
          Left = 3.779530000000000000
          Top = 11.338590000000010000
          Width = 733.228820000000000000
          Height = 12.472440940000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Impuestos')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 34.015770000000000000
        Top = 291.023810000000000000
        Width = 740.409927000000000000
        object Memo19: TfrxMemoView
          Left = 619.842920000000000000
          Top = 11.338590000000010000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sub-Total:  ')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 3.779530000000000000
          Width = 733.228820000000000000
          Height = 7.559060000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 665.197280000000000000
          Top = 11.338590000000010000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxCotizacionDatos."Costo">,MasterData1)] ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 26.456710000000000000
        Top = 427.086890000000000000
        Width = 740.409927000000000000
        Child = repCotizacion.Child1
        object Memo21: TfrxMemoView
          Left = 634.961040000000000000
          Top = 7.559059999999988000
          Width = 102.047310000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxCotizacionDatos."Costo">,MasterData1) + SUM(<frxImpuest' +
              'os."Impuesto">,MasterData2)] ')
          ParentFont = False
        end
      end
      object Child1: TfrxChild
        Height = 15.118120000000000000
        Top = 476.220780000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Memo23: TfrxMemoView
          Left = 3.779530000000000000
          Width = 438.425480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 7.559060000000000000
          Width = 430.866420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '( [NumeroALetras] )')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxCotizacionDatos: TfrxDBDataset
    UserName = 'frxCotizacionDatos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdCotizacionDatos=IdCotizacionDatos'
      'IdCotizacion=IdCotizacion'
      'IdInsumo=IdInsumo'
      'CodigoInsumo=CodigoInsumo'
      'NombreInsumo=NombreInsumo'
      'Cantidad=Cantidad'
      'iIdUnidad=iIdUnidad'
      'sNombre=sNombre'
      'Precio=Precio'
      'PrecioU=PrecioU'
      'pUtilidad=pUtilidad'
      'Utilidad=Utilidad'
      'CostoI=CostoI'
      'Costo=Costo'
      'IdMarca=IdMarca'
      'TituloMarca=TituloMarca'
      'IdPresentacion=IdPresentacion'
      'TituloPresentacion=TituloPresentacion')
    DataSet = cdCotizacionDatos
    BCDToCurrency = False
    Left = 176
    Top = 312
  end
  object cdImpuestosxCotizacion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 392
    Top = 336
  end
  object frxImpuestos: TfrxDBDataset
    UserName = 'frxImpuestos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdCotizacionDatos=IdCotizacionDatos'
      'IdCotizacion=IdCotizacion'
      'IdInsumo=IdInsumo'
      'IdTipoInsumo=IdTipoInsumo'
      'CodigoImpuesto=CodigoImpuesto'
      'TituloImpuesto=TituloImpuesto'
      'IdTipoImpuesto=IdTipoImpuesto'
      'CodigoTipoImpuesto=CodigoTipoImpuesto'
      'TituloTipoImpuesto=TituloTipoImpuesto'
      'Costo=Costo'
      'Importe=Importe'
      'Impuesto=Impuesto'
      'Cta=Cta'
      'LeyendaImpuesto=LeyendaImpuesto')
    DataSet = cdImpuestosxCotizacion
    BCDToCurrency = False
    Left = 496
    Top = 336
  end
  object cdCotizacionDatos: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = cdCotizacionDatosAfterOpen
    Left = 136
    Top = 224
  end
  object cdVerificaCotizacion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 208
  end
end
