object FrmConsumible: TFrmConsumible
  Left = 0
  Top = 0
  Caption = 'FrmConsumible'
  ClientHeight = 518
  ClientWidth = 950
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlReceta: TPanel
    Left = 0
    Top = 0
    Width = 950
    Height = 81
    Align = alTop
    BevelOuter = bvNone
    PopupMenu = pmCabecera
    TabOrder = 0
    OnDblClick = pnlRecetaDblClick
    object NombreReceta: TDBText
      Left = 84
      Top = 34
      Width = 131
      Height = 26
      AutoSize = True
      DataField = 'NombreReceta'
      DataSource = dsReceta
      Font.Charset = ANSI_CHARSET
      Font.Color = 4227327
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object JvLabel2: TJvLabel
      Left = 8
      Top = 34
      Width = 70
      Height = 23
      Caption = 'Nombre:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -19
      HotTrackFont.Name = 'Calibri'
      HotTrackFont.Style = []
    end
    object JvLabel3: TJvLabel
      Left = 8
      Top = 63
      Width = 61
      Height = 13
      Caption = 'Descripci'#243'n:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Calibri'
      HotTrackFont.Style = []
    end
    object DescripcionReceta: TDBText
      Left = 74
      Top = 63
      Width = 89
      Height = 13
      Align = alCustom
      AutoSize = True
      DataField = 'DescripcionReceta'
      DataSource = dsReceta
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 950
      Height = 33
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Splitter1: TSplitter
        Left = 645
        Top = 0
        Height = 33
        Align = alRight
        ExplicitLeft = 528
        ExplicitTop = -32
        ExplicitHeight = 100
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 645
        Height = 33
        Align = alClient
        Padding.Top = 4
        TabOrder = 0
        object CodigoReceta: TDBText
          Left = 84
          Top = 5
          Width = 560
          Height = 27
          Align = alClient
          AutoSize = True
          DataField = 'CodigoReceta'
          DataSource = dsReceta
          Font.Charset = ANSI_CHARSET
          Font.Color = 4227327
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 109
          ExplicitHeight = 23
        end
        object Panel4: TPanel
          Left = 1
          Top = 5
          Width = 83
          Height = 27
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object JvLabel1: TJvLabel
            Left = 17
            Top = 0
            Width = 60
            Height = 23
            Caption = 'C'#243'digo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -19
            HotTrackFont.Name = 'Calibri'
            HotTrackFont.Style = []
          end
        end
      end
      object Panel5: TPanel
        Left = 648
        Top = 0
        Width = 302
        Height = 33
        Align = alRight
        TabOrder = 1
        object JvLabel4: TJvLabel
          Left = 17
          Top = 5
          Width = 189
          Height = 23
          Caption = 'N'#250'mero de Comensales:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -19
          HotTrackFont.Name = 'Calibri'
          HotTrackFont.Style = []
        end
        object DBText1: TDBText
          Left = 212
          Top = 5
          Width = 66
          Height = 23
          AutoSize = True
          DataField = 'Personas'
          DataSource = dsReceta
          Font.Charset = ANSI_CHARSET
          Font.Color = 4227327
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 105
    Width = 950
    Height = 203
    Align = alTop
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 5
    object AdvPicture1: TAdvPicture
      Left = 376
      Top = 64
      Width = 100
      Height = 100
      Animate = False
      Picture.Stretch = False
      Picture.Frame = 0
      PicturePosition = bpTopLeft
      Version = '1.4.1.1'
    end
    object Panel2: TPanel
      Left = 202
      Top = 14
      Width = 747
      Height = 188
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object jvlbl1: TJvLabel
        Left = 0
        Top = 0
        Width = 747
        Height = 19
        Align = alTop
        Caption = 'Ingredientes:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -16
        HotTrackFont.Name = 'Calibri'
        HotTrackFont.Style = []
        ExplicitWidth = 91
      end
      object cxGrid1: TcxGrid
        AlignWithMargins = True
        Left = 3
        Top = 22
        Width = 741
        Height = 163
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = cxcbsNone
        TabOrder = 0
        object tvPartidas: TcxGridDBTableView
          PopupMenu = pmInsumos
          Navigator.Buttons.CustomButtons = <>
          OnEditDblClick = tvPartidasEditDblClick
          OnEditKeyDown = tvPartidasEditKeyDown
          DataController.DataSource = dsRecetaInsumoLista
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsView.NoDataToDisplayInfoText = '<A'#250'n no has establecidos insumos para esta receta >'
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object CodigoInsumo: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CodigoInsumo'
            Width = 80
          end
          object NombreInsumo: TcxGridDBColumn
            Caption = 'Ingrediente'
            DataBinding.FieldName = 'NombreInsumo'
            Width = 64
          end
          object Cantidad: TcxGridDBColumn
            DataBinding.FieldName = 'Cantidad'
            Width = 84
          end
          object sCodigo: TcxGridDBColumn
            Caption = 'U.M.'
            DataBinding.FieldName = 'sCodigo'
            Width = 56
          end
          object Precio_Insumo: TcxGridDBColumn
            Caption = 'Precio Ingrediente'
            DataBinding.FieldName = 'Precio_Insumo'
            Width = 75
          end
          object sCodigo_Insumo: TcxGridDBColumn
            Caption = 'U.M. Ingrediente'
            DataBinding.FieldName = 'sCodigo_Insumo'
            Width = 72
          end
          object Cantidad_Insumo: TcxGridDBColumn
            Caption = 'Cant x Ingrediente'
            DataBinding.FieldName = 'Cantidad_Insumo'
            Width = 80
          end
          object Costo_Insumo: TcxGridDBColumn
            Caption = 'Importe'
            DataBinding.FieldName = 'Costo_Insumo'
            Width = 80
          end
        end
        object glNivel1: TcxGridLevel
          Caption = 'Ingredientes'
          GridView = tvPartidas
          Options.DetailTabsPosition = dtpTop
        end
      end
    end
    object Imagen: TcxDBImage
      AlignWithMargins = True
      Left = 4
      Top = 17
      Align = alLeft
      DataBinding.DataField = 'imagen'
      Properties.GraphicClassName = 'TdxSmartImage'
      Style.BorderStyle = ebsFlat
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      Style.Shadow = False
      TabOrder = 1
      OnDblClick = ImagenDblClick
      OnMouseDown = ImagenMouseDown
      Height = 182
      Width = 195
    end
  end
  object DxManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = ClientModule1.PngImageList1
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 736
    Top = 200
    DockControlHeights = (
      0
      0
      24
      0)
    object dxbrDxManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 576
      FloatTop = 366
      FloatClientWidth = 152
      FloatClientHeight = 117
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'DxBtnEditReceta'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'DxBtnInserta'
        end
        item
          Visible = True
          ItemName = 'DxBtnEditar'
        end
        item
          Visible = True
          ItemName = 'DxBtnEliminar'
        end
        item
          Visible = True
          ItemName = 'DxBtnActualizar'
        end
        item
          Visible = True
          ItemName = 'DxBtnImprimir'
        end>
      MultiLine = True
      OneOnRow = True
      RotateWhenVertical = False
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object dxSubInsertar: TdxBarSubItem
      Caption = '&Nuevo Insumo'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object DxBtnInserta: TdxBarButton
      Caption = '&Nuevo Insumo'
      Category = 0
      Hint = 'Nuevo Insumo'
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = DxBtnInsertaClick
    end
    object DxBtnEditar: TdxBarButton
      Caption = '&Editar Insumo'
      Category = 0
      Hint = 'Editar Insumo'
      Visible = ivAlways
      ImageIndex = 4
      PaintStyle = psCaptionGlyph
    end
    object DxBtnEliminar: TdxBarButton
      Caption = '&Eliminar Insumo'
      Category = 0
      Hint = 'Eliminar Insumo'
      Visible = ivAlways
      ImageIndex = 5
      PaintStyle = psCaptionGlyph
      OnClick = DxBtnEliminarClick
    end
    object DxBtnActualizar: TdxBarButton
      Caption = '&Actualizar'
      Category = 0
      Hint = 'Actualizar'
      Visible = ivAlways
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
      OnClick = DxBtnActualizarClick
    end
    object DxBtnImprimir: TdxBarButton
      Caption = '&Imprimir'
      Category = 0
      Hint = 'Imprimir'
      Visible = ivAlways
      ImageIndex = 24
      PaintStyle = psCaptionGlyph
      OnClick = DxBtnImprimirClick
    end
    object DxBtnEditReceta: TdxBarButton
      Caption = '&Editar Receta'
      Category = 0
      Hint = 'Editar Receta'
      Visible = ivAlways
      ImageIndex = 23
      PaintStyle = psCaptionGlyph
      OnClick = DxBtnEditRecetaClick
    end
    object DxBtnLoadImg: TdxBarButton
      Caption = '&Cargar/Modificar Imagen'
      Category = 0
      Hint = 'Cargar/Modificar Imagen'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000080000
        000C0000000E0000000E0000000E0000000E0000000F0000000F0000000F0000
        0010000000100000000F0000000A000000020000000000000000815A4DBFB57D
        6BFFB57C6BFFB47D6BFFB47C6BFFB47C6AFFB37B69FFB37B6AFFB37B6AFFB47B
        69FFB37A69FFB37A68FF81584CC10000000A0000000000000000B6806EFFF9F0
        EBFFF8F0EAFFF8F0EAFFF8EFE9FFF8EFE9FFF7EFE9FFF8EEE8FFF7EEE9FFF7EE
        E8FFF7EEE9FFFAF4F1FFB47C6BFF0000000E0000000000000000B98271FFF9F1
        ECFF39B78FFF36AE86FF2A8B67FF257F5DFF309F79FF32A17AFF298361FF3198
        74FF257F5CFFFBF6F3FFB67F6DFF0000000E0000000000000000BB8574FFFAF3
        EEFF41C097FF35A07DFF6AC6B1FF37AA85FF246B73FF2B5EB6FF287378FF2D8E
        6AFF298764FFFCF8F5FFB88270FF0000000D0000000000000000C08E7EFFFBF5
        F1FF53CCA6FF43AC8AFF3978B1FF366BB8FF3469B3FF71C2EEFF336BB4FF3367
        B1FF306DA7FFFCF9F7FFBA8573FF0000000C0000000000000000C49585FFFAF7
        F3FF5DD3ADFF53C09EFF467BBCFF8ED5F4FF66A5E1FF76D6F9FF599EDEFF69C6
        F2FF3E75BBFFFDFAF9FFBD8776FF0000000B0000000000000000C89A8AFFFBF7
        F5FF62D4B1FF55ACADFF558ECAFF71B1E5FF5E9DD0FF335EA8FF5295CCFF60A7
        E2FF4882C4FFFEFBFAFFBE8B79FF0000000A0000000000000000CA9F90FFFCF9
        F7FFEAD5ABFF6590CEFF96D5F4FFAAECFEFF3E77BBFF90BCE0FF87A7CFFFB0E6
        F7FF89CFF2FFFEFCFBFFC08E7EFF000000090000000000000000CEA394FFFDFA
        F8FFF2E3C3FFBABEBDFF7EA8D6FF8FC8EFFF6FB6E2FF96B7D9FFA28775FFA8B6
        BAFFA9C1DCFFFAF9F9FFD6BFB7FF000000130000000400000001D1A899FFFFFE
        FEFFF9EDD3FFECE0C8FF89B2DAFFACE7FBFF9ED5F4FFCEEBF3FFAC744CFF9867
        41FFA39F9FFFE5E4E2FF975D32FF613A1CBC0C07032700000007C99C8BFFFFFE
        FEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFF8F7F7FFBD9171FFDBB8
        91FFB07F53FF9B643AFF9F663DFFDBB67EFF8F5C32EE311D0F679B7C70BFD1A7
        96FFD0A796FFD0A696FFD0A695FFD0A695FFCFA594FFE1C8BEFFD3B7A6FFC498
        70FFEAD2B1FFFCF0D0FFFEF2D3FFFEE9BBFFF7E6C5FFA36C43FF000000010000
        000200000002000000020000000200000003000000030000000300000006382C
        2150987758CABF946DFAC3966DFFEAD3B4FFB7906CEE3D2E215B000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00010000000200000005CAA27AFF846A50AC110D0A1B00000002000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000000000000}
      OnClick = DxBtnLoadImgClick
    end
    object dxBtnCopyImg: TdxBarLargeButton
      Caption = '&Copiar Imagen'
      Category = 0
      Hint = 'Copiar Imagen'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0002000000090000000E0000000F0000000F0000001000000010000000110000
        0011000000100000000B00000003000000000000000000000000000000000000
        00087C5345C0AD725EFFAC725DFFAC715DFFAC6F5BFFAB705CFFAB705CFFAB6E
        5CFFAB6E5AFF7A4E41C30000000B000000000000000000000000000000000000
        000BAF7462FFFDFBF9FFFBF6F2FFFBF5F2FFFAF5F1FFFBF4EFFFF9F3EEFFF9F2
        EEFFFAF2ECFFAC715DFF0000000F000000000000000000000000000000000000
        000BB17964FFFDFBFAFFF7EEE7FFF8EDE7FFF7EDE7FFF7EDE6FFF6ECE5FFF6EC
        E5FFFAF2EEFFAE7260FF01010120010101100101010B00000003000000000000
        000BB37C69FFFDFCFBFFF8EFE8FFF7EEE8FFF7EEE8FFF8EEE7FFF7EEE7FFF7EC
        E6FFFAF3EFFFB07863FFC19D92FFB57D6AFF815A4EC30101010B000000000000
        000AB57F6CFFFEFCFBFFF9F0EAFFF8F0EAFFF8EFE9FFF8EFE8FFF8EEE9FFF8EE
        E7FFFBF5F1FFB27A66FFEBE6E2FFFAF3EDFFB6806DFF0101010F000000000000
        0009B98270FFFEFDFCFFF9F2EDFFF9F2EDFFF9F0EBFFF9F0EAFFF8F0EAFFF8F0
        E9FFFBF6F3FFB37D6AFFE9E1DAFFFAF3EFFFB88170FF01010110000000000000
        0008BB8775FFFEFDFDFFFAF3EFFFFAF4EEFFFAF3EEFFFAF1ECFFF9F1EBFFF9F0
        EBFFFCF8F5FFB6806DFFEAE1DBFFFAF4F0FFB98673FF0101010F000000000000
        0007BF8B78FFFEFEFDFFFBF5F1FFFBF5F0FFFBF4F0FFFAF3EFFFFAF3EFFFF9F3
        EDFFFCF9F7FFBA8471FFECE4DDFFFBF5F2FFBB8876FF0101010E000000000000
        0007C18E7EFFFEFEFDFFFAF5F3FFFBF6F2FFFBF5F1FFFBF5F0FFFBF5F0FFFAF4
        EFFFFDFAF8FFBC8978FFEDE7E0FFFBF6F4FFBC8B7AFF0101010D000000000000
        0006C49382FFFEFEFEFFFBF6F4FFFBF6F4FFFCF6F3FFFCF6F3FFFCF4F2FFFBF5
        F1FFFDFBF9FFBF8C7CFFEFE8E3FFFCF8F5FFBF8E7CFF0101010D000000000000
        0005C49785FFFFFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFDFFFEFDFDFFFEFD
        FDFFFEFDFCFFC2907FFFF0EBE6FFFCF9F7FFC29180FF0101010C000000000000
        0003967265C0C89988FFC99887FFC79887FFC59786FFC79785FFC79784FFC596
        84FFC59683FFCDA79AFFF4EFEAFFFDFAF8FFC49686FF0101010B000000000000
        000100000003000000040000000BD8BBB0FFF8F8F8FFF5F0EFFFF5F0EFFFF5EF
        EDFFF5EFEDFFF7F0EEFFFAF4F1FFFDFBF9FFC7998AFF0000000A000000000000
        0000000000000000000000000005CCA392FFFFFEFEFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFDFFFEFDFDFFFEFDFDFFFEFDFCFFCA9D8DFF00000009000000000000
        00000000000000000000000000039A7B6FC0CEA495FFCFA494FFCDA494FFCCA3
        93FFCDA392FFCDA391FFCCA291FFCCA290FF97776BC200000006}
      OnClick = dxBtnCopyImgClick
    end
  end
  object cdBuscarReceta: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 128
    Top = 216
  end
  object cdReceta: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = cdRecetaAfterOpen
    Left = 200
    Top = 216
  end
  object cdRecetaInsumoLista: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 217
  end
  object cdRecetaUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 376
    Top = 216
  end
  object cdTipoReceta: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 448
    Top = 216
  end
  object pmInsumos: TPopupMenu
    Images = ClientModule1.PngImageList1
    Left = 592
    Top = 248
    object Nuevo1: TMenuItem
      Caption = '&Nuevo Insumo'
      ImageIndex = 0
      OnClick = Nuevo1Click
    end
    object EditarInsumo1: TMenuItem
      Caption = 'Editar Insumo'
      ImageIndex = 4
    end
    object EliminarSeleccionado1: TMenuItem
      Caption = '&Eliminar Seleccionado'
      ImageIndex = 5
      OnClick = EliminarSeleccionado1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object ActualizardatosdelaReceta2: TMenuItem
      Caption = 'Actualizar datos de la Receta'
      ImageIndex = 3
      ShortCut = 116
      OnClick = ActualizardatosdelaReceta2Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ImprimirReceta2: TMenuItem
      Caption = 'Imprimir Receta'
      ImageIndex = 24
      ShortCut = 16464
      OnClick = ImprimirReceta2Click
    end
  end
  object pmCabecera: TPopupMenu
    Images = ClientModule1.PngImageList1
    Left = 664
    Top = 248
    object ModificarcabeceradeReceta1: TMenuItem
      Caption = 'Modificar cabecera de Receta'
      ImageIndex = 4
      OnClick = ModificarcabeceradeReceta1Click
    end
    object Verimagendetamaooriginal1: TMenuItem
      Caption = 'Ver imagen de tama'#241'o original'
      ImageIndex = 25
      OnClick = Verimagendetamaooriginal1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object ActualizardatosdelaReceta1: TMenuItem
      Caption = 'Actualizar datos de la Receta'
      ImageIndex = 3
      ShortCut = 116
      OnClick = ActualizardatosdelaReceta1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ImprimirReceta1: TMenuItem
      Caption = 'Imprimir Receta'
      ImageIndex = 24
      ShortCut = 16464
      OnClick = ImprimirReceta1Click
    end
  end
  object pmImagen: TPopupMenu
    Images = ClientModule1.PngImageList1
    Left = 632
    Top = 184
    object CerrarImagen1: TMenuItem
      Caption = 'Cerrar Imagen'
      ImageIndex = 8
      OnClick = CerrarImagen1Click
    end
  end
  object cdRecetaInsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 528
    Top = 217
  end
  object cdInsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 216
  end
  object cdImagen: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 232
    Top = 264
  end
  object cdRecetaImagen: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 320
    Top = 264
  end
  object cdRecetaPda: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IdReceta'
    MasterFields = 'IdReceta'
    PacketRecords = 0
    Params = <>
    Left = 416
    Top = 264
  end
  object repReceta: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42186.741985949100000000
    ReportOptions.LastChange = 42257.487602361110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 160
    Top = 120
    Datasets = <
      item
        DataSet = ClientModule1.fdsOrganizacion
        DataSetName = 'fdsOrganizacion'
      end
      item
      end
      item
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
      object GroupHeader1: TfrxGroupHeader
        Top = 211.653680000000000000
        Width = 740.409927000000000000
        Condition = 'fdsReceta."IdReceta"'
        ReprintOnNewPage = True
        StartNewPage = True
        Stretched = True
      end
      object PageHeader1: TfrxPageHeader
        Height = 132.401670000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Memo4: TfrxMemoView
          Width = 737.008350000000000000
          Height = 105.826840000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 139.842610000000000000
          Top = 3.779530000000019000
          Width = 593.386210000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Berlin Sans FB Demi'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fdsOrganizacion."nombreorganizacion"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 7.559060000000000000
          Top = 3.779530000000019000
          Width = 124.724490000000000000
          Height = 71.811070000000000000
          ShowHint = False
          DataField = 'Imagen'
          DataSet = ClientModule1.fdsOrganizacion
          DataSetName = 'fdsOrganizacion'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo3: TfrxMemoView
          Left = 139.842610000000000000
          Top = 30.236239999999900000
          Width = 593.386210000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fdsOrganizacion."tituloorganizacion"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 139.842610000000000000
          Top = 45.354359999999800000
          Width = 593.386210000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[fdsOrganizacion."Calle"] No. [fdsOrganizacion."Numero"], Col. [' +
              'fdsOrganizacion."Colonia"], C.P. [fdsOrganizacion."cp"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 139.842610000000000000
          Top = 60.472479999999710000
          Width = 593.386210000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[fdsOrganizacion."Municipio"] [fdsOrganizacion."localidad"], [fd' +
              'sOrganizacion."Estado"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 7.559060000000000000
          Top = 83.149659999999600000
          Width = 733.228820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RECETA DE ALIMENTOS')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 15.118120000000000000
        Top = 544.252320000000100000
        Width = 740.409927000000000000
        RowCount = 0
        object Memo31: TfrxMemoView
          Left = 7.559060000000000000
          Width = 729.449290000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Color = 15328986
          Highlight.Condition = 'INT(<Line> / 2) = (<Line> / 2)'
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 121.944960000000000000
          Top = 1.000000000000000000
          Width = 302.362400000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NombreInsumo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            '[fdsRecetaPda."NombreInsumo"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 7.559060000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'CodigoInsumo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8W = (
            '[fdsRecetaPda."CodigoInsumo"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 423.307360000000000000
          Width = 68.031540000000010000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsRecetaPda."Cantidad"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 491.338900000000000000
          Width = 56.692950000000010000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sNombre'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8W = (
            '[fdsRecetaPda."sNombre"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 548.031849999999900000
          Width = 68.031540000000010000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsRecetaPda."Precio_Insumo"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 616.063390000000000000
          Width = 56.692950000000010000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sNombre_Insumo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8W = (
            '[fdsRecetaPda."sNombre_Insumo"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 672.756340000000000000
          Width = 58.582672280000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsRecetaPda."Costo_Insumo"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 94.488250000000000000
        Top = 582.047620000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Memo29: TfrxMemoView
          Left = 7.559060000000000000
          Width = 729.449290000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 642.520100000000000000
          Top = 7.559060000000045000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          HAlign = haRight
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 291.023810000000000000
          Top = 11.338589999999950000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 154.960730000000000000
          Top = 11.338589999999950000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'N'#250'mero de Ingredientes:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 49.133890000000000000
          Top = 64.252010000000040000
          Width = 684.094930000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Century Schoolbook'
          Font.Style = []
          Memo.UTF8W = (
            '[fdsReceta."PreparacionReceta"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 7.559060000000000000
          Top = 45.354360000000040000
          Width = 725.669760000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Century Schoolbook'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '   MODO DE PREPARACI'#211'N')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 642.520100000000000000
          Top = 11.338589999999950000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fdsRecetaPda."Costo_Insumo">,DetailData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 548.031849999999900000
          Top = 11.338589999999950000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'COSTO TOTAL:')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 737.008350000000000000
        Width = 740.409927000000000000
        object Memo30: TfrxMemoView
          Left = 461.102660000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina: [(<Page#>)] de [TotalPages#]')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object MasterData1: TfrxMasterData
        Height = 210.551330000000000000
        Top = 234.330860000000000000
        Width = 740.409927000000000000
        RowCount = 0
        object Picture3: TfrxPictureView
          Left = 7.559060000000000000
          Top = 22.677179999999990000
          Width = 321.260050000000000000
          Height = 147.401670000000000000
          ShowHint = False
          DataField = 'Imagen'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo34: TfrxMemoView
          Left = 411.968770000000000000
          Top = 22.677179999999990000
          Width = 306.141930000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Century Schoolbook'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fdsReceta."NombreReceta"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 340.157700000000000000
          Top = 24.677179999999990000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'NOMBRE:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 340.157700000000000000
          Top = 68.031539999999970000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C'#211'DIGO:')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 396.850650000000000000
          Top = 68.031539999999970000
          Width = 328.819110000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fdsReceta."CodigoReceta"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 340.157700000000000000
          Top = 109.606370000000000000
          Width = 385.512060000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'RECETA CALCULADA PARA ALIMENTAR A            COMENSALES')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 561.370440000000000000
          Top = 109.606370000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsReceta."Personas"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 340.157700000000000000
          Top = 87.047310000000130000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'TIPO DE ALIMENTO:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 453.543600000000000000
          Top = 87.047310000000130000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fdsReceta."NombreTipoReceta"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 340.157700000000000000
          Top = 132.283550000000000000
          Width = 385.512060000000000000
          Height = 49.133890000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clNone
          HAlign = haBlock
          Memo.UTF8W = (
            '[fdsReceta."DescripcionReceta"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 7.559060000000000000
          Width = 721.890230000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Century Schoolbook'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '   DATOS DE LA RECETA')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 52.440630000000000000
        Top = 468.661720000000000000
        Width = 740.409927000000000000
        Condition = 'true'
        object Memo17: TfrxMemoView
          Left = 8.559060000000000000
          Top = 1.850340000000017000
          Width = 729.449290000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Century Schoolbook'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '   INGREDIENTES PARA ESTA RECETA')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 7.559055120000000000
          Top = 27.307050000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
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
            'C'#243'digo')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 84.149660000000000000
          Top = 27.307050000000000000
          Width = 340.157700000000000000
          Height = 15.118110240000000000
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
            'Ingrediente')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 425.086521420000000000
          Top = 27.307050000000000000
          Width = 66.252010000000000000
          Height = 15.118120000000000000
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
            'Cantidad')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 491.338475280000000000
          Top = 27.307050000000000000
          Width = 56.692950000000010000
          Height = 15.118120000000000000
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
            'Medida')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 548.031849999999900000
          Top = 27.456709999999990000
          Width = 66.252010000000000000
          Height = 15.118120000000000000
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
            'Prec. Ingred.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 614.283803860000000000
          Top = 27.456709999999990000
          Width = 57.448818897637790000
          Height = 15.118120000000000000
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
            'Med. Ingred.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 671.756340000000000000
          Top = 27.456709999999990000
          Width = 66.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Costo Ingred.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object dsReceta: TDataSource
    DataSet = cdReceta
    Left = 112
    Top = 304
  end
  object dsRecetaInsumoLista: TDataSource
    DataSet = cdRecetaInsumoLista
    Left = 232
    Top = 328
  end
end
