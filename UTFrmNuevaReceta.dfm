object FrmNuevaReceta: TFrmNuevaReceta
  Left = 0
  Top = 0
  Caption = 'Captura nueva Receta'
  ClientHeight = 476
  ClientWidth = 738
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelBotones: TPanel
    Left = 0
    Top = 435
    Width = 738
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Padding.Top = 3
    Padding.Right = 8
    Padding.Bottom = 6
    TabOrder = 2
    ExplicitTop = 347
    ExplicitWidth = 735
    object BtnCancelar: TAdvGlowButton
      Left = 630
      Top = 3
      Width = 100
      Height = 32
      Align = alRight
      Caption = '&Cancelar'
      ImageIndex = 8
      Images = ClientModule1.PngImageList1
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
      ExplicitLeft = 627
    end
    object BtnAceptar: TAdvGlowButton
      Left = 530
      Top = 3
      Width = 100
      Height = 32
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
      ExplicitLeft = 527
    end
  end
  object PanelImagen: TPanel
    Left = 0
    Top = 0
    Width = 738
    Height = 217
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 735
    object Panel1: TPanel
      Left = 250
      Top = 0
      Width = 488
      Height = 217
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 485
      ExplicitHeight = 187
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 488
        Height = 88
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = 1
        ExplicitTop = -4
        ExplicitWidth = 485
        object JvLabel3: TJvLabel
          Left = 6
          Top = 10
          Width = 63
          Height = 13
          Caption = 'Tipo Receta:'
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
        object Panel10: TPanel
          Left = 0
          Top = 60
          Width = 488
          Height = 28
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          ExplicitTop = 56
          object Personas: TJvDBSpinEdit
            Left = 75
            Top = 3
            Width = 60
            Height = 21
            MaxLength = 11
            TabOrder = 0
            DataField = 'Personas'
            DataSource = dsReceta
          end
          object Panel11: TPanel
            Left = 0
            Top = 0
            Width = 76
            Height = 28
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object lblPersonas: TJvLabel
              Left = 24
              Top = 7
              Width = 45
              Height = 13
              Caption = 'Relativo:'
              Transparent = True
              HotTrackFont.Charset = DEFAULT_CHARSET
              HotTrackFont.Color = clWindowText
              HotTrackFont.Height = -11
              HotTrackFont.Name = 'Tahoma'
              HotTrackFont.Style = []
            end
          end
          object pnlRelativo: TPanel
            Left = 141
            Top = 4
            Width = 340
            Height = 20
            BevelOuter = bvNone
            Padding.Right = 8
            TabOrder = 2
            object memRelativo: TMemo
              Left = 0
              Top = 0
              Width = 332
              Height = 20
              Align = alClient
              Lines.Strings = (
                'Memo1')
              ReadOnly = True
              TabOrder = 0
              OnDblClick = memRelativoDblClick
              ExplicitLeft = 19
              ExplicitTop = 1
              ExplicitWidth = 297
              ExplicitHeight = 17
            end
          end
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 88
        Width = 488
        Height = 27
        Align = alTop
        BevelOuter = bvNone
        Padding.Top = 2
        Padding.Right = 8
        Padding.Bottom = 2
        TabOrder = 1
        ExplicitWidth = 485
        object NombreReceta: TDBEdit
          Left = 76
          Top = 2
          Width = 404
          Height = 23
          Align = alClient
          DataField = 'NombreReceta'
          DataSource = dsReceta
          MaxLength = 60
          TabOrder = 0
          ExplicitWidth = 401
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
        Width = 488
        Height = 102
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        ExplicitWidth = 485
        ExplicitHeight = 72
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 76
          Height = 102
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 72
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
          Width = 412
          Height = 102
          Align = alClient
          BevelOuter = bvNone
          Padding.Top = 2
          Padding.Right = 8
          Padding.Bottom = 2
          TabOrder = 1
          ExplicitWidth = 409
          ExplicitHeight = 72
          object DescripcionReceta: TDBMemo
            Left = 0
            Top = 2
            Width = 404
            Height = 98
            Align = alClient
            DataField = 'DescripcionReceta'
            DataSource = dsReceta
            MaxLength = 300
            TabOrder = 0
            OnChange = DescripcionRecetaChange
            ExplicitWidth = 401
            ExplicitHeight = 68
          end
        end
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 250
      Height = 217
      Align = alLeft
      BevelOuter = bvNone
      Padding.Left = 10
      Padding.Top = 10
      Padding.Right = 4
      Padding.Bottom = 4
      TabOrder = 1
      ExplicitHeight = 187
      object PanelPicture: TPanel
        Left = 10
        Top = 10
        Width = 236
        Height = 203
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
        ExplicitHeight = 173
        object imagen: TcxDBImage
          Left = 1
          Top = 1
          Align = alClient
          DataBinding.DataField = 'imagen'
          DataBinding.DataSource = dsReceta
          Properties.Caption = 'Doble clic para agregar imagen.'
          Properties.GraphicClassName = 'TdxSmartImage'
          TabOrder = 0
          OnDblClick = ImagenDblClick
          Height = 201
          Width = 234
        end
      end
    end
  end
  object PanelPreparacion: TPanel
    Left = 0
    Top = 240
    Width = 738
    Height = 195
    Align = alClient
    BevelOuter = bvNone
    Padding.Left = 8
    Padding.Right = 8
    Padding.Bottom = 4
    TabOrder = 1
    ExplicitTop = 210
    ExplicitWidth = 735
    ExplicitHeight = 225
    object PreparacionReceta: TDBMemo
      Left = 8
      Top = 26
      Width = 722
      Height = 165
      Align = alClient
      DataField = 'PreparacionReceta'
      DataSource = dsReceta
      MaxLength = 3000
      TabOrder = 0
      ExplicitTop = 27
      ExplicitWidth = 719
      ExplicitHeight = 195
    end
    object Panel3: TPanel
      Left = 8
      Top = 0
      Width = 722
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 719
      object JvLabel5: TJvLabel
        Left = 0
        Top = 5
        Width = 63
        Height = 13
        Caption = 'Preparaci'#243'n:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
    end
  end
  object LblDescripcion: TcxLabel
    AlignWithMargins = True
    Left = 3
    Top = 220
    Align = alTop
    Caption = '0/500 Caracteres Disponibles'
    Properties.Alignment.Horz = taRightJustify
    AnchorX = 735
  end
  object pnlDatosRelativo: TPanel
    Left = 391
    Top = 141
    Width = 289
    Height = 288
    TabOrder = 4
    Visible = False
    object Panel13: TPanel
      Left = 1
      Top = 1
      Width = 287
      Height = 127
      Align = alClient
      BevelOuter = bvNone
      Padding.Top = 6
      Padding.Right = 4
      Padding.Bottom = 4
      TabOrder = 0
      ExplicitHeight = 98
      object DBMemo1: TDBMemo
        Left = 72
        Top = 6
        Width = 211
        Height = 117
        Align = alClient
        TabOrder = 0
        ExplicitTop = 9
        ExplicitWidth = 209
        ExplicitHeight = 83
      end
      object Panel14: TPanel
        Left = 0
        Top = 6
        Width = 72
        Height = 117
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitHeight = 96
        object JvLabel6: TJvLabel
          Left = 10
          Top = 3
          Width = 40
          Height = 13
          Caption = 'Receta:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object btnBuscarReceta: TAdvGlowButton
          Left = 51
          Top = 2
          Width = 17
          Height = 18
          ImageIndex = 20
          Images = ClientModule1.PngImageList1
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 0
          OnClick = btnBuscarRecetaClick
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
    object Panel15: TPanel
      Left = 1
      Top = 128
      Width = 287
      Height = 118
      Align = alBottom
      BevelOuter = bvNone
      Padding.Left = 4
      Padding.Right = 4
      Padding.Bottom = 4
      TabOrder = 1
      ExplicitTop = 105
      object JvLabel7: TJvLabel
        Left = 10
        Top = 3
        Width = 62
        Height = 13
        Caption = 'Ingrediente:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel8: TJvLabel
        Left = 19
        Top = 30
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
      object Panel16: TPanel
        Left = 4
        Top = 0
        Width = 279
        Height = 24
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 285
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 72
          Top = 0
          Width = 207
          Height = 21
          Align = alClient
          TabOrder = 0
          ExplicitLeft = 64
          ExplicitWidth = 203
        end
        object Panel17: TPanel
          Left = 0
          Top = 0
          Width = 72
          Height = 24
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
        end
      end
      object JvDBSpinEdit1: TJvDBSpinEdit
        Left = 72
        Top = 27
        Width = 60
        Height = 21
        MaxLength = 11
        TabOrder = 1
        DataField = 'Personas'
        DataSource = dsReceta
      end
      object Memo2: TMemo
        Left = 4
        Top = 54
        Width = 279
        Height = 60
        Align = alBottom
        Lines.Strings = (
          'Memo2')
        TabOrder = 2
        ExplicitTop = 52
      end
    end
    object Panel18: TPanel
      Left = 1
      Top = 246
      Width = 287
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      Padding.Left = 4
      Padding.Top = 4
      Padding.Right = 4
      Padding.Bottom = 4
      TabOrder = 2
      ExplicitLeft = 9
      ExplicitTop = 256
      object AdvGlowButton1: TAdvGlowButton
        Left = 83
        Top = 4
        Width = 100
        Height = 33
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
        OnClick = AdvGlowButton1Click
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
        ExplicitLeft = 32
        ExplicitTop = 6
        ExplicitHeight = 41
      end
      object AdvGlowButton2: TAdvGlowButton
        Left = 183
        Top = 4
        Width = 100
        Height = 33
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
        OnClick = AdvGlowButton2Click
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
        ExplicitLeft = 176
        ExplicitTop = 1
        ExplicitHeight = 41
      end
    end
  end
  object dsReceta: TDataSource
    Left = 264
    Top = 240
  end
  object dsTipoReceta: TDataSource
    Left = 256
    Top = 200
  end
  object opdImagen: TOpenPictureDialog
    Left = 176
    Top = 240
  end
  object pmImagen: TPopupMenu
    Left = 312
    Top = 256
    object EliminarImagen1: TMenuItem
      Caption = 'Eliminar Imagen'
      OnClick = EliminarImagen1Click
    end
  end
end