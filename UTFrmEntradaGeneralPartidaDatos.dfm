object FrmEntradaGeneralPartidaDatos: TFrmEntradaGeneralPartidaDatos
  Left = 0
  Top = 0
  Caption = 'Partida de entrada al Almac'#233'n General'
  ClientHeight = 295
  ClientWidth = 777
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 254
    Width = 777
    Height = 41
    Align = alBottom
    Padding.Left = 6
    Padding.Top = 4
    Padding.Right = 6
    Padding.Bottom = 4
    TabOrder = 0
    object btnCancelar: TAdvGlowButton
      Left = 670
      Top = 5
      Width = 100
      Height = 31
      Align = alRight
      Caption = '&Cancelar'
      ImageIndex = 8
      Images = ClientModule1.PngImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
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
      Left = 570
      Top = 5
      Width = 100
      Height = 31
      Align = alRight
      Caption = '&Aceptar'
      ImageIndex = 1
      Images = ClientModule1.PngImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
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
    Left = 0
    Top = 0
    Width = 777
    Height = 59
    Align = alTop
    BevelOuter = bvNone
    Padding.Top = 10
    Padding.Right = 6
    TabOrder = 1
    object IdInsumo: TEdit
      Left = 56
      Top = 10
      Width = 715
      Height = 21
      Align = alClient
      TabOrder = 0
      OnEnter = IdInsumoEnter
      OnExit = IdInsumoExit
      OnKeyPress = IdInsumoKeyPress
    end
    object Panel3: TPanel
      Left = 0
      Top = 10
      Width = 56
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      object JvLabel1: TJvLabel
        Left = 12
        Top = 0
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
    end
    object Panel4: TPanel
      Left = 0
      Top = 31
      Width = 771
      Height = 28
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      object NombreInsumo: TDBText
        Left = 202
        Top = 6
        Width = 87
        Height = 13
        AutoSize = True
        DataField = 'NombreInsumo'
        DataSource = dsInsumo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CodigoInsumo: TDBText
        Left = 57
        Top = 6
        Width = 81
        Height = 13
        AutoSize = True
        DataField = 'CodigoInsumo'
        DataSource = dsInsumo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblGuion: TJvLabel
        Left = 144
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
  end
  object dsEntradaGeneralDatosUpt: TDataSource
    Left = 56
    Top = 248
  end
  object dsInsumo: TDataSource
    Left = 192
    Top = 248
  end
end
