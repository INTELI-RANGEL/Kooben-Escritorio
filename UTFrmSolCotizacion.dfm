object FrmSolCotizacion: TFrmSolCotizacion
  Left = 0
  Top = 0
  Caption = 'Solicitud de Cotizaci'#243'n'
  ClientHeight = 431
  ClientWidth = 809
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
    Width = 809
    Height = 41
    Align = alTop
    TabOrder = 0
    object JvLabel1: TJvLabel
      Left = 8
      Top = 8
      Width = 78
      Height = 19
      Caption = 'Solicitud:'
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
      Left = 92
      Top = 6
      Width = 379
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
    Width = 809
    Height = 390
    Align = alClient
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 1
      Top = 228
      Width = 807
      Height = 3
      Cursor = crVSplit
      Align = alTop
      ExplicitTop = 129
      ExplicitWidth = 227
    end
    object pnlPartidas: TPanel
      Left = 1
      Top = 231
      Width = 807
      Height = 158
      Align = alClient
      TabOrder = 0
      object Panel7: TPanel
        Left = 1
        Top = 116
        Width = 805
        Height = 41
        Align = alBottom
        Padding.Left = 6
        Padding.Top = 4
        Padding.Right = 6
        Padding.Bottom = 4
        TabOrder = 0
        object btnCancelar: TAdvGlowButton
          Left = 698
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
        object bntAceptar: TAdvGlowButton
          Left = 598
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
        object Panel12: TPanel
          Left = 107
          Top = 5
          Width = 185
          Height = 31
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
        end
      end
      object cxGrid1: TcxGrid
        Left = 1
        Top = 1
        Width = 805
        Height = 115
        Align = alClient
        TabOrder = 1
        object tvDatos: TcxGridDBTableView
          PopupMenu = pmPartidas
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = tvDatosCellDblClick
          DataController.DataSource = dsSolCotizacionDatos
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
          object ColTituloMarca: TcxGridDBColumn
            Caption = 'Marca'
            DataBinding.FieldName = 'TituloMarca'
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
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = tvDatos
        end
      end
    end
    object Panel8: TPanel
      Left = 1
      Top = 169
      Width = 807
      Height = 59
      Align = alTop
      BevelOuter = bvNone
      Padding.Top = 10
      Padding.Right = 6
      TabOrder = 1
      object IdInsumo: TEdit
        Left = 56
        Top = 10
        Width = 745
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
        Width = 801
        Height = 28
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        ExplicitLeft = -2
        ExplicitTop = 29
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
    object Panel13: TPanel
      Left = 1
      Top = 1
      Width = 807
      Height = 168
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel13'
      TabOrder = 2
      object Splitter2: TSplitter
        Left = 619
        Top = 0
        Height = 168
        ExplicitLeft = 400
        ExplicitTop = 32
        ExplicitHeight = 100
      end
      object pnlGenerales: TPanel
        Left = 0
        Top = 0
        Width = 619
        Height = 168
        Align = alLeft
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 0
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 617
          Height = 56
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object JvLabel2: TJvLabel
            Left = 10
            Top = 5
            Width = 45
            Height = 13
            Caption = 'Solicitud:'
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object CodigoSolCotizacion: TDBText
            Left = 61
            Top = 5
            Width = 113
            Height = 13
            AutoSize = True
            DataField = 'CodigoSolCotizacion'
            DataSource = dsSolCotizacion
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object pnlFirmas: TPanel
            Left = 0
            Top = 33
            Width = 617
            Height = 23
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 0
            OnResize = pnlFirmasResize
            object pnlElabora: TPanel
              Left = 137
              Top = 0
              Width = 480
              Height = 23
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object JvLabel4: TJvLabel
                Left = 16
                Top = -3
                Width = 39
                Height = 13
                Caption = 'Solicita:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object NombreSolicita: TDBText
                Left = 61
                Top = -3
                Width = 85
                Height = 13
                AutoSize = True
                DataField = 'NombreSolicita'
                DataSource = dsSolCotizacion
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object Panel9: TPanel
              Left = 0
              Top = 0
              Width = 137
              Height = 23
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object JvLabel3: TJvLabel
                Left = 15
                Top = -3
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
                Left = 56
                Top = -3
                Width = 33
                Height = 13
                AutoSize = True
                DataField = 'Fecha'
                DataSource = dsSolCotizacion
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
          end
        end
        object Panel4: TPanel
          Left = 1
          Top = 57
          Width = 617
          Height = 110
          Align = alClient
          BevelOuter = bvNone
          Enabled = False
          Padding.Right = 6
          Padding.Bottom = 4
          TabOrder = 1
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 87
            Height = 106
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object JvLabel6: TJvLabel
              Left = 15
              Top = -2
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
            Width = 524
            Height = 106
            Align = alClient
            DataField = 'Comentarios'
            DataSource = dsSolCotizacion
            TabOrder = 1
          end
        end
      end
      object pnlProveedores: TPanel
        Left = 622
        Top = 0
        Width = 185
        Height = 168
        Align = alClient
        BevelOuter = bvNone
        Enabled = False
        TabOrder = 1
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 185
          Height = 127
          Align = alClient
          TabOrder = 0
          object tvListaProveedores: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsSolCotizacionxProveedor
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsSelection.CellSelect = False
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.GroupByBox = False
            object ColsNombreCorto: TcxGridDBColumn
              Caption = 'Proveedor'
              DataBinding.FieldName = 'sNombreCorto'
            end
            object ColFecha: TcxGridDBColumn
              DataBinding.FieldName = 'Fecha'
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = tvListaProveedores
          end
        end
        object Panel15: TPanel
          Left = 0
          Top = 127
          Width = 185
          Height = 41
          Align = alBottom
          Padding.Top = 4
          Padding.Right = 12
          Padding.Bottom = 4
          TabOrder = 1
          object btnProveedores: TAdvGlowButton
            Left = 72
            Top = 5
            Width = 100
            Height = 31
            Align = alRight
            Caption = 'Proveedores'
            ImageIndex = 28
            Images = ClientModule1.PngImageList1
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 0
            OnClick = btnProveedoresClick
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
            ExplicitTop = 4
          end
        end
      end
    end
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
  object cdBuscarSolCotizacion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 216
    Top = 128
  end
  object cdSolCotizacion: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = cdSolCotizacionAfterOpen
    AfterClose = cdSolCotizacionAfterClose
    Left = 488
    Top = 232
  end
  object dsSolCotizacion: TDataSource
    DataSet = cdSolCotizacion
    Left = 488
    Top = 184
  end
  object cdSolCotizacionDatos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 88
    Top = 184
  end
  object cdSolCotizacionUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 184
    Top = 192
  end
  object cdSolCotizacionDatosUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 264
  end
  object dsSolCotizacionDatos: TDataSource
    DataSet = cdSolCotizacionDatos
    Left = 48
    Top = 128
  end
  object cdInsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 272
    Top = 80
  end
  object dsInsumo: TDataSource
    DataSet = cdInsumo
    Left = 272
    Top = 32
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
  object cdSolCotizacionxProveedor: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 392
    Top = 288
  end
  object dsSolCotizacionxProveedor: TDataSource
    DataSet = cdSolCotizacionxProveedor
    Left = 400
    Top = 224
  end
  object cdSolCotizacionxProveedorUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 392
    Top = 336
  end
  object cdProveedores: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 184
    Top = 304
  end
  object RepSolCotizacion: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42307.250641423600000000
    ReportOptions.LastChange = 42494.390842685180000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 296
    Datasets = <
      item
        DataSet = ClientModule1.fdsOrganizacion
        DataSetName = 'fdsOrganizacion'
      end
      item
        DataSet = fdsSolCotizacion
        DataSetName = 'fdsSolCotizacion'
      end
      item
        DataSet = fdsSolCotizacionDatos
        DataSetName = 'fdsSolCotizacionDatos'
      end
      item
        DataSet = fdsSolCotizacionxProveedor
        DataSetName = 'fdsSolCotizacionxProveedor'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.000000000000000000
      PaperHeight = 216.000000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 128.504020000000000000
        Top = 18.897650000000000000
        Width = 978.898270000000000000
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
            'SOLICITUD DE COTIZACI'#211'N')
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
        object Memo5: TfrxMemoView
          Left = 128.504020000000000000
          Top = 75.590600000000000000
          Width = 608.504330000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CodigoSolCotizacion'
          DataSet = fdsSolCotizacion
          DataSetName = 'fdsSolCotizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsSolCotizacion."CodigoSolCotizacion"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 249.448980000000000000
        Width = 978.898270000000000000
        DataSet = fdsSolCotizacionDatos
        DataSetName = 'fdsSolCotizacionDatos'
        RowCount = 0
        Stretched = True
        object Memo6: TfrxMemoView
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'CodigoInsumo'
          DataSet = fdsSolCotizacionDatos
          DataSetName = 'fdsSolCotizacionDatos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[fdsSolCotizacionDatos."CodigoInsumo"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 884.410020000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 789.921770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 374.173470000000000000
          Width = 154.960629920000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'TituloMarca'
          DataSet = fdsSolCotizacionDatos
          DataSetName = 'fdsSolCotizacionDatos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[fdsSolCotizacionDatos."TituloMarca"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 529.134199999999900000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = fdsSolCotizacionDatos
          DataSetName = 'fdsSolCotizacionDatos'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsSolCotizacionDatos."Cantidad"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 634.961040000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'TituloPresentacion'
          DataSet = fdsSolCotizacionDatos
          DataSetName = 'fdsSolCotizacionDatos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[fdsSolCotizacionDatos."TituloPresentacion"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 113.385900000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NombreInsumo'
          DataSet = fdsSolCotizacionDatos
          DataSetName = 'fdsSolCotizacionDatos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[fdsSolCotizacionDatos."NombreInsumo"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 18.897650000000000000
        Top = 207.874150000000000000
        Width = 978.898270000000000000
        Condition = 'fdsSolCotizacionDatos."IdSolCotizacion"'
        object Memo13: TfrxMemoView
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 113.385900000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
      end
    end
  end
  object fdsSolCotizacion: TfrxDBDataset
    UserName = 'fdsSolCotizacion'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdSolCotizacion=IdSolCotizacion'
      'CodigoSolCotizacion=CodigoSolCotizacion'
      'Comentarios=Comentarios'
      'Fecha=Fecha'
      'IdSolicita=IdSolicita'
      'NombreSolicita=NombreSolicita'
      'ListaProveedores=ListaProveedores')
    DataSet = cdSolCotizacion
    BCDToCurrency = False
    Left = 184
    Top = 368
  end
  object fdsSolCotizacionDatos: TfrxDBDataset
    UserName = 'fdsSolCotizacionDatos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdSolCotizacionPartida=IdSolCotizacionPartida'
      'IdSolCotizacion=IdSolCotizacion'
      'IdInsumo=IdInsumo'
      'CodigoInsumo=CodigoInsumo'
      'NombreInsumo=NombreInsumo'
      'Cantidad=Cantidad'
      'sNombre=sNombre'
      'CantidadPropuesta=CantidadPropuesta'
      'Precio=Precio'
      'Fecha=Fecha'
      'IdMarca=IdMarca'
      'CodigoMarca=CodigoMarca'
      'TituloMarca=TituloMarca'
      'IdPresentacion=IdPresentacion'
      'CodigoPresentacion=CodigoPresentacion'
      'TituloPresentacion=TituloPresentacion')
    DataSet = cdSolCotizacionDatos
    BCDToCurrency = False
    Left = 288
    Top = 368
  end
  object fdsSolCotizacionxProveedor: TfrxDBDataset
    UserName = 'fdsSolCotizacionxProveedor'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdSolCotizacionxProveedor=IdSolCotizacionxProveedor'
      'IdSolCotizacion=IdSolCotizacion'
      'IdProveedor=IdProveedor'
      'sNombreCorto=sNombreCorto'
      'sRazonSocial=sRazonSocial'
      'Fecha=Fecha'
      'Estado=Estado')
    DataSet = cdSolCotizacionxProveedor
    BCDToCurrency = False
    Left = 496
    Top = 368
  end
end
