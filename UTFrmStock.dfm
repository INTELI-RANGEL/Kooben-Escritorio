object FrmStock: TFrmStock
  Left = 0
  Top = 0
  Caption = 'FrmStock'
  ClientHeight = 385
  ClientWidth = 635
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 65
    Width = 635
    Height = 279
    Align = alClient
    TabOrder = 0
    ExplicitTop = 41
    ExplicitHeight = 303
    object tvInsumoStock: TcxGridDBTableView
      PopupMenu = AdvPopupMenu1
      Navigator.Buttons.CustomButtons = <>
      OnCellDblClick = tvInsumoStockCellDblClick
      DataController.DataSource = dsInsumoStock
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
      object ColNombreEmbarcacion: TcxGridDBColumn
        Caption = 'Embarcaci'#243'n'
        DataBinding.FieldName = 'NombreEmbarcacion'
        Visible = False
        GroupIndex = 0
      end
      object ColAplicacion: TcxGridDBColumn
        DataBinding.FieldName = 'Aplicacion'
      end
      object ColMinimo: TcxGridDBColumn
        Caption = 'M'#237'nimo'
        DataBinding.FieldName = 'Minimo'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = ',0.000000'
      end
      object ColMaximo: TcxGridDBColumn
        Caption = 'M'#225'ximo'
        DataBinding.FieldName = 'Maximo'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = ',0.000000'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tvInsumoStock
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 65
    Align = alTop
    TabOrder = 1
    object CodigoInsumo: TJvLabel
      Left = 57
      Top = 8
      Width = 70
      Height = 13
      Caption = 'CodigoInsumo'
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
    object JvLabel5: TJvLabel
      Left = 10
      Top = 8
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
    object SeparaInsumo: TJvLabel
      Left = 133
      Top = 8
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
    object NombreInsumo: TJvLabel
      Left = 146
      Top = 8
      Width = 89
      Height = 13
      Caption = 'NombreInsumo'
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
    object JvLabel6: TJvLabel
      Left = 25
      Top = 26
      Width = 26
      Height = 13
      Caption = 'Tipo:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object CodigoTipoInsumo: TJvLabel
      Left = 57
      Top = 26
      Width = 70
      Height = 13
      Caption = 'CodigoTipoInsumo'
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
    object NombreTipoInsumo: TJvLabel
      Left = 146
      Top = 26
      Width = 113
      Height = 13
      Caption = 'NombreTipoInsumo'
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
    object SeparaTipoInsumo: TJvLabel
      Left = 133
      Top = 26
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
  end
  object pnlEditar: TPanel
    Left = 72
    Top = 47
    Width = 481
    Height = 234
    TabOrder = 2
    Visible = False
    object JvLabel1: TJvLabel
      Left = 24
      Top = 56
      Width = 84
      Height = 13
      Caption = 'Cantidad M'#237'nima:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel2: TJvLabel
      Left = 24
      Top = 88
      Width = 88
      Height = 13
      Caption = 'Cantidad M'#225'xima:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel3: TJvLabel
      Left = 24
      Top = 123
      Width = 100
      Height = 13
      Caption = 'Fecha de Aplicaci'#243'n:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel4: TJvLabel
      Left = 24
      Top = 24
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
    object Panel2: TPanel
      Left = 1
      Top = 192
      Width = 479
      Height = 41
      Align = alBottom
      Padding.Top = 4
      Padding.Right = 6
      Padding.Bottom = 4
      TabOrder = 4
      object btnCancelar: TAdvGlowButton
        Left = 372
        Top = 5
        Width = 100
        Height = 31
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
        TabOrder = 1
        TabStop = True
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
        Left = 272
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
        TabStop = True
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
    object IdEmbarcacion: TDBLookupComboBox
      Left = 128
      Top = 24
      Width = 273
      Height = 21
      DataField = 'IdEmbarcacion'
      DataSource = dsInsumoStockUpt
      KeyField = 'IdEmbarcacion'
      ListField = 'NombreEmbarcacion'
      ListSource = dsEmbarcacion
      TabOrder = 0
    end
    object Maximo: TJvDBCalcEdit
      Left = 128
      Top = 88
      Width = 121
      Height = 21
      DecimalPlaces = 6
      DisplayFormat = '0.000000'
      TabOrder = 2
      DecimalPlacesAlwaysShown = True
      DataField = 'Maximo'
      DataSource = dsInsumoStockUpt
    end
    object Aplicacion: TJvDBDateEdit
      Left = 128
      Top = 123
      Width = 121
      Height = 21
      DataField = 'Aplicacion'
      DataSource = dsInsumoStockUpt
      TabOrder = 3
    end
    object Minimo: TJvDBCalcEdit
      Left = 128
      Top = 56
      Width = 121
      Height = 21
      DecimalPlaces = 6
      DisplayFormat = '0.000000'
      TabOrder = 1
      DecimalPlacesAlwaysShown = True
      DataField = 'Minimo'
      DataSource = dsInsumoStockUpt
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 344
    Width = 635
    Height = 41
    Align = alBottom
    Padding.Left = 6
    Padding.Top = 4
    Padding.Right = 6
    Padding.Bottom = 4
    TabOrder = 3
    ExplicitTop = 350
    object btnAgregar: TAdvGlowButton
      Left = 7
      Top = 5
      Width = 100
      Height = 31
      Align = alLeft
      Caption = '  &Agregar'
      ImageIndex = 0
      Images = ClientModule1.PngImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btnAgregarEditarClick
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
    object btnEditar: TAdvGlowButton
      Tag = 1
      Left = 107
      Top = 5
      Width = 100
      Height = 31
      Align = alLeft
      Caption = '  &Editar'
      ImageIndex = 4
      Images = ClientModule1.PngImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = btnAgregarEditarClick
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
      ExplicitLeft = 113
      ExplicitTop = 6
    end
    object btnEliminar: TAdvGlowButton
      Tag = 1
      Left = 207
      Top = 5
      Width = 100
      Height = 31
      Align = alLeft
      Caption = '  &Borrar'
      ImageIndex = 5
      Images = ClientModule1.PngImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      OnClick = btnEliminarClick
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
      ExplicitLeft = 283
      ExplicitTop = -3
    end
    object btnCerrar: TAdvGlowButton
      Tag = 1
      Left = 528
      Top = 5
      Width = 100
      Height = 31
      Align = alRight
      Caption = '  &Cerrar'
      ImageIndex = 9
      Images = ClientModule1.PngImageList1
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
      ExplicitLeft = 453
      ExplicitTop = 6
    end
  end
  object cdInsumoStock: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 64
    Top = 256
  end
  object dsInsumoStock: TDataSource
    DataSet = cdInsumoStock
    Left = 168
    Top = 304
  end
  object cdInsumoStockUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 440
    Top = 136
  end
  object dsInsumoStockUpt: TDataSource
    DataSet = cdInsumoStockUpt
    Left = 560
    Top = 136
  end
  object dsEmbarcacion: TDataSource
    Left = 400
    Top = 264
  end
  object AdvPopupMenu1: TAdvPopupMenu
    Images = ClientModule1.PngImageList1
    Version = '2.5.3.4'
    Left = 312
    Top = 200
    object Agregar1: TMenuItem
      Caption = '&Agregar'
      ImageIndex = 0
      OnClick = Agregar1Click
    end
    object Editar1: TMenuItem
      Caption = '&Editar'
      ImageIndex = 4
      OnClick = Editar1Click
    end
    object Borrar1: TMenuItem
      Caption = '&Borrar'
      ImageIndex = 5
      OnClick = Borrar1Click
    end
  end
end