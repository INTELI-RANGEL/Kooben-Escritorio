object FrmSeleccionarMenu: TFrmSeleccionarMenu
  Left = 0
  Top = 0
  Caption = 'Seleccionar Men'#250
  ClientHeight = 508
  ClientWidth = 1118
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
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
    Width = 1118
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object JvLabel1: TJvLabel
      Left = 8
      Top = 41
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
    object JvLabel3: TJvLabel
      Left = 8
      Top = 8
      Width = 311
      Height = 16
      Caption = 'Seleccione el Men'#250' peri'#243'dico que desea utilizar:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -13
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object cbVista: TComboBox
      Left = 79
      Top = 38
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
    object cbFiltrar: TCheckBox
      Left = 248
      Top = 40
      Width = 329
      Height = 17
      Caption = 'Ver solo los Men'#250's que tienen Solicitud de Consumo'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = cbFiltrarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 467
    Width = 1118
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
      Width = 868
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
        Width = 764
        Height = 21
        Align = alClient
        TabOrder = 0
        OnKeyDown = eBuscarKeyDown
      end
      object Panel4: TPanel
        Left = 813
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
      Left = 875
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
  object lvRecetas: TListView
    Left = 0
    Top = 65
    Width = 1118
    Height = 402
    Align = alClient
    Columns = <
      item
        AutoSize = True
        Caption = 'C'#243'digo Men'#250
      end
      item
        Caption = 'Desde'
      end
      item
        Caption = 'Hasta'
      end
      item
        Caption = 'Estado'
      end
      item
        Caption = 'Comentarios'
      end>
    IconOptions.AutoArrange = True
    LargeImages = ClientModule1.PngImageList1
    GroupView = True
    ParentShowHint = False
    ShowHint = True
    SmallImages = ClientModule1.PngImageList1
    StateImages = ClientModule1.PngImageList1
    TabOrder = 6
    OnChange = lvRecetasChange
    OnContextPopup = lvRecetasContextPopup
    OnDblClick = lvRecetasDblClick
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
  object dsMenu: TDataSource
    Left = 608
    Top = 144
  end
  object popVisualizacion: TPopupMenu
    AutoPopup = False
    Left = 968
    Top = 8
    object Iconos: TMenuItem
      Caption = 'Iconos'
    end
    object Lista: TMenuItem
      Caption = 'Lista'
    end
    object Reporte: TMenuItem
      Caption = 'Reporte'
    end
    object IconosPequenos: TMenuItem
      Caption = 'Iconos Peque'#241'os '
    end
  end
  object dsEmbarcacion: TDataSource
    Left = 552
    Top = 256
  end
end
