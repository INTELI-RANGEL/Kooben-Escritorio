inherited FrmDatosAlmacen: TFrmDatosAlmacen
  Caption = 'FrmDatosAlmacen'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelDatosLugares: TcxGroupBox
    object JvLabel1: TJvLabel [0]
      Left = 80
      Top = 40
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
    object JvLabel2: TJvLabel [1]
      Left = 80
      Top = 67
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
    object JvLabel3: TJvLabel [2]
      Left = 80
      Top = 150
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
    object JvLabel4: TJvLabel [3]
      Left = 80
      Top = 177
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
    object JvLabel5: TJvLabel [4]
      Left = 80
      Top = 204
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
    object JvLabel6: TJvLabel [5]
      Left = 80
      Top = 94
      Width = 78
      Height = 13
      Caption = 'Calle y N'#250'mero:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel7: TJvLabel [6]
      Left = 80
      Top = 121
      Width = 41
      Height = 13
      Caption = 'Colonia:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    inherited cxButton1: TcxButton
      Left = 389
      Top = 216
      ExplicitLeft = 389
      ExplicitTop = 216
    end
    object CodigoAlmacen: TDBEdit
      Left = 160
      Top = 40
      Width = 121
      Height = 21
      DataField = 'CodigoAlmacen'
      DataSource = dsDatos
      TabOrder = 1
    end
    object NombreAlmacen: TDBEdit
      Left = 160
      Top = 67
      Width = 121
      Height = 21
      DataField = 'NombreAlmacen'
      DataSource = dsDatos
      TabOrder = 2
    end
    object IdCiudad: TDBLookupComboBox
      Left = 160
      Top = 202
      Width = 145
      Height = 21
      DataField = 'IdCiudad'
      DataSource = dsDatos
      KeyField = 'IdCiudad'
      ListField = 'TituloCiudad'
      ListSource = dsCiudad
      TabOrder = 8
    end
    object Calle: TDBEdit
      Left = 160
      Top = 94
      Width = 121
      Height = 21
      DataField = 'Calle'
      DataSource = dsDatos
      TabOrder = 3
    end
    object Numero: TDBEdit
      Left = 287
      Top = 94
      Width = 121
      Height = 21
      DataField = 'Numero'
      DataSource = dsDatos
      TabOrder = 4
    end
    object Colonia: TDBEdit
      Left = 160
      Top = 121
      Width = 121
      Height = 21
      DataField = 'Colonia'
      DataSource = dsDatos
      TabOrder = 5
    end
    object IdPais: TComboBox
      Left = 160
      Top = 148
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 6
      OnChange = IdPaisChange
    end
    object IdEstado: TComboBox
      Left = 160
      Top = 175
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 7
      OnChange = IdEstadoChange
    end
  end
  inherited Timer1: TTimer
    Left = 448
    Top = 56
  end
  inherited Timer2: TTimer
    Left = 496
    Top = 112
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 368
    Top = 152
  end
  object dsCiudad: TDataSource
    Left = 456
    Top = 160
  end
  object dsPais: TDataSource
    Left = 224
    Top = 256
  end
  object dsEstado: TDataSource
    Left = 312
    Top = 256
  end
end
