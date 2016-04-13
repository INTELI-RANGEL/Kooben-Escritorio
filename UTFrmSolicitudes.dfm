object FrmSolicitudes: TFrmSolicitudes
  Left = 0
  Top = 0
  Caption = 'Pedido de Comisaria'
  ClientHeight = 529
  ClientWidth = 1027
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlReceta: TPanel
    Left = 0
    Top = 0
    Width = 1027
    Height = 181
    Align = alTop
    BevelOuter = bvNone
    PopupMenu = pmCabecera
    TabOrder = 0
    OnDblClick = pnlRecetaDblClick
    object NombreReceta: TDBText
      Left = 102
      Top = 34
      Width = 131
      Height = 26
      AutoSize = True
      DataField = 'Referencia'
      DataSource = dsComisaria
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
      Width = 88
      Height = 23
      Caption = 'Referencia:'
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
      Top = 62
      Width = 66
      Height = 13
      Caption = 'Comentarios:'
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
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 1027
      Height = 33
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Splitter1: TSplitter
        Left = 797
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
        Width = 797
        Height = 33
        Align = alClient
        Padding.Top = 4
        Padding.Right = 10
        TabOrder = 0
        object CodigoReceta: TDBText
          Left = 84
          Top = 5
          Width = 649
          Height = 27
          Align = alClient
          AutoSize = True
          DataField = 'CodigoComisaria'
          DataSource = dsComisaria
          Font.Charset = ANSI_CHARSET
          Font.Color = 4227327
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 109
          ExplicitHeight = 23
        end
        object Estado: TDBText
          Left = 733
          Top = 5
          Width = 53
          Height = 27
          Align = alRight
          AutoSize = True
          DataField = 'Estado'
          DataSource = dsComisaria
          Font.Charset = ANSI_CHARSET
          Font.Color = 4227327
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
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
        Left = 800
        Top = 0
        Width = 227
        Height = 33
        Align = alRight
        TabOrder = 1
        object JvLabel4: TJvLabel
          Left = 17
          Top = 5
          Width = 102
          Height = 23
          Caption = 'Consecutivo:'
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
        object Consecutivo: TDBText
          Left = 122
          Top = 5
          Width = 96
          Height = 23
          AutoSize = True
          DataField = 'Consecutivo'
          DataSource = dsComisaria
          Font.Charset = ANSI_CHARSET
          Font.Color = 4227327
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object GroupBox2: TGroupBox
      Left = 0
      Top = 94
      Width = 1027
      Height = 87
      Align = alBottom
      Caption = 'Men'#250' Peri'#243'dico'
      TabOrder = 1
      object JvLabel11: TJvLabel
        Left = 18
        Top = 24
        Width = 36
        Height = 13
        Caption = 'Men'#250':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object CodigoMenu: TDBText
        Left = 60
        Top = 24
        Width = 69
        Height = 13
        AutoSize = True
        DataField = 'CodigoMenu'
        DataSource = dsBuscarMenu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Desde: TDBText
        Left = 278
        Top = 24
        Width = 35
        Height = 13
        AutoSize = True
        DataField = 'Desde'
        DataSource = dsBuscarMenu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDesde: TJvLabel
        Left = 200
        Top = 24
        Width = 68
        Height = 13
        Caption = 'Periodo del:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object lblHasta: TJvLabel
        Left = 336
        Top = 24
        Width = 7
        Height = 13
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object Hasta: TDBText
        Left = 382
        Top = 24
        Width = 33
        Height = 13
        AutoSize = True
        DataField = 'Hasta'
        DataSource = dsBuscarMenu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 18
        Top = 43
        Width = 34
        Height = 10
        AutoSize = True
        DataField = 'Comentarios'
        DataSource = dsBuscarMenu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object JvLabel12: TJvLabel
        Left = 18
        Top = 60
        Width = 59
        Height = 13
        Caption = 'Ubicaci'#243'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object CodigoEmbarcacion: TDBText
        Left = 83
        Top = 60
        Width = 110
        Height = 13
        AutoSize = True
        DataField = 'CodigoEmbarcacion'
        DataSource = dsBuscarMenu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblNombreEmbarcacion: TJvLabel
        Left = 199
        Top = 60
        Width = 7
        Height = 13
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object NombreEmbarcacion: TDBText
        Left = 212
        Top = 60
        Width = 116
        Height = 13
        AutoSize = True
        DataField = 'NombreEmbarcacion'
        DataSource = dsBuscarMenu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object ComentariosComisaria: TDBMemo
      Left = 80
      Top = 63
      Width = 940
      Height = 35
      TabStop = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      DataField = 'Comentarios'
      DataSource = dsComisaria
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 2
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 181
    Width = 1027
    Height = 348
    Align = alClient
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
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
    object spCostoDia: TSplitter
      Left = 838
      Top = 14
      Height = 292
      Align = alRight
      Beveled = True
      ResizeStyle = rsUpdate
      ExplicitLeft = 814
    end
    object Panel2: TPanel
      Left = 1
      Top = 14
      Width = 837
      Height = 292
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object jvlbl1: TJvLabel
        Left = 0
        Top = 0
        Width = 837
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
      object cxGrid3: TcxGrid
        AlignWithMargins = True
        Left = 3
        Top = 22
        Width = 831
        Height = 267
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = cxcbsNone
        TabOrder = 0
        object tvComisariaPartida: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = tvComisariaPartidaCellDblClick
          DataController.DataSource = dsComisariaPartida
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsView.GroupByBox = False
          object colIdComisariaPartida: TcxGridDBColumn
            DataBinding.FieldName = 'IdComisariaPartida'
            Visible = False
          end
          object colIdTipoInsumo: TcxGridDBColumn
            Caption = 'Tipo Ingredientes'
            DataBinding.FieldName = 'NombreTipoInsumo'
            Visible = False
            GroupIndex = 0
          end
          object colCodigoInsumo: TcxGridDBColumn
            Caption = 'C'#243'digo Ingrediente'
            DataBinding.FieldName = 'CodigoInsumo'
          end
          object colNombreInsumo: TcxGridDBColumn
            Caption = 'Nombre'
            DataBinding.FieldName = 'NombreInsumo'
          end
          object colsNombreCorto: TcxGridDBColumn
            Caption = 'Proveedor'
            DataBinding.FieldName = 'sNombreCorto'
          end
          object colTituloMarca: TcxGridDBColumn
            Caption = 'Marca'
            DataBinding.FieldName = 'TituloMarca'
          end
          object colCantidadSolicitada: TcxGridDBColumn
            Caption = 'Cantidad'
            DataBinding.FieldName = 'CantidadSolicitada'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = '0.000000;-0.000000'
          end
          object colsNombre: TcxGridDBColumn
            Caption = 'U.M.'
            DataBinding.FieldName = 'sNombre'
          end
          object colCantidadPresentacion: TcxGridDBColumn
            Caption = 'Cant. x Presentaci'#243'n'
            DataBinding.FieldName = 'CantidadPresentacion'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = '0.00;-0.00'
            Properties.ReadOnly = True
            Properties.UseThousandSeparator = True
          end
          object colTituloPresentacion: TcxGridDBColumn
            Caption = 'Presentaci'#243'n'
            DataBinding.FieldName = 'TituloPresentacion'
          end
          object colPrecioCompra: TcxGridDBColumn
            DataBinding.FieldName = 'PrecioCompra'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '$ 0.00; $ -0.00'
            Properties.ReadOnly = True
          end
          object colCosto: TcxGridDBColumn
            DataBinding.FieldName = 'Costo'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '$ 0.00;$ -0.00'
            Properties.ReadOnly = True
            Properties.UseThousandSeparator = True
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = tvComisariaPartida
        end
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 306
      Width = 1025
      Height = 41
      Align = alBottom
      BevelOuter = bvLowered
      Padding.Left = 6
      Padding.Top = 4
      Padding.Right = 6
      Padding.Bottom = 4
      TabOrder = 1
      object btnImprimir: TAdvGlowButton
        Left = 7
        Top = 5
        Width = 100
        Height = 31
        Align = alLeft
        Caption = '&Imprimir'
        ImageIndex = 4
        Images = Form2.cxImageList16x16
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
      object btnAutorizar: TAdvGlowButton
        Left = 576
        Top = 5
        Width = 100
        Height = 31
        Align = alRight
        Caption = '&Autorizar'
        ImageIndex = 8
        Images = Form2.cxImageList16x16
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        OnClick = btnAutorizarClick
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
      object btnDesautorizar: TAdvGlowButton
        Tag = 1
        Left = 676
        Top = 5
        Width = 100
        Height = 31
        Align = alRight
        Caption = '&Desautorizar'
        ImageIndex = 9
        Images = Form2.cxImageList16x16
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 2
        OnClick = btnAutorizarClick
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
      object btnCerrar: TAdvGlowButton
        Left = 918
        Top = 5
        Width = 100
        Height = 31
        Align = alRight
        Caption = '&Cerrar'
        ImageIndex = 3
        Images = Form2.cxImageList16x16
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 3
        OnClick = btnCerrarClick
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
      object btnGrabar: TAdvGlowButton
        Left = 818
        Top = 5
        Width = 100
        Height = 31
        Align = alRight
        Caption = '&Grabar'
        ImageIndex = 5
        Images = Form2.cxImageList16x16
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 4
        OnClick = btnGrabarClick
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
      object Panel7: TPanel
        Left = 776
        Top = 5
        Width = 42
        Height = 31
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 5
      end
      object Panel8: TPanel
        Left = 107
        Top = 5
        Width = 21
        Height = 31
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 6
      end
    end
    object pnlCostoDia: TPanel
      Left = 841
      Top = 14
      Width = 185
      Height = 292
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      object Panel10: TPanel
        Left = 8
        Top = 0
        Width = 177
        Height = 292
        Align = alClient
        BevelOuter = bvNone
        Padding.Left = 6
        Padding.Right = 6
        TabOrder = 0
        object cxGrid2: TcxGrid
          Left = 6
          Top = 33
          Width = 165
          Height = 259
          Align = alClient
          TabOrder = 0
          object tvCostoxDia: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsCostoxDia
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.GroupByBox = False
            object Fecha: TcxGridDBColumn
              DataBinding.FieldName = 'Fecha'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.DisplayFormat = 'dd-mmm-yyyy'
            end
            object CostoCompra: TcxGridDBColumn
              Caption = 'Costo D'#237'a'
              DataBinding.FieldName = 'CostoCompra'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '$ ,0.00;-$ ,0.00'
            end
            object Personas: TcxGridDBColumn
              DataBinding.FieldName = 'Personas'
            end
            object CostoxPersona: TcxGridDBColumn
              Caption = 'Costo Persona'
              DataBinding.FieldName = 'CostoxPersona'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '$ ,0.00;-$ ,0.00'
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = tvCostoxDia
          end
        end
        object Panel9: TPanel
          Left = 6
          Top = 0
          Width = 165
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          Padding.Left = 6
          Padding.Right = 6
          TabOrder = 1
          object JvLabel13: TJvLabel
            Left = 6
            Top = 0
            Width = 153
            Height = 33
            Align = alClient
            Caption = 'Costo diario por Persona:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -12
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
            ExplicitWidth = 158
            ExplicitHeight = 14
          end
        end
      end
      object pnlSplitter: TPanel
        Left = 0
        Top = 0
        Width = 8
        Height = 292
        Hint = 
          'Doble Click para hacer desaparecer/Aparecer el costo diario por ' +
          'Persona'
        Align = alLeft
        Color = clSilver
        ParentBackground = False
        TabOrder = 1
        OnDblClick = pnlSplitterDblClick
      end
    end
  end
  object pnlEditarPartida: TPanel
    Left = 280
    Top = 38
    Width = 569
    Height = 323
    TabOrder = 2
    Visible = False
    object JvLabel5: TJvLabel
      Left = 24
      Top = 20
      Width = 77
      Height = 13
      Caption = 'C'#243'digo Insumo:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel6: TJvLabel
      Left = 20
      Top = 47
      Width = 81
      Height = 13
      Caption = 'Nombre Insumo:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel7: TJvLabel
      Left = 52
      Top = 74
      Width = 49
      Height = 13
      Caption = 'Cantidad:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel8: TJvLabel
      Left = 58
      Top = 179
      Width = 43
      Height = 13
      Caption = 'Solicitar:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel9: TJvLabel
      Left = 66
      Top = 125
      Width = 35
      Height = 13
      Caption = 'Marca:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel10: TJvLabel
      Left = 33
      Top = 152
      Width = 68
      Height = 13
      Caption = 'Presentaci'#243'n:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel14: TJvLabel
      Left = 45
      Top = 99
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
    object sNombre: TDBText
      Left = 235
      Top = 182
      Width = 50
      Height = 13
      AutoSize = True
      DataField = 'sNombre'
      DataSource = dsComisariaPartida
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtCodigoInsumo: TDBText
      Left = 107
      Top = 20
      Width = 100
      Height = 13
      AutoSize = True
      DataField = 'CodigoInsumo'
      DataSource = dsComisariaPartida
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtNombreInsumo: TDBText
      Left = 107
      Top = 47
      Width = 106
      Height = 13
      AutoSize = True
      DataField = 'NombreInsumo'
      DataSource = dsComisariaPartida
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtsNombre1: TDBText
      Left = 235
      Top = 74
      Width = 76
      Height = 13
      AutoSize = True
      DataField = 'sNombre'
      DataSource = dsComisariaPartida
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblConversion: TJvLabel
      Left = 108
      Top = 206
      Width = 78
      Height = 13
      Caption = 'lblConversion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object pnlBotonesEdicion: TPanel
      Left = 1
      Top = 281
      Width = 567
      Height = 41
      Align = alBottom
      Padding.Top = 4
      Padding.Right = 6
      Padding.Bottom = 4
      TabOrder = 5
      object btnEditarOk: TAdvGlowButton
        Left = 360
        Top = 5
        Width = 100
        Height = 31
        Align = alRight
        Caption = '&Aceptar'
        ImageIndex = 1
        Images = Form2.cxImageList16x16
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        OnClick = btnEditarOkClick
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
      object btnEditarCancelar: TAdvGlowButton
        Left = 460
        Top = 5
        Width = 100
        Height = 31
        Align = alRight
        Caption = '&Cancelar'
        ImageIndex = 3
        Images = Form2.cxImageList16x16
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        OnClick = btnEditarCancelarClick
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
    object EdtCantidadSolicitada: TJvDBCalcEdit
      Left = 108
      Top = 179
      Width = 121
      Height = 21
      DecimalPlaces = 6
      DisplayFormat = '0.######'
      PopupMenu = popSolicitar
      TabOrder = 4
      DecimalPlacesAlwaysShown = False
      OnChange = EdtCantidadSolicitadaChange
      DataField = 'CantidadSolicitada'
      DataSource = dsComisariaPartidaUpt
    end
    object EdtCantidadOriginal: TDBCurrencyEdit
      Left = 108
      Top = 74
      Width = 121
      Height = 18
      Margins.Left = 0
      Margins.Top = 0
      TabStop = False
      AutoSize = False
      BorderStyle = bsNone
      DecimalPlaces = 6
      DisplayFormat = ',0.000000;-,0.000000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      DataField = 'CantidadOriginal'
      DataSource = dsComisariaPartida
    end
    object IdMarca: TDBLookupComboBox
      Left = 107
      Top = 126
      Width = 269
      Height = 21
      DataField = 'IdMarca'
      DataSource = dsComisariaPartidaUpt
      KeyField = 'IdMarca'
      ListField = 'TituloMarca'
      ListSource = dsMarca
      TabOrder = 2
    end
    object IdPresentacion: TDBLookupComboBox
      Left = 108
      Top = 152
      Width = 269
      Height = 21
      DataField = 'IdPresentacion'
      DataSource = dsComisariaPartidaUpt
      KeyField = 'IdPresentacion'
      ListField = 'TituloPresentacion'
      ListSource = dsPresentacion
      TabOrder = 3
    end
    object iIdEmpresa: TDBLookupComboBox
      Left = 107
      Top = 99
      Width = 269
      Height = 21
      DataField = 'iIdEmpresa'
      DataSource = dsComisariaPartidaUpt
      KeyField = 'iIdEmpresa'
      ListField = 'sRazonSocial'
      ListSource = dsEmpresa
      TabOrder = 1
    end
  end
  object cdComisaria: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 120
    Top = 184
  end
  object dsComisaria: TDataSource
    DataSet = cdComisaria
    Left = 184
    Top = 184
  end
  object cdComisariaInsumoLista: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 120
    Top = 240
  end
  object dsComisariaInsumoLista: TDataSource
    DataSet = cdComisariaInsumoLista
    Left = 248
    Top = 168
  end
  object cdBuscarComisaria: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 120
    Top = 328
  end
  object cdComisariaUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = cdComisariaUptAfterPost
    Left = 120
    Top = 440
  end
  object cdEmbarcacion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 384
  end
  object cdBuscarMenu: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 424
    Top = 296
  end
  object pmCabecera: TPopupMenu
    Images = ClientModule1.PngImageList1
    Left = 784
    Top = 344
    object ModificarcabeceradeReceta1: TMenuItem
      Caption = 'Modificar cabecera de Receta'
      ImageIndex = 4
      OnClick = ModificarcabeceradeReceta1Click
    end
    object Verimagendetamaooriginal1: TMenuItem
      Caption = 'Ver imagen de tama'#241'o original'
      ImageIndex = 25
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
    Left = 656
    Top = 376
    object CerrarImagen1: TMenuItem
      Caption = 'Cerrar Imagen'
      ImageIndex = 8
    end
  end
  object cdExplosion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 504
    Top = 392
  end
  object AdvPopupMenu1: TAdvPopupMenu
    Version = '2.5.3.4'
    Left = 424
    Top = 392
    object Editar1: TMenuItem
      Caption = '&Editar'
      OnClick = Editar1Click
    end
  end
  object popSolicitar: TJvPopupMenu
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 0
    Left = 608
    Top = 280
    object Reestablecervalororiginal1: TMenuItem
      Caption = 'Valor original'
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Redondeara1: TMenuItem
      Caption = 'Redondear a'
    end
    object Redondeara2: TMenuItem
      Caption = 'Redondear a'
    end
    object Redondeara3: TMenuItem
      Caption = 'Redondear a'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Ajustara1: TMenuItem
      Caption = 'Ajustar a'
    end
    object Ajustara2: TMenuItem
      Caption = 'Ajustar a'
    end
    object Ajustara3: TMenuItem
      Caption = 'Ajustar a'
    end
  end
  object cdVerificaEntrada: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 584
    Top = 160
  end
  object cdMarca: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 248
    Top = 296
  end
  object dsMarca: TDataSource
    DataSet = cdMarca
    Left = 304
    Top = 296
  end
  object cdPresentacion: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = cdPresentacionAfterScroll
    Left = 248
    Top = 344
  end
  object dsPresentacion: TDataSource
    DataSet = cdPresentacion
    Left = 304
    Top = 344
  end
  object dsBuscarMenu: TDataSource
    DataSet = cdBuscarMenu
    Left = 504
    Top = 296
  end
  object cdCostoxDia: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 576
    Top = 344
  end
  object dsCostoxDia: TDataSource
    DataSet = cdCostoxDia
    Left = 640
    Top = 344
  end
  object cdComisariaPartidaUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = cdComisariaPartidaUptAfterPost
    Left = 896
    Top = 72
  end
  object dsComisariaPartidaUpt: TDataSource
    DataSet = cdComisariaPartidaUpt
    Left = 896
    Top = 120
  end
  object cdEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 248
    Top = 248
  end
  object dsEmpresa: TDataSource
    DataSet = cdEmpresa
    Left = 304
    Top = 248
  end
  object cdTipoInsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 248
    Top = 392
  end
  object dsTipoInsumo: TDataSource
    DataSet = cdTipoInsumo
    Left = 304
    Top = 392
  end
  object cdComisariaPartida: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 672
    Top = 232
  end
  object dsComisariaPartida: TDataSource
    DataSet = cdComisariaPartida
    Left = 672
    Top = 184
  end
  object cdMarcaxInsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 456
  end
  object cdMarcaGeneral: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 360
    Top = 296
  end
  object Reporte: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42353.496550937500000000
    ReportOptions.LastChange = 42377.556766712970000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 464
    Top = 456
    Datasets = <
      item
        DataSet = ClientModule1.fdsOrganizacion
        DataSetName = 'fdsOrganizacion'
      end
      item
        DataSet = frdsComisaria
        DataSetName = 'frdsComisaria'
      end
      item
        DataSet = frdsComisariaPartida
        DataSetName = 'frdsComisariaPartida'
      end
      item
        DataSet = frdsCostoxDia
        DataSetName = 'frdsCostoxDia'
      end
      item
        DataSet = frdsMenu
        DataSetName = 'frdsMenu'
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
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 41.574830000000000000
        Top = 196.535560000000000000
        Width = 980.410081999999900000
        Child = Reporte.Child1
        DataSet = frdsComisaria
        DataSetName = 'frdsComisaria'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 90.708720000000000000
          Top = 3.779529999999994000
          Width = 612.283445040000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 37815
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frdsComisaria."CodigoComisaria"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779529999999994000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C'#243'digo:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Top = 22.677179999999990000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Referencia:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 90.708720000000000000
          Top = 22.677179999999990000
          Width = 884.410020000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdsComisaria."Referencia"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 702.992580000000000000
          Top = 3.779529999999994000
          Width = 272.125745040000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 37815
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[frdsComisaria."Estado"]    Consecutivo: [frdsComisaria."Consecu' +
              'tivo"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Width = 978.898270000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Child1: TfrxChild
        Height = 18.897650000000000000
        Top = 260.787570000000000000
        Width = 980.410081999999900000
        Stretched = True
        object Memo45: TfrxMemoView
          Width = 978.898270000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 7.559060000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Comentarios:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 90.708720000000000000
          Width = 884.410020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            '[frdsComisaria."Comentarios"]')
          ParentFont = False
          WordBreak = True
        end
      end
      object MasterData2: TfrxMasterData
        Height = 79.370130000000000000
        Top = 302.362400000000000000
        Width = 980.410081999999900000
        DataSet = frdsMenu
        DataSetName = 'frdsMenu'
        RowCount = 0
        object Memo7: TfrxMemoView
          Left = 64.252010000000000000
          Top = 64.252009999999970000
          Width = 910.866730000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdsMenu."CodigoEmbarcacion"] - [frdsMenu."NombreEmbarcacion"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 41.574830000000000000
          Top = 26.456709999999990000
          Width = 933.543910000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[frdsMenu."CodigoMenu"]          Periodo del: [frdsMenu."Desde"]' +
              '  -  [frdsMenu."Hasta"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 3.779530000000000000
          Top = 11.338590000000010000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Men'#250' Peri'#243'dico:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 7.559060000000000000
          Top = 41.574830000000020000
          Width = 967.559680000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdsMenu."Comentarios"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 7.559060000000000000
          Top = 26.456709999999990000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Men'#250':')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 7.559060000000000000
          Top = 64.252009999999970000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Ubicaci'#243'n:')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Top = 7.559059999999988000
          Width = 978.898270000000000000
          Height = 71.811070000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData3: TfrxMasterData
        Height = 15.118120000000000000
        Top = 468.661720000000000000
        Width = 980.410081999999900000
        DataSet = frdsComisariaPartida
        DataSetName = 'frdsComisariaPartida'
        RowCount = 0
        object Memo12: TfrxMemoView
          Left = 7.559060000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'CodigoInsumo'
          DataSet = frdsComisariaPartida
          DataSetName = 'frdsComisariaPartida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            '[frdsComisariaPartida."CodigoInsumo"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 105.826840000000000000
          Width = 215.433210000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NombreInsumo'
          DataSet = frdsComisariaPartida
          DataSetName = 'frdsComisariaPartida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            '[frdsComisariaPartida."NombreInsumo"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 321.260050000000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sNombreCorto'
          DataSet = frdsComisariaPartida
          DataSetName = 'frdsComisariaPartida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            '[frdsComisariaPartida."sNombreCorto"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 438.425480000000000000
          Width = 117.165354330000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'TituloMarca'
          DataSet = frdsComisariaPartida
          DataSetName = 'frdsComisariaPartida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            '[frdsComisariaPartida."TituloMarca"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 737.008350000000000000
          Width = 117.165354330000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'TituloPresentacion'
          DataSet = frdsComisariaPartida
          DataSetName = 'frdsComisariaPartida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            '[frdsComisariaPartida."TituloPresentacion"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 555.590910000000000000
          Width = 60.472404330000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'CantidadSolicitada'
          DataSet = frdsComisariaPartida
          DataSetName = 'frdsComisariaPartida'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[frdsComisariaPartida."CantidadSolicitada"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 616.063390000000000000
          Width = 60.472404330000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sNombre'
          DataSet = frdsComisariaPartida
          DataSetName = 'frdsComisariaPartida'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdsComisariaPartida."sNombre"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 676.535870000000000000
          Width = 60.472404330000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'CantidadPresentacion'
          DataSet = frdsComisariaPartida
          DataSetName = 'frdsComisariaPartida'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[frdsComisariaPartida."CantidadPresentacion"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 854.173780000000000000
          Width = 60.472404330000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'PrecioCompra'
          DataSet = frdsComisariaPartida
          DataSetName = 'frdsComisariaPartida'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdsComisariaPartida."PrecioCompra"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 914.646260000000000000
          Width = 60.472404330000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frdsComisariaPartida
          DataSetName = 'frdsComisariaPartida'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[frdsComisariaPartida."Costo"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 41.574830000000000000
        Top = 404.409710000000000000
        Width = 980.410081999999900000
        Condition = 'frdsComisariaPartida."IdTipoInsumo"'
        object Memo21: TfrxMemoView
          Left = 7.559060000000000000
          Top = 11.338590000000010000
          Width = 967.559680000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frdsComisariaPartida."NombreTipoInsumo"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 7.559060000000000000
          Top = 26.456709999999990000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 105.826840000000000000
          Top = 26.456709999999990000
          Width = 215.433210000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            'Nombre')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 321.260050000000000000
          Top = 26.456709999999990000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            'Proveedor')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 438.425480000000000000
          Top = 26.456709999999990000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            'Marca')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 737.008350000000000000
          Top = 26.456709999999990000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            'Presentaci'#243'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 555.590910000000000000
          Top = 26.456709999999990000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            'Cant. Original')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 616.063390000000000000
          Top = 26.456709999999990000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'U. M.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 676.535870000000000000
          Top = 26.456709999999990000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            'Solicitar')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 854.173780000000000000
          Top = 26.456709999999990000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            'Precio Pres.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 914.646260000000000000
          Top = 26.456709999999990000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            'Costo')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 15.118120000000000000
        Top = 506.457020000000000000
        Width = 980.410081999999900000
        object Memo35: TfrxMemoView
          Left = 880.630490000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frdsComisariaPartida."Costo">,MasterData3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 7.559060000000000000
          Width = 873.071430000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            'Sub Total:  ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 15.118120000000000000
        Top = 544.252320000000100000
        Width = 980.410081999999900000
        object Memo37: TfrxMemoView
          Left = 880.630490000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frdsComisariaPartida."Costo">,MasterData3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 7.559060000000000000
          Width = 873.071430000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Gran Total:  ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 117.165430000000000000
        Top = 18.897650000000000000
        Width = 980.410081999999900000
        object Memo39: TfrxMemoView
          Width = 978.898270000000000000
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
        object Memo40: TfrxMemoView
          Left = 128.504020000000000000
          Top = 7.559059999999999000
          Width = 846.614720000000000000
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
        object Memo41: TfrxMemoView
          Left = 128.504020000000000000
          Top = 26.456710000000000000
          Width = 846.614720000000000000
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
        object Memo42: TfrxMemoView
          Left = 128.504020000000000000
          Top = 64.252010000000000000
          Width = 846.614720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'SOLICITUD DE CONSUMO')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
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
    end
    object Page2: TfrxReportPage
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
        object Memo49: TfrxMemoView
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
        object Memo50: TfrxMemoView
          Left = 128.504020000000000000
          Top = 64.252010000000000000
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
            'CAT'#193'LOGO DE INSUMOS')
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
        object Memo60: TfrxMemoView
          Left = 128.504020000000000000
          Top = 83.149660000000000000
          Width = 608.504330000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '(Relaci'#243'n de Costo por persona diario)')
          ParentFont = False
        end
      end
      object MasterData4: TfrxMasterData
        Height = 15.118120000000000000
        Top = 257.008040000000000000
        Width = 740.409927000000000000
        DataSet = frdsCostoxDia
        DataSetName = 'frdsCostoxDia'
        RowCount = 0
        object Memo52: TfrxMemoView
          Left = 200.315090000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'Fecha'
          DataSet = frdsCostoxDia
          DataSetName = 'frdsCostoxDia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            '[frdsCostoxDia."Fecha"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 272.126160000000000000
          Width = 94.488249999999990000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frdsCostoxDia
          DataSetName = 'frdsCostoxDia'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[frdsCostoxDia."CostoCompra"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 366.614410000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'Personas'
          DataSet = frdsCostoxDia
          DataSetName = 'frdsCostoxDia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdsCostoxDia."Personas"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 442.205010000000000000
          Width = 86.929190000000010000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frdsCostoxDia
          DataSetName = 'frdsCostoxDia'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[frdsCostoxDia."CostoxPersona"]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 15.118120000000000000
        Top = 219.212740000000000000
        Width = 740.409927000000000000
        Condition = 'True'
        object Memo56: TfrxMemoView
          Left = 200.315090000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            'Fecha')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 272.126160000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            'Costo D'#237'a')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 366.614410000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'No. Personas')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 442.205010000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            'Costo x Persona')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 15.118120000000000000
        Top = 294.803340000000000000
        Width = 740.409927000000000000
        object Memo61: TfrxMemoView
          Left = 200.315090000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frdsCostoxDia
          DataSetName = 'frdsCostoxDia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 272.126160000000000000
          Width = 94.488249999999990000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frdsCostoxDia
          DataSetName = 'frdsCostoxDia'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frdsCostoxDia."CostoCompra">,MasterData4)]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 366.614410000000000000
          Width = 162.519790000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frdsCostoxDia
          DataSetName = 'frdsCostoxDia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          ParentFont = False
        end
      end
    end
  end
  object frdsComisaria: TfrxDBDataset
    UserName = 'frdsComisaria'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdOrganizacion=IdOrganizacion'
      'IdComisaria=IdComisaria'
      'Consecutivo=Consecutivo'
      'CodigoComisaria=CodigoComisaria'
      'Referencia=Referencia'
      'Comentarios=Comentarios'
      'IdMenu=IdMenu'
      'CodigoMenu=CodigoMenu'
      'ComentariosMenu=ComentariosMenu'
      'Desde=Desde'
      'Hasta=Hasta'
      'EstadoMenu=EstadoMenu'
      'IdEmbarcacion=IdEmbarcacion'
      'Comentarios=Comentarios'
      'CodigoEmbarcacion=CodigoEmbarcacion'
      'NombreEmbarcacion=NombreEmbarcacion'
      'Comentarios=Comentarios'
      'Fecha=Fecha'
      'Requerido=Requerido'
      'Activo=Activo'
      'Estado=Estado'
      'CuentaMovimientos=CuentaMovimientos'
      'ListaMovimientos=ListaMovimientos'
      'Mes=Mes'
      'NombreMes=NombreMes'
      'CtaGrupo=CtaGrupo')
    DataSource = dsComisaria
    BCDToCurrency = False
    Left = 384
    Top = 456
  end
  object frdsMenu: TfrxDBDataset
    UserName = 'frdsMenu'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdMenu=IdMenu'
      'IdEmbarcacion=IdEmbarcacion'
      'CodigoEmbarcacion=CodigoEmbarcacion'
      'NombreEmbarcacion=NombreEmbarcacion'
      'CodigoMenu=CodigoMenu'
      'Comentarios=Comentarios'
      'Desde=Desde'
      'Hasta=Hasta'
      'Estado=Estado'
      'CtaGrupo=CtaGrupo'
      'CuentaComisaria=CuentaComisaria'
      'IdInsumoPedido=IdInsumoPedido')
    DataSource = dsBuscarMenu
    BCDToCurrency = False
    Left = 536
    Top = 456
  end
  object frdsComisariaPartida: TfrxDBDataset
    UserName = 'frdsComisariaPartida'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdComisariaPartida=IdComisariaPartida'
      'IdComisaria=IdComisaria'
      'CodigoComisaria=CodigoComisaria'
      'IdInsumo=IdInsumo'
      'IdTipoInsumo=IdTipoInsumo'
      'CodigoTipoInsumo=CodigoTipoInsumo'
      'NombreTipoInsumo=NombreTipoInsumo'
      'Orden=Orden'
      'CodigoInsumo=CodigoInsumo'
      'NombreInsumo=NombreInsumo'
      'DescripcionInsumo=DescripcionInsumo'
      'iIdUnidad=iIdUnidad'
      'sCodigo=sCodigo'
      'sNombre=sNombre'
      'CantidadOriginal=CantidadOriginal'
      'CantidadSolicitada=CantidadSolicitada'
      'iIdEmpresa=iIdEmpresa'
      'sNombreCorto=sNombreCorto'
      'sRazonSocial=sRazonSocial'
      'IdMarca=IdMarca'
      'CodigoMarca=CodigoMarca'
      'TituloMarca=TituloMarca'
      'IdPresentacion=IdPresentacion'
      'CodigoPresentacion=CodigoPresentacion'
      'TituloPresentacion=TituloPresentacion'
      'Cantidad=Cantidad'
      'PrecioCompra=PrecioCompra'
      'CantidadPresentacion=CantidadPresentacion'
      'Costo=Costo')
    DataSource = dsComisariaPartida
    BCDToCurrency = False
    Left = 360
    Top = 408
  end
  object frdsCostoxDia: TfrxDBDataset
    UserName = 'frdsCostoxDia'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Fecha=Fecha'
      'Personas=Personas'
      'TotalPersonas=TotalPersonas'
      'FactorDia=FactorDia'
      'Costo=Costo'
      'CostoCompra=CostoCompra'
      'CostoxPersona=CostoxPersona')
    DataSource = dsCostoxDia
    BCDToCurrency = False
    Left = 504
    Top = 344
  end
end
