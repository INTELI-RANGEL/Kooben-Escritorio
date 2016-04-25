object FrmEntradaGeneral: TFrmEntradaGeneral
  Left = 0
  Top = 0
  Caption = 'Entradas Almac'#233'n General'
  ClientHeight = 639
  ClientWidth = 707
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 707
    Height = 129
    Align = alTop
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 705
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object JvLabel2: TJvLabel
        Left = 3
        Top = 5
        Width = 56
        Height = 13
        Caption = 'Proveedor:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object NombreEmpresa: TDBText
        Left = 61
        Top = 5
        Width = 93
        Height = 13
        AutoSize = True
        DataField = 'NombreEmpresa'
        DataSource = dsEntradaGeneralUpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxButton1: TcxButton
        Left = 675
        Top = 0
        Width = 30
        Height = 25
        Align = alRight
        Caption = 'cxButton1'
        OptionsImage.ImageIndex = 4
        OptionsImage.Images = ClientModule1.PngImageList1
        PaintStyle = bpsGlyph
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Flat = True
        SpeedButtonOptions.Transparent = True
        TabOrder = 0
        OnClick = cxButton1Click
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 26
      Width = 705
      Height = 55
      Align = alClient
      BevelOuter = bvNone
      Enabled = False
      Padding.Right = 6
      TabOrder = 1
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 65
        Height = 55
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
      end
      object DomicilioEmpresa: TDBMemo
        Left = 65
        Top = 0
        Width = 634
        Height = 55
        TabStop = False
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        DataField = 'DomicilioEmpresa'
        DataSource = dsEntradaGeneralUpt
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
      Top = 81
      Width = 705
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
      object Aplicacion: TDBText
        Left = 61
        Top = 6
        Width = 57
        Height = 13
        AutoSize = True
        DataField = 'Aplicacion'
        DataSource = dsEntradaGeneralUpt
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
        Width = 705
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
            Left = 9
            Top = 1
            Width = 46
            Height = 13
            Caption = 'Autoriz'#243':'
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object NombreAutorizo: TDBText
            Left = 61
            Top = 2
            Width = 92
            Height = 13
            AutoSize = True
            DataField = 'NombreAutorizo'
            DataSource = dsEntradaGeneralUpt
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
          Width = 456
          Height = 23
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object NombreRecibio: TDBText
            Left = 58
            Top = 2
            Width = 85
            Height = 13
            AutoSize = True
            DataField = 'NombreRecibio'
            DataSource = dsEntradaGeneralUpt
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 707
    Height = 41
    Align = alTop
    TabOrder = 1
    object JvLabel1: TJvLabel
      Left = 8
      Top = 11
      Width = 72
      Height = 19
      Caption = 'Entrada:'
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
      Left = 86
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
      OnKeyDown = CodigoCotizacionKeyDown
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
  object Panel7: TPanel
    Left = 0
    Top = 598
    Width = 707
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 6
    Padding.Top = 4
    Padding.Right = 6
    Padding.Bottom = 4
    TabOrder = 2
    object btnCancelar: TAdvGlowButton
      Left = 601
      Top = 4
      Width = 100
      Height = 33
      Align = alRight
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
      Left = 501
      Top = 4
      Width = 100
      Height = 33
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
    object Panel10: TPanel
      AlignWithMargins = True
      Left = 9
      Top = 9
      Width = 23
      Height = 23
      Margins.Top = 5
      Margins.Bottom = 5
      Align = alLeft
      BevelOuter = bvSpace
      BorderStyle = bsSingle
      Color = 11206655
      ParentBackground = False
      TabOrder = 2
    end
    object LblLeyenda: TcxLabel
      AlignWithMargins = True
      Left = 38
      Top = 7
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'Campos que puedes modificar'
      Style.TextStyle = [fsBold]
    end
  end
  object gridPartidas: TcxGrid
    Left = 0
    Top = 369
    Width = 707
    Height = 229
    Align = alClient
    TabOrder = 3
    ExplicitLeft = 1
    ExplicitTop = 370
    object tvPartidas: TcxGridDBTableView
      Navigator.Buttons.OnButtonClick = tvPartidasNavigatorButtonsButtonClick
      Navigator.Buttons.CustomButtons = <
        item
          ImageIndex = 0
        end>
      Navigator.Buttons.Images = cxImageList1
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.DataSource = dsEntradaGeneralDatosUpt
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Images = ClientModule1.PngImageList1
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxColCantidad: TcxGridDBColumn
        Caption = 'Cant.'
        DataBinding.FieldName = 'Registrado'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.ImmediatePost = True
        Properties.MinValue = 0.000100000000000000
        Properties.ValueType = vtFloat
        Styles.Content = cxstyleditable
        Width = 47
      end
      object cxColPresentación: TcxGridDBColumn
        Caption = 'Marca'
        DataBinding.FieldName = 'marca'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 90
      end
      object cxColInsumo: TcxGridDBColumn
        Caption = 'Insumo'
        DataBinding.FieldName = 'NombreInsumo'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 129
      end
      object cxColMarca: TcxGridDBColumn
        Caption = 'Presentaci'#243'n'
        DataBinding.FieldName = 'Presentacion'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 337
      end
      object cxColPrecio: TcxGridDBColumn
        DataBinding.FieldName = 'Precio'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DecimalPlaces = 4
        Properties.MinValue = 0.000100000000000000
        Properties.ReadOnly = False
        Styles.Content = cxstyleditable
        Width = 57
      end
      object cxColQuitar: TcxGridDBColumn
        Caption = 'Quitar'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            ImageIndex = 5
            Kind = bkGlyph
          end>
        Properties.Images = ClientModule1.PngImageList1
        Properties.ViewStyle = vsButtonsOnly
        Properties.OnButtonClick = cxColQuitarPropertiesButtonClick
        Options.ShowEditButtons = isebAlways
        Width = 45
      end
    end
    object gridPartidasLevel1: TcxGridLevel
      GridView = tvPartidas
    end
  end
  object Panel8: TPanel
    Left = 0
    Top = 170
    Width = 707
    Height = 199
    Align = alTop
    BevelOuter = bvNone
    Padding.Top = 10
    Padding.Right = 6
    TabOrder = 4
    object dxLayControlPartidas: TdxLayoutControl
      Left = 0
      Top = 10
      Width = 701
      Height = 189
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = dxLayoutStandardLookAndFeel1
      object cxSpinCantidad: TcxSpinEdit
        Left = 81
        Top = 44
        Properties.ValueType = vtFloat
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        TabOrder = 1
        OnKeyDown = cxSpinCantidadKeyDown
        Width = 51
      end
      object cxCurrencyPrecio: TcxCurrencyEdit
        Left = 81
        Top = 125
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 5
        OnKeyDown = cxCurrencyPrecioKeyDown
        Width = 121
      end
      object IdInsumo: TcxTextEdit
        Left = 182
        Top = 44
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 2
        OnEnter = IdInsumoEnter
        OnExit = IdInsumoExit
        OnKeyPress = IdInsumoKeyPress
        Width = 487
      end
      object btnMarca: TcxButtonEdit
        Left = 81
        Top = 71
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        Properties.OnButtonClick = btnMarcaPropertiesButtonClick
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        TabOrder = 3
        Width = 144
      end
      object Panel11: TPanel
        Left = 10
        Top = 10
        Width = 436
        Height = 28
        BevelOuter = bvNone
        TabOrder = 0
        object NombreInsumo: TDBText
          Left = 220
          Top = 6
          Width = 87
          Height = 13
          AutoSize = True
          DataField = 'NombreInsumo'
          DataSource = dsEntradaGeneralDatosUpt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CodigoInsumo: TDBText
          Left = 71
          Top = 6
          Width = 81
          Height = 13
          AutoSize = True
          DataField = 'CodigoInsumo'
          DataSource = dsEntradaGeneralDatosUpt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblGuion: TJvLabel
          Left = 191
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
      object btnadd: TcxButton
        Left = 560
        Top = 152
        Width = 109
        Height = 25
        Margins.Left = 50
        Caption = 'A'#241'adir'
        OptionsImage.ImageIndex = 1
        OptionsImage.Images = ClientModule1.PngImageList1
        TabOrder = 6
        OnClick = btnaddClick
      end
      object btnPresentacion: TcxButtonEdit
        Left = 81
        Top = 98
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        Properties.OnButtonClick = btnPresentacionPropertiesButtonClick
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        TabOrder = 4
        Width = 121
      end
      object dxLayControlPartidasGroup_Root: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Visible = False
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object lyCantidad: TdxLayoutItem
        Parent = dxLayControlPartidasGroup1
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Cantidad:'
        Control = cxSpinCantidad
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayControlPartidasGroup1: TdxLayoutAutoCreatedGroup
        Parent = dxLayControlPartidasGroup_Root
        LayoutDirection = ldHorizontal
        Index = 1
        AutoCreated = True
      end
      object lyPrecio: TdxLayoutItem
        Parent = dxLayControlPartidasGroup_Root
        CaptionOptions.Text = 'Precio:'
        Control = cxCurrencyPrecio
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object lyInsumo: TdxLayoutItem
        Parent = dxLayControlPartidasGroup1
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Insumo:'
        Control = IdInsumo
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object lyMarca: TdxLayoutItem
        Parent = dxLayControlPartidasGroup_Root
        AlignHorz = ahClient
        CaptionOptions.Text = 'Marca:'
        Control = btnMarca
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayControlPartidasItem1: TdxLayoutItem
        Parent = dxLayControlPartidasGroup_Root
        CaptionOptions.Visible = False
        Control = Panel11
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object lyAgregar: TdxLayoutItem
        Parent = dxLayControlPartidasGroup_Root
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = btnadd
        ControlOptions.AlignHorz = ahRight
        ControlOptions.ShowBorder = False
        Index = 5
      end
      object lyPresentacion: TdxLayoutItem
        Parent = dxLayControlPartidasGroup_Root
        CaptionOptions.Text = 'Presentaci'#243'n:'
        Control = btnPresentacion
        ControlOptions.ShowBorder = False
        Index = 3
      end
    end
  end
  object cdBuscarEntradaGeneral: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 400
    Top = 88
  end
  object cdEntradaGeneralDatosUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 552
    Top = 152
  end
  object dsEntradaGeneralDatosUpt: TDataSource
    DataSet = cdEntradaGeneralDatosUpt
    Left = 368
    Top = 40
  end
  object dsEntradaGeneralUpt: TDataSource
    DataSet = cdEntradaGeneralUpt
    Left = 232
    Top = 48
  end
  object cdEntradaGeneralUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 560
    Top = 88
  end
  object cdRecibio: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 608
    Top = 88
  end
  object cdAutorizo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 640
    Top = 128
  end
  object cdProveedores: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 560
    Top = 40
  end
  object cdInsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 472
    Top = 136
  end
  object dsInsumo: TDataSource
    DataSet = cdInsumo
    Left = 344
    Top = 96
  end
  object cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 6291672
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000020000
          000A0000000F0000001000000010000000100000001100000011000000110000
          0011000000100000000B00000003000000000000000000000000000000094633
          2CC160453BFF644A41FFB87D4EFFB97A4AFFB47444FFB06C3DFFA76436FF593E
          37FF5C4037FF3B2823C20000000A0000000000000000000000000000000D6F53
          47FF947869FF6A4F46FFD8B07BFFD7AE77FFD7AB74FFD6A970FFD5A66DFF5F44
          3CFF694C42FF553A32FF0000000E0000000000000000000000000000000C7357
          4AFF987D6EFF70564BFFFFFFFFFFF6EFEAFFF6EFE9FFF6EEE9FFF5EEE9FF644A
          41FF72544AFF583D34FF01010116020202100101010B000000030000000B785C
          4EFF9D8273FF765C50FFFFFFFFFFF7F0EBFFF7F0EBFFF7EFEBFFF6EFEAFF6A50
          46FF73554BFF5B4037FF2B201E786C534BFF483832C20101010A0000000A7C60
          50FFA28777FF7B6154FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F56
          4BFF74584EFF5E4339FF352A2678785E55FF664D46FF0101010E000000097F63
          54FFA78E7DFF977A6AFF967969FF957967FF84695CFF785D53FF775C51FF775C
          51FF775A50FF62463CFF362A277780655CFF685048FF0101010E000000088367
          57FFAB9382FF634A41FF614740FF5E463DFF5C443CFF5B433BFF594139FF5840
          37FF795C52FF654A3FFF372C287781665DFF6B534BFF0101010D00000007866A
          59FFAF9788FF674E44FFF3EAE4FFE7D5C8FFE7D4C6FFE6D3C5FFE6D3C5FF5B43
          3AFF7A5F54FF694E42FF382D297682685FFF6E554CFF0101010C00000006886D
          5CFFB39C8CFF6B5248FFF4ECE6FFE9D9CDFFE8D7CAFFE7D5C8FFE6D4C6FF5E46
          3EFF7C6156FF6C5145FF382E2A75846A61FF71584FFF0101010B000000058B70
          5EFFB7A091FF70564DFFF6EFEAFFF5EDE8FFF4ECE6FFF4EBE4FFF3EAE3FF634A
          41FF7E6358FF715549FF3A302B75866C63FF745C52FF0101010A000000036954
          47C08C715FFF755A50FF8D766CFF897369FF856D65FF81695FFF7C645BFF674D
          45FF775B4DFF644E43DC3B312C73876F65FF785F55FF01010109000000010000
          0002000000040000000740362F73514842734B4139744A4038744A3F3874493E
          3774463B35743C322E733D322E72897067FF7A6257FF01010108000000000000
          00000000000000000005967E6EFFBEA99CFFAE9685FFAD9584FFAC9583FFAB92
          83FFAA9182FF947B70FF8C7369FF8B7268FF7F665BFF01010107000000000000
          00000000000000000003725F53C0977F6FFF967D6EFF957C6DFF947A6BFF9279
          6AFF907868FF8E7667FF8C7365FF846B5EFF614E46C100000004000000000000
          0000000000000000000100000002000000040000000400000004000000040000
          0005000000050000000500000005000000050000000300000001}
      end>
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <>
    StorageName = 'cxPropertiesStore1'
    Left = 1056
    Top = 80
  end
  object cdMarca: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 608
    Top = 40
  end
  object cdMarcaxInsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 496
    Top = 40
  end
  object cdPresentacion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 176
    Top = 408
  end
  object cdPresentacionxInsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 152
    Top = 488
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 400
    Top = 144
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      GroupOptions.CaptionOptions.TextDisabledColor = clGray
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 432
    Top = 184
    PixelsPerInch = 96
    object cxstyleditable: TcxStyle
      AssignedValues = [svColor]
      Color = 11206655
    end
  end
end
