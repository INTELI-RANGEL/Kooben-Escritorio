object FrmConversionDatos: TFrmConversionDatos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Conversion de Datos'
  ClientHeight = 425
  ClientWidth = 380
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TPanel
    Left = 0
    Top = 384
    Width = 380
    Height = 41
    Align = alBottom
    Padding.Top = 7
    Padding.Right = 10
    Padding.Bottom = 7
    TabOrder = 0
    object btnAceptar: TAdvGlowButton
      Left = 169
      Top = 8
      Width = 100
      Height = 25
      Align = alRight
      Caption = '&Aceptar'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btnAceptarClick
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
      Left = 269
      Top = 8
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 380
    Height = 89
    Align = alTop
    TabOrder = 1
    object JvLabel1: TJvLabel
      Left = 26
      Top = 8
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
      Left = 22
      Top = 35
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
    object JvLabel7: TJvLabel
      Left = 32
      Top = 62
      Width = 33
      Height = 13
      Caption = 'Siglas:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object DBEdit1: TDBEdit
      Left = 70
      Top = 8
      Width = 300
      Height = 21
      TabStop = False
      DataField = 'sCodigo'
      DataSource = dsUnidad
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 70
      Top = 35
      Width = 300
      Height = 21
      TabStop = False
      DataField = 'sNombre'
      DataSource = dsUnidad
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 70
      Top = 62
      Width = 300
      Height = 21
      TabStop = False
      DataField = 'sSigla'
      DataSource = dsUnidad
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 89
    Width = 380
    Height = 295
    Align = alBottom
    TabOrder = 2
    object JvLabel9: TJvLabel
      Left = 14
      Top = 209
      Width = 60
      Height = 13
      Caption = 'Conversi'#243'n:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 378
      Height = 153
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object JvLabel5: TJvLabel
        Left = 15
        Top = 124
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
      object JvLabel8: TJvLabel
        Left = 12
        Top = 97
        Width = 52
        Height = 13
        Caption = 'Operador:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel4: TJvLabel
        Left = 21
        Top = 70
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
      object JvLabel3: TJvLabel
        Left = 25
        Top = 43
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
      object JvLabel2: TJvLabel
        Left = 10
        Top = 16
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
      object Valor: TcxDBMaskEdit
        Left = 70
        Top = 124
        DataBinding.DataField = 'Valor'
        DataBinding.DataSource = dsConversionUpt
        TabOrder = 4
        Width = 300
      end
      object sNombre: TDBEdit
        Left = 70
        Top = 70
        Width = 300
        Height = 21
        TabStop = False
        DataField = 'sNombre'
        DataSource = dsUnidadLista
        ReadOnly = True
        TabOrder = 2
      end
      object sCodigo_t: TDBEdit
        Left = 70
        Top = 43
        Width = 300
        Height = 21
        TabStop = False
        DataField = 'sCodigo'
        DataSource = dsUnidadLista
        ReadOnly = True
        TabOrder = 1
      end
      object iIdUnidad_t: TDBLookupComboBox
        Left = 69
        Top = 16
        Width = 300
        Height = 21
        DataField = 'iIdUnidad_t'
        DataSource = dsConversionUpt
        KeyField = 'iIdUnidad'
        ListField = 'sNombre'
        ListSource = dsUnidadLista
        TabOrder = 0
      end
      object Operador: TDBComboBox
        Left = 70
        Top = 97
        Width = 300
        Height = 21
        AutoComplete = False
        DataField = 'Operador'
        DataSource = dsConversionUpt
        Items.Strings = (
          'Multiplicar'
          'Dividir')
        TabOrder = 3
        OnChange = OperadorChange
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 154
      Width = 378
      Height = 54
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 378
        Height = 24
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object cbExclusivo: TCheckBox
          Left = 13
          Top = 6
          Width = 287
          Height = 17
          Caption = 'Aplicar Equivalencia exclusivamente al Insumo:'
          TabOrder = 0
          OnClick = cbExclusivoClick
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 24
        Width = 378
        Height = 30
        Align = alClient
        BevelOuter = bvNone
        Padding.Left = 40
        Padding.Right = 10
        TabOrder = 1
        object IdInsumo: TDBLookupComboBox
          Left = 69
          Top = 4
          Width = 301
          Height = 21
          Align = alCustom
          DataField = 'IdInsumo'
          DataSource = dsConversionUpt
          Enabled = False
          KeyField = 'IdInsumo'
          ListField = 'NombreInsumo'
          ListSource = dsInsumo
          TabOrder = 0
        end
      end
    end
    object lblConversion: TMemo
      Left = 70
      Top = 228
      Width = 300
      Height = 57
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 2
    end
  end
  object dsUnidad: TDataSource
    DataSet = cdUnidad
    Left = 176
    Top = 72
  end
  object dsConversionUpt: TDataSource
    Left = 224
    Top = 264
  end
  object cdUnidadLista: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = cdUnidadListaAfterScroll
    Left = 256
    Top = 56
  end
  object dsUnidadLista: TDataSource
    DataSet = cdUnidadLista
    Left = 232
    Top = 16
  end
  object dsInsumo: TDataSource
    DataSet = cdUnidad
    Left = 304
    Top = 16
  end
  object cdConversiones: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 312
    Top = 272
  end
  object cdUnidad: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 120
  end
  object cdBuscar: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 328
  end
end
