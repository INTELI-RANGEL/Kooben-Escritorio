object FrmEntradasAlmacenDX: TFrmEntradasAlmacenDX
  Left = 0
  Top = 0
  Caption = 'Entradas al Almac'#233'n'
  ClientHeight = 511
  ClientWidth = 1141
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlEncabezado: TPanel
    Left = 0
    Top = 0
    Width = 1141
    Height = 183
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Padding.Left = 4
    Padding.Right = 4
    ParentFont = False
    TabOrder = 0
    object Panel1: TPanel
      Left = 4
      Top = 0
      Width = 1133
      Height = 97
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      OnDblClick = Panel1DblClick
      object JvLabel3: TJvLabel
        Left = 53
        Top = 60
        Width = 40
        Height = 13
        Caption = 'Recibio:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel4: TJvLabel
        Left = 491
        Top = 60
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
      object JvLabel15: TJvLabel
        Left = 37
        Top = 36
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
      object IdRecibio: TDBLookupComboBox
        Left = 99
        Top = 60
        Width = 370
        Height = 21
        DataField = 'IdRecibio'
        DataSource = dsRegistroMovUpt
        KeyField = 'IdUsuario'
        ListField = 'sNombre'
        ListSource = dsRecibio
        ReadOnly = True
        TabOrder = 2
      end
      object IdAutorizo: TDBLookupComboBox
        Left = 543
        Top = 60
        Width = 370
        Height = 21
        DataField = 'IdAutorizo'
        DataSource = dsRegistroMovUpt
        KeyField = 'IdUsuario'
        ListField = 'sNombre'
        ListSource = dsAutorizo
        ReadOnly = True
        TabOrder = 3
      end
      object pnlCodigoExistencia: TPanel
        Left = 0
        Top = 0
        Width = 1133
        Height = 32
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object JvLabel1: TJvLabel
          Left = 13
          Top = 6
          Width = 80
          Height = 13
          Caption = 'C'#243'digo Entrada:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object JvLabel8: TJvLabel
          Left = 407
          Top = 6
          Width = 58
          Height = 13
          Caption = 'Referencia:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object JvLabel5: TJvLabel
          Left = 769
          Top = 6
          Width = 84
          Height = 13
          Caption = 'Fecha aplicaci'#243'n:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object CodigoRegistroMovimiento: TDBEdit
          Left = 99
          Top = 6
          Width = 273
          Height = 21
          DataField = 'CodigoRegistroMovimiento'
          DataSource = dsRegistroMovUpt
          ReadOnly = True
          TabOrder = 0
        end
        object pnlBotones: TPanel
          Left = 1061
          Top = 0
          Width = 72
          Height = 32
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          Visible = False
          object btnEncabezadoGrabar: TAdvGlowButton
            Left = 4
            Top = 2
            Width = 29
            Height = 24
            ImageIndex = 6
            Images = ClientModule1.ImageList1
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 0
            OnClick = btnEncabezadoGrabarClick
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
          object btnEncabezadoCancel: TAdvGlowButton
            Left = 39
            Top = 2
            Width = 29
            Height = 24
            ImageIndex = 16
            Images = ClientModule1.Lista16
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 1
            OnClick = btnEncabezadoCancelClick
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
        object Referencia: TDBEdit
          Left = 471
          Top = 6
          Width = 273
          Height = 21
          DataField = 'Referencia'
          DataSource = dsRegistroMovUpt
          TabOrder = 2
        end
        object Aplicacion: TJvDBDateEdit
          Left = 859
          Top = 6
          Width = 121
          Height = 21
          DataField = 'Aplicacion'
          DataSource = dsRegistroMovUpt
          ReadOnly = True
          TabOrder = 3
        end
      end
      object iIdEmpresa: TDBLookupComboBox
        Left = 99
        Top = 33
        Width = 454
        Height = 21
        DataField = 'iIdEmpresa'
        DataSource = dsRegistroMovUpt
        KeyField = 'iIdEmpresa'
        ListField = 'sNombreCorto'
        ListSource = dsProveedor
        TabOrder = 1
      end
    end
    object gbComisaria: TGroupBox
      Left = 4
      Top = 97
      Width = 1133
      Height = 86
      Align = alClient
      Caption = 'Solicitud de Comisaria'
      TabOrder = 1
      object lblCodigoComisaria: TDBText
        Left = 75
        Top = 24
        Width = 107
        Height = 13
        AutoSize = True
        DataField = 'CodigoComisaria'
        DataSource = dsComisaria
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object JvLabel12: TJvLabel
        Left = 17
        Top = 24
        Width = 52
        Height = 13
        Caption = 'Comisaria:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object eReferencia: TJvLabel
        Left = 206
        Top = 24
        Width = 58
        Height = 13
        Caption = 'Referencia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object lblReferencia: TDBText
        Left = 270
        Top = 24
        Width = 74
        Height = 13
        AutoSize = True
        DataField = 'Referencia'
        DataSource = dsComisaria
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object JvLabel13: TJvLabel
        Left = 17
        Top = 43
        Width = 32
        Height = 13
        Caption = 'Men'#250':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object lblCodigoMenu: TDBText
        Left = 55
        Top = 43
        Width = 82
        Height = 13
        AutoSize = True
        DataField = 'CodigoMenu'
        DataSource = dsComisaria
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object eDesde: TJvLabel
        Left = 208
        Top = 43
        Width = 47
        Height = 13
        Caption = 'Desde el:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object lblDesde: TDBText
        Left = 272
        Top = 43
        Width = 48
        Height = 13
        AutoSize = True
        DataField = 'Desde'
        DataSource = dsComisaria
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object eHasta: TJvLabel
        Left = 343
        Top = 43
        Width = 45
        Height = 13
        Caption = 'Hasta el:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object lblHasta: TDBText
        Left = 407
        Top = 43
        Width = 46
        Height = 13
        AutoSize = True
        DataField = 'Hasta'
        DataSource = dsComisaria
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object JvLabel14: TJvLabel
        Left = 17
        Top = 62
        Width = 66
        Height = 13
        Caption = 'Embarcaci'#243'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object lblCodigoEmbarcacion: TDBText
        Left = 89
        Top = 62
        Width = 123
        Height = 13
        AutoSize = True
        DataField = 'CodigoEmbarcacion'
        DataSource = dsComisaria
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object eNombreEmbarcacion: TJvLabel
        Left = 279
        Top = 62
        Width = 6
        Height = 13
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object lblNombreEmbarcacion: TDBText
        Left = 296
        Top = 62
        Width = 129
        Height = 13
        AutoSize = True
        DataField = 'NombreEmbarcacion'
        DataSource = dsComisaria
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object pnlEditCantidad: TPanel
    Left = 35
    Top = 293
    Width = 313
    Height = 138
    TabOrder = 1
    Visible = False
    object JvLabel9: TJvLabel
      Left = 34
      Top = 12
      Width = 39
      Height = 13
      Caption = 'Codigo:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object edtCodigoInsumo: TDBText
      Left = 75
      Top = 12
      Width = 100
      Height = 13
      AutoSize = True
      DataField = 'CodigoInsumo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object JvLabel10: TJvLabel
      Left = 30
      Top = 35
      Width = 43
      Height = 13
      Caption = 'Nombre:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object edtNombreInsumo: TDBText
      Left = 75
      Top = 35
      Width = 106
      Height = 13
      AutoSize = True
      DataField = 'NombreInsumo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object JvLabel11: TJvLabel
      Left = 24
      Top = 59
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
    object editCantidad: TJvDBCalcEdit
      Left = 75
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 0
      DecimalPlacesAlwaysShown = False
      DataField = 'Cantidad'
    end
  end
  object pnlPartidas: TPanel
    Left = 0
    Top = 183
    Width = 1141
    Height = 328
    Align = alClient
    BevelOuter = bvNone
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    object Splitter1: TSplitter
      Left = 311
      Top = 0
      Height = 287
      ExplicitLeft = 312
      ExplicitTop = 128
      ExplicitHeight = 100
    end
    object gridExistenciaPartida: TcxGrid
      Left = 425
      Top = 0
      Width = 716
      Height = 287
      Align = alClient
      TabOrder = 0
      object tvExistenciaPartida: TcxGridDBTableView
        PopupMenu = pmPartidas
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = tvExistenciaPartidaCellDblClick
        DataController.DataSource = dsRegistroMovimientoPartida
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.NoDataToDisplayInfoText = 'No se han seleccionado Insumos'
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooterMultiSummaries = True
        object NombreTipoInsumo: TcxGridDBColumn
          Caption = 'Tipo Insumo'
          DataBinding.FieldName = 'NombreTipoInsumo'
          Visible = False
          GroupIndex = 0
        end
        object PdaIdInsumo: TcxGridDBColumn
          DataBinding.FieldName = 'IdInsumo'
          Visible = False
        end
        object NombreInsumo: TcxGridDBColumn
          Caption = 'Nombre Insumo'
          DataBinding.FieldName = 'NombreInsumo'
        end
        object Registrado: TcxGridDBColumn
          Caption = 'Cantidad'
          DataBinding.FieldName = 'Registrado'
        end
        object TituloPresentacion1: TcxGridDBColumn
          Caption = 'Presentaci'#243'n'
          DataBinding.FieldName = 'TituloPresentacion'
        end
      end
      object gridExistenciaPartidaLevel1: TcxGridLevel
        GridView = tvExistenciaPartida
      end
    end
    object pnlBotonesPartidas: TPanel
      Left = 0
      Top = 287
      Width = 1141
      Height = 41
      Align = alBottom
      Padding.Left = 20
      Padding.Top = 4
      Padding.Right = 6
      Padding.Bottom = 4
      TabOrder = 1
      object btnGrabar: TAdvGlowButton
        Left = 918
        Top = 5
        Width = 100
        Height = 31
        Align = alRight
        Caption = '&Grabar'
        ImageIndex = 6
        Images = ClientModule1.ImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
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
      object btnCerrar: TAdvGlowButton
        Left = 1034
        Top = 5
        Width = 100
        Height = 31
        Align = alRight
        Caption = '&Cerrar'
        ImageIndex = 4
        Images = ClientModule1.ImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
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
      object Panel4: TPanel
        Left = 733
        Top = 5
        Width = 185
        Height = 31
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 2
        object btnImprimir: TAdvGlowButton
          Left = 0
          Top = 0
          Width = 100
          Height = 31
          Align = alLeft
          Caption = '&Imprimir'
          ImageIndex = 24
          Images = ClientModule1.PngImageList1
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
      object Panel2: TPanel
        Left = 1018
        Top = 5
        Width = 16
        Height = 31
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 3
      end
    end
    object pnlComisaria: TPanel
      Left = 0
      Top = 0
      Width = 311
      Height = 287
      Align = alLeft
      ParentColor = True
      TabOrder = 2
      object gridComisariaPartida: TcxGrid
        Left = 1
        Top = 65
        Width = 309
        Height = 221
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        TabOrder = 0
        object tvComisariaPartida: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = tvComisariaPartidaCellDblClick
          OnSelectionChanged = tvComisariaPartidaSelectionChanged
          DataController.DataSource = dsMovimientoComisaria
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.GroupByBox = False
          object cpNombreTipoInsumo: TcxGridDBColumn
            DataBinding.FieldName = 'NombreTipoInsumo'
            Visible = False
            GroupIndex = 0
          end
          object IdInsumo: TcxGridDBColumn
            Caption = 'Insumo'
            DataBinding.FieldName = 'IdInsumo'
            Visible = False
          end
          object cpNombreInsumo: TcxGridDBColumn
            Caption = 'Nombre'
            DataBinding.FieldName = 'NombreInsumo'
            Width = 90
          end
          object TituloPresentacion: TcxGridDBColumn
            Caption = 'Presentaci'#243'n'
            DataBinding.FieldName = 'TituloPresentacion'
            Width = 40
          end
          object CantidadPresentacion: TcxGridDBColumn
            Caption = 'Solicitado'
            DataBinding.FieldName = 'CantidadPresentacion'
          end
          object Surtido: TcxGridDBColumn
            DataBinding.FieldName = 'Surtido'
          end
          object Pendiente: TcxGridDBColumn
            DataBinding.FieldName = 'Pendiente'
          end
        end
        object gridComisariaPartidaLevel1: TcxGridLevel
          GridView = tvComisariaPartida
        end
      end
      object rgFiltroPartidas: TRadioGroup
        Left = 1
        Top = 1
        Width = 309
        Height = 64
        Align = alTop
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Todos'
          'Pendientes'
          'Sin recepci'#243'n'
          'Surtidos')
        TabOrder = 1
        OnClick = rgFiltroPartidasClick
      end
    end
    object Panel3: TPanel
      Left = 314
      Top = 0
      Width = 111
      Height = 287
      Align = alLeft
      TabOrder = 3
      object btnAgregar: TAdvGlowButton
        Left = 6
        Top = 24
        Width = 100
        Height = 27
        Caption = '&Agregar ->'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        OnClick = btnAgregarClick
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
      object btnPendientes: TAdvGlowButton
        Left = 6
        Top = 90
        Width = 100
        Height = 27
        Caption = '&Pendientes ->>'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 2
        OnClick = btnPendientesClick
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
      object btnQuitar: TAdvGlowButton
        Left = 6
        Top = 144
        Width = 100
        Height = 27
        Caption = '<- &Quitar'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 3
        OnClick = btnQuitarClick
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
      object btnNinguno: TAdvGlowButton
        Left = 6
        Top = 210
        Width = 100
        Height = 27
        Caption = '<<- &Ninguno'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 5
        OnClick = btnNingunoClick
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
      object btnTipoInsumo: TAdvGlowButton
        Left = 5
        Top = 57
        Width = 100
        Height = 27
        Caption = '&Tipo de Insumo ->'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btnTipoInsumoClick
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
      object btnQuitarTipo: TAdvGlowButton
        Left = 6
        Top = 177
        Width = 100
        Height = 27
        Caption = '<<- Tipo de Insumo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = btnQuitarTipoClick
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
  end
  object pnlEditar: TPanel
    Left = 175
    Top = 103
    Width = 336
    Height = 155
    TabOrder = 3
    Visible = False
    object JvLabel2: TJvLabel
      Left = 14
      Top = 14
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
      Left = 10
      Top = 41
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
      Left = 42
      Top = 73
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
    object pnlBtnEdit: TPanel
      Left = 1
      Top = 113
      Width = 334
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      Padding.Left = 6
      Padding.Top = 4
      Padding.Right = 6
      Padding.Bottom = 4
      TabOrder = 0
      object btnAceptarEdit: TAdvGlowButton
        Left = 128
        Top = 4
        Width = 100
        Height = 33
        Align = alRight
        Caption = '&Aceptar'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        OnClick = btnAceptarEditClick
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
      object btnCancelarEdit: TAdvGlowButton
        Left = 228
        Top = 4
        Width = 100
        Height = 33
        Align = alRight
        Caption = '&Cancelar'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        OnClick = btnCancelarEditClick
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
    object EditCodigoInsumo: TDBEdit
      Left = 97
      Top = 14
      Width = 192
      Height = 21
      TabStop = False
      DataField = 'CodigoInsumo'
      DataSource = dsRegistroMovimientoPartida
      TabOrder = 1
    end
    object EditNombreInsumo: TDBEdit
      Left = 97
      Top = 41
      Width = 192
      Height = 21
      TabStop = False
      DataField = 'NombreInsumo'
      DataSource = dsRegistroMovimientoPartida
      TabOrder = 2
    end
    object EditRegistrado: TJvDBCalcEdit
      Left = 96
      Top = 73
      Width = 121
      Height = 21
      DecimalPlaces = 6
      DisplayFormat = '0.######'
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
      DataField = 'Registrado'
      DataSource = dsRegistroMovPdaUpt
    end
  end
  object pnlProgress: TPanel
    Left = 126
    Top = 42
    Width = 185
    Height = 45
    BevelKind = bkTile
    BevelOuter = bvLowered
    Padding.Left = 4
    Padding.Right = 4
    Padding.Bottom = 2
    TabOrder = 4
    Visible = False
    object Panel6: TPanel
      Left = 5
      Top = 1
      Width = 171
      Height = 20
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Procesando...'
      TabOrder = 0
    end
    object pbProcesando: TProgressBar
      Left = 5
      Top = 21
      Width = 171
      Height = 17
      Align = alClient
      TabOrder = 1
    end
  end
  object cdBuscarComisaria: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 112
    Top = 280
  end
  object dsBuscarComisaria: TDataSource
    DataSet = cdBuscarComisaria
    Left = 112
    Top = 336
  end
  object cdComisaria: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = cdComisariaAfterOpen
    AfterRefresh = cdComisariaAfterRefresh
    Left = 200
    Top = 280
  end
  object dsComisaria: TDataSource
    DataSet = cdComisaria
    Left = 200
    Top = 336
  end
  object cdMovimientosComisaria: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 368
    Top = 48
  end
  object dsMovimientoComisaria: TDataSource
    DataSet = cdMovimientosComisaria
    Left = 280
    Top = 416
  end
  object cdRegistroMovUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterEdit = cdRegistroMovUptAfterEdit
    AfterApplyUpdates = cdRegistroMovUptAfterApplyUpdates
    Left = 448
    Top = 256
  end
  object dsRegistroMovUpt: TDataSource
    DataSet = cdRegistroMovUpt
    Left = 448
    Top = 304
  end
  object cdRegistroMovPdaUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterApplyUpdates = cdRegistroMovPdaUptAfterApplyUpdates
    Left = 560
    Top = 256
  end
  object dsRegistroMovPdaUpt: TDataSource
    DataSet = cdRegistroMovPdaUpt
    Left = 560
    Top = 304
  end
  object cdAutorizo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 624
  end
  object cdRecibio: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 496
    Top = 8
  end
  object dsRecibio: TDataSource
    DataSet = cdRecibio
    Left = 496
    Top = 96
  end
  object dsAutorizo: TDataSource
    DataSet = cdAutorizo
    Left = 568
    Top = 96
  end
  object cdRegistroMovimiento: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 448
    Top = 136
  end
  object dsRegistroMovimiento: TDataSource
    DataSet = cdRegistroMovimiento
    Left = 480
    Top = 176
  end
  object cdRegistroMovimientoPartida: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 688
    Top = 136
  end
  object dsRegistroMovimientoPartida: TDataSource
    DataSet = cdRegistroMovimientoPartida
    Left = 584
    Top = 184
  end
  object pmPartidas: TAdvPopupMenu
    Version = '2.5.3.4'
    Left = 792
    Top = 104
    object EditarInsumo1: TMenuItem
      Caption = 'EditarInsumo'
      OnClick = EditarInsumo1Click
    end
    object QuitarInsumo1: TMenuItem
      Caption = 'Quitar Insumo'
    end
  end
  object cdBuscarEntrada: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 104
    Top = 216
  end
  object frxEntradas: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42306.717406631940000000
    ReportOptions.LastChange = 42306.754955613430000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 360
    Top = 248
    Datasets = <
      item
        DataSet = ClientModule1.fdsOrganizacion
        DataSetName = 'fdsOrganizacion'
      end
      item
        DataSet = fdsRegistroMovimiento
        DataSetName = 'fdsRegistroMovimiento'
      end
      item
        DataSet = fdsRegistroMovimientoPartida
        DataSetName = 'fdsRegistroMovimientoPartida'
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
        Height = 162.519790000000000000
        Top = 196.535560000000000000
        Width = 740.787880000000000000
        Condition = 'fdsRegistroMovimiento."IdRegistroMovimiento"'
        object Memo20: TfrxMemoView
          Top = 71.811070000000000000
          Width = 737.008350000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Top = 124.724490000000000000
          Width = 737.008350000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Width = 737.008350000000000000
          Height = 71.811070000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 120.944960000000000000
          Top = 3.779530000000022000
          Width = 604.724409448818800000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CodigoRegistroMovimiento'
          DataSet = fdsRegistroMovimiento
          DataSetName = 'fdsRegistroMovimiento'
          Memo.UTF8W = (
            '[fdsRegistroMovimiento."CodigoRegistroMovimiento"]')
        end
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000022000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'C'#243'digo de Salida:')
        end
        object Memo4: TfrxMemoView
          Left = 120.944960000000000000
          Top = 22.677180000000020000
          Width = 604.724409448818800000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fdsRegistroMovimiento
          DataSetName = 'fdsRegistroMovimiento'
          Memo.UTF8W = (
            '[fdsRegistroMovimiento."Referencia"]')
        end
        object Memo5: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.677180000000020000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Referencia:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 120.944960000000000000
          Top = 41.574830000000020000
          Width = 604.724409448818800000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fdsRegistroMovimiento
          DataSetName = 'fdsRegistroMovimiento'
          Memo.UTF8W = (
            '[fdsRegistroMovimiento."Aplicacion"]')
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 41.574830000000020000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fecha:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 120.944960000000000000
          Top = 79.370130000000150000
          Width = 604.724409448818800000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fdsRegistroMovimiento
          DataSetName = 'fdsRegistroMovimiento'
          Memo.UTF8W = (
            '[fdsRegistroMovimiento."CodigoComisaria"]')
        end
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 79.370130000000150000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Men'#250' Peri'#243'dico:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 3.779530000000000000
          Top = 98.267779999999990000
          Width = 721.889839450000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'DEL  [fdsRegistroMovimiento."Desde"]  AL  [fdsRegistroMovimiento' +
              '."Hasta"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 3.779530000000000000
          Top = 132.283550000000400000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Localizaci'#243'n:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 120.944960000000000000
          Top = 132.283550000000000000
          Width = 604.724800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fdsRegistroMovimiento
          DataSetName = 'fdsRegistroMovimiento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              '[fdsRegistroMovimiento."CodigoEmbarcacion"] - [fdsRegistroMovimi' +
              'ento."NombreEmbarcacion"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 11.338590000000000000
        Top = 381.732530000000000000
        Width = 740.787880000000000000
        DataSet = fdsRegistroMovimiento
        DataSetName = 'fdsRegistroMovimiento'
        RowCount = 0
      end
      object PageHeader1: TfrxPageHeader
        Height = 117.165430000000000000
        Top = 18.897650000000000000
        Width = 740.787880000000000000
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 86.929190000000000000
          ShowHint = False
          DataField = 'Imagen'
          DataSet = ClientModule1.fdsOrganizacion
          DataSetName = 'fdsOrganizacion'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo13: TfrxMemoView
          Left = 3.779530000000000000
          Top = 86.929190000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[fdsOrganizacion."Etiqueta"]')
        end
        object Memo14: TfrxMemoView
          Left = 105.826840000000000000
          Top = 7.559059999999999000
          Width = 627.401980000000000000
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
        object Memo15: TfrxMemoView
          Left = 105.826840000000000000
          Top = 26.456710000000000000
          Width = 627.401980000000000000
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
        object Memo16: TfrxMemoView
          Left = 105.826840000000000000
          Top = 71.811070000000000000
          Width = 627.401980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'ENTRADAS AL ALMACEN')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 555.590910000000000000
        Width = 740.787880000000000000
        object Memo17: TfrxMemoView
          Left = 510.236550000000000000
          Top = 11.338590000000070000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Hoja [Page#] de [TotalPages#]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 18.897650000000000000
        Top = 476.220780000000000000
        Width = 740.787880000000000000
        DataSet = fdsRegistroMovimientoPartida
        DataSetName = 'fdsRegistroMovimientoPartida'
        RowCount = 0
        Stretched = True
        object Memo18: TfrxMemoView
          Left = 41.574830000000000000
          Width = 506.457020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            
              '  [fdsRegistroMovimientoPartida."CodigoInsumo"] - [fdsRegistroMo' +
              'vimientoPartida."NombreInsumo"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 548.031849999999900000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = fdsRegistroMovimientoPartida
          DataSetName = 'fdsRegistroMovimientoPartida'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsRegistroMovimientoPartida."Registrado"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 642.520100000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sNombre'
          DataSet = fdsRegistroMovimientoPartida
          DataSetName = 'fdsRegistroMovimientoPartida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsRegistroMovimientoPartida."sNombre"]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 37.795300000000000000
        Top = 415.748300000000000000
        Width = 740.787880000000000000
        Condition = 'fdsRegistroMovimientoPartida."NombreTipoInsumo"'
        object Memo25: TfrxMemoView
          Left = 642.520100000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'U.M.')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 548.031849999999900000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Cantidad')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 41.574830000000000000
          Top = 18.897650000000000000
          Width = 506.457020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '  Insumo')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Top = 18.897650000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[fdsRegistroMovimientoPartida."NombreTipoInsumo"]')
          ParentFont = False
        end
      end
    end
  end
  object fdsRegistroMovimiento: TfrxDBDataset
    UserName = 'fdsRegistroMovimiento'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdRegistroMovimiento=IdRegistroMovimiento'
      'IdComisaria=IdComisaria'
      'CodigoComisaria=CodigoComisaria'
      'Fecha=Fecha'
      'Referencia=Referencia'
      'Requerido=Requerido'
      'IdMenu=IdMenu'
      'CodigoMenu=CodigoMenu'
      'Desde=Desde'
      'Hasta=Hasta'
      'Comentarios=Comentarios'
      'IdEmbarcacion=IdEmbarcacion'
      'CodigoEmbarcacion=CodigoEmbarcacion'
      'NombreEmbarcacion=NombreEmbarcacion'
      'CodigoRegistroMovimiento=CodigoRegistroMovimiento'
      'Referencia=Referencia'
      'Aplicacion=Aplicacion'
      'Comentarios=Comentarios'
      'IdAutorizo=IdAutorizo'
      'sNombreAutorizo=sNombreAutorizo'
      'IdRecibio=IdRecibio'
      'sNombreRecibio=sNombreRecibio'
      'TipoMovimiento=TipoMovimiento')
    DataSet = cdRegistroMovimiento
    BCDToCurrency = False
    Left = 376
    Top = 400
  end
  object fdsRegistroMovimientoPartida: TfrxDBDataset
    UserName = 'fdsRegistroMovimientoPartida'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdRegistroMovimientoPartida=IdRegistroMovimientoPartida'
      'IdRegistroMovimiento=IdRegistroMovimiento'
      'NombreTipoInsumo=NombreTipoInsumo'
      'IdInsumo=IdInsumo'
      'CodigoInsumo=CodigoInsumo'
      'NombreInsumo=NombreInsumo'
      'iIdUnidad=iIdUnidad'
      'sCodigo=sCodigo'
      'sNombre=sNombre'
      'Solicitado=Solicitado'
      'Registrado=Registrado'
      'Surtido=Surtido')
    DataSet = cdRegistroMovimientoPartida
    BCDToCurrency = False
    Left = 376
    Top = 456
  end
  object cdProveedor: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 672
    Top = 240
  end
  object dsProveedor: TDataSource
    DataSet = cdProveedor
    Left = 672
    Top = 288
  end
end
