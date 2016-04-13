object FrmBuscarRegistroConsumo: TFrmBuscarRegistroConsumo
  Left = 0
  Top = 0
  Caption = 'Receta'
  ClientHeight = 277
  ClientWidth = 547
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 547
    Height = 41
    Align = alTop
    TabOrder = 0
    object JvLabel1: TJvLabel
      Left = 8
      Top = 14
      Width = 65
      Height = 13
      Caption = 'Visualizaci'#243'n:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object cbVista: TComboBox
      Left = 79
      Top = 11
      Width = 122
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Text = 'Iconos'
      OnChange = cbVistaChange
      Items.Strings = (
        'Iconos'
        'Lista'
        'Reporte'
        'Iconos peque'#241'os')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 236
    Width = 547
    Height = 41
    Align = alBottom
    Padding.Left = 7
    Padding.Top = 7
    Padding.Right = 7
    Padding.Bottom = 7
    TabOrder = 1
    object pnlBuscar: TPanel
      Left = 8
      Top = 8
      Width = 295
      Height = 25
      Align = alClient
      BevelOuter = bvNone
      Caption = '|'
      Padding.Top = 3
      Padding.Bottom = 3
      TabOrder = 0
      Visible = False
      object JvLabel2: TJvLabel
        Left = 0
        Top = 3
        Width = 49
        Height = 19
        Align = alLeft
        AutoSize = False
        Caption = 'Buscar:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
        ExplicitTop = 0
        ExplicitHeight = 25
      end
      object eBuscar: TEdit
        Left = 49
        Top = 3
        Width = 191
        Height = 19
        Align = alClient
        TabOrder = 0
        OnKeyDown = eBuscarKeyDown
        ExplicitHeight = 21
      end
      object Panel4: TPanel
        Left = 240
        Top = 3
        Width = 55
        Height = 19
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        object btnAbajo: TAdvGlowButton
          Left = 9
          Top = 0
          Width = 23
          Height = 19
          Align = alRight
          ImageIndex = 13
          Images = ClientModule1.Lista24
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 0
          OnClick = btnAbajoClick
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
        object btnArriba: TAdvGlowButton
          Left = 32
          Top = 0
          Width = 23
          Height = 19
          Align = alRight
          ImageIndex = 12
          Images = ClientModule1.Lista24
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 1
          OnClick = btnArribaClick
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
    object Panel3: TPanel
      Left = 303
      Top = 8
      Width = 236
      Height = 25
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object btnAbrir: TAdvGlowButton
        Left = 36
        Top = 0
        Width = 100
        Height = 25
        Align = alRight
        Caption = '&Abrir'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        TabStop = True
        OnClick = btnAbrirClick
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
      object btnCancelar: TAdvGlowButton
        Left = 136
        Top = 0
        Width = 100
        Height = 25
        Align = alRight
        Caption = '&Cancelar'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        TabStop = True
        OnClick = btnCancelarClick
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
  object lvRecetas: TListView
    Left = 0
    Top = 41
    Width = 547
    Height = 195
    Align = alClient
    Columns = <
      item
        Caption = 'Col1'
        ImageIndex = 0
      end
      item
      end
      item
      end>
    Items.ItemData = {
      0589000000030000000100000001000000FFFFFFFF00000000FFFFFFFF000000
      00075000720069006D00650072006F000200000002000000FFFFFFFF00000000
      FFFFFFFF000000000753006500670075006E0064006F000300000003000000FF
      FFFFFF01000000FFFFFFFF00000000075400650072006300650072006F000563
      00630063006300630048377339FFFF}
    LargeImages = ClientModule1.Lista24
    GroupHeaderImages = ClientModule1.Lista24
    GroupView = True
    ParentShowHint = False
    ShowHint = False
    SmallImages = ClientModule1.Lista24
    StateImages = ClientModule1.Lista24
    TabOrder = 2
    OnChange = lvRecetasChange
    OnDblClick = lvRecetasDblClick
    ExplicitWidth = 303
  end
  object dsRegistroConsumo: TDataSource
    Left = 416
    Top = 8
  end
end
