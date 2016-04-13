object FrmOrganizacion: TFrmOrganizacion
  Tag = 200
  Left = 0
  Top = 0
  Caption = 'Configuraci'#243'n organizacional'
  ClientHeight = 623
  ClientWidth = 1055
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  DesignSize = (
    1055
    623)
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1055
    Height = 122
    BarManager = dxBarManager1
    ColorSchemeName = 'Office2013White'
    Contexts = <>
    TabOrder = 5
    TabStop = False
    object dxTabOrganizaciones: TdxRibbonTab
      Active = True
      Caption = 'Configuraci'#243'n Organizacional'
      Groups = <
        item
          ToolbarName = 'dxbrOpciones'
        end
        item
          ToolbarName = 'mbBuscar'
        end>
      Index = 0
    end
  end
  object dxDSite1: TdxDockSite
    Left = 0
    Top = 122
    Width = 1055
    Height = 501
    Align = alClient
    DockingType = 5
    OriginalWidth = 1055
    OriginalHeight = 501
    object dxLayoutDockSite4: TdxLayoutDockSite
      Left = 0
      Top = 0
      Width = 637
      Height = 501
      DockingType = 0
      OriginalWidth = 300
      OriginalHeight = 200
      object dxLayoutDockSite3: TdxLayoutDockSite
        Left = 0
        Top = 0
        Width = 637
        Height = 501
        DockingType = 0
        OriginalWidth = 300
        OriginalHeight = 200
        object dxLDocktimbrado: TdxLayoutDockSite
          Left = 0
          Top = 0
          Width = 247
          Height = 501
          DockingType = 0
          OriginalWidth = 300
          OriginalHeight = 200
          object dxLayoutDockSite1: TdxLayoutDockSite
            Left = 0
            Top = 0
            Width = 247
            Height = 501
            DockingType = 0
            OriginalWidth = 300
            OriginalHeight = 200
            object dxLDockOrganizacion: TdxLayoutDockSite
              Left = 0
              Top = 0
              Width = 247
              Height = 501
              DockingType = 0
              OriginalWidth = 300
              OriginalHeight = 200
            end
            object dxDockPanel1: TdxDockPanel
              Left = 0
              Top = 0
              Width = 247
              Height = 501
              AllowFloating = True
              AutoHide = False
              Caption = 'dxDockPanel1'
              CustomCaptionButtons.Buttons = <>
              Dockable = False
              ShowCaption = False
              TabsProperties.CustomButtons.Buttons = <>
              DockingType = 0
              OriginalWidth = 185
              OriginalHeight = 140
              object dxTreeFrmOrganizacion: TcxDBTreeList
                Left = 0
                Top = 0
                Width = 239
                Height = 494
                Align = alClient
                Bands = <
                  item
                    Caption.Text = 'Diagrama Organizacional'
                    FixedKind = tlbfRight
                  end>
                DataController.DataSource = dsOrganizacion
                DataController.ImageIndexField = 'imgIndex'
                DataController.ParentField = 'Padre'
                DataController.KeyField = 'IdOrganizacion'
                Navigator.Buttons.CustomButtons = <>
                OptionsView.CellAutoHeight = True
                OptionsView.BandLineHeight = 30
                OptionsView.Bands = True
                OptionsView.ColumnAutoWidth = True
                RootValue = -1
                TabOrder = 0
                OnDblClick = dxTreeFrmOrganizacionDblClick
                object cxColumnTituloOrganizacion: TcxDBTreeListColumn
                  PropertiesClassName = 'TcxLabelProperties'
                  Caption.AlignVert = vaTop
                  Caption.Text = 'Organizaci'#243'n'
                  DataBinding.FieldName = 'TituloOrganizacion'
                  Width = 112
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                  Position.BandIndex = 0
                  Summary.FooterSummaryItems = <>
                  Summary.GroupFooterSummaryItems = <>
                end
                object cxColumnCodigo: TcxDBTreeListColumn
                  PropertiesClassName = 'TcxLabelProperties'
                  Caption.AlignVert = vaTop
                  Caption.Text = 'C'#243'digo'
                  DataBinding.FieldName = 'CodigoOrganizacion'
                  Width = 100
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                  Position.BandIndex = 0
                  Summary.FooterSummaryItems = <>
                  Summary.GroupFooterSummaryItems = <>
                end
                object cxColumnNombre: TcxDBTreeListColumn
                  PropertiesClassName = 'TcxLabelProperties'
                  Caption.AlignVert = vaTop
                  Caption.Text = 'Nombre'
                  DataBinding.FieldName = 'NombreOrganizacion'
                  Width = 100
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                  Position.BandIndex = 0
                  Summary.FooterSummaryItems = <>
                  Summary.GroupFooterSummaryItems = <>
                end
                object cxColumnRfc: TcxDBTreeListColumn
                  PropertiesClassName = 'TcxLabelProperties'
                  Caption.AlignVert = vaTop
                  Caption.Text = 'R.F.C.'
                  DataBinding.FieldName = 'rfc'
                  Width = 100
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                  Position.BandIndex = 0
                  Summary.FooterSummaryItems = <>
                  Summary.GroupFooterSummaryItems = <>
                end
                object cxColumnRegPat: TcxDBTreeListColumn
                  PropertiesClassName = 'TcxLabelProperties'
                  Caption.AlignVert = vaTop
                  Caption.Text = 'Registro Patronal'
                  DataBinding.FieldName = 'regpatimss'
                  Width = 100
                  Position.ColIndex = 5
                  Position.RowIndex = 0
                  Position.BandIndex = 0
                  Summary.FooterSummaryItems = <>
                  Summary.GroupFooterSummaryItems = <>
                end
                object cxColumnLogo: TcxDBTreeListColumn
                  PropertiesClassName = 'TcxImageProperties'
                  Caption.Text = ' '
                  DataBinding.FieldName = 'ImgIndex'
                  Width = 20
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                  Position.BandIndex = 0
                  Summary.FooterSummaryItems = <>
                  Summary.GroupFooterSummaryItems = <>
                end
              end
            end
          end
          object dxDockConfiguracion: TdxDockPanel
            Left = -143
            Top = 0
            Width = 390
            Height = 501
            Visible = False
            AllowFloating = True
            AutoHide = False
            Caption = 'Configuraci'#243'n'
            CaptionButtons = [cbHide]
            CustomCaptionButtons.Buttons = <>
            TabsProperties.CustomButtons.Buttons = <>
            TabsProperties.TabPosition = tpRight
            DockingType = 3
            OriginalWidth = 390
            OriginalHeight = 140
            object cxScrBoxDatosFiscales: TcxScrollBox
              Left = 0
              Top = 0
              Width = 382
              Height = 457
              Align = alClient
              TabOrder = 0
              object cxlbl1: TcxLabel
                Left = 16
                Top = 15
                Caption = 'Salario:'
                Transparent = True
              end
              object cxlbl2: TcxLabel
                Left = 16
                Top = 38
                Caption = 'Prima Dominical (P.D.):'
                Transparent = True
              end
              object cxlbl3: TcxLabel
                Left = 16
                Top = 61
                Caption = 'Prima Vacacional (P.V.):'
                Transparent = True
              end
              object cxlbl4: TcxLabel
                Left = 16
                Top = 83
                Caption = 'Dias Exento P.V.'
                Transparent = True
              end
              object cxlbl5: TcxLabel
                Left = 16
                Top = 106
                Caption = 'Dias Exento Aguinaldo:'
                Transparent = True
              end
              object cxlbl6: TcxLabel
                Left = 16
                Top = 128
                Caption = 'Seg. Vida Infonavit:'
                Transparent = True
              end
              object cxlbl7: TcxLabel
                Left = 16
                Top = 151
                Caption = 'Tope SMDF para SDI:'
                Transparent = True
              end
              object cxlbl8: TcxLabel
                Left = 16
                Top = 173
                Caption = 'Impuesto estado:'
                Transparent = True
              end
              object cxDbLblSalario: TcxDBLabel
                Left = 135
                Top = 15
                DataBinding.DataField = 'SalMinGenZona'
                DataBinding.DataSource = dsOrganizacion
                Height = 21
                Width = 234
              end
              object cxDbLblPD: TcxDBLabel
                Left = 135
                Top = 38
                DataBinding.DataField = 'FactorPrimaDominical'
                DataBinding.DataSource = dsOrganizacion
                Height = 21
                Width = 234
              end
              object cxDbLblPV: TcxDBLabel
                Left = 135
                Top = 61
                DataBinding.DataField = 'FactorPrimaVacacional'
                DataBinding.DataSource = dsOrganizacion
                Height = 21
                Width = 234
              end
              object cxDbLblEPV: TcxDBLabel
                Left = 135
                Top = 83
                DataBinding.DataField = 'DiasExcentoPrimaVacacional'
                DataBinding.DataSource = dsOrganizacion
                Height = 21
                Width = 234
              end
              object cxDbLblEAguin: TcxDBLabel
                Left = 137
                Top = 110
                DataBinding.DataField = 'DiasExcentoAguinaldo'
                DataBinding.DataSource = dsOrganizacion
                Height = 21
                Width = 234
              end
              object cxDbLblSVI: TcxDBLabel
                Left = 135
                Top = 128
                DataBinding.DataField = 'SeguroVidaInfonavit'
                DataBinding.DataSource = dsOrganizacion
                Height = 21
                Width = 234
              end
              object cxDbLblTopeImss: TcxDBLabel
                Left = 135
                Top = 151
                DataBinding.DataField = 'NSMTopeIntIMSS'
                DataBinding.DataSource = dsOrganizacion
                Height = 21
                Width = 234
              end
              object cxDbLblImp: TcxDBLabel
                Left = 135
                Top = 173
                DataBinding.DataField = 'PorcientoNomina'
                DataBinding.DataSource = dsOrganizacion
                Height = 21
                Width = 234
              end
            end
          end
        end
        object dxDockPanel3: TdxDockPanel
          Left = 247
          Top = 0
          Width = 390
          Height = 501
          Visible = False
          AllowFloating = True
          AutoHide = False
          Caption = 'Timbrado'
          CaptionButtons = [cbHide]
          CustomCaptionButtons.Buttons = <>
          TabsProperties.CustomButtons.Buttons = <>
          DockingType = 3
          OriginalWidth = 390
          OriginalHeight = 140
          object cxLabel9: TcxLabel
            Left = 16
            Top = 91
            Caption = 'Llave:'
            Transparent = True
          end
          object cxLabel10: TcxLabel
            Left = 14
            Top = 17
            Caption = 'Certificado:'
            Transparent = True
          end
          object cxDBLabel11: TcxDBLabel
            Left = 82
            Top = 174
            DataBinding.DataField = 'ClaveCSD'
            DataBinding.DataSource = dsOrganizacion
            Height = 21
            Width = 259
          end
          object cxLabel11: TcxLabel
            Left = 18
            Top = 175
            Caption = 'Clave CSD:'
            Transparent = True
          end
          object cxbtnUbicacionKey: TcxButton
            Left = 332
            Top = 107
            Width = 36
            Height = 48
            OptionsImage.ImageIndex = 9
            TabOrder = 4
            OnClick = cxbtnUbicacionKeyClick
          end
          object cxbtnUbicacionCer: TcxButton
            Left = 332
            Top = 34
            Width = 36
            Height = 49
            OptionsImage.ImageIndex = 9
            TabOrder = 5
            OnClick = cxbtnUbicacionCerClick
          end
          object CxMemoCer: TcxDBMemo
            Left = 16
            Top = 34
            DataBinding.DataField = 'RutaArchivoCert'
            DataBinding.DataSource = dsOrganizacion
            Properties.ScrollBars = ssVertical
            TabOrder = 6
            Height = 48
            Width = 307
          end
          object CxMemoKey: TcxDBMemo
            Left = 16
            Top = 107
            DataBinding.DataField = 'RutaArchivoKey'
            DataBinding.DataSource = dsOrganizacion
            Properties.ScrollBars = ssVertical
            TabOrder = 7
            Height = 48
            Width = 307
          end
        end
      end
      object dxDockPanel4: TdxDockPanel
        Left = 0
        Top = 0
        Width = 390
        Height = 0
        Visible = False
        AllowFloating = True
        AutoHide = True
        Caption = 'Tel'#233'fonos'
        CaptionButtons = [cbHide]
        CustomCaptionButtons.Buttons = <>
        TabsProperties.CustomButtons.Buttons = <>
        TabsProperties.TabPosition = tpRight
        AutoHidePosition = 2
        DockingType = 3
        OriginalWidth = 390
        OriginalHeight = 140
        object cxScrollBox1: TcxScrollBox
          Left = 0
          Top = 0
          Width = 382
          Height = 0
          Align = alClient
          TabOrder = 0
          object cxLabel1: TcxLabel
            Left = 16
            Top = 16
            Caption = 'Tel'#233'fono 1:'
            Transparent = True
          end
          object cxLabel2: TcxLabel
            Left = 16
            Top = 38
            Caption = 'Tel'#233'fono 2:'
            Transparent = True
          end
          object cxLabel3: TcxLabel
            Left = 16
            Top = 61
            Caption = 'Tel'#233'fono 3:'
            Transparent = True
          end
          object cxLabel4: TcxLabel
            Left = 16
            Top = 83
            Caption = 'Tel'#233'fono 4:'
            Transparent = True
          end
          object cxLabel5: TcxLabel
            Left = 16
            Top = 106
            Caption = 'Tel'#233'fono 5:'
            Transparent = True
          end
          object cxDBLabel1: TcxDBLabel
            Left = 80
            Top = 16
            DataBinding.DataField = 'Telefono1'
            DataBinding.DataSource = dsOrganizacion
            Height = 21
            Width = 289
          end
          object cxDBLabel2: TcxDBLabel
            Left = 80
            Top = 38
            DataBinding.DataField = 'Telefono2'
            DataBinding.DataSource = dsOrganizacion
            Height = 21
            Width = 289
          end
          object cxDBLabel3: TcxDBLabel
            Left = 80
            Top = 61
            DataBinding.DataField = 'Telefono3'
            DataBinding.DataSource = dsOrganizacion
            Height = 21
            Width = 289
          end
          object cxDBLabel4: TcxDBLabel
            Left = 80
            Top = 83
            DataBinding.DataField = 'Telefono4'
            DataBinding.DataSource = dsOrganizacion
            Height = 21
            Width = 289
          end
          object cxDBLabel5: TcxDBLabel
            Left = 80
            Top = 106
            DataBinding.DataField = 'Telefono5'
            DataBinding.DataSource = dsOrganizacion
            Height = 21
            Width = 289
          end
        end
      end
    end
    object dxDockPanel2: TdxDockPanel
      Left = 637
      Top = 0
      Width = 390
      Height = 501
      AllowFloating = True
      AutoHide = False
      Caption = 'Datos Fiscales'
      CaptionButtons = [cbHide]
      CustomCaptionButtons.Buttons = <>
      TabsProperties.CustomButtons.Buttons = <>
      TabsProperties.TabPosition = tpRight
      DockingType = 3
      OriginalWidth = 390
      OriginalHeight = 140
      object cxScrollBox2: TcxScrollBox
        Left = 0
        Top = 0
        Width = 382
        Height = 457
        Align = alClient
        TabOrder = 0
        DesignSize = (
          380
          455)
        object cxLabel12: TcxLabel
          Left = 16
          Top = 16
          Caption = 'Calle:'
          Transparent = True
        end
        object cxLabel13: TcxLabel
          Left = 16
          Top = 38
          Caption = 'N'#250'mero:'
          Transparent = True
        end
        object cxLabel14: TcxLabel
          Left = 16
          Top = 61
          Caption = 'Colonia:'
          Transparent = True
        end
        object cxLabel15: TcxLabel
          Left = 16
          Top = 83
          Caption = 'C.P:'
          Transparent = True
        end
        object cxLabel16: TcxLabel
          Left = 16
          Top = 106
          Caption = 'Municipio:'
          Transparent = True
        end
        object cxLabel17: TcxLabel
          Left = 16
          Top = 128
          Caption = 'Localidad:'
          Transparent = True
        end
        object cxLabel18: TcxLabel
          Left = 16
          Top = 151
          Caption = 'Estado:'
          Transparent = True
        end
        object cxLabel19: TcxLabel
          Left = 16
          Top = 173
          Caption = 'Pa'#237's:'
          Transparent = True
        end
        object cxDBImage2: TcxDBImage
          Left = 16
          Top = 200
          Anchors = [akLeft, akTop, akBottom]
          DataBinding.DataField = 'Imagen'
          DataBinding.DataSource = dsOrganizacion
          Properties.GraphicClassName = 'TdxSmartImage'
          TabOrder = 8
          Height = 260
          Width = 353
        end
        object cxDBLabel9: TcxDBLabel
          Left = 80
          Top = 16
          DataBinding.DataField = 'Calle'
          DataBinding.DataSource = dsOrganizacion
          Height = 21
          Width = 289
        end
        object cxDBLabel10: TcxDBLabel
          Left = 80
          Top = 38
          DataBinding.DataField = 'Numero'
          DataBinding.DataSource = dsOrganizacion
          Height = 21
          Width = 289
        end
        object cxDBLabel12: TcxDBLabel
          Left = 80
          Top = 61
          DataBinding.DataField = 'Colonia'
          DataBinding.DataSource = dsOrganizacion
          Height = 21
          Width = 289
        end
        object cxDBLabel13: TcxDBLabel
          Left = 80
          Top = 83
          DataBinding.DataField = 'Cp'
          DataBinding.DataSource = dsOrganizacion
          Height = 21
          Width = 289
        end
        object cxDBLabel14: TcxDBLabel
          Left = 80
          Top = 106
          DataBinding.DataField = 'Municipio'
          DataBinding.DataSource = dsOrganizacion
          Height = 21
          Width = 289
        end
        object cxDBLabel15: TcxDBLabel
          Left = 80
          Top = 128
          DataBinding.DataField = 'Localidad'
          DataBinding.DataSource = dsOrganizacion
          Height = 21
          Width = 289
        end
        object cxDBLabel16: TcxDBLabel
          Left = 80
          Top = 151
          DataBinding.DataField = 'Estado'
          DataBinding.DataSource = dsOrganizacion
          Height = 21
          Width = 289
        end
        object cxDBLabel17: TcxDBLabel
          Left = 80
          Top = 173
          DataBinding.DataField = 'Pais'
          DataBinding.DataSource = dsOrganizacion
          Height = 21
          Width = 289
        end
      end
    end
  end
  object cdOrganizacion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 728
    Top = 152
  end
  object dsOrganizacion: TDataSource
    DataSet = cdOrganizacion
    Left = 544
    Top = 88
  end
  object dxBarManager1: TdxBarManager
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
    ImageOptions.DisabledLargeImages = ClientModule1.Lista24
    ImageOptions.HotImages = ClientModule1.Lista24
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 752
    Top = 40
    DockControlHeights = (
      0
      0
      0
      0)
    object dxbrOpciones: TdxBar
      Caption = 'Opciones'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1005
      FloatTop = 8
      FloatClientWidth = 68
      FloatClientHeight = 276
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxSubInsertar'
        end
        item
          Visible = True
          ItemName = 'dxBtnEditar'
        end
        item
          Visible = True
          ItemName = 'dxBtnEliminar'
        end
        item
          Visible = True
          ItemName = 'dxBtnActualizar'
        end
        item
          Visible = True
          ItemName = 'dxBtnCerrar'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object mbBuscar: TdxBar
      Caption = 'Buscar'
      CaptionButtons = <>
      DockedLeft = 283
      DockedTop = 0
      FloatLeft = 1089
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bcBuscar'
        end
        item
          Visible = True
          ItemName = 'ebTexto'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBtnInsertar: TdxBarLargeButton
      Caption = '&Insertar'
      Category = 0
      Hint = 'Insertar'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      LargeImageIndex = 0
    end
    object dxBtnEditar: TdxBarLargeButton
      Caption = '&Editar'
      Category = 0
      Hint = 'Editar'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000006834028B2C1500400000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000012090018AE5500FFA55100F21C0E0026000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000834000C0AE5500FFAE5500FFAE5500FF0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000004D4D4DFF4D4D
        4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D
        4DFF4D4D4DFF4D4D4DFF2323237500000000AE5500FFAE5500FF442100640000
        0000170B001F0F0F0F31484848ED4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D
        4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFEBEBEBEB10101010AE5500FF4823006A00000000AE55
        00FFAE5500FF0402000631313131EDEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF858585850000000000000000AE5500FFAE55
        00FFAE5500FFAE5500FF0402000631313131EDEDEDEDFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFD5B5B5B5B00000000AE5500FFAE55
        00FFAE5500FFAE5500FFAE5500FF0402000631313131EDEDEDEDFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F94E4E4E4E00000000AE55
        00FFAE5500FFAE5500FFAE5500FFAE5500FF0402000631313131EDEDEDEDFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F94E4E4E4E0000
        0000AE5500FFAE5500FFAE5500FFAE5500FFAE5500FF0402000631313131EDED
        EDEDFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F94E4E
        4E4E00000000AE5500FFAE5500FFAE5500FFAE5500FFAE5500FF040200063131
        3131EDEDEDEDFFFFFFFFFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9
        F9F94E4E4E4E00000000AE5500FFAE5500FFAE5500FFAE5500FFAE5500FF0402
        000631313131EDEDEDEDFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF9F9F9F94E4E4E4E00000000AE5500FFAE5500FFAE5500FFAE5500FFAE55
        00FF0402000631313131EDEDEDED4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF9F9F9F94E4E4E4E00000000AE5500FFAE5500FFAE5500FFAE55
        00FFAE5500FF0402000631313131484848ED00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF9F9F9F94E4E4E4E00000000AE5500FFAE5500FFAE55
        00FFAE5500FFAE5500FF040200060F0F0F3100000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F94E4E4E4E00000000AE5500FFAE55
        00FFAE5500FFAE5500FFAE5500FF0D06001200000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F94E4E4E4E00000000AE55
        00FFAE5500FFAE5500FFAE5500FF934800D700000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F94E4E4E4E0000
        0000AE5500FFAE5500FF8A4300CA00000000AE5500FF030100044D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F94E4E
        4E4E00000000854100C300000000AE5500FFAE5500FFAB5400FB4D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9
        F9F95656565600000000AE5500FFAE5500FFAE5500FFAE5500FF4D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFEFEFEFE5050505000000000AA5400F2AE5500FF000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF9F9F9F9626262620202020600000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4C4C4CFB00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFF00000000000000007AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF00000000000000007AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF00000000000000007AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF00000000000000007AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF00000000000000007AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      LargeImageIndex = 1
      OnClick = dxBtnEditarClick
      SyncImageIndex = False
      ImageIndex = 1
    end
    object dxBtnEliminar: TdxBarLargeButton
      Caption = 'Eli&minar'
      Category = 0
      Hint = 'Eliminar'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000002819D0010D5FF000214180000000000000000000000000000
        0000000112150010D5FF000383A00000000000000000000000004D4D4DFF4D4D
        4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D
        4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF404040D30505
        05110002829E0010D5FF0010D5FF0010D5FF000214170B0B0B240E0E0E2D0001
        12150010D5FF0010D5FF0010D5FF000383A100000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C8C8C8C0000
        00000010D5FF0010D5FF0010D5FF0010D5FF0010D5FF00010B0D0001090A0010
        D5FF0010D5FF0010D5FF0010D5FF0010D5FF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECECEC2F2F
        2F2F00010C0E0010D5FF0010D5FF0010D5FF0010D5FF0010D5FF0010D5FF0010
        D5FF0010D5FF0010D5FF0010D5FF0001090B00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEA
        EAEA2F2F2F2F00010C0E0010D5FF0010D5FF0010D5FF0010D5FF0010D5FF0010
        D5FF0010D5FF0010D5FF0001090B0E0E0E2F00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFEAEAEAEA2F2F2F2F000003040010D5FF0010D5FF0010D5FF0010D5FF0010
        D5FF0010D5FF000001012F2F2F2F474747EB00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E9E9E92D2D2D2D0001090B0010D5FF0010D5FF0010D5FF0010D5FF0010
        D5FF0010D5FF00010C0E24242424454545E300000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9
        E9E92D2D2D2D000112150010D5FF0010D5FF0010D5FF0010D5FF0010D5FF0010
        D5FF0010D5FF0010D5FF000214170B0B0B2400000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBEB2D2D
        2D2D000112150010D5FF0010D5FF0010D5FF0010D5FF0010D5FF0010D5FF0010
        D5FF0010D5FF0010D5FF0010D5FF0002141700000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8A8A8A8A0000
        00000010D5FF0010D5FF0010D5FF0010D5FF0010D5FF00000202000004050010
        D5FF0010D5FF0010D5FF0010D5FF0010D5FF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2D2D21111
        1111000383A00010D5FF0010D5FF0010D5FF0001090B2F2F2F2F2E2E2E2E0001
        0C0E0010D5FF0010D5FF0010D5FF000383A000000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C9
        C9C911111111000383A10010D5FF0001090B2F2F2F2FEBEBEBEBEAEAEAEA2E2E
        2E2E00010C0E0010D5FF000383A10505051100000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFC9C9C9C911111111000000002F2F2F2FEBEBEBEBFFFFFFFFFFFFFFFFEAEA
        EAEA2E2E2E2E00000000111111113D3D3DC900000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD2D2D2D28C8C8C8CECECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFECECECEC8B8B8B8BD2D2D2D24D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFF00000000000000007AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF00000000000000007AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF00000000000000007AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF00000000000000007AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF00000000000000007AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      LargeImageIndex = 2
      OnClick = dxBtnEliminarClick
      SyncImageIndex = False
      ImageIndex = 2
    end
    object dxBtnExportar: TdxBarLargeButton
      Caption = 'E&xportar'
      Category = 0
      Hint = 'Exportar'
      Visible = ivAlways
    end
    object dxBtnCerrar: TdxBarLargeButton
      Caption = '&Cerrar'
      Category = 0
      Hint = 'Cerrar'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000171D6B702C36C7D03643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF2C36
        C7D011154D500000000000000000000000000000000000000000000000000000
        00000000000000000000171D6B703643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF11154D5000000000000000000000000000000000000000000000
        000000000000000000002C36C7D03643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF2C36C7D000000000000000000000000000000000000000000000
        000000000000000000003643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF00000000000000000000000000000000000000000000
        000000000000000000003643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF00000000000000000000000000000000000000000000
        000000000000000000003643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF414DF4FF7078F7FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF5862F6FF414DF4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF00000000000000000000000000000000000000000000
        000000000000000000003643F4FF3643F4FF3643F4FF3643F4FF3643F4FF414D
        F4FFCCCBFDFFEEEBFFFF7B82F8FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF5862F6FFE3E1FFFFCCCBFDFF414DF4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF00000000000000000000000000000000000000000000
        000000000000000000003643F4FF3643F4FF3643F4FF3643F4FF3643F4FF7078
        F7FFEEEBFFFFEEEBFFFFEEEBFFFF7B82F8FF3643F4FF3643F4FF3643F4FF3643
        F4FF5862F6FFE3E1FFFFEEEBFFFFEEEBFFFF9297FAFF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF00000000000000000000000000000000000000000000
        000000000000000000003643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF7B82F8FFEEEBFFFFEEEBFFFFEEEBFFFF7B82F8FF3643F4FF3643F4FF5862
        F6FFE3E1FFFFEEEBFFFFEEEBFFFFA8ABFBFF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF00000000000000000000000000000000000000000000
        000000000000000000003643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF7B82F8FFEEEBFFFFEEEBFFFFEEEBFFFF7B82F8FF5862F6FFE3E1
        FFFFEEEBFFFFEEEBFFFFA8ABFBFF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF00000000000000000000000000000000000000000000
        000000000000000000003643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF7B82F8FFEEEBFFFFEEEBFFFFEEEAFFFFE7E5FFFFEEEB
        FFFFEEEBFFFFA8ABFBFF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF00000000000000000000000000000000000000000000
        000000000000000000003643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF7B82F8FFEEEAFFFFEEEBFFFFEEEBFFFFEEEB
        FFFFA8ABFBFF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF00000000000000000000000000000000000000000000
        000000000000000000003643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF5862F6FFE7E5FFFFEEEBFFFFEEEBFFFFEEEB
        FFFF7B82F8FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF00000000000000000000000000000000000000000000
        000000000000000000003643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF5862F6FFE3E1FFFFEEEBFFFFEEEBFFFFEEEBFFFFEEEB
        FFFFEEEBFFFF7B82F8FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF00000000000000000000000000000000000000000000
        000000000000000000003643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF5862F6FFE3E1FFFFEEEBFFFFEEEBFFFFA8ABFBFF7B82F8FFEEEB
        FFFFEEEBFFFFEEEBFFFF7B82F8FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF00000000000000000000000000000000000000000000
        000000000000000000003643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF5862F6FFE3E1FFFFEEEBFFFFEEEBFFFFA8ABFBFF3643F4FF3643F4FF7B82
        F8FFEEEBFFFFEEEBFFFFEEEBFFFF7B82F8FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF00000000000000000000000000000000000000000000
        000000000000000000003643F4FF3643F4FF3643F4FF3643F4FF3643F4FF5862
        F6FFE3E1FFFFEEEBFFFFEEEBFFFFA8ABFBFF3643F4FF3643F4FF3643F4FF3643
        F4FF7B82F8FFEEEBFFFFEEEBFFFFEEEBFFFF646DF7FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF00000000000000000000000000000000000000000000
        000000000000000000003643F4FF3643F4FF3643F4FF3643F4FF3643F4FF414D
        F4FFCBCAFDFFEEEBFFFFA8ABFBFF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF7B82F8FFEEEBFFFFA8ABFBFF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF00000000000000000000000000000000000000000000
        000000000000000000003643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF414DF4FF9296F9FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF646DF7FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF00000000000000000000000000000000000000000000
        000000000000000000003643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF00000000000000000000000000000000000000000000
        000000000000000000003643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF00000000000000000000000000000000000000000000
        000000000000000000002C36C7D03643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF2B36C6CF00000000000000000000000000000000000000000000
        00000000000000000000171D6B703643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF171D6B7000000000000000000000000000000000000000000000
        0000000000000000000000000000171D6B702B36C6CF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF2B36
        C6CF171D6A6F0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxBtnCerrarClick
    end
    object dxBtnActualizar: TdxBarLargeButton
      Caption = '&Actualizar'
      Category = 0
      Hint = 'Actualizar'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000010100020609010E040601090000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000609010D283E085E48700FA95F9314DE6CA717FC6DA917FF6DA917FF69A2
        16F5588812CD3E610D921B2A063F000100010000000000000000000000000000
        000000000000000000001E2E0646000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000080D02133C5D
        0D8C68A116F36DA917FF6DA917FF6DA917FF6DA917FF6DA917FF6DA917FF6DA9
        17FF6DA917FF6DA917FF6DA917FF5D9014D9283E085E00010001000000000000
        000000000000000000006AA416F71F3006480000000000000000000000000000
        0000000000000000000000000000000000000000000023370753649B15EA6DA9
        17FF6DA917FF6DA917FF6DA917FF6DA917FF6DA917FF6DA917FF6DA917FF6DA9
        17FF6DA917FF6DA917FF6DA917FF6DA917FF6DA917FF538111C20E1503200000
        000000000000000000006DA917FF6AA416F72031074A00000000000000000000
        00000000000000000000000000000000000036540B7F6CA817FD6DA917FF6DA9
        17FF6DA917FF6DA917FF6DA917FF609414E04C7610B244690E9F466C0FA3517E
        11BE67A016F26DA917FF6DA917FF6DA917FF6DA917FF6DA917FF659C15EC1724
        053600000000000000006DA917FF6DA917FF69A316F600000000000000000000
        000000000000000000000000000037550C806DA917FF6DA917FF6DA917FF6DA9
        17FF69A316F63D5F0D8F121B0429000000000000000000000000000000000000
        0000020300041F300749507C11BB6DA917FF6DA917FF6DA917FF6DA917FF67A0
        16F116220533000000006DA917FF6DA917FF6CA817FD00000000000000000000
        00000000000000000000253908566DA917FF6DA917FF6DA917FF6DA917FF5381
        11C20F1703220000000000000000000000000000000000000000000000000000
        000000000000000000000000000023360752659D15ED6DA917FF6DA917FF6DA9
        17FF629815E5162205336DA917FF6DA917FF6CA817FD00000000000000000000
        000000000000090E0215659D15ED6DA917FF6DA917FF6DA917FF48700FA90305
        0107000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000010190326609414E06DA917FF6DA9
        17FF6DA917FF6DA917FF6DA917FF6DA917FF6DA917FF00000000000000000000
        00000000000040630E966DA917FF6DA917FF6DA917FF538112C3030401060000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000131E042D69A216F56DA9
        17FF6DA917FF6DA917FF6DA917FF6DA917FF6DA917FF00000000000000000000
        0000090D02146AA416F76DA917FF6DA917FF68A216F40E150320000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000162205336DA9
        17FF6DA917FF6DA917FF6DA917FF6DA917FF6DA917FF00010001000000000000
        00002E470A6B6DA917FF6DA917FF6DA917FF3B5B0C8A00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001D2D06446AA416F76DA917FF6DA917FF6DA917FF6DA917FF6DA9
        17FF6DA917FF6DA917FF6DA917FF6DA917FF6DA917FF00010001000000000000
        00004D7710B46DA917FF6DA917FF6DA917FF0F18032400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000233607516CA717FC6DA917FF6DA917FF6DA917FF6DA9
        17FF6DA917FF6DA917FF6DA917FF6DA917FF6DA917FF01020003000000000000
        0000639A15E86DA917FF6DA917FF5E9214DC0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000002A4209636CA817FD6DA917FF6DA917FF6DA9
        17FF6DA917FF6DA917FF6DA917FF6BA617FB69A316F601020003000000000102
        00036DA917FF6DA917FF6DA917FF38570C830000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00003D5E0D8E6DA917FF6DA917FF6DA917FF0304010600000000000000006CA8
        17FD6DA917FF6DA917FF6DA917FF6DA917FF6DA917FF6DA917FF6DA917FF6CA8
        17FD6DA917FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00005D9014D96DA917FF6DA917FF649C15EB0000000000000000000000006DA9
        17FF6DA917FF6DA917FF6DA917FF6DA917FF6DA917FF6DA917FF6DA917FF6DA9
        17FF6CA717FC6DA917FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000F17
        03226DA917FF6DA917FF6DA917FF4E7911B70000000000000000000000006DA8
        17FE6DA917FF6DA917FF6DA917FF6DA917FF6DA917FF6DA917FF6DA917FF6DA9
        17FF6DA917FF6AA416F76DA917FF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000003B5B
        0C896DA917FF6DA917FF6DA917FF2F480A6D0000000000000000000000006CA8
        17FD6DA917FF6DA917FF6DA917FF6DA917FF6DA917FF15210532000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000C13031D68A1
        16F36DA917FF6DA917FF6AA416F8090F02160000000000000000000000006CA7
        17FC6DA917FF6DA917FF6DA917FF6DA917FF6DA917FF69A316F6152105320000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000003040106538111C26DA9
        17FF6DA917FF6DA917FF41650E98000000000000000000000000000000006BA6
        17FB6DA917FF6DA917FF6DA917FF6DA917FF6DA917FF6DA917FF629815E6131D
        042C000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000305010749710FAB6DA917FF6DA9
        17FF6DA917FF669E16EF0A100218000000000000000000000000000000006BA6
        17FB6DA917FF6DA917FF00000000609514E16DA917FF6DA917FF6DA917FF669E
        15EE263A08580000000000000000000000000000000000000000000000000000
        00000000000000000000000000000F170323548212C46DA917FF6DA917FF6DA9
        17FF6DA917FF2438085500000000000000000000000000000000000000006AA5
        16F96DA917FF6DA917FF0000000015200431669E15EE6DA917FF6DA917FF6DA9
        17FF6DA917FF517D11BD2133074D020300050000000000000000000000000000
        000000000000121C042A3D5F0D8F69A316F66DA917FF6DA917FF6DA917FF6DA9
        17FF37550C8000000000000000000000000000000000000000000000000067A0
        16F26DA917FF6DA917FF000000000000000016220533649A15E96DA917FF6DA9
        17FF6DA917FF6DA917FF6DA917FF67A016F2538112C3476E0FA6456B0FA24D78
        10B5609414E06DA917FF6DA917FF6DA917FF6DA917FF6DA917FF6CA817FD3654
        0B7E000000000000000000000000000000000000000000000000000000006DA9
        17FF6AA416F76DA917FF0000000000000000000000000C12021B527F11BF6DA9
        17FF6DA917FF6DA917FF6DA917FF6DA917FF6DA917FF6DA917FF6DA917FF6DA9
        17FF6DA917FF6DA917FF6DA917FF6DA917FF6DA917FF649B15EA223507500000
        0000000000000000000000000000000000000000000000000000000000000000
        00006DA917FF69A316F60000000000000000000000000000000000010001263B
        08595B8D13D56DA917FF6DA917FF6DA917FF6DA917FF6DA917FF6DA917FF6DA9
        17FF6DA917FF6DA917FF6DA917FF67A016F23B5B0C8A080D0213000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000006DA917FF00000000000000000000000000000000000000000000
        0000000100011A28053C3C5D0D8D578712CB68A216F46DA917FF6DA917FF6BA6
        17FB5E9214DD476E0FA6283E085E0609010D0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000407010A0609010E0101
        0002000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      LargeImageIndex = 3
      OnClick = dxBtnActualizarClick
      SyncImageIndex = False
      ImageIndex = 3
    end
    object dxBtnFiltrar: TdxBarLargeButton
      Caption = '&Filtrar'
      Category = 0
      Hint = 'Filtrar'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000031550091549100F8569500FF5695
        00FF539000F73052008D00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000F22004374A928FF74A928FF74A928FF74A928FF74A9
        28FF74A928FF74A928FF74A928FF0E1F003D0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000F22004374A928FF74A928FF74A928FF589500FF569500FF74A9
        28FF74A928FF74A928FF74A928FF74A928FF0D1E003B00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000074A928FF74A928FF74A928FF5F9914FFFFFFFFFFFFFFFFFF5F98
        12FF74A928FF74A928FF74A928FF74A928FF74A928FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000585858FD595959FF595959FF595959FF585858FD0000
        00003054008F74A928FF74A928FF5F9914FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF5F9812FF74A928FF74A928FF74A928FF74A928FF2E4F0088000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000585858FD595959FF5F5F5FFFFFFFFFFF585858FD0000
        0000539000F774A928FF5F9914FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF5F9914FF74A928FF74A928FF74A928FF508B00EE000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000585858FD595959FF5F5F5FFFFFFFFFFF585858FD0000
        0000569500FF589600FFFFFFFFFFFFFFFFFFFFFFFFFF5F9812FF5F9914FFFFFF
        FFFFFFFFFFFFFFFFFFFF609915FF74A928FF74A928FF569500FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000585858FD595959FF5F5F5FFFFFFFFFFF585858FD0000
        0000569500FF74A928FF5F9914FFFFFFFFFF5F9812FF74A928FF74A928FF5F99
        14FFFFFFFFFFFFFFFFFFFFFFFFFF609914FF74A928FF569500FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000585858FD595959FF5F5F5FFFFFFFFFFF585858FD0000
        0000539000F774A928FF73A726FF609C0DFF73A726FF74A928FF74A928FF74A9
        28FF5F9914FFFFFFFFFFFFFFFFFFFFFFFFFF589600FF508B00EE000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000585858FD595959FF5F5F5FFFFFFFFFFF585858FD0000
        00003052008D74A928FF74A928FF73A726FF74A928FF74A928FF74A928FF74A9
        28FF74A928FF5F9914FFFFFFFFFF5F9914FF78AA30FF2E4F0088000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000585858FD595959FF5F5F5FFFFFFFFFFF585858FD0000
        00000000000074A928FF74A928FF74A928FF74A928FF74A928FF74A928FF74A9
        28FF74A928FF74A928FF569500FF78AA2DFF73A726FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000585858FD595959FF5F5F5FFFFFFFFFFF585858FD0000
        0000000000000F22004374A928FF74A928FF74A928FF74A928FF74A928FF74A9
        28FF74A928FF74A928FF74A928FF73A726FF0D1E003B00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000585858FD595959FF5F5F5FFFFFFFFFFF585858FD0000
        000000000000000000000F23004574A928FF74A928FF74A928FF74A928FF74A9
        28FF74A928FF74A928FF74A928FF0E1F003E0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000585858FD595959FF5F5F5FFFFFFFFFFF585858FD0000
        00000000000000000000000000000000000031550091549100F8569500FF5695
        00FF539000F63054008F00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000585858FD595959FF5F5F5FFFFFFFFFFF585858FD0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000585858FD595959FF5F5F5FFFFFFFFFFF585858FD0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000585858FD595959FF5F5F5FFFFFFFFFFF585858FD0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000002020207585858FD595959FF5F5F5FFFFFFFFFFF585858FD0202
        0206000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000010101043D3D3DB0595959FF595959FF5C5C5CFFFFFFFFFF6A6A6AFF3B3B
        3BAA010101030000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001393939A2595959FF595959FF595959FF595959FFCBCBCBFFEFEFEFFF5B5B
        5BFF3636369C0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000003434
        3494595959FF595959FF595959FF595959FF595959FF717171FFFFFFFFFFC4C4
        C4FF595959FF3131318C00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000002E2E2E855959
        59FF595959FF595959FF595959FF595959FF595959FF595959FFD7D7D7FFFFFF
        FFFF959595FF595959FF2B2B2B7C000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000029292975595959FF5959
        59FF595959FF595959FF595959FF595959FF595959FF595959FF7B7B7BFFFFFF
        FFFFFFFFFFFF737373FF595959FE2626266C0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000024242467595959FE595959FF5959
        59FF595959FF595959FF595959FF595959FF595959FF595959FF595959FFE7E7
        E7FFFFFFFFFFF8F8F8FF5E5E5EFF585858FD2020205D00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000001F1F1F59585858FC595959FF595959FF5959
        59FF595959FF595959FF595959FF595959FF595959FF595959FF595959FF8B8B
        8BFFFFFFFFFFFFFFFFFFCFCFCFFF595959FF585858FB1C1C1C50000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000001B1B1B4C575757FA595959FF595959FF595959FF5959
        59FF595959FF595959FF595959FF595959FF595959FF595959FF595959FF5959
        59FFF5F5F5FFFFFFFFFFFFFFFFFF9D9D9DFF595959FF565656F7171717430000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000016161640565656F6595959FF595959FF595959FF595959FF5959
        59FF595959FF595959FF595959FF595959FF595959FF595959FF595959FF5959
        59FF989898FFFFFFFFFFFFFFFFFFFFFFFFFF777777FF595959FF555555F31313
        1337000000000000000000000000000000000000000000000000000000000000
        000012121235545454F1595959FF595959FF595959FF595959FF595959FF5959
        59FF595959FF595959FF595959FF595959FF595959FF595959FF595959FF5959
        59FF5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF5F5F5FFF595959FF5353
        53ED1010102D0000000000000000000000000000000000000000000000000F0F
        0F2B525252EC595959FF595959FF595959FF595959FF595959FF595959FF5959
        59FF595959FF595959FF595959FF595959FF595959FF595959FF595959FF5959
        59FF595959FFA7A7A7FFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D0FF595959FF5959
        59FF505050E60C0C0C23000000000000000000000000000000000C0C0C225050
        50E5595959FF595959FF595959FF595959FF595959FF595959FF595959FF5959
        59FF595959FF595959FF595959FF595959FF595959FF595959FF595959FF5959
        59FF595959FF5E5E5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF939393FF5959
        59FF595959FF4D4D4DDE0909091B000000000000000000000000343434945959
        59FF595959FF595959FF595959FF595959FF595959FF595959FF595959FF5959
        59FF595959FF595959FF595959FF595959FF595959FF595959FF595959FF5959
        59FF595959FF595959FF595959FF595959FF595959FF595959FF595959FF5959
        59FF595959FF595959FF303030890000000000000000000000001010102F5959
        59FF595959FF595959FF595959FF595959FF595959FF595959FF595959FF5959
        59FF595959FF595959FF595959FF595959FF595959FF595959FF595959FF5959
        59FF595959FF595959FF595959FF595959FF595959FF595959FF595959FF5959
        59FF595959FF595959FF0E0E0E29000000000000000000000000}
      LargeImageIndex = 8
      ShortCut = 16450
    end
    object dxSubInsertar: TdxBarSubItem
      Caption = '&Insertar'
      Category = 0
      Style = cxStyle2
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000075AD23FD76AE23FF76AE23FF76AE
        23FF020301050000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000075AD23FD76AE23FF76AE23FF76AE
        23FF0203010500000000000000000000000000000000000000004D4D4DFF4D4D
        4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D
        4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D
        4DFF4D4D4DFF4D4D4DFF4D4D4DFF0202020575AD23FD76AE23FF76AE23FF76AE
        23FF020301054B4B4BFA4D4D4DFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF0505050575AD23FD76AE23FF76AE23FF76AE
        23FF02030105FAFAFAFAFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF464646460303
        03030303030303030303030303030101010175AD23FD76AE23FF76AE23FF76AE
        23FF0203010503030303030303030101010300000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFC0102000376AE
        23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE
        23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF020301054D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFC0102000376AE
        23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE
        23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF020301054D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFC0102000376AE
        23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE
        23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF020301054D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFC0102000373A9
        22F873A922F873A922F873A922F873A922F876AD23FE76AE23FF76AE23FF76AE
        23FF73A922F873A922F873A922F873A922F873A922F8020301054D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C4C4C4C0909
        09090909090909090909090909090101010175AD23FD76AE23FF76AE23FF76AE
        23FF0203010509090909090909090303030900000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF0505050575AD23FD76AE23FF76AE23FF76AE
        23FF02030105FAFAFAFAFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF0505050575AD23FD76AE23FF76AE23FF76AE
        23FF02030105FAFAFAFAFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF0505050575AD23FD76AE23FF76AE23FF76AE
        23FF02030105FAFAFAFAFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF0505050575AD23FD76AE23FF76AE23FF76AE
        23FF02030105FAFAFAFAFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4A4A4A0303030303030303030303030303
        030345454545FFFFFFFFFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFF00000000000000004D4D4DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFF00000000000000007AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF00000000000000007AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF00000000000000007AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF00000000000000007AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF00000000000000007AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF7AAD
        32FF7AAD32FF7AAD32FF7AAD32FF7AAD32FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Images = ClientModule1.ImageList1
      ItemLinks = <
        item
          Visible = True
          ItemName = 'DxBtnPadre'
        end
        item
          Visible = True
          ItemName = 'DxBtnHijo'
        end>
      OnPopup = dxSubInsertarPopup
    end
    object DxBtnPadre: TdxBarButton
      Caption = '&En mismo nivel'
      Category = 0
      Hint = 'En mismo nivel'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000004ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF747474FF747474FF747474FF747474FF747474FF747474FF747474FF7474
        74FF747474FF747474FF747474FF747474FF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF747474FF747474FF747474FF747474FF747474FF747474FF747474FF7474
        74FF747474FF747474FF747474FF747474FF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF747474FF747474FF747474FF747474FF747474FF747474FF747474FF7474
        74FF747474FF747474FF747474FF747474FF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF747474FF747474FF747474FF747474FF747474FF747474FF747474FF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF49BBFDFD00000000000000000000000000000000000000004ABCFFFF4ABC
        FFFF747474FF747474FF747474FF747474FF747474FF747474FF747474FF4ABC
        FFFF49BBFDFD010203034ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF49BBFDFD010203034ABCFFFF4ABCFFFF4ABCFFFF000000004ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF49BBFDFD010203034ABCFFFF4ABCFFFF00000000000000004ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF49BBFDFD010203034ABCFFFF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = DxBtnPadreClick
    end
    object DxBtnHijo: TdxBarButton
      Caption = 'Debajo '
      Category = 0
      Hint = 'Debajo '
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000004ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF747474FF747474FF747474FF747474FF747474FF747474FF747474FF7474
        74FF747474FF747474FF747474FF747474FF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF747474FF747474FF747474FF747474FF747474FF747474FF747474FF7474
        74FF747474FF747474FF747474FF747474FF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF747474FF747474FF747474FF747474FF747474FF747474FF747474FF7474
        74FF747474FF747474FF747474FF747474FF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF747474FF747474FF747474FF747474FF747474FF747474FF747474FF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF49BBFDFD00000000000000000000000000000000000000004ABCFFFF4ABC
        FFFF747474FF747474FF747474FF747474FF747474FF747474FF747474FF4ABC
        FFFF49BBFDFD010203034ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF49BBFDFD010203034ABCFFFF4ABCFFFF4ABCFFFF000000004ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF49BBFDFD010203034ABCFFFF4ABCFFFF00000000000000004ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF49BBFDFD010203034ABCFFFF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = DxBtnHijoClick
    end
    object bcBuscar: TdxBarCombo
      Caption = 'Buscar en:'
      Category = 0
      Hint = 'Buscar en:'
      Visible = ivAlways
      OnChange = bcBuscarChange
      ShowCaption = True
      Width = 253
      ShowEditor = False
      ItemIndex = -1
    end
    object ebTexto: TdxBarEdit
      Caption = 'Texto:       '
      Category = 0
      Hint = 'Texto:       '
      Visible = ivAlways
      OnKeyDown = ebTextoKeyDown
      Width = 253
    end
    object dxBarButton1: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
  end
  object dxDockManager1: TdxDockingManager
    Color = clBtnFace
    DefaultHorizContainerSiteProperties.CustomCaptionButtons.Buttons = <>
    DefaultHorizContainerSiteProperties.Dockable = True
    DefaultHorizContainerSiteProperties.ImageIndex = -1
    DefaultVertContainerSiteProperties.CustomCaptionButtons.Buttons = <>
    DefaultVertContainerSiteProperties.Dockable = True
    DefaultVertContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.CustomCaptionButtons.Buttons = <>
    DefaultTabContainerSiteProperties.Dockable = True
    DefaultTabContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.TabsProperties.CustomButtons.Buttons = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 864
    Top = 48
    PixelsPerInch = 96
  end
  object cdNivelOrg: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 896
    Top = 160
  end
  object cxImageList1: TcxImageList
    Height = 24
    ShareImages = True
    Width = 24
    FormatVersion = 1
    DesignInfo = 9437784
    ImageInfo = <
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000D0F130956313E
          1F994F6532C3637D3DD9617C3DD84E6331C12E3A1D950E1108520000000B0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000E242E1785749549ED86AA54FE89AD
          55FF86AA54FE89AD55FF86AA54FE86AA54FE86AA54FE89AD55FF708F46E92029
          147D0000000A0000000000000000000000000000000000000000000000000000
          000000000000000000000709043B678340DF89AD55FF86AA54FE86AA54FE89AD
          55FF86AA54FE89AD55FF86AA54FE86AA54FE86AA54FE89AD55FF86AA54FE86AA
          54FE617C3DD80506033200000000000000000000000000000000000000000000
          0000000000000E12095381A350F789AD55FF89AD55FF89AD55FF89AD55FF89AD
          55FF89AD55FF89AD55FF89AD55FF89AD55FF89AD55FF89AD55FF89AD55FF89AD
          55FF89AD55FF7D9D4DF30A0D0647000000000000000000000000000000000000
          0000080A053F81A351F886AA54FE86AA54FE89AD55FF86AA54FE86AA54FE89AD
          55FF89AD55FF89AD55FF89AD55FF89AD55FF86AA54FE89AD55FF86AA54FE86AA
          54FE89AD55FF86AA54FE7C9C4CF3050603330000000000000000000000000000
          0010698641E189AD55FF86AA54FE86AA54FE89AD55FF86AA54FE86AA54FE89AD
          55FFC0D3A6FEFFFFFFFFFCFCFCFEBCD0A0FE86AA54FE89AD55FF86AA54FE86AA
          54FE89AD55FF86AA54FE86AA54FE617C3DD80000000A00000000000000002833
          198B89AD55FF89AD55FF89AD55FF89AD55FF89AD55FF89AD55FF89AD55FF89AD
          55FFC2D5A8FFFFFFFFFFFFFFFFFFBED2A2FF89AD55FF89AD55FF89AD55FF89AD
          55FF89AD55FF89AD55FF89AD55FF89AD55FF1F27137A00000000000000107898
          4BF086AA54FE89AD55FF86AA54FE86AA54FE89AD55FF86AA54FE86AA54FE89AD
          55FFC0D3A6FEFFFFFFFFFCFCFCFEBCD0A0FE86AA54FE89AD55FF86AA54FE86AA
          54FE89AD55FF86AA54FE86AA54FE89AD55FF6E8D45E70000000A12170B5E86AA
          54FE86AA54FE89AD55FF86AA54FE86AA54FE89AD55FF86AA54FE86AA54FE89AD
          55FFC0D3A6FEFFFFFFFFFCFCFCFEBCD0A0FE86AA54FE89AD55FF86AA54FE86AA
          54FE89AD55FF86AA54FE86AA54FE89AD55FF86AA54FE0C10084F384623A389AD
          55FF89AD55FF89AD55FF89AD55FF89AD55FF89AD55FF89AD55FF89AD55FF89AD
          55FFC2D5A8FFFFFFFFFFFFFFFFFFBED2A2FF89AD55FF89AD55FF89AD55FF89AD
          55FF89AD55FF89AD55FF89AD55FF89AD55FF89AD55FF2E391C94597238CF86AA
          54FE86AA54FE89AD55FF89AD55FFC1D3A8FEC4D6AAFFC1D3A8FEC1D3A8FEC4D6
          AAFFDEE8D1FEFFFFFFFFFCFCFCFEDCE6CEFEC1D3A8FEC4D6AAFFC1D3A8FEC1D3
          A8FEC4D6AAFF88AC54FF86AA54FE89AD55FF86AA54FE4C6230C06E8B44E589AD
          55FF89AD55FF89AD55FF89AD55FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF89AD55FF89AD55FF89AD55FF89AD55FF607A3CD66F8D46E686AA
          54FE86AA54FE89AD55FF89AD55FFFCFCFCFEFFFFFFFFFCFCFCFEFCFCFCFEFFFF
          FFFFFCFCFCFEFFFFFFFFFCFCFCFEFCFCFCFEFCFCFCFEFFFFFFFFFCFCFCFEFCFC
          FCFEFFFFFFFF88AC54FF86AA54FE89AD55FF86AA54FE607A3CD75C753AD286AA
          54FE86AA54FE89AD55FF89AD55FFBDD0A2FEBFD3A4FFBDD0A2FEBDD0A2FEBFD3
          A4FFDCE6CEFEFFFFFFFFFCFCFCFEDAE5CBFEBDD0A2FEBFD3A4FFBDD0A2FEBDD0
          A2FEBFD3A4FF88AC54FF86AA54FE89AD55FF86AA54FE4F6531C33B4A25A886AA
          54FE86AA54FE89AD55FF86AA54FE86AA54FE89AD55FF86AA54FE86AA54FE89AD
          55FFC0D3A6FEFFFFFFFFFCFCFCFEBCD0A0FE86AA54FE89AD55FF86AA54FE86AA
          54FE89AD55FF86AA54FE86AA54FE89AD55FF86AA54FE313D1E99151B0D6689AD
          55FF89AD55FF89AD55FF89AD55FF89AD55FF89AD55FF89AD55FF89AD55FF89AD
          55FFC2D5A8FFFFFFFFFFFFFFFFFFBED2A2FF89AD55FF89AD55FF89AD55FF89AD
          55FF89AD55FF89AD55FF89AD55FF89AD55FF89AD55FF10140A58010100167E9E
          4EF586AA54FE89AD55FF86AA54FE86AA54FE89AD55FF86AA54FE86AA54FE89AD
          55FFC0D3A6FEFFFFFFFFFCFCFCFEBCD0A0FE86AA54FE89AD55FF86AA54FE86AA
          54FE89AD55FF86AA54FE86AA54FE89AD55FF769649EE0000000F000000002F3C
          1D9786AA54FE89AD55FF86AA54FE86AA54FE89AD55FF86AA54FE86AA54FE89AD
          55FFC0D3A6FEFFFFFFFFFCFCFCFEBCD0A0FE86AA54FE89AD55FF86AA54FE86AA
          54FE89AD55FF86AA54FE86AA54FE89AD55FF2630178800000000000000000101
          0017739248EA89AD55FF89AD55FF89AD55FF89AD55FF89AD55FF89AD55FF89AD
          55FFC2D5A8FFFFFFFFFFFFFFFFFFBED2A2FF89AD55FF89AD55FF89AD55FF89AD
          55FF89AD55FF89AD55FF89AD55FF6A8743E20000001000000000000000000000
          00000C10074E85A953FC86AA54FE86AA54FE89AD55FF86AA54FE86AA54FE89AD
          55FF88AC54FF89AD55FF88AC54FF88AC54FF86AA54FE89AD55FF86AA54FE86AA
          54FE89AD55FF86AA54FE82A450F9080B05410000000000000000000000000000
          000000000000161D0E6984A852FC86AA54FE89AD55FF86AA54FE86AA54FE89AD
          55FF86AA54FE89AD55FF86AA54FE86AA54FE86AA54FE89AD55FF86AA54FE86AA
          54FE89AD55FF82A450F911150A5B000000000000000000000000000000000000
          000000000000000000000D110851759449EC89AD55FF89AD55FF89AD55FF89AD
          55FF89AD55FF89AD55FF89AD55FF89AD55FF89AD55FF89AD55FF89AD55FF89AD
          55FF6F8E46E70A0C064600000000000000000000000000000000000000000000
          00000000000000000000000000000102001C354421A080A250F886AA54FE89AD
          55FF86AA54FE89AD55FF86AA54FE86AA54FE86AA54FE89AD55FF7EA04EF6303D
          1E98010100170000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000102011D1A2110714455
          2AB4688541E07B9B4DF27A9A4BF1668240DE405228B1181E0F6C010100190000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00008D4500E63C1D009800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004B2400A9AD5400FFA34F00F7683300C70000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C9BD3E849BC
          FFFF49BCFFFF49BCFFFF49BCFFFF49BCFFFF49BCFFFF49BCFFFF2D749EC90000
          000200000000AB5400FEAE5400FF00000000100800500001021A378DBFDD49BC
          FFFF49BCFFFF49BCFFFF49BCFFFF3D9DD4E9000000000000000047BBFFFF49BC
          FFFF47BBFFFF47BBFFFF47BBFFFF49BCFFFF47BBFFFF47BBFFFF49BCFFFF0713
          1A5200000000683300C70000000010080050AE5400FFAE5400FF0001021A378D
          BFDD49BCFFFF47BBFFFF47BBFFFF49BCFFFF000000000000000047BBFFFF49BC
          FFFF47BBFFFF47BBFFFF47BBFFFF49BCFFFF47BBFFFF47BBFFFF49BCFFFF3790
          C4E0000102190000000010080050AE5400FFAE5400FFAE5400FFAE5400FF0001
          021A378DBFDD47BBFFFF47BBFFFF49BCFFFF000000000000000049BCFFFF49BC
          FFFF49BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA8A8A8CF0000000F00000000AE5400FFAE5400FFAE5400FFAE5400FFAE54
          00FF0202021A378DBFDD47BBFFFF49BCFFFF000000000000000047BBFFFF49BC
          FFFF49BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA8A8A8CF0000000F00000000AE5400FFAE5400FFAE5400FFAE54
          00FFAE5400FF0001021A358CBFDD49BCFFFF000000000000000049BCFFFF49BC
          FFFF49BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0022
          DAFFFFFFFFFFFFFFFFFFA8A8A8CF0000000F00000000AE5400FFAE5400FFAE54
          00FFAE5400FFAE5400FF0001021A378DBFDD000000000000000047BBFFFF49BC
          FFFF49BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0022DAFF0022
          DAFF0022DAFFFFFFFFFFFFFFFFFFA8A8A8CF0000000F00000000AE5400FFAE54
          00FFAE5400FFAE5400FFAE5400FF0001021A000000000000000047B9FDFE49BC
          FFFF49BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0022DAFF0022DAFF0022
          DAFF0022DAFF0022DAFFFFFFFFFFFFFFFFFFA8A8A8CF0000000F00000000AE54
          00FFAE5400FFAE5400FFAE5400FFAE5400FF000000000000000047B9FDFE49BC
          FFFF49BCFFFFFFFFFFFFFFFFFFFFFFFFFFFF0022DAFF0022DAFF0022DAFF0022
          DAFF0022DAFF0022DAFF0022DAFFFFFFFFFFFFFFFFFFA8A8A8CF0000000F0000
          0000AE5400FFAE5400FFAE5400FFAE5400FF000000000000000049BCFFFF49BC
          FFFF49BCFFFFFFFFFFFFFFFFFFFF0022DAFF0022DAFF0022DAFF0022DAFFFFFF
          FFFF0022DAFF0022DAFF0022DAFF0022DAFFFFFFFFFFFFFFFFFFA8A8A8CF0000
          000F00000000AE5400FFAE5400FF0000000000000000AE5400FF47B9FDFE49BC
          FFFF49BCFFFFFFFFFFFF0022DAFF0022DAFF0022DAFF0022DAFFFFFFFFFFFFFF
          FFFFFFFFFFFF0022DAFF0022DAFF0022DAFF0022DAFFFFFFFFFFFFFFFFFFA8A8
          A8CF0000000F000000000000000000000000AE5400FFAE5400FF49BCFFFF49BC
          FFFF49BCFFFFFFFFFFFFFFFFFFFF0022DAFF0022DAFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF0022DAFF0022DAFF0022DAFF0022DAFFFFFFFFFFFFFF
          FFFFA9A9A9D00001021700000000AE5400FFAE5400FF0000000047B9FDFE49BC
          FFFF49BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF0022DAFF0022DAFF0022DAFF0022DAFFFFFF
          FFFFFFFFFFFF307BA6CE0001011300000000000000000000000047B9FDFE49BC
          FFFF49BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0022DAFF0022DAFF0022DAFF0022
          DAFFFFFFFFFF49BCFFFF3EA3DEEE245B7CB2000000000000000047BBFFFF49BC
          FFFF49BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0022DAFF0022DAFFFFFF
          FFFFFFFFFFFF49BCFFFF47BBFFFF49BCFFFF000000000000000049BCFFFF49BC
          FFFF49BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF49BCFFFF47BBFFFF49BCFFFF000000000000000049BCFFFF49BC
          FFFF49BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF49BCFFFF49BCFFFF49BCFFFF000000000000000047B9FDFE49BC
          FFFF49BCFFFFFFFFFFFFFDFDFDFECFCFCFFFABABABFEABABABFEADADADFFABAB
          ABFEADADADFFABABABFEABABABFEABABABFEADADADFFABABABFEC9C9C9FEFFFF
          FFFFFFFFFFFF49BCFFFF47BBFFFF49BCFFFF000000000000000047B9FDFE49BC
          FFFF49BCFFFFFFFFFFFFFDFDFDFEA0A0A0FF616161FE616161FE626262FF6161
          61FE626262FF616161FE616161FE616161FE626262FF616161FE969696FEFFFF
          FFFFFFFFFFFF49BCFFFF47BBFFFF49BCFFFF000000000000000049BAFDFE49BC
          FFFF49BCFFFF4ABCFFFF41A3DEEE13242F7310161A6B373A3BC1606060FC6262
          62FF626262FF626262FF626262FF606060FD393B3BC40F1316670D171E5F3E9D
          D4E94ABCFFFF49BCFFFF49BCFFFF49BCFFFF00000000000000000C1F2B6949BC
          FFFF49BCFFFF49BCFFFF49BCFFFF46B0EFF7102736780001021C1718187C6161
          61FE0000000000000000616161FE1A1B1C86000000110D1E286A44AEEBF549BC
          FFFF49BCFFFF49BCFFFF49BCFFFF0C1F2B690000000000000000000000000000
          0000000000000000000000000000000000000000000000000000060607406161
          61FE626262FF616161FE616161FE070808480000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000D00041856000D
          4E9900157FC3001A9ED9001A9CD800157DC1000C4995000316520000000B0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000E00093B85001EBBED0022D7FE0024
          DAFF0022D7FE0024DAFF0022D7FE0022D7FE0022D7FE0024DAFF001DB5E90008
          337D0000000A0000000000000000000000000000000000000000000000000000
          0000000000000000000000010B3B001BA6DF0024DAFF0022D7FE0022D7FE0024
          DAFF0022D7FE0024DAFF0022D7FE0022D7FE0022D7FE0024DAFF0022D7FE0022
          D7FE001A9CD80001083200000000000000000000000000000000000000000000
          000000000000000317530022CCF70024DAFF0024DAFF0024DAFF0024DAFF0024
          DAFF0024DAFF0024DAFF0024DAFF0024DAFF0024DAFF0024DAFF0024DAFF0024
          DAFF0024DAFF0021C6F300021047000000000000000000000000000000000000
          000000020D3F0022CEF80022D7FE0022D7FE0024DAFF0022D7FE0022D7FE0024
          DAFF0022D7FE0024DAFF0022D7FE0022D7FE0022D7FE0024DAFF0022D7FE0022
          D7FE0024DAFF0022D7FE001FC5F3000108330000000000000000000000000000
          0010001BA8E10024DAFF0022D7FE0022D7FE0024DAFF0225D8FE0024D8FE0024
          DAFF0022D7FE0024DAFF0022D7FE0022D7FE0022D7FE0024DAFF082BDAFE0022
          D7FE0024DAFF0022D7FE0022D7FE001A9CD80000000A0000000000000000000A
          408B0024DAFF0024DAFF0024DAFF0024DAFF082BDCFFC5D0FFFF8E9FFCFF0024
          DAFF0024DAFF0024DAFF0024DAFF0024DAFF0024DAFF93A4FEFFE3EBFFFF1435
          DEFF0024DAFF0024DAFF0024DAFF0024DAFF0008317A0000000000000010001E
          C0F00022D7FE0024DAFF0022D7FE0327D8FEC6D2FFFFFDFDFDFEFDFDFDFE8C9F
          FCFF0024D8FE0024DAFF0022D7FE0024D8FE90A1FCFEFFFFFFFFFDFDFDFEE2E9
          FDFE0A2CDCFF0022D7FE0022D7FE0024DAFF001CB2E70000000A00051D5E0022
          D7FE0022D7FE0024DAFF0022D7FE0224D8FEA6B5FFFFFDFDFDFEFDFDFDFEFFFF
          FFFF8A9DFAFE0024DAFF0024D8FE90A1FCFEFDFDFDFEFFFFFFFFFDFDFDFE9EAE
          FDFE0224DAFF0022D7FE0022D7FE0024DAFF0022D7FE0003144F000F59A30024
          DAFF0024DAFF0024DAFF0024DAFF0024DAFF0225DAFFA4B3FFFFFFFFFFFFFFFF
          FFFFFFFFFFFF8E9FFCFF93A4FEFFFFFFFFFFFFFFFFFFFFFFFFFF9FAEFFFF0224
          DAFF0024DAFF0024DAFF0024DAFF0024DAFF0024DAFF000C499400188FCF0022
          D7FE0022D7FE0024DAFF0022D7FE0022D7FE0024DAFF0225D8FEA2B1FDFEFFFF
          FFFFFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFDFDFDFE9FAEFFFF0225D8FE0022
          D7FE0024DAFF0022D7FE0022D7FE0024DAFF0022D7FE00137BC0001DB0E50024
          DAFF0024DAFF0024DAFF0024DAFF0024DAFF0024DAFF0024DAFF0225DAFFA6B4
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2B1FFFF0224DAFF0024DAFF0024
          DAFF0024DAFF0024DAFF0024DAFF0024DAFF0024DAFF001999D6001DB1E60022
          D7FE0022D7FE0024DAFF0022D7FE0022D7FE0024DAFF0022D7FE0024D8FE93A4
          FEFFFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFE8C9EFAFE0024DAFF0022D7FE0022
          D7FE0024DAFF0022D7FE0022D7FE0024DAFF0022D7FE00199AD7001894D20022
          D7FE0022D7FE0024DAFF0022D7FE0022D7FE0024DAFF0024D8FE90A1FCFEFFFF
          FFFFFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFDFDFDFE8C9FFCFF0024D8FE0022
          D7FE0024DAFF0022D7FE0022D7FE0024DAFF0022D7FE00147FC3000F5FA80022
          D7FE0022D7FE0024DAFF0022D7FE0022D7FE0024DAFF90A1FCFEFDFDFDFEFFFF
          FFFFFDFDFDFEA2B1FFFFA2B2FDFEFDFDFDFEFDFDFDFEFFFFFFFF8A9DFAFE0024
          D8FE0024DAFF0022D7FE0022D7FE0024DAFF0022D7FE000C4E99000522660024
          DAFF0024DAFF0024DAFF0024DAFF0024DAFF93A4FEFFFFFFFFFFFFFFFFFFFFFF
          FFFFA0B0FFFF0225DAFF0225DAFFA3B3FFFFFFFFFFFFFFFFFFFFFFFFFFFF8E9F
          FCFF0024DAFF0024DAFF0024DAFF0024DAFF0024DAFF00041958000001160020
          C8F50022D7FE0024DAFF0022D7FE0327D8FED0DAFFFFFDFDFDFEFDFDFDFEA0B0
          FFFF0225D8FE0024DAFF0022D7FE0225D8FEA1B1FDFEFFFFFFFFFDFDFDFEDBE4
          FDFE0628DCFF0022D7FE0022D7FE0024DAFF001EBDEE0000000F00000000000C
          4C970022D7FE0024DAFF0022D7FE0022D7FE0C2EDDFFD0DAFDFEA0AFFDFE0224
          DAFF0022D7FE0024DAFF0022D7FE0022D7FE0225D8FEA4B4FFFFDBE4FDFE1132
          DCFE0024DAFF0022D7FE0022D7FE0024DAFF000A3D8800000000000000000000
          0117001FB7EA0024DAFF0024DAFF0024DAFF0024DAFF0528DCFF0224DAFF0024
          DAFF0024DAFF0024DAFF0024DAFF0024DAFF0024DAFF0225DAFF092BDCFF0024
          DAFF0024DAFF0024DAFF0024DAFF001DABE20000001000000000000000000000
          00000003144E0024D4FC0022D7FE0022D7FE0024DAFF0022D7FE0022D7FE0024
          DAFF0022D7FE0024DAFF0022D7FE0022D7FE0022D7FE0024DAFF0022D7FE0022
          D7FE0024DAFF0022D7FE0021CFF900020E410000000000000000000000000000
          000000000000000624690022D3FC0022D7FE0024DAFF0022D7FE0022D7FE0024
          DAFF0022D7FE0024DAFF0022D7FE0022D7FE0022D7FE0024DAFF0022D7FE0022
          D7FE0024DAFF0021CFF900041B5B000000000000000000000000000000000000
          0000000000000000000000031551001FBBEC0024DAFF0024DAFF0024DAFF0024
          DAFF0024DAFF0024DAFF0024DAFF0024DAFF0024DAFF0024DAFF0024DAFF0024
          DAFF001EB2E70002104600000000000000000000000000000000000000000000
          00000000000000000000000000000000021C000E56A00020CDF80022D7FE0024
          DAFF0022D7FE0024DAFF0022D7FE0022D7FE0022D7FE0024DAFF0020C9F6000C
          4D98000001170000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000021D00072A710012
          6CB4001BA8E00021C4F2001FC1F1001AA4DE001069B10006266C000002190000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000101001A182406774062
          0FC2649918F26FAA1AFF6FA81AFE558315E02F470BA60A10024F000000050000
          00000000000000000000000000046BA419FA0000000000000000000000000000
          00000000000000000000000000000000000B1F300788659B17F46EA719FE6FAA
          1AFF6EA719FE6FAA1AFF6EA719FE6EA719FE6EA719FE6FAA1AFF4C7512D4090E
          024A0000000000000000010100195C8D16E86BA419FA00000000000000000000
          00000000000000000000010200214B7412D36FAA1AFF6EA719FE6EA719FE6FAA
          1AFF6EA719FE6FAA1AFF6EA719FE6EA719FE6EA719FE6FAA1AFF6EA719FE6CA7
          19FD2031088A000000030102001C6FAA1AFF5D8E15EA6BA419FA000000000000
          00000000000001030022558315E06FAA1AFF6FAA1AFF6FAA1AFF537F13DC1824
          0677040701340001001701020020090F024C2B410A9F68A019F76FAA1AFF6FAA
          1AFF6FAA1AFF2A3F0A9C0102001F6FAA1AFF6FAA1AFF609317ED000000000000
          00000000000C4E7813D66EA719FE6EA719FE6AA219F91E2D0785000000080000
          000000000000000000000000000000000000000000000204002A456B10CB6EA7
          19FE6FAA1AFF6EA719FE253908956FAA1AFF6EA719FE6EA719FE000000000000
          00002235088F6FAA1AFF6EA719FE6AA319FB0D14035900000000000000000000
          00000000000000000000000000000000000000000000000000000000000C3C5B
          0DBC6FAA1AFF6EA719FE6CA519FC6FAA1AFF6EA719FE6EA719FE000000000203
          002669A019F86FAA1AFF6FAA1AFF1D2D07840000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0011537F13DD6FAA1AFF6FAA1AFF6FAA1AFF6FAA1AFF6FAA1AFF000000002336
          08916EA719FE6FAA1AFF4D7612D5000000070000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000006EA719FE6EA719FE6FAA1AFF6EA719FE6EA719FE000000055887
          14E46EA719FE6FAA1AFF10180362000000000000000000000000000000000000
          0000000000000000000000000000000000006BA419FA619417EE6EA719FE6EA7
          19FE6FAA1AFF6EA719FE6EA719FE6FAA1AFF6EA719FE6EA719FE0304002C6FAA
          1AFF6FAA1AFF679E18F600000012000000000000000000000000000000000000
          000000000000000000000000000000000000000000006BA419FA679E18F66FAA
          1AFF6FAA1AFF6FAA1AFF6FAA1AFF6FAA1AFF6FAA1AFF6FAA1AFF0C1202546EA7
          19FE6EA719FE4B7211D100000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000006BA41AFB6BA4
          1AFB6FAA1AFF6FAA1AFF6FAA1AFF6FAA1AFF6FAA1AFF6FAA1AFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000006FAA1AFF6EA7
          19FE6EA719FE6FAA1AFF6EA719FE6EA719FE6FAA1AFF0305002E000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000045E9016EC6FAA1AFF6EA719FE050801386FAA1AFF6EA7
          19FE6EA719FE6FAA1AFF6EA719FE6EA719FE6FAA1AFF6FA81AFE010200210000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000304002B6CA719FD6FAA1AFF6AA318FA000000136FAA1AFF6FAA
          1AFF6FAA1AFF6FAA1AFF6FAA1AFF6FAA1AFF6FAA1AFF6FAA1AFF6FA81AFE0101
          0019000000000000000000000000000000000000000000000000000000000000
          0000000000001C2A07806FAA1AFF6FAA1AFF476D11CC000000006FAA1AFF6EA7
          19FE6EA719FE6FAA1AFF6EA719FE000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000125B8A15E76EA719FE6FAA1AFF16220574000000006FAA1AFF6EA7
          19FE6EA719FE6FAA1AFF6EA719FE42660FC60000000400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002B410A9F6EA719FE6EA719FE619417EE00000012000000006FAA1AFF6FAA
          1AFF6FA81AFE6DA81AFD6FAA1AFF6FAA1AFF2F480BA700000006000000000000
          0000000000000000000000000000000000000000000000000000000000011B2A
          067F6FAA1AFF6FAA1AFF6FAA1AFF1622057300000000000000006FAA1AFF6EA7
          19FE6CA519FC263B09976EA719FE6EA719FE6FAA1AFF39570DB80102001D0000
          0000000000000000000000000000000000000000000000000011283E099B6EA7
          19FE6FAA1AFF6EA719FE3C5C0EBD0000000300000000000000006BA419FA6EA7
          19FE6AA318FA000000093C5B0DBC6EA719FE6FAA1AFF6EA719FE649917F3263B
          0997090E024A0203002301020020070A01411F2E07875C8D16E96EA719FE6EA7
          19FE6FAA1AFF4F7912D8000100150000000000000000000000006BA41AFB68A0
          19F76AA219F9000000000000000A2B420AA06FA81AFE6FAA1AFF6FAA1AFF6FAA
          1AFF6FAA1AFF6FAA1AFF6FAA1AFF6FAA1AFF6FAA1AFF6FAA1AFF6FAA1AFF6FAA
          1AFF3D5E0EBE0001001600000000000000000000000000000000000000006BA4
          1AFB619616F00000000000000000000000010D140359527E13DD6EA719FE6FAA
          1AFF6EA719FE6FAA1AFF6EA719FE6EA719FE6EA719FE6FAA1AFF5D8E15EA1622
          0573000000040000000000000000000000000000000000000000000000000000
          00006BA419FA00000000000000000000000000000000000000080C1303563049
          0BA8548013DE6BA419FA6CA519FC598814E536530CB3111A04650000000F0000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000608043B1D25
          11781D251178080A054000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000103002683A94DFF83A94DFF83A9
          4DFF83A94DFF83A94DFF83A94DFF0204002F000000000000000000000000130C
          0554905C2BE725180B7600000000000000000000000000000000000000000000
          00000000000000000000000000000102002283A94DFF83A94DFF6D9A2FFF6D9A
          2EFF83A94DFF83A94DFF83A94DFF83A94DFF0204002C00000000130C0554A56A
          31F8AD7033FEAD6F34FD291A0C7C000000000000000000000000000000000000
          000000000000000000000000000083A94DFF83A94DFF739D3EFFFFFFFFFFFFFF
          FFFF739C3DFF83A94DFF83A94DFF83A94DFF83A94DFF000000008C5A29E4AD70
          33FEAD7033FEB07134FFAC6E33FD2C1C0D800000000000000000000000000000
          000000000000000000000507023783A94DFF739D3EFFFFFFFFFFFCFEFDFFF8FA
          F5FFFFFFFFFF739C3DFF83A94DFF83A94DFF83A94DFF060703372015096EAD6F
          34FDB07134FFB07134FFB07134FFB07134FF2E1E0D8400000001000000000000
          0000000000000000000018220A796D9A2FFFFFFFFFFFFCFDFCFFFFFFFFFFFFFF
          FFFFF6F8F2FFFFFFFFFF739C3DFF83A94DFF83A94DFF18200E6F000000001E13
          096BAD6F34FDAD7033FEAD7033FEB07134FFAD7033FE33210F8B000000000000
          0005110B0550130C055517200A7683A94DFF739C3EFFFFFFFFFF739C3DFF739C
          3DFFFFFFFFFFF5F8F0FFFFFFFFFF739C3DFF83A94DFF181F0E6E000000000000
          00001D120868AA6D32FBB07134FFB07134FFB07134FFB07134FF4D3217AA8857
          29E0B07134FF5D3C1CBA0305012F83A94DFF83A94DFF6D9A2EFF83A94DFF83A9
          4DFF739C3DFFFFFFFFFFF5F8F0FFFFFFFFFF6D9A2EFF04060230000000000000
          0000000000001B110865A96C32FBB07134FFAD7033FEAD7033FEB07134FFAD70
          33FEB07134FFA56B32F80100001583A94DFF83A94DFF83A94DFF83A94DFF83A9
          4DFF83A94DFF739C3DFFFFFFFFFF739C3DFF83A94CFF00000000000000000000
          0000000000000000000019100761AC6F33FCAD7033FEAD7033FEB07134FFAF71
          34FFB17336FFC79C71FF4D4339970000001283A94DFF83A94DFF83A94DFF83A9
          4DFF83A94DFF83A94DFF6D9A2EFF83A94DFF0101001C00000000000000000000
          000000000000000000000000000031200E88B07134FFB07134FFB07134FFBF8C
          59FFF1E6DBFFFFFFFFFFFDFDFDFE262626630000001283A94DFF83A94DFF83A9
          4DFF83A94DFF83A94DFF83A94DFF000100190000000000000000000000000000
          00000000000000000000000000027E5125D8AD7033FEAF7134FFBE8B58FFF6F2
          EEFEFCFCFCFEFCFCFCFEFFFFFFFFFAFAFAFD5757579601010114030501301620
          0A7517200A760406023400000011000000100000000000000000000000000000
          000000000000000000000B070341B07134FFB07134FFB17236FFF0E3D7FFFCFC
          FCFEFCFCFCFEFCFCFCFEFFFFFFFFFCFCFCFEFCFCFCFEEEEEEEF7878787BA4D4B
          498E3725138D5B3A1BB8A46A31F72A1B0C7E0000000000000000000000000000
          0000000000000000000032200E89B07134FFAF7134FFC49769FFFFFFFFFFFCFC
          FCFEFCFCFCFEFCFCFCFEFFFFFFFFFCFCFCFEFCFCFCFEFCFCFCFEFCFCFCFEFFFF
          FFFFD1AD8AFFB07134FFAD7033FE68421EC50000000000000000000000000000
          0000000000000000000057381AB4B07134FFAF7134FFD8BB9DFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFE6D2BFFFB07134FFAD7033FE9B632DF00000000000000000000000000000
          0000000000000000000058391AB5B07134FFB07134FFD7B99CFEFFFFFFFFFCFC
          FCFEFCFCFCFEFCFCFCFEFFFFFFFFFCFCFCFEFCFCFCFEFCFCFCFEFCFCFCFEFFFF
          FFFFE3D0BDFEB07134FFB07134FFA06730F30000000000000000000000000000
          0000000000000000000033210F8BB07134FFAF7134FFC5986BFFFFFFFFFFFCFC
          FCFEFCFCFCFEFCFCFCFEFFFFFFFFFCFCFCFEFCFCFCFEFCFCFCFEFCFCFCFEFFFF
          FFFFD2AF8DFFB07134FFAD7033FE6F4720CB0000000000000000000000000000
          000000000000000000000C080345B07134FFAF7134FFB07235FFF1E7DCFFFCFC
          FCFEFCFCFCFEFCFCFCFEFFFFFFFFFCFCFCFEFCFCFCFEFCFCFCFEFCFCFCFEF9F4
          F0FFB57B43FFB07134FFAD7033FE301E0E860000000000000000000000000000
          0000000000000000000000000003825327DBB07134FFB07134FFC08E5CFFF8F4
          F1FEFCFCFCFEFCFCFCFEFFFFFFFFFCFCFCFEFCFCFCFEFCFCFCFEFBFAF9FEC99F
          75FFB07134FFB07134FFA86B32F9030201260000000000000000000000000000
          0000000000000000000000000000130C0555AC6E33FDAF7134FFB07134FFC090
          5FFFF3EAE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F3EDFFC99E73FFAF71
          34FFAF7134FFB07134FF3C261296000000000000000000000000000000000000
          0000000000000000000000000000000000013F28129AAD7033FEB07134FFAF71
          34FFB2753AFFCAA279FFDFC7AFFFE0C9B3FECFA985FFB47940FFB07134FFAF71
          34FFAD7033FE754B22D00000000D000000000000000000000000000000000000
          00000000000000000000000000000000000000000005422A149DAE7134FEB071
          34FFB07134FFB07134FFB07134FFB07134FFB07134FFB07134FFB07134FFB071
          34FF734A22CE0101001800000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000011A1108638E5B
          2AE6B07134FFAD7033FEAD7033FEB07134FFAD7033FEAD7033FEA46931F63522
          108E0000000C0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000C180F075F4F3317AC7D4F24D7875728DF5E3C1BBB26180B780201001D0000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000016161678585858F2626262FF6262
          62FF626262FF626262FF626262FF626262FF626262FF626262FF5A5A5AF41717
          177D000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000585858F2FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5959
          59F5000000010000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000626262FFFFFFFFFFFFFFFFFFFFFF
          FFFFFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFDFDFDFEFFFFFFFFFFFFFFFF6161
          61FE000000020000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000626262FFFFFFFFFFFFFFFFFFEDC2
          9AFFEDC299FFEDC299FFEDC299FFEDC299FFEDC29AFFFFFFFFFFFFFFFFFF6262
          62FF000000030000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000626262FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6161
          61FE000000020000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000626262FFFFFFFFFFFFFFFFFFEDC2
          9AFFEDC299FFEDC299FFEDC299FFEDC299FFEDC29AFFFFFFFFFFFFFFFFFF6161
          61FE000000020000000000000000000000000000000000000000303030B36262
          62FE626262FF626262FF626262FF626262FF626262FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6262
          62FF626262FF626262FF626262FF626262FF606060FC23232398626262FE6262
          62FF626262FF626262FF626262FF616161FE626262FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6161
          61FE626262FF616161FE616161FE626262FF616161FE5E5E5EFB626262FF6262
          62FF0000000000000000626262FF616161FE626262FF616161FE616161FE6262
          62FF616161FE626262FF616161FE616161FE616161FE626262FF616161FE6161
          61FE626262FF616161FE616161FE626262FF616161FE616161FE626262FF6262
          62FF626262FF626262FF626262FF626262FF626262FF626262FF626262FF6262
          62FF626262FF626262FF626262FF626262FF626262FF626262FF626262FF6262
          62FF626262FF626262FF626262FF626262FF626262FF626262FF626262FF6161
          61FE616161FE626262FF616161FE616161FE626262FF616161FE616161FE6262
          62FF616161FE626262FF616161FE616161FE616161FE626262FF616161FE6161
          61FE626262FF616161FE616161FE626262FF616161FE616161FE626262FF6262
          62FF626262FF626262FF626262FF626262FF626262FF626262FF626262FF6262
          62FF626262FF626262FF626262FF626262FF626262FF626262FF626262FF6262
          62FF626262FF626262FF626262FF626262FF626262FF626262FF626262FF6161
          61FE616161FEB5B5B5FFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFF
          FFFFFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFD
          FDFEFFFFFFFFFDFDFDFEB6B6B6FE626262FF616161FE616161FE626262FF6161
          61FE616161FEFFFFFFFFDBAC7CFEB5610FFFB76210FFB5610FFFB5610FFFB762
          10FFB5610FFFB76210FFB5610FFFB5610FFFB5610FFFB76210FFB5610FFFB561
          0FFFB76210FFDBAC7CFEFDFDFDFE626262FF616161FE616161FE626262FF6161
          61FE616161FEFFFFFFFFB5610FFFB3610FFEB76210FFB3610FFEB3610FFEB762
          10FFB3610FFEB76210FFB3610FFEB3610FFEB3610FFEB76210FFB3610FFEB361
          0FFEB76210FFB76210FFFDFDFDFE626262FF616161FE616161FE626262FF6262
          62FF626262FFFFFFFFFFB76210FFB76210FFB76210FFB76210FFB76210FFB762
          10FFB76210FFB76210FFB76210FFB76210FFB76210FFB76210FFB76210FFB762
          10FFB76210FFB76210FFFFFFFFFF626262FF626262FF626262FF626262FF6161
          61FE616161FEFFFFFFFFB5610FFFB3610FFEB76210FFB3610FFEB3610FFEB762
          10FFB3610FFEB76210FFB3610FFEB3610FFEB3610FFEB76210FFB3610FFEB361
          0FFEB76210FFB76210FFFDFDFDFE626262FF616161FE5F5F5FFC353535BD5F5F
          5FFD616161FEFFFFFFFFB5610FFFB3610FFEB76210FFB3610FFEB3610FFEB762
          10FFB3610FFEB76210FFB3610FFEB3610FFEB3610FFEB76210FFB3610FFEB361
          0FFEB76210FFB76210FFFDFDFDFE626262FF5E5E5EFB282828A5000000000000
          00000000000000000000B76210FFB76210FFB76210FFB76210FFB76210FFB762
          10FFB76210FFB76210FFB76210FFB76210FFB76210FFB76210FFB76210FFB762
          10FFB76210FFB76210FF00000000000000000000000000000000000000000000
          000000000000000000000000000000000005616161FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6262
          62FF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000A616161FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6262
          62FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000005616161FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6262
          62FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000002616161FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6262
          62FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000616161FE616161FF616161FE6262
          62FF616161FE626262FF616161FE616161FE616161FE626262FF626262FF6262
          62FF000000000000000000000000000000000000000000000000}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000005E5E5EFF5D5D
          5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D
          5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5E5E5EFF0000
          00000000000000000000000000000000000000000000000000005D5D5DFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D5D5DFF0000
          00000000000000000000000000000000000000000000000000005D5D5DFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D5D5DFF0000
          00000000000000000000000000000000000000000000000000005D5D5DFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D5D5DFF0000
          00000000000000000000000000000000000000000000000000005D5D5DFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D5D5DFF0000
          00000000000000000000000000000000000000000000000000005D5D5DFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D5D5DFF0000
          00000000000000000000000000000000000000000000000000005D5D5DFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6A6A6CE0B0B0B580000
          00000808084E0A0A0A532A2A2AAC5E5E5EFF00000000000000005D5D5DFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1818184F00000003AB51
          8DFFAB518DFFAB518DFF0000000F2222229B00000000000000005E5E5EFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF797979B0000000030000
          0000AB518DFFAB518DFFAB518DFF0000000D00000000000000005E5E5EFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFBFBFBFD34343474111111431111114311111143000000130000
          000000000000A34D87F9AB518DFFAB518DFF0000000A000000005E5E5EFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA0A0A0CA00000000AB518DFFAB518DFFAB518DFFAB518DFFAB51
          8DFFAB518DFFAB518DFFAB518DFFAB518DFFAB518DFF0000000EAF6F32FFAF6F
          32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F
          32FFAF6F32FF5E3B1BBB00000000AB518DFFAB518DFFAB518DFFAB518DFFAB51
          8DFFAB518DFFAB518DFFAB518DFFAB518DFFAB518DFF8A4271E5AF6F32FFAF6F
          32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F
          32FFAF6F32FF623E1CBF00000000AB518DFFAB518DFFAB518DFFAB518DFFAB51
          8DFFAB518DFFAB518DFFAB518DFFAB518DFFAB518DFF0000000EAF6F32FFAF6F
          32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F
          32FFAF6F32FF875527E000000008000000000000000000000000000000000000
          000000000000A34D87F9AB518DFFAB518DFF0000000A00000000AF6F32FFAF6F
          32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F
          32FFAF6F32FFAF6F32FF875527E05D3B1ABA5D3B1ABA573719B4020100210000
          0000AB518DFFAB518DFFAB518DFF0000000B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000003AB51
          8DFFAB518DFFAB518DFF0000000D0303032F0000000000000000000000000000
          00000000000000000000000000005E5E5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5A5A5A98000000000000
          00000000000000000000090909304F4F4FEB0000000000000000000000000000
          00000000000000000000000000005E5E5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7B7B7D89D9D
          9DC8959595C39B9B9BC7EFEFEFF75D5D5DFF0000000000000000000000000000
          0000000000000000000000000000AF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F
          32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F
          32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FF0000000000000000000000000000
          0000000000000000000000000000AF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F
          32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F
          32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FF0000000000000000000000000000
          0000000000000000000000000000AF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F
          32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F
          32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FF0000000000000000000000000000
          0000000000000000000000000000AF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F
          32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FFAF6F
          32FFAF6F32FFAF6F32FFAF6F32FFAF6F32FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000434343D24A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A
          4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A
          4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF5E5E5EF9000000000000
          000000000000000000004A4A4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4A4AFF000000000000
          000000000000000000004A4A4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4A4AFF000000000000
          000000000000000000004A4A4AFFFFFFFFFFFFFFFFFFFFFFFFFF383838FF3838
          38FFFFFFFFFF989898FF989898FF989898FF989898FF929292FF929292FF9292
          92FF929292FF929292FFFFFFFFFFFFFFFFFFFFFFFFFF4A4A4AFF000000000000
          000000000000000000004A4A4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4A4AFF000000000000
          000000000000000000004A4A4AFFFFFFFFFFFFFFFFFFFFFFFFFF383838FF3838
          38FFFFFFFFFF989898FF989898FF989898FF989898FF929292FF929292FF9292
          92FF929292FF929292FFFFFFFFFFFFFFFFFFFFFFFFFF4A4A4AFF000000000000
          000000000000000000000707074E1717174E2C2C2C6BDCDCDCEDFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4A4AFF000000000000
          00000000000075AE22FF75AE22FF75AE22FF0000001209090931313131ED3838
          38FFFFFFFFFF989898FF989898FF989898FF989898FF929292FF929292FF9292
          92FF929292FF929292FFFFFFFFFFFFFFFFFFFFFFFFFF4A4A4AFF000000000000
          0000000000000000001175AE22FF75AE22FF75AE22FF0000000609090931DCDC
          DCEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4A4AFF000000000000
          000000000000000000000000000075AE22FF75AE22FF75AE22FF000000060202
          0231DCDCDCED989898FF989898FF989898FF989898FF929292FF929292FF9292
          92FF929292FF929292FFFFFFFFFFFFFFFFFFFFFFFFFF4A4A4AFF75AE22FF75AE
          22FF75AE22FF75AE22FF75AE22FF75AE22FF75AE22FF75AE22FF75AE22FF0000
          000609090931DEDEDEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4A4AFF75AE22FF75AE
          22FF75AE22FF75AE22FF75AE22FF75AE22FF75AE22FF75AE22FF75AE22FF75AE
          22FF0001001521212177989898FF989898FF989898FF929292FF929292FF9292
          92FF929292FF929292FFFFFFFFFFFFFFFFFFFFFFFFFF4A4A4AFF75AE22FF75AE
          22FF75AE22FF75AE22FF75AE22FF75AE22FF75AE22FF75AE22FF75AE22FF0000
          000000000002717171AAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4A4AFF000000000000
          000000000000000000000000000075AE22FF75AE22FF75AE22FF000000000000
          00025A5A5A98989898FF989898FF989898FF989898FF929292FF929292FF9292
          92FF929292FF929292FFFFFFFFFFFFFFFFFFFFFFFFFF4A4A4AFF000000000000
          0000000000000000000075AE22FF75AE22FF75AE22FF00000000000000025A5A
          5A98FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4A4AFF000000000000
          00000000000075AE22FF75AE22FF75AE22FF0000000000000002141414983838
          38FFFFFFFFFF989898FF989898FF989898FF989898FF929292FF929292FF9292
          92FF929292FF929292FFFFFFFFFFFFFFFFFFFFFFFFFF4A4A4AFF000000000000
          000000000000000000000000000000000000000000025A5A5A98FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4A4AFF000000000000
          000000000000000000002E2E2EC6939393C2BFBFBFDDFFFFFFFF383838FF3838
          38FFFFFFFFFF989898FF989898FF989898FF989898FF929292FF929292FF9292
          92FF929292FF929292FFFFFFFFFFFFFFFFFFFFFFFFFF4A4A4AFF000000000000
          000000000000000000004C4C4CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4A4AFF000000000000
          000000000000000000004C4C4CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4A4AFF000000000000
          00000000000000000000B76210FFB76210FFB76210FFB76210FFB76210FFB762
          10FFB76210FFB76210FFB76210FFB76210FFB76210FFB76210FFB76210FFB762
          10FFB76210FFB76210FFB76210FFB76210FFB76210FFB76210FF000000000000
          00000000000000000000B76210FFB76210FFB76210FFB76210FFB76210FFB762
          10FFB76210FFB76210FFB76210FFB76210FFB76210FFB76210FFB76210FFB762
          10FFB76210FFB76210FFB76210FFB76210FFB76210FFB76210FF000000000000
          0000000000000000000076400BCDB76210FFB76210FFB76210FFB76210FFB762
          10FFB76210FFB76210FFB76210FFB76210FFB76210FFB76210FFB76210FFB762
          10FFB76210FFB76210FFB76210FFB76210FFB76210FFAD5D10F8}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000001020833223289D1314AC9FE314AC9FE324BCCFF314AC9FE314AC9FE324B
          CCFF314AC9FE324BCCFF314AC9FE314AC9FE314AC9FE324BCCFF314AC9FE314A
          C9FE324BCCFF314AC9FE213287CF010208330000000000000000000000000000
          0000213287CF324BCCFF324BCCFF324BCCFF324BCCFF324BCCFF324BCCFF324B
          CCFF324BCCFF324BCCFF324BCCFF324BCCFF324BCCFF324BCCFF324BCCFF324B
          CCFF324BCCFF324BCCFF324BCCFF223289D10000000000000000000000000000
          0000314AC9FE324BCCFF314AC9FE314AC9FE324BCCFF314AC9FE314AC9FE324B
          CCFF314AC9FE324BCCFF314AC9FE314AC9FE314AC9FE324BCCFF314AC9FE314A
          C9FE324BCCFF314AC9FE314AC9FE324BCCFF0000000000000000000000000000
          0000314AC9FE324BCCFF314AC9FE314AC9FE324BCCFF314AC9FE314AC9FE324B
          CCFF314AC9FE324BCCFF314AC9FE314AC9FE314AC9FE324BCCFF314AC9FE314A
          C9FE324BCCFF314AC9FE314AC9FE324BCCFF0000000000000000000000000000
          0000324BCCFF324BCCFF324BCCFF324BCCFF324BCCFF334CCCFF5A6ED6FF324B
          CCFF324BCCFF324BCCFF324BCCFF324BCCFF324BCCFF5A6ED6FF334CCCFF324B
          CCFF324BCCFF324BCCFF324BCCFF324BCCFF0000000000000000000000000000
          0000314AC9FE324BCCFF314AC9FE314AC9FE334CCCFF9EAAE5FEF9F9FCFE7B8C
          DEFF314AC9FE324BCCFF314AC9FE314AC9FE7989DCFEFAFBFEFFA0ABE5FE334C
          CAFE324BCCFF314AC9FE314AC9FE324BCCFF0000000000000000000000000000
          0000314AC9FE324BCCFF314AC9FE314AC9FE5569D4FFF7F7FBFEFCFCFCFEFBFB
          FDFF7B8ADCFE324BCCFF314AC9FE7989DCFEF8F9FBFEFFFFFFFFF7F8FBFE576B
          D3FE324BCCFF314AC9FE314AC9FE324BCCFF0000000000000000000000000000
          0000324BCCFF324BCCFF324BCCFF324BCCFF324BCCFF7284DCFFF8F9FDFFFFFF
          FFFFFBFCFEFF7C8DDEFF7A8BDEFFFBFBFEFFFFFFFFFFF9FAFDFF7385DCFF324B
          CCFF324BCCFF324BCCFF324BCCFF324BCCFF0000000000000000000000000000
          0000314AC9FE324BCCFF314AC9FE314AC9FE324BCCFF314AC9FE7282DAFEF9FA
          FDFFFCFCFCFEFBFCFEFFF9F9FCFEFCFCFCFEF8F8FBFE7385DCFF314AC9FE314A
          C9FE324BCCFF314AC9FE314AC9FE324BCCFF0000000000000000000000000000
          0000324BCCFF324BCCFF324BCCFF324BCCFF324BCCFF324BCCFF324BCCFF7284
          DCFFF9FAFDFFFFFFFFFFFFFFFFFFFAFAFDFF7486DCFF324BCCFF324BCCFF324B
          CCFF324BCCFF324BCCFF324BCCFF324BCCFF0000000000000000000000000000
          0000314AC9FE324BCCFF314AC9FE314AC9FE324BCCFF314AC9FE314AC9FE7A8B
          DEFFF9F9FCFEFFFFFFFFFCFCFCFEF9FAFCFE7C8BDCFE324BCCFF314AC9FE314A
          C9FE324BCCFF314AC9FE314AC9FE324BCCFF0000000000000000000000000000
          0000314AC9FE324BCCFF314AC9FE314AC9FE324BCCFF314AC9FE7989DCFEFBFB
          FEFFFCFCFCFEFAFAFDFFF7F8FBFEFCFCFCFEF9FAFCFE7B8CDEFF314AC9FE314A
          C9FE324BCCFF314AC9FE314AC9FE324BCCFF0000000000000000000000000000
          0000314AC9FE324BCCFF314AC9FE314AC9FE324BCCFF7989DCFEF8F9FBFEFFFF
          FFFFF8F8FBFE7486DCFF7282DAFEF7F8FBFEFCFCFCFEFBFBFDFF7B8ADCFE314A
          C9FE324BCCFF314AC9FE314AC9FE324BCCFF0000000000000000000000000000
          0000324BCCFF324BCCFF324BCCFF324BCCFF556AD5FFFAFBFDFFFFFFFFFFF9FA
          FDFF7385DCFF324BCCFF324BCCFF7284DCFFF8F9FDFFFFFFFFFFFBFBFDFF576C
          D5FF324BCCFF324BCCFF324BCCFF324BCCFF0000000000000000000000000000
          0000314AC9FE324BCCFF314AC9FE314AC9FE324BCCFF95A2E3FEF7F7FBFE7385
          DCFF314AC9FE324BCCFF314AC9FE314AC9FE7282DAFEF8F9FDFF97A4E3FE324B
          CAFE324BCCFF314AC9FE314AC9FE324BCCFF0000000000000000000000000000
          0000314AC9FE324BCCFF314AC9FE314AC9FE324BCCFF324BCAFE5267D2FE324B
          CCFF314AC9FE324BCCFF314AC9FE314AC9FE314AC9FE5267D4FF324BCAFE314A
          C9FE324BCCFF314AC9FE314AC9FE324BCCFF0000000000000000000000000000
          0000324BCCFF324BCCFF324BCCFF324BCCFF324BCCFF324BCCFF324BCCFF324B
          CCFF324BCCFF324BCCFF324BCCFF324BCCFF324BCCFF324BCCFF324BCCFF324B
          CCFF324BCCFF324BCCFF324BCCFF324BCCFF0000000000000000000000000000
          0000314AC9FE324BCCFF314AC9FE314AC9FE324BCCFF314AC9FE314AC9FE324B
          CCFF314AC9FE324BCCFF314AC9FE314AC9FE314AC9FE324BCCFF314AC9FE314A
          C9FE324BCCFF314AC9FE314AC9FE324BCCFF0000000000000000000000000000
          0000223289D1324BCCFF314AC9FE314AC9FE324BCCFF314AC9FE314AC9FE324B
          CCFF314AC9FE324BCCFF314AC9FE314AC9FE314AC9FE324BCCFF314AC9FE314A
          C9FE324BCCFF314AC9FE324BCCFF213287CF0000000000000000000000000000
          000001020833213287CF324BCCFF324BCCFF324BCCFF324BCCFF324BCCFF324B
          CCFF324BCCFF324BCCFF324BCCFF324BCCFF324BCCFF324BCCFF324BCCFF324B
          CCFF324BCCFF324BCCFF223289D1010208330000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end>
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 608
    Top = 65416
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
    end
    object cxStyle3: TcxStyle
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 416
    Top = 313
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
  end
end
