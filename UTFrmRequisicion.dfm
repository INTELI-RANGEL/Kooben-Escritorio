object FrmRequisicion: TFrmRequisicion
  Left = 0
  Top = 0
  Caption = 'Requisici'#243'n'
  ClientHeight = 423
  ClientWidth = 759
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 759
    Height = 41
    Align = alTop
    TabOrder = 0
    object JvLabel1: TJvLabel
      Left = 8
      Top = 11
      Width = 101
      Height = 19
      Caption = 'Requisici'#243'n:'
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
      Left = 115
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
      Left = 477
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
      Left = 504
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
    object btnEncabezado: TAdvGlowButton
      Left = 543
      Top = 6
      Width = 107
      Height = 27
      Caption = '&Encabezado'
      ImageIndex = 41
      Images = ClientModule1.ImagelistMenu
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
      OnClick = btnEncabezadoClick
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
      Enabled = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 759
    Height = 382
    Align = alClient
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 1
      Top = 228
      Width = 757
      Height = 3
      Cursor = crVSplit
      Align = alTop
      ExplicitTop = 129
      ExplicitWidth = 227
    end
    object pnlGenerales: TPanel
      Left = 1
      Top = 1
      Width = 757
      Height = 168
      Align = alTop
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 755
        Height = 88
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
        object Folio: TDBText
          Left = 61
          Top = 5
          Width = 26
          Height = 13
          AutoSize = True
          DataField = 'Folio'
          DataSource = dsRequisicion
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object JvLabel3: TJvLabel
          Left = 20
          Top = 24
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
          Top = 24
          Width = 33
          Height = 13
          AutoSize = True
          DataField = 'Fecha'
          DataSource = dsRequisicion
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object JvLabel7: TJvLabel
          Left = 4
          Top = 43
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
        object JvLabel8: TJvLabel
          Left = 9
          Top = 62
          Width = 46
          Height = 13
          Caption = 'Almac'#233'n:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object NombreEmbarcacion: TDBText
          Left = 61
          Top = 43
          Width = 116
          Height = 13
          AutoSize = True
          DataField = 'NombreEmbarcacion'
          DataSource = dsRequisicion
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object NombreAlmacen: TDBText
          Left = 61
          Top = 62
          Width = 93
          Height = 13
          AutoSize = True
          DataField = 'NombreAlmacen'
          DataSource = dsRequisicion
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
        Top = 89
        Width = 755
        Height = 47
        Align = alClient
        BevelOuter = bvNone
        Enabled = False
        Padding.Right = 6
        TabOrder = 1
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 87
          Height = 47
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object JvLabel6: TJvLabel
            Left = 6
            Top = 6
            Width = 66
            Height = 13
            Caption = 'Comentarios:'
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
        end
        object Comentarios: TDBMemo
          Left = 87
          Top = 0
          Width = 662
          Height = 47
          Align = alClient
          DataField = 'Comentarios'
          DataSource = dsRequisicion
          TabOrder = 1
        end
      end
      object Panel6: TPanel
        Left = 1
        Top = 136
        Width = 755
        Height = 31
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object pnlFirmas: TPanel
          Left = 0
          Top = 8
          Width = 755
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
            object NombreSolicita: TDBText
              Left = 61
              Top = 2
              Width = 85
              Height = 13
              AutoSize = True
              DataField = 'NombreSolicita'
              DataSource = dsRequisicion
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
            Width = 506
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
              DataSource = dsRequisicion
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
      Top = 231
      Width = 757
      Height = 150
      Align = alClient
      TabOrder = 1
      object Panel7: TPanel
        Left = 1
        Top = 108
        Width = 755
        Height = 41
        Align = alBottom
        Padding.Left = 6
        Padding.Top = 4
        Padding.Right = 6
        Padding.Bottom = 4
        TabOrder = 0
        object btnCancelar: TAdvGlowButton
          Left = 648
          Top = 5
          Width = 100
          Height = 31
          Align = alRight
          Cancel = True
          Caption = '&Cancelar'
          ImageIndex = 8
          Images = ClientModule1.PngImageList1
          ModalResult = 2
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 0
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
        object bntAceptar: TAdvGlowButton
          Left = 548
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
        object btnImprimir: TAdvGlowButton
          Left = 7
          Top = 5
          Width = 100
          Height = 31
          Align = alLeft
          Caption = 'Imprimir'
          ImageIndex = 24
          Images = ClientModule1.PngImageList1
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 2
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
      object cxGrid1: TcxGrid
        Left = 1
        Top = 1
        Width = 755
        Height = 107
        Align = alClient
        TabOrder = 1
        object tvDatos: TcxGridDBTableView
          PopupMenu = pmPartidas
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = tvDatosCellDblClick
          DataController.DataSource = dsRequisicionDatos
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsView.GroupByBox = False
          object ColCodigoInsumo: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CodigoInsumo'
          end
          object ColNombreInsumo: TcxGridDBColumn
            Caption = 'Insumo'
            DataBinding.FieldName = 'NombreInsumo'
          end
          object ColsNombre: TcxGridDBColumn
            Caption = 'U.M.'
            DataBinding.FieldName = 'sNombre'
          end
          object ColhTituloMarca: TcxGridDBColumn
            Caption = 'Marca'
            DataBinding.FieldName = 'TituloMarca'
          end
          object ColCantidad: TcxGridDBColumn
            DataBinding.FieldName = 'Cantidad'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
          end
          object ColhTituloPresentacion: TcxGridDBColumn
            Caption = 'Presentaci'#243'n'
            DataBinding.FieldName = 'TituloPresentacion'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = tvDatos
        end
      end
    end
    object Panel8: TPanel
      Left = 1
      Top = 169
      Width = 757
      Height = 59
      Align = alTop
      BevelOuter = bvNone
      Padding.Top = 10
      Padding.Right = 6
      TabOrder = 2
      object IdInsumo: TEdit
        Left = 56
        Top = 10
        Width = 695
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
        object JvLabel9: TJvLabel
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
        Width = 751
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
          DataSource = dsRequisicionDatos
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
          DataSource = dsRequisicionDatos
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
  object dsRequisicionDatos: TDataSource
    DataSet = cdRequisicionDatos
    Left = 48
    Top = 128
  end
  object cdRequisicionDatosUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 264
  end
  object dsRequisicion: TDataSource
    DataSet = cdRequisicion
    Left = 488
    Top = 184
  end
  object cdRequisicionUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 184
    Top = 192
  end
  object cdSolicita: TClientDataSet
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
  object cdBuscarRequisicion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 272
    Top = 176
  end
  object cdEmbarcacion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 536
    Top = 128
  end
  object cdAlmacen: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 632
    Top = 128
  end
  object cdRequisicion: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = cdRequisicionAfterOpen
    AfterClose = cdRequisicionAfterClose
    Left = 488
    Top = 232
  end
  object pmPartidas: TAdvPopupMenu
    Version = '2.5.3.4'
    Left = 376
    Top = 80
    object EditarPartida1: TMenuItem
      Caption = 'Editar Partida'
      OnClick = EditarPartida1Click
    end
    object EliminarPartida1: TMenuItem
      Caption = 'Eliminar Partida'
      OnClick = EliminarPartida1Click
    end
  end
  object cdRequisicionDatos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 96
    Top = 184
  end
  object cdInsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 272
    Top = 80
  end
  object cdMarca: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 128
  end
  object cdPresentacion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 400
    Top = 128
  end
  object cdVerificaRequisicion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 536
    Top = 64
  end
  object dsInsumo: TDataSource
    DataSet = cdInsumo
    Left = 272
    Top = 32
  end
  object RepRequisicion: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42307.250641423600000000
    ReportOptions.LastChange = 42490.477126192130000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 488
    Top = 296
    Datasets = <
      item
        DataSet = ClientModule1.fdsOrganizacion
        DataSetName = 'fdsOrganizacion'
      end
      item
        DataSet = fdsRequisicion
        DataSetName = 'fdsRequisicion'
      end
      item
        DataSet = fdsRequisicionDatos
        DataSetName = 'fdsRequisicionDatos'
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
        Height = 128.504020000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo23: TfrxMemoView
          Width = 740.787880000000000000
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
        object Picture1: TfrxPictureView
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
        object Memo1: TfrxMemoView
          Left = 128.504020000000000000
          Top = 7.559059999999999000
          Width = 608.504330000000000000
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
          Left = 128.504020000000000000
          Top = 26.456710000000000000
          Width = 608.504330000000000000
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
          Left = 128.504020000000000000
          Top = 56.692949999999990000
          Width = 608.504330000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'REQUISICION')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
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
        object Memo7: TfrxMemoView
          Left = 128.504020000000000000
          Top = 75.590600000000000000
          Width = 608.504330000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsRequisicion."Folio"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 18.897650000000000000
        Top = 207.874150000000000000
        Width = 740.409927000000000000
        Condition = 'fdsRequisicionDatos."IdRequisicion"'
        ReprintOnNewPage = True
        object Memo11: TfrxMemoView
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 98.267780000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15000804
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
          Left = 393.071120000000000000
          Width = 68.031540000000010000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Cantidad ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 461.102660000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            'Presentaci'#243'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 600.945270000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Marca')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 11.338590000000000000
        Top = 249.448980000000000000
        Width = 740.409927000000000000
        DataSet = fdsRequisicionDatos
        DataSetName = 'fdsRequisicionDatos'
        RowCount = 0
        Stretched = True
        object Memo5: TfrxMemoView
          Width = 98.267780000000000000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'CodigoInsumo'
          DataSet = fdsRequisicionDatos
          DataSetName = 'fdsRequisicionDatos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsRequisicionDatos."CodigoInsumo"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 98.267780000000000000
          Width = 294.803340000000000000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NombreInsumo'
          DataSet = fdsRequisicionDatos
          DataSetName = 'fdsRequisicionDatos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[fdsRequisicionDatos."NombreInsumo"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 393.071120000000000000
          Width = 68.031540000000010000
          Height = 11.338590000000000000
          ShowHint = False
          DataSet = fdsRequisicionDatos
          DataSetName = 'fdsRequisicionDatos'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsRequisicionDatos."Cantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 461.102660000000000000
          Width = 139.842519690000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'TituloPresentacion'
          DataSet = fdsRequisicionDatos
          DataSetName = 'fdsRequisicionDatos'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[fdsRequisicionDatos."TituloPresentacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 600.945270000000000000
          Width = 139.842531890000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'TituloMarca'
          DataSet = fdsRequisicionDatos
          DataSetName = 'fdsRequisicionDatos'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[fdsRequisicionDatos."TituloMarca"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 30.236240000000000000
        Top = 283.464750000000000000
        Width = 740.409927000000000000
        object Memo16: TfrxMemoView
          Left = 646.299630000000000000
          Top = 15.118119999999980000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 532.913730000000000000
          Top = 15.118119999999980000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%g'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            'N'#250'mero de partidas:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 86.929190000000000000
        Top = 374.173470000000000000
        Width = 740.409927000000000000
        object Memo18: TfrxMemoView
          Top = 11.338590000000010000
          Width = 370.393700787401500000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SOLICITA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 370.393940000000000000
          Top = 11.338590000000010000
          Width = 370.393700790000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'AUTORIZA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Top = 68.031540000000010000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsRequisicion."NombreSolicita"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 370.393940000000000000
          Top = 68.031540000000010000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsRequisicion."NombreAutoriza"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 7.559060000000000000
          Top = 49.133890000000010000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 377.953000000000000000
          Top = 49.133890000000010000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object fdsRequisicion: TfrxDBDataset
    UserName = 'fdsRequisicion'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdRequisicion=IdRequisicion'
      'Folio=Folio'
      'Fecha=Fecha'
      'IdSolicita=IdSolicita'
      'NombreSolicita=NombreSolicita'
      'IdAutoriza=IdAutoriza'
      'NombreAutoriza=NombreAutoriza'
      'IdEmbarcacion=IdEmbarcacion'
      'CodigoEmbarcacion=CodigoEmbarcacion'
      'NombreEmbarcacion=NombreEmbarcacion'
      'IdAlmacen=IdAlmacen'
      'CodigoAlmacen=CodigoAlmacen'
      'NombreAlmacen=NombreAlmacen'
      'Comentarios=Comentarios'
      'Estado=Estado')
    DataSet = cdRequisicion
    BCDToCurrency = False
    Left = 312
    Top = 344
  end
  object fdsRequisicionDatos: TfrxDBDataset
    UserName = 'fdsRequisicionDatos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdRequisicionDatos=IdRequisicionDatos'
      'IdRequisicion=IdRequisicion'
      'IdInsumo=IdInsumo'
      'CodigoInsumo=CodigoInsumo'
      'NombreInsumo=NombreInsumo'
      'Cantidad=Cantidad'
      'iIdUnidad=iIdUnidad'
      'sNombre=sNombre'
      'Surtido=Surtido'
      'IdPresentacion=IdPresentacion'
      'CodigoPresentacion=CodigoPresentacion'
      'TituloPresentacion=TituloPresentacion'
      'IdMarca=IdMarca'
      'CodigoMarca=CodigoMarca'
      'TituloMarca=TituloMarca')
    DataSet = cdRequisicionDatos
    BCDToCurrency = False
    Left = 408
    Top = 352
  end
end
