inherited FrmDatosInsumo: TFrmDatosInsumo
  BorderStyle = bsDialog
  Caption = 'Datos del Ingrediente'
  ClientHeight = 459
  ClientWidth = 421
  Position = poScreenCenter
  ExplicitTop = -24
  ExplicitWidth = 427
  ExplicitHeight = 487
  PixelsPerInch = 96
  TextHeight = 13
  object JvLabel8: TJvLabel [0]
    Left = 58
    Top = 301
    Width = 44
    Height = 13
    Caption = 'Calor'#237'as:'
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
  end
  inherited PanelBarraLugar: TcxGroupBox
    Top = 428
    ExplicitTop = 428
    ExplicitWidth = 421
    Width = 421
    inherited BtnCancel: TAdvGlowButton
      Left = 339
      ExplicitLeft = 339
    end
    inherited BtnRec: TAdvGlowButton
      Left = 259
      ExplicitLeft = 259
    end
  end
  inherited PanelDatosLugares: TcxGroupBox
    ExplicitWidth = 421
    ExplicitHeight = 428
    Height = 428
    Width = 421
    inherited cxButton1: TcxButton
      TabOrder = 4
    end
    object btnAgregarInsumo: TAdvGlowButton
      Left = 279
      Top = 238
      Width = 18
      Height = 21
      ImageIndex = 17
      Images = ClientModule1.Lista16
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
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
    object Panel1: TPanel
      Left = 3
      Top = 15
      Width = 415
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object JvLabel1: TJvLabel
        Left = 9
        Top = 13
        Width = 64
        Height = 13
        Caption = 'Tipo Insumo:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object IdTipoInsumo: TDBLookupComboBox
        Left = 100
        Top = 13
        Width = 310
        Height = 21
        DataField = 'IdTipoInsumo'
        DataSource = dsDatos
        KeyField = 'IdTipoInsumo'
        ListField = 'NombreTipoInsumo'
        ListSource = dsTipoInsimo
        TabOrder = 0
      end
    end
    object Panel2: TPanel
      Left = 3
      Top = 56
      Width = 415
      Height = 28
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 98
        Height = 28
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object JvLabel12: TJvLabel
          Left = 9
          Top = 0
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
      end
      object Panel5: TPanel
        Left = 98
        Top = 0
        Width = 317
        Height = 28
        Align = alClient
        BevelOuter = bvNone
        Padding.Left = 4
        Padding.Right = 4
        Padding.Bottom = 6
        TabOrder = 1
        object LeyMarcas: TEdit
          Left = 2
          Top = 0
          Width = 292
          Height = 21
          Align = alCustom
          Enabled = False
          TabOrder = 0
        end
        object btnAgregarMarca: TAdvGlowButton
          Left = 293
          Top = 0
          Width = 18
          Height = 21
          ImageIndex = 1
          Images = ClientModule1.PngImageList1
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 1
          OnClick = btnAgregarMarcaClick
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
      Left = 3
      Top = 84
      Width = 415
      Height = 334
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 3
      ExplicitHeight = 321
      object JvLabel2: TJvLabel
        Left = 9
        Top = 0
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
      object JvLabel3: TJvLabel
        Left = 9
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
      object JvLabel6: TJvLabel
        Left = 9
        Top = 54
        Width = 54
        Height = 13
        Caption = 'U. Medida:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel5: TJvLabel
        Left = 9
        Top = 107
        Width = 44
        Height = 13
        Caption = 'Calor'#237'as:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel7: TJvLabel
        Left = 9
        Top = 134
        Width = 51
        Height = 13
        Caption = 'Prote'#237'nas:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel9: TJvLabel
        Left = 9
        Top = 161
        Width = 39
        Height = 13
        Caption = 'Grasas:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel10: TJvLabel
        Left = 9
        Top = 188
        Width = 74
        Height = 13
        Caption = 'Carbohidratos:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel11: TJvLabel
        Left = 9
        Top = 215
        Width = 85
        Height = 13
        Caption = 'Indice Gluc'#233'mico:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel4: TJvLabel
        Left = 9
        Top = 245
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
      object JvLabel13: TJvLabel
        Left = 9
        Top = 80
        Width = 64
        Height = 13
        Caption = 'Clasificaci'#243'n:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object CodigoInsumo: TDBEdit
        Left = 100
        Top = 0
        Width = 120
        Height = 21
        DataField = 'CodigoInsumo'
        DataSource = dsDatos
        TabOrder = 0
      end
      object NombreInsumo: TDBEdit
        Left = 100
        Top = 27
        Width = 310
        Height = 21
        DataField = 'NombreInsumo'
        DataSource = dsDatos
        TabOrder = 1
      end
      object iIdUnidad: TDBLookupComboBox
        Left = 100
        Top = 54
        Width = 120
        Height = 21
        DataField = 'iIdUnidad'
        DataSource = dsDatos
        KeyField = 'iIdUnidad'
        ListField = 'sCodigo'
        ListSource = dsUnidades
        TabOrder = 2
      end
      object Calorias: TDBEdit
        Tag = 1
        Left = 100
        Top = 107
        Width = 65
        Height = 21
        Hint = 'Use el bot'#243'n derecho del rat'#243'n para ver el men'#250' de copieo'
        DataField = 'Calorias'
        DataSource = dsDatos
        PopupMenu = pmCopiar
        TabOrder = 4
      end
      object Proteinas: TDBEdit
        Tag = 2
        Left = 100
        Top = 134
        Width = 65
        Height = 21
        Hint = 'Use el bot'#243'n derecho del rat'#243'n para ver el men'#250' de copieo'
        DataField = 'Proteinas'
        DataSource = dsDatos
        PopupMenu = pmCopiar
        TabOrder = 5
      end
      object Grasas: TDBEdit
        Tag = 3
        Left = 100
        Top = 161
        Width = 65
        Height = 21
        Hint = 'Use el bot'#243'n derecho del rat'#243'n para ver el men'#250' de copieo'
        DataField = 'Grasas'
        DataSource = dsDatos
        PopupMenu = pmCopiar
        TabOrder = 6
      end
      object HidratosCarbono: TDBEdit
        Tag = 4
        Left = 100
        Top = 188
        Width = 65
        Height = 21
        Hint = 'Use el bot'#243'n derecho del rat'#243'n para ver el men'#250' de copieo'
        DataField = 'HidratosCarbono'
        DataSource = dsDatos
        PopupMenu = pmCopiar
        TabOrder = 7
      end
      object IndiceGlucemico: TDBEdit
        Tag = 5
        Left = 100
        Top = 215
        Width = 65
        Height = 21
        Hint = 'Use el bot'#243'n derecho del rat'#243'n para ver el men'#250' de copieo'
        DataField = 'IndiceGlucemico'
        DataSource = dsDatos
        PopupMenu = pmCopiar
        TabOrder = 8
      end
      object DescripcionInsumo: TDBMemo
        Left = 100
        Top = 242
        Width = 310
        Height = 89
        DataField = 'DescripcionInsumo'
        DataSource = dsDatos
        TabOrder = 9
      end
      object eClasificacion: TDBComboBox
        Left = 100
        Top = 80
        Width = 120
        Height = 21
        Style = csDropDownList
        DataField = 'eClasificacion'
        DataSource = dsDatos
        Items.Strings = (
          'normal'
          'basica')
        TabOrder = 3
      end
    end
  end
  inherited dsDatos: TDataSource
    Left = 304
    Top = 24
  end
  inherited CdTmp: TClientDataSet
    Left = 528
    Top = 152
  end
  inherited Timer1: TTimer
    Left = 552
    Top = 24
  end
  inherited Timer2: TTimer
    Left = 496
    Top = 112
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 584
    Top = 120
  end
  object dsTipoInsimo: TDataSource
    DataSet = cdTipoInsumo
    Left = 352
    Top = 136
  end
  object cdTipoInsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 344
    Top = 208
  end
  object dsUnidades: TDataSource
    DataSet = ClientModule1.cdUnidades
    Left = 136
    Top = 392
  end
  object pmCopiar: TPopupMenu
    Left = 456
    Top = 376
    object CopiarvalordeotroIngrediente1: TMenuItem
      Caption = 'Copiar valor de otro Ingrediente'
      OnClick = CopiarvalordeotroIngrediente1Click
    end
    object CopiarTODOSlosvaloresdeotroIngrediente1: TMenuItem
      Caption = 'Copiar TODOS los valores de otro Ingrediente'
      OnClick = CopiarTODOSlosvaloresdeotroIngrediente1Click
    end
  end
  object cdBuscarInsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 576
    Top = 200
  end
  object dsBuscarInsumo: TDataSource
    DataSet = cdBuscarInsumo
    Left = 608
    Top = 264
  end
  object cdMarca: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 296
    Top = 160
  end
  object dsMarca: TDataSource
    DataSet = cdMarca
    Left = 432
    Top = 272
  end
  object cdMarcaxInsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 240
    Top = 192
  end
  object cdVerificaCodigo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 312
    Top = 296
  end
  object MsgSave: TJvBalloonHint
    DefaultHeader = 'Registro Grabado'
    Options = [boShowCloseBtn, boPlaySound]
    Left = 200
    Top = 232
  end
end
