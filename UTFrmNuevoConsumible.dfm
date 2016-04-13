object FrmNuevoConsumible: TFrmNuevoConsumible
  Left = 0
  Top = 0
  Caption = 'Captura nuevo Paquete de Consumibles'
  ClientHeight = 249
  ClientWidth = 755
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelImagen: TPanel
    Left = 0
    Top = 0
    Width = 755
    Height = 187
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Panel1: TPanel
      Left = 250
      Top = 0
      Width = 505
      Height = 187
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 505
        Height = 88
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object JvLabel3: TJvLabel
          Left = 6
          Top = 10
          Width = 69
          Height = 13
          Caption = 'Tipo Paquete:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object JvLabel1: TJvLabel
          Left = 30
          Top = 37
          Width = 39
          Height = 13
          Caption = 'C'#243'digo:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object JvLabel6: TJvLabel
          Left = 19
          Top = 64
          Width = 50
          Height = 13
          Caption = 'Personas:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object IdTipoReceta: TDBLookupComboBox
          Left = 75
          Top = 10
          Width = 308
          Height = 21
          DataField = 'IdTipoReceta'
          DataSource = dsReceta
          KeyField = 'IdTipoReceta'
          ListField = 'NombreTipoReceta'
          ListSource = dsTipoReceta
          TabOrder = 0
          OnKeyDown = IdTipoRecetaKeyDown
        end
        object CodigoReceta: TDBEdit
          Left = 75
          Top = 37
          Width = 121
          Height = 21
          DataField = 'CodigoReceta'
          DataSource = dsReceta
          MaxLength = 20
          TabOrder = 1
        end
        object Personas: TJvDBSpinEdit
          Left = 75
          Top = 64
          Width = 60
          Height = 21
          MaxLength = 11
          TabOrder = 2
          DataField = 'Personas'
          DataSource = dsReceta
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 88
        Width = 505
        Height = 27
        Align = alTop
        BevelOuter = bvNone
        Padding.Top = 2
        Padding.Right = 8
        Padding.Bottom = 2
        TabOrder = 1
        object NombreReceta: TDBEdit
          Left = 76
          Top = 2
          Width = 421
          Height = 23
          Align = alClient
          DataField = 'NombreReceta'
          DataSource = dsReceta
          MaxLength = 60
          TabOrder = 0
          ExplicitHeight = 21
        end
        object Panel6: TPanel
          Left = 0
          Top = 2
          Width = 76
          Height = 23
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object JvLabel2: TJvLabel
            Left = 26
            Top = 0
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
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 115
        Width = 505
        Height = 72
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 76
          Height = 72
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object JvLabel4: TJvLabel
            Left = 9
            Top = 2
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
        object Panel9: TPanel
          Left = 76
          Top = 0
          Width = 429
          Height = 72
          Align = alClient
          BevelOuter = bvNone
          Padding.Top = 2
          Padding.Right = 8
          Padding.Bottom = 2
          TabOrder = 1
          object DescripcionReceta: TDBMemo
            Left = 0
            Top = 2
            Width = 421
            Height = 68
            Align = alClient
            DataField = 'DescripcionReceta'
            DataSource = dsReceta
            MaxLength = 300
            TabOrder = 0
            OnChange = DescripcionRecetaChange
          end
        end
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 250
      Height = 187
      Align = alLeft
      BevelOuter = bvNone
      Padding.Left = 10
      Padding.Top = 10
      Padding.Right = 4
      Padding.Bottom = 4
      TabOrder = 1
      object PanelPicture: TPanel
        Left = 10
        Top = 10
        Width = 236
        Height = 173
        Align = alClient
        Caption = '< Doble click para seleccionar Imagen >'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnEnter = PanelPictureEnter
        OnExit = PanelPictureExit
        object imagen: TcxDBImage
          Left = 1
          Top = 1
          Align = alClient
          DataBinding.DataField = 'imagen'
          DataBinding.DataSource = dsReceta
          Properties.Caption = 'Doble clic para agregar imagen.'
          Properties.GraphicClassName = 'TdxSmartImage'
          TabOrder = 0
          OnDblClick = imagenDblClick
          Height = 171
          Width = 234
        end
      end
    end
  end
  object PanelBotones: TPanel
    Left = 0
    Top = 208
    Width = 755
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Padding.Top = 3
    Padding.Right = 8
    Padding.Bottom = 6
    TabOrder = 1
    object BtnCancelar: TAdvGlowButton
      Left = 647
      Top = 3
      Width = 100
      Height = 32
      Align = alRight
      Caption = '&Cancelar'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = BtnCancelarClick
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
    object BtnAceptar: TAdvGlowButton
      Left = 547
      Top = 3
      Width = 100
      Height = 32
      Align = alRight
      Caption = '&Aceptar'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = BtnAceptarClick
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
  object LblDescripcion: TcxLabel
    AlignWithMargins = True
    Left = 3
    Top = 190
    Align = alTop
    Caption = '300/300 Caracteres Disponibles'
    Properties.Alignment.Horz = taRightJustify
    AnchorX = 752
  end
  object dsTipoReceta: TDataSource
    Left = 136
    Top = 32
  end
  object opdImagen: TOpenPictureDialog
    Left = 56
    Top = 72
  end
  object dsReceta: TDataSource
    Left = 128
    Top = 112
  end
  object pmImagen: TPopupMenu
    Left = 192
    Top = 88
    object EliminarImagen1: TMenuItem
      Caption = 'Eliminar Imagen'
      OnClick = EliminarImagen1Click
    end
  end
end
