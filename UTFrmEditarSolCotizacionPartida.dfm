object FrmEditarSolCotizacionPartida: TFrmEditarSolCotizacionPartida
  Left = 0
  Top = 0
  Caption = 'Partida de Solicitud de Cortizaci'#243'n'
  ClientHeight = 123
  ClientWidth = 797
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
  object NombreInsumo: TDBText
    Left = 186
    Top = 11
    Width = 72
    Height = 13
    AutoSize = True
    DataField = 'NombreInsumo'
    DataSource = dsInsumo
  end
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
  object Cantidad: TRxDBCalcEdit
    Left = 59
    Top = 45
    Width = 121
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DataField = 'Cantidad'
    DataSource = dsSolCotizacionDatos
    DecimalPlaces = 6
    DisplayFormat = ',0.####'
    NumGlyphs = 2
    TabOrder = 1
  end
  object IdPresentacion: TDBLookupComboBox
    Left = 186
    Top = 45
    Width = 270
    Height = 21
    DataField = 'IdPresentacion'
    DataSource = dsSolCotizacionDatos
    KeyField = 'IdPresentacion'
    ListField = 'TituloPresentacion'
    ListSource = dsPresentacion
    TabOrder = 2
  end
  object IdMarca: TDBLookupComboBox
    Left = 517
    Top = 45
    Width = 270
    Height = 21
    DataField = 'IdMarca'
    DataSource = dsSolCotizacionDatos
    KeyField = 'IdMarca'
    ListField = 'TituloMarca'
    ListSource = dsMarca
    TabOrder = 3
  end
  object Panel1: TPanel
    Left = 0
    Top = 82
    Width = 797
    Height = 41
    Align = alBottom
    Padding.Left = 6
    Padding.Top = 4
    Padding.Right = 6
    Padding.Bottom = 4
    TabOrder = 4
    ExplicitTop = 83
    ExplicitWidth = 806
    object btnAceptar: TAdvGlowButton
      Left = 590
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
      Left = 690
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
  object dsInsumo: TDataSource
    Left = 312
    Top = 8
  end
  object dsPresentacion: TDataSource
    Left = 464
    Top = 8
  end
  object dsSolCotizacionDatos: TDataSource
    Left = 400
    Top = 64
  end
  object dsMarca: TDataSource
    Left = 640
    Top = 8
  end
end
