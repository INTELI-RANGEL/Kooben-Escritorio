object FrmEditarCotizacionPartida: TFrmEditarCotizacionPartida
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Partida de Cotizaci'#243'n'
  ClientHeight = 236
  ClientWidth = 816
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object JvLabel1: TJvLabel
    Left = 8
    Top = 48
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
  object JvLabel2: TJvLabel
    Left = 17
    Top = 88
    Width = 35
    Height = 13
    Caption = 'Precio:'
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
  end
  object NombreInsumo: TDBText
    Left = 186
    Top = 11
    Width = 72
    Height = 13
    AutoSize = True
    DataField = 'NombreInsumo'
    DataSource = dsInsumo
  end
  object JvLabel3: TJvLabel
    Left = 476
    Top = 48
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
  object JvLabel4: TJvLabel
    Left = 590
    Top = 153
    Width = 59
    Height = 13
    Caption = 'Costo Final:'
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
  end
  object JvLabel5: TJvLabel
    Left = 401
    Top = 88
    Width = 55
    Height = 13
    Caption = '% Utilidad:'
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
  end
  object JvLabel6: TJvLabel
    Left = 615
    Top = 85
    Width = 34
    Height = 13
    Caption = 'Costo:'
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
  end
  object JvLabel7: TJvLabel
    Left = 608
    Top = 112
    Width = 41
    Height = 13
    Caption = 'Utilidad:'
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
  end
  object CodigoInsumo: TEdit
    Left = 8
    Top = 8
    Width = 161
    Height = 21
    TabOrder = 0
    OnEnter = CodigoInsumoEnter
    OnExit = CodigoInsumoExit
    OnKeyPress = CodigoInsumoKeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 195
    Width = 816
    Height = 41
    Align = alBottom
    Padding.Left = 6
    Padding.Top = 4
    Padding.Right = 6
    Padding.Bottom = 4
    TabOrder = 7
    ExplicitTop = 185
    ExplicitWidth = 806
    object btnAceptar: TAdvGlowButton
      Left = 609
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
      ExplicitLeft = 599
    end
    object btnCancelar: TAdvGlowButton
      Left = 709
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
      ExplicitLeft = 699
    end
  end
  object Cantidad: TRxDBCalcEdit
    Left = 59
    Top = 45
    Width = 121
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DataField = 'Cantidad'
    DataSource = dsCotizacionDatos
    DecimalPlaces = 6
    DisplayFormat = ',0.####'
    NumGlyphs = 2
    TabOrder = 1
    OnChange = CantidadChange
  end
  object Precio: TRxDBCalcEdit
    Left = 59
    Top = 85
    Width = 121
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DataField = 'Precio'
    DataSource = dsCotizacionDatos
    DisplayFormat = ',0.00'
    NumGlyphs = 2
    TabOrder = 4
    OnChange = PrecioChange
  end
  object IdPresentacion: TDBLookupComboBox
    Left = 186
    Top = 45
    Width = 270
    Height = 21
    DataField = 'IdPresentacion'
    DataSource = dsCotizacionDatos
    KeyField = 'IdPresentacion'
    ListField = 'TituloPresentacion'
    ListSource = dsPresentacion
    TabOrder = 2
    OnCloseUp = IdPresentacionCloseUp
    OnKeyDown = IdPresentacionKeyDown
  end
  object IdMarca: TDBLookupComboBox
    Left = 517
    Top = 45
    Width = 270
    Height = 21
    DataField = 'IdMarca'
    DataSource = dsCotizacionDatos
    KeyField = 'IdMarca'
    ListField = 'TituloMarca'
    ListSource = dsMarca
    TabOrder = 3
    OnCloseUp = IdMarcaCloseUp
    OnKeyDown = IdMarcaKeyDown
  end
  object pnlCosto: TPanel
    Left = 655
    Top = 153
    Width = 131
    Height = 29
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 6
    object Costo: TRxDBCalcEdit
      Left = 1
      Top = -4
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      TabStop = False
      DataField = 'Costo'
      DataSource = dsCotizacionDatos
      DisplayFormat = ',0.00'
      NumGlyphs = 2
      TabOrder = 0
    end
  end
  object pUtilidad: TRxDBCalcEdit
    Left = 463
    Top = 85
    Width = 90
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DataField = 'pUtilidad'
    DataSource = dsCotizacionDatos
    DecimalPlaces = 0
    DisplayFormat = ',0'
    NumGlyphs = 2
    TabOrder = 5
    OnChange = pUtilidadChange
  end
  object Panel2: TPanel
    Left = 601
    Top = 143
    Width = 185
    Height = 2
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 8
  end
  object CostoI: TJvDBCalcEdit
    Left = 655
    Top = 85
    Width = 121
    Height = 21
    TabStop = False
    DisplayFormat = ',0.00'
    TabOrder = 9
    DecimalPlacesAlwaysShown = False
    DataField = 'CostoI'
    DataSource = dsCotizacionDatos
  end
  object Utilidad: TJvDBCalcEdit
    Left = 655
    Top = 112
    Width = 121
    Height = 21
    TabStop = False
    DisplayFormat = ',0.00'
    TabOrder = 10
    DecimalPlacesAlwaysShown = False
    DataField = 'Utilidad'
    DataSource = dsCotizacionDatos
  end
  object rgPrecios: TRadioGroup
    Left = 186
    Top = 72
    Width = 185
    Height = 94
    Caption = 'Precios de Insumo:'
    TabOrder = 11
    OnClick = rgPreciosClick
  end
  object dsInsumo: TDataSource
    Left = 192
    Top = 160
  end
  object dsCotizacionDatos: TDataSource
    Left = 440
    Top = 176
  end
  object dsPresentacion: TDataSource
    Left = 344
    Top = 160
  end
  object dsMarca: TDataSource
    Left = 520
    Top = 160
  end
  object dsExistenciasGenerales: TDataSource
    Left = 88
    Top = 128
  end
  object dsVerificaCotizacion: TDataSource
    Left = 72
    Top = 176
  end
end
