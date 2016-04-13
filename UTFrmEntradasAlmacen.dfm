object FrmEntradasAlmacen: TFrmEntradasAlmacen
  Left = 0
  Top = 0
  Caption = 'FrmEntradasAlmacen'
  ClientHeight = 525
  ClientWidth = 1126
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlReceta: TPanel
    Left = 0
    Top = 0
    Width = 1126
    Height = 81
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object NombreReceta: TDBText
      Left = 102
      Top = 39
      Width = 131
      Height = 26
      AutoSize = True
      DataField = 'Referencia'
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
      Width = 1126
      Height = 33
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Splitter1: TSplitter
        Left = 896
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
        Width = 896
        Height = 33
        Align = alClient
        Padding.Top = 4
        TabOrder = 0
        object CodigoReceta: TDBText
          Left = 84
          Top = 5
          Width = 109
          Height = 23
          Align = alClient
          AutoSize = True
          DataField = 'CodigoComisaria'
          Font.Charset = ANSI_CHARSET
          Font.Color = 4227327
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
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
        Left = 899
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
    Top = 81
    Width = 1126
    Height = 444
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
    object Panel2: TPanel
      Left = 1
      Top = 14
      Width = 1124
      Height = 429
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object jvlbl1: TJvLabel
        Left = 0
        Top = 0
        Width = 99
        Height = 19
        Align = alTop
        Caption = '  Ingredientes:'
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
      end
      object cxGrid1: TcxGrid
        AlignWithMargins = True
        Left = 3
        Top = 22
        Width = 1118
        Height = 404
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = cxcbsNone
        TabOrder = 0
        object tvPartidas: TcxGridDBTableView
          OnDblClick = tvPartidasDblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsComisariaInsumoLista
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object IdComisariaPartida: TcxGridDBColumn
            DataBinding.FieldName = 'IdComisariaPartida'
            Visible = False
          end
          object NombreTipoInsumo: TcxGridDBColumn
            Caption = 'Tipo Insumo'
            DataBinding.FieldName = 'NombreTipoInsumo'
            Visible = False
            GroupIndex = 0
          end
          object CodigoInsumo: TcxGridDBColumn
            DataBinding.FieldName = 'CodigoInsumo'
            Width = 50
          end
          object NombreInsumo: TcxGridDBColumn
            DataBinding.FieldName = 'NombreInsumo'
            Width = 64
          end
          object CantidadSolicitada: TcxGridDBColumn
            Caption = 'Cantidad Solicitar'
            DataBinding.FieldName = 'CantidadSolicitada'
            Width = 40
          end
          object sNombreComisaria: TcxGridDBColumn
            Caption = 'U.M. Solicitar'
            DataBinding.FieldName = 'sNombreComisaria'
          end
        end
        object glNivel1: TcxGridLevel
          Caption = 'Ingredientes'
          GridView = tvPartidas
          Options.DetailTabsPosition = dtpTop
        end
      end
    end
  end
  object pnlEditarPartida: TPanel
    Left = 304
    Top = 187
    Width = 569
    Height = 224
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
      Top = 106
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
    object Panel6: TPanel
      Left = 1
      Top = 182
      Width = 567
      Height = 41
      Align = alBottom
      Padding.Top = 4
      Padding.Right = 6
      Padding.Bottom = 4
      TabOrder = 0
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
    object EdtCodigoInsumo: TDBEdit
      Left = 107
      Top = 20
      Width = 238
      Height = 21
      TabStop = False
      DataField = 'CodigoInsumo'
      DataSource = dsComisariaInsumoLista
      ReadOnly = True
      TabOrder = 1
    end
    object EdtNombreInsumo: TDBEdit
      Left = 107
      Top = 47
      Width = 446
      Height = 21
      TabStop = False
      DataField = 'NombreInsumo'
      DataSource = dsComisariaInsumoLista
      ReadOnly = True
      TabOrder = 2
    end
    object EdtCantidadSolicitada: TJvDBCalcEdit
      Left = 107
      Top = 106
      Width = 121
      Height = 21
      DecimalPlaces = 6
      DisplayFormat = '0.######'
      PopupMenu = popSolicitar
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
      DataField = 'CantidadSolicitada'
      DataSource = dsComisariaInsumoUpt
    end
    object EdtCantidadOriginal: TDBCurrencyEdit
      Left = 108
      Top = 72
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      TabStop = False
      DecimalPlaces = 6
      DisplayFormat = ',0.000000;-,0.000000'
      ReadOnly = True
      TabOrder = 4
      DataField = 'CantidadOriginal'
      DataSource = dsComisariaInsumoLista
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 234
      Top = 106
      Width = 145
      Height = 21
      DataField = 'iIdUnidad'
      DataSource = dsComisariaInsumoUpt
      KeyField = 'iIdUnidad'
      ListField = 'sNombre'
      ListSource = dsUnidades
      TabOrder = 5
    end
    object EdtsNombre: TDBEdit
      Left = 235
      Top = 72
      Width = 142
      Height = 21
      TabStop = False
      DataField = 'sNombreInsumo'
      DataSource = dsComisariaInsumoLista
      ReadOnly = True
      TabOrder = 6
    end
  end
  object cdComisaria: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 120
    Top = 184
  end
  object cdComisariaInsumoLista: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 120
    Top = 240
  end
  object cdBuscarComisaria: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 120
    Top = 328
  end
  object cdComisariaInsumoUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 120
    Top = 384
  end
  object cdComisariaUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 120
    Top = 440
  end
  object dsComisaria: TDataSource
    DataSet = cdComisaria
    Left = 184
    Top = 184
  end
  object dsComisariaInsumoLista: TDataSource
    DataSet = cdComisariaInsumoLista
    Left = 248
    Top = 240
  end
  object dsComisariaInsumoUpt: TDataSource
    DataSet = cdComisariaInsumoUpt
    Left = 248
    Top = 384
  end
  object cdEmbarcacion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 248
    Top = 448
  end
  object cdBuscarMenu: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 440
  end
  object AdvPopupMenu1: TAdvPopupMenu
    Version = '2.5.3.4'
    Left = 376
    Top = 464
    object Editar1: TMenuItem
      Caption = '&Editar'
      OnClick = Editar1Click
    end
  end
  object cdUnidades: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 584
    Top = 424
  end
  object dsUnidades: TDataSource
    DataSet = cdUnidades
    Left = 648
    Top = 424
  end
  object popSolicitar: TJvPopupMenu
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 0
    Left = 504
    Top = 272
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
end
