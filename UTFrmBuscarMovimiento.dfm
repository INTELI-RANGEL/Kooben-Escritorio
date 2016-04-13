object FrmBuscarMovimiento: TFrmBuscarMovimiento
  Left = 0
  Top = 0
  Caption = 'Abrir Movimientos de Almac'#233'n'
  ClientHeight = 470
  ClientWidth = 917
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
    Width = 917
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object JvLabel1: TJvLabel
      Left = 8
      Top = 12
      Width = 67
      Height = 13
      Caption = 'Tipo de Vista:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object cbVista: TComboBox
      Left = 79
      Top = 9
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
    Top = 429
    Width = 917
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 7
    Padding.Top = 7
    Padding.Right = 7
    Padding.Bottom = 7
    TabOrder = 1
    object pnlBuscar: TPanel
      Left = 7
      Top = 7
      Width = 667
      Height = 27
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
        Height = 21
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
        Width = 563
        Height = 21
        Align = alClient
        TabOrder = 0
        OnKeyDown = eBuscarKeyDown
      end
      object Panel4: TPanel
        Left = 612
        Top = 3
        Width = 55
        Height = 21
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        object btnAbajo: TAdvGlowButton
          Left = 9
          Top = 0
          Width = 23
          Height = 21
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
          Height = 21
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
      Left = 674
      Top = 7
      Width = 236
      Height = 27
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object btnAbrir: TcxButton
        AlignWithMargins = True
        Left = 27
        Top = 0
        Width = 100
        Height = 27
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alRight
        Caption = '&Abrir'
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = ClientModule1.cxImage16
        TabOrder = 0
        OnClick = btnAbrirClick
      end
      object btnCancelar: TcxButton
        AlignWithMargins = True
        Left = 133
        Top = 0
        Width = 100
        Height = 27
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alRight
        Caption = '&Cancelar'
        OptionsImage.ImageIndex = 1
        OptionsImage.Images = ClientModule1.cxImage16
        TabOrder = 1
        OnClick = btnCancelarClick
      end
    end
  end
  object PcRecetas: TcxPageControl
    Left = 0
    Top = 41
    Width = 917
    Height = 388
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = TsRecientes
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.SkinName = 'Office2013White'
    OnChange = PcRecetasChange
    ClientRectBottom = 386
    ClientRectLeft = 2
    ClientRectRight = 915
    ClientRectTop = 28
    object TsRecientes: TcxTabSheet
      Caption = 'Movimientos recientes'
      ImageIndex = 0
      OnShow = tsRecientesShow
      object lvRecientes: TListView
        Left = 0
        Top = 0
        Width = 913
        Height = 358
        Align = alClient
        Columns = <
          item
            AutoSize = True
            Caption = 'Nombre Receta'
          end>
        Items.ItemData = {
          0589000000030000000100000001000000FFFFFFFF00000000FFFFFFFF000000
          00075000720069006D00650072006F000200000002000000FFFFFFFF00000000
          FFFFFFFF000000000753006500670075006E0064006F000300000003000000FF
          FFFFFF01000000FFFFFFFF00000000075400650072006300650072006F000563
          00630063006300630048377339FFFF}
        LargeImages = ClientModule1.Lista24
        GroupView = True
        ParentShowHint = False
        ShowHint = False
        SmallImages = ClientModule1.Lista24
        StateImages = ClientModule1.Lista24
        TabOrder = 0
        OnChange = lvRecetasChange
        OnContextPopup = lvRecientesContextPopup
        OnDblClick = lvRecetasDblClick
        ExplicitTop = 3
      end
    end
    object TsTodas: TcxTabSheet
      Caption = 'Todos los Movimientos'
      ImageIndex = 1
      OnShow = tsTodasShow
      object lvRecetas: TListView
        Left = 0
        Top = 0
        Width = 913
        Height = 358
        Align = alClient
        Columns = <
          item
            AutoSize = True
            Caption = 'Nombre Receta'
          end>
        IconOptions.AutoArrange = True
        LargeImages = ClientModule1.Lista24
        GroupView = True
        ParentShowHint = False
        ShowHint = True
        SmallImages = ClientModule1.Lista16
        StateImages = ClientModule1.Lista24
        TabOrder = 0
        OnChange = lvRecetasChange
        OnContextPopup = lvRecetasContextPopup
        OnDblClick = lvRecetasDblClick
      end
    end
  end
  object dsMovimiento: TDataSource
    Left = 608
    Top = 144
  end
  object popVisualizacion: TPopupMenu
    AutoPopup = False
    Left = 848
    object Iconos: TMenuItem
      Caption = 'Iconos'
      OnClick = IconosClick
    end
    object Lista: TMenuItem
      Caption = 'Lista'
      OnClick = ListaClick
    end
    object Reporte: TMenuItem
      Caption = 'Reporte'
      OnClick = ReporteClick
    end
    object IconosPequenos: TMenuItem
      Caption = 'Iconos Peque'#241'os '
      OnClick = IconosPequenosClick
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2013White'
    Left = 608
    Top = 40
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
    Left = 608
    Top = 96
    DockControlHeights = (
      0
      0
      0
      0)
  end
end
