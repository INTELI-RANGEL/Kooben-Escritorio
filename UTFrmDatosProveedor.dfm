inherited FrmDatosProveedor: TFrmDatosProveedor
  BorderStyle = bsDialog
  Caption = 'Datos del Proveedor'
  ClientHeight = 568
  ClientWidth = 409
  Position = poDesktopCenter
  ExplicitWidth = 415
  ExplicitHeight = 596
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBarraLugar: TcxGroupBox
    Top = 537
    ExplicitTop = 537
    ExplicitWidth = 409
    Width = 409
    inherited BtnCancel: TAdvGlowButton
      Left = 327
      ExplicitLeft = 327
    end
    inherited BtnRec: TAdvGlowButton
      Left = 247
      ExplicitLeft = 247
    end
    inherited BtnAddNew: TAdvGlowButton
      Visible = False
    end
  end
  inherited PanelDatosLugares: TcxGroupBox
    ExplicitWidth = 409
    ExplicitHeight = 537
    Height = 537
    Width = 409
    object JvLabel2: TJvLabel [0]
      Left = 12
      Top = 27
      Width = 47
      Height = 13
      Caption = 'Empresa:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel3: TJvLabel [1]
      Left = 12
      Top = 81
      Width = 66
      Height = 13
      Caption = 'Raz'#243'n Social:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel4: TJvLabel [2]
      Left = 12
      Top = 108
      Width = 26
      Height = 13
      Caption = 'RFC:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel5: TJvLabel [3]
      Left = 12
      Top = 135
      Width = 85
      Height = 13
      Caption = 'Tipo de Empresa:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel6: TJvLabel [4]
      Left = 12
      Top = 241
      Width = 25
      Height = 13
      Caption = 'Pa'#237's:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel7: TJvLabel [5]
      Left = 12
      Top = 268
      Width = 39
      Height = 13
      Caption = 'Estado:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel8: TJvLabel [6]
      Left = 12
      Top = 295
      Width = 39
      Height = 13
      Caption = 'Ciudad:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel10: TJvLabel [7]
      Left = 12
      Top = 214
      Width = 23
      Height = 13
      Caption = 'C.P.'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel11: TJvLabel [8]
      Left = 12
      Top = 322
      Width = 66
      Height = 13
      Caption = 'Comentarios:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel1: TJvLabel [9]
      Left = 12
      Top = 54
      Width = 76
      Height = 13
      Caption = 'R'#233'gimen Fiscal:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel9: TJvLabel [10]
      Left = 12
      Top = 162
      Width = 46
      Height = 13
      Caption = 'Domicilio:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel12: TJvLabel [11]
      Left = 12
      Top = 189
      Width = 41
      Height = 13
      Caption = 'Col'#243'nia:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel13: TJvLabel [12]
      Left = 12
      Top = 411
      Width = 47
      Height = 13
      Caption = 'Logotipo:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    inherited cxButton1: TcxButton
      TabOrder = 13
    end
    object sRazonSocial: TDBEdit
      Left = 100
      Top = 78
      Width = 300
      Height = 21
      DataField = 'sRazonSocial'
      DataSource = dsDatos
      TabOrder = 2
    end
    object sRFC: TDBEdit
      Left = 100
      Top = 105
      Width = 300
      Height = 21
      DataField = 'sRFC'
      DataSource = dsDatos
      TabOrder = 3
    end
    object mComentarios: TcxDBMemo
      Left = 100
      Top = 319
      DataBinding.DataField = 'mComentarios'
      DataBinding.DataSource = dsDatos
      Style.TextColor = clBlack
      TabOrder = 11
      Height = 82
      Width = 300
    end
    object eTipoEmpresa: TDBComboBox
      Left = 100
      Top = 132
      Width = 300
      Height = 22
      Style = csOwnerDrawFixed
      DataField = 'eTipoEmpresa'
      DataSource = dsDatos
      Items.Strings = (
        'Nacional'
        'Extranjera')
      TabOrder = 4
    end
    object sNombreCorto: TDBEdit
      Left = 100
      Top = 24
      Width = 300
      Height = 21
      DataField = 'sNombreCorto'
      DataSource = dsDatos
      TabOrder = 0
    end
    object eRegimenFiscal: TDBComboBox
      Left = 100
      Top = 51
      Width = 300
      Height = 22
      Style = csOwnerDrawFixed
      DataField = 'eRegimenFiscal'
      DataSource = dsDatos
      Items.Strings = (
        'Persona Fisica'
        'Persona Moral')
      TabOrder = 1
    end
    object sDomicilio: TDBEdit
      Left = 100
      Top = 159
      Width = 300
      Height = 21
      DataField = 'sDomicilio'
      DataSource = dsDatos
      TabOrder = 5
    end
    object sCiudad: TDBEdit
      Left = 100
      Top = 186
      Width = 300
      Height = 21
      DataField = 'sCiudad'
      DataSource = dsDatos
      TabOrder = 6
    end
    object sCp: TDBEdit
      Left = 100
      Top = 211
      Width = 100
      Height = 21
      DataField = 'sCp'
      DataSource = dsDatos
      TabOrder = 7
    end
    object PanelPicture: TPanel
      Left = 99
      Top = 407
      Width = 300
      Height = 117
      Caption = '< Doble click para seleccionar Imagen >'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      TabStop = True
      object imagen: TcxDBImage
        Left = 1
        Top = 1
        Align = alClient
        DataBinding.DataField = 'bLogo'
        DataBinding.DataSource = dsDatos
        Properties.Caption = 'Doble clic para agregar imagen.'
        Properties.GraphicClassName = 'TdxSmartImage'
        TabOrder = 0
        OnDblClick = ImagenDblClick
        Height = 115
        Width = 298
      end
    end
    object IdMunicipio: TDBLookupComboBox
      Left = 100
      Top = 292
      Width = 300
      Height = 21
      DataField = 'iIdMunicipio'
      DataSource = dsDatos
      KeyField = 'IdCiudad'
      ListField = 'TituloCiudad'
      ListSource = dsCiudad
      TabOrder = 10
    end
    object cbEstado: TComboBox
      Left = 99
      Top = 265
      Width = 298
      Height = 21
      Style = csDropDownList
      TabOrder = 9
      OnChange = cbEstadoChange
    end
    object cbPais: TComboBox
      Left = 100
      Top = 238
      Width = 298
      Height = 21
      Style = csDropDownList
      TabOrder = 8
      OnChange = cbPaisChange
    end
  end
  inherited dsDatos: TDataSource
    Left = 336
  end
  inherited CdTmp: TClientDataSet
    Left = 272
    Top = 65528
  end
  inherited Timer1: TTimer
    Left = 344
    Top = 48
  end
  inherited Timer2: TTimer
    Left = 288
    Top = 48
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 208
    Top = 65528
  end
  object dsPais: TDataSource
    DataSet = cdPais
    Left = 128
    Top = 104
  end
  object cdPais: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 128
    Top = 160
  end
  object dsCiudad: TDataSource
    DataSet = cdCiudad
    Left = 192
    Top = 104
  end
  object cdCiudad: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 192
    Top = 160
  end
  object dsEstado: TDataSource
    DataSet = cdEstado
    Left = 256
    Top = 104
  end
  object cdEstado: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 256
    Top = 160
  end
  object opdImagen: TOpenPictureDialog
    Left = 152
    Top = 424
  end
end
