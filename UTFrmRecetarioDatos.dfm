inherited FrmRecetarioDatos: TFrmRecetarioDatos
  Caption = 'FrmRecetarioDatos'
  ClientHeight = 328
  ExplicitWidth = 562
  ExplicitHeight = 366
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBarraLugar: TcxGroupBox
    Top = 291
  end
  inherited PanelDatosLugares: TcxGroupBox
    ExplicitLeft = 8
    ExplicitTop = 8
    Height = 291
    object JvLabel1: TJvLabel
      Left = 24
      Top = 36
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
      Left = 24
      Top = 63
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
      Left = 24
      Top = 90
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
    object JvLabel4: TJvLabel
      Left = 24
      Top = 167
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
    object CodigoReceta: TDBEdit
      Left = 93
      Top = 36
      Width = 121
      Height = 21
      DataField = 'CodigoReceta'
      DataSource = dsDatos
      TabOrder = 0
    end
    object NombreReceta: TDBEdit
      Left = 93
      Top = 63
      Width = 121
      Height = 21
      DataField = 'NombreReceta'
      DataSource = dsDatos
      TabOrder = 1
    end
    object DescripcionReceta: TDBMemo
      Left = 93
      Top = 90
      Width = 438
      Height = 71
      DataField = 'DescripcionReceta'
      DataSource = dsDatos
      TabOrder = 2
    end
    object PreparacionReceta: TDBMemo
      Left = 93
      Top = 167
      Width = 438
      Height = 89
      DataField = 'PreparacionReceta'
      DataSource = dsDatos
      TabOrder = 3
    end
  end
  inherited Timer1: TTimer
    Left = 496
    Top = 56
  end
  inherited Timer2: TTimer
    Left = 488
    Top = 168
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 472
    Top = 112
  end
end
