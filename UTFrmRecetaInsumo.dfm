object FrmRecetaInsumo: TFrmRecetaInsumo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Ingredientes'
  ClientHeight = 480
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 121
    Align = alTop
    Enabled = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 50
      Width = 686
      Height = 70
      Align = alClient
      BevelOuter = bvNone
      Padding.Right = 4
      Padding.Bottom = 4
      TabOrder = 0
      object DescripcionReceta: TDBMemo
        Left = 94
        Top = 0
        Width = 588
        Height = 66
        Align = alClient
        DataField = 'DescripcionReceta'
        DataSource = dsReceta
        TabOrder = 0
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 94
        Height = 66
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object JvLabel3: TJvLabel
          Left = 15
          Top = 0
          Width = 60
          Height = 13
          Caption = 'Descripci'#243'n:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 686
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object JvLabel1: TJvLabel
        Left = 14
        Top = 8
        Width = 76
        Height = 13
        Caption = 'Codigo Receta:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel2: TJvLabel
        Left = 14
        Top = 27
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
      object CodigoReceta: TDBText
        Left = 96
        Top = 7
        Width = 67
        Height = 13
        AutoSize = True
        DataField = 'CodigoReceta'
        DataSource = dsReceta
      end
      object NombreReceta: TDBText
        Left = 96
        Top = 27
        Width = 71
        Height = 13
        AutoSize = True
        DataField = 'NombreReceta'
        DataSource = dsReceta
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 338
    Width = 688
    Height = 101
    Align = alBottom
    TabOrder = 1
    object JvLabel4: TJvLabel
      Left = 16
      Top = 20
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
    object JvLabel5: TJvLabel
      Left = 16
      Top = 49
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
    object sCodigo: TDBText
      Left = 323
      Top = 49
      Width = 38
      Height = 13
      AutoSize = True
      DataField = 'sCodigo'
      DataSource = dsInsumo
    end
    object lblConversion: TJvLabel
      Left = 151
      Top = 74
      Width = 66
      Height = 13
      Caption = 'lblConversion'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object IdInsumo: TDBLookupComboBox
      Left = 71
      Top = 22
      Width = 250
      Height = 21
      Hint = 'Seleccione un ingrediente o pulse <Ctrl> + <B> buscar'
      DataField = 'IdInsumo'
      DataSource = dsRecetaInsumo
      KeyField = 'IdInsumo'
      ListField = 'NombreInsumo'
      ListSource = dsInsumo
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnKeyDown = IdInsumoKeyDown
    end
    object btnAgregarInsumo: TAdvGlowButton
      Left = 327
      Top = 20
      Width = 18
      Height = 21
      ImageIndex = 17
      Images = ClientModule1.Lista16
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = btnAgregarInsumoClick
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
    object iIdUnidad: TDBLookupComboBox
      Left = 151
      Top = 47
      Width = 166
      Height = 21
      DataField = 'iIdUnidad'
      DataSource = dsRecetaInsumo
      KeyField = 'iIdUnidad_s'
      ListField = 'sNombre_s'
      ListSource = dsUnidades
      TabOrder = 3
    end
    object Cantidad: TNxNumberEdit
      Left = 71
      Top = 47
      Width = 74
      Height = 21
      TabOrder = 2
      Text = '0.0000'
      OnChange = CantidadChange
      Precision = 4
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 439
    Width = 688
    Height = 41
    Align = alBottom
    Padding.Top = 7
    Padding.Right = 7
    Padding.Bottom = 7
    TabOrder = 2
    object btnTerminar: TAdvGlowButton
      Left = 597
      Top = 8
      Width = 83
      Height = 25
      Align = alRight
      Caption = '&Terminar'
      ImageIndex = 8
      Images = ClientModule1.PngImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      TabStop = True
      OnClick = btnTerminarClick
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
    object btnAceptar: TAdvGlowButton
      Left = 514
      Top = 8
      Width = 83
      Height = 25
      Align = alRight
      Caption = '&Aceptar'
      ImageIndex = 1
      Images = ClientModule1.PngImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      TabStop = True
      OnClick = btnAceptarClick
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
      Left = 431
      Top = 8
      Width = 83
      Height = 25
      Align = alRight
      Caption = '&Nuevo'
      ImageIndex = 0
      Images = ClientModule1.PngImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      TabStop = True
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
  object GridInsumos: TcxGrid
    Left = 0
    Top = 121
    Width = 688
    Height = 217
    Align = alClient
    TabOrder = 3
    object GridInsumosDBTableView1: TcxGridDBTableView
      OnKeyDown = GridInsumosDBTableView1KeyDown
      Navigator.Buttons.CustomButtons = <>
      OnEditKeyDown = GridInsumosDBTableView1EditKeyDown
      DataController.DataSource = dsRecetaInsumoLista
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.GroupByBox = False
      object cCodigoInsumo: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'CodigoInsumo'
        Width = 61
      end
      object cNombreInsumo: TcxGridDBColumn
        Caption = 'Ingrediente'
        DataBinding.FieldName = 'NombreInsumo'
        Width = 176
      end
      object cCantidad: TcxGridDBColumn
        DataBinding.FieldName = 'Cantidad'
        Width = 60
      end
      object csCodigo: TcxGridDBColumn
        Caption = 'U.M.'
        DataBinding.FieldName = 'sCodigo'
        Width = 41
      end
      object Calorias: TcxGridDBColumn
        DataBinding.FieldName = 'Calorias'
        Width = 49
      end
      object Proteinas: TcxGridDBColumn
        DataBinding.FieldName = 'Proteinas'
        Width = 55
      end
      object Grasas: TcxGridDBColumn
        DataBinding.FieldName = 'Grasas'
        Width = 47
      end
      object HidratosCarbono: TcxGridDBColumn
        Caption = 'Hidratos Carbono'
        DataBinding.FieldName = 'HidratosCarbono'
        Width = 99
      end
      object IndiceGlucemico: TcxGridDBColumn
        Caption = 'Indice Glucemico'
        DataBinding.FieldName = 'IndiceGlucemico'
        Width = 90
      end
    end
    object GridInsumosLevel1: TcxGridLevel
      GridView = GridInsumosDBTableView1
    end
  end
  object dsReceta: TDataSource
    Left = 360
    Top = 8
  end
  object dsRecetaInsumo: TDataSource
    Left = 472
    Top = 80
  end
  object dsInsumo: TDataSource
    Left = 448
    Top = 152
  end
  object dsRecetaInsumoLista: TDataSource
    Left = 448
    Top = 192
  end
  object Aviso: TJvBalloonHint
    UseBalloonAsApplicationHint = True
    Left = 24
    Top = 208
  end
  object cdUnidades: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = cdUnidadesAfterScroll
    Left = 400
    Top = 264
  end
  object dsUnidades: TDataSource
    DataSet = cdUnidades
    Left = 464
    Top = 264
  end
  object cdBuscarInsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = cdBuscarInsumoAfterScroll
    Left = 272
    Top = 64
  end
  object dsBuscarInsumo: TDataSource
    DataSet = cdBuscarInsumo
    Left = 360
    Top = 64
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
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 336
    Top = 240
    DockControlHeights = (
      0
      0
      0
      0)
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2013White'
    Left = 280
    Top = 256
  end
end
