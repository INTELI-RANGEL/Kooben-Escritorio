inherited FrmDatosTiposImpuesto: TFrmDatosTiposImpuesto
  Caption = 'Tipo de Impuesto'
  ClientHeight = 232
  ExplicitHeight = 270
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBarraLugar: TcxGroupBox
    Top = 201
  end
  inherited PanelDatosLugares: TcxGroupBox
    Height = 201
    object JvLabel1: TJvLabel [0]
      Left = 68
      Top = 48
      Width = 110
      Height = 13
      Caption = 'C'#243'digo Tipo Impuesto:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel2: TJvLabel [1]
      Left = 75
      Top = 83
      Width = 103
      Height = 13
      Caption = 'T'#237'tulo Tipo Impuesto:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object CodigoTipoImpuesto: TDBEdit
      Left = 184
      Top = 48
      Width = 185
      Height = 21
      DataField = 'CodigoTipoImpuesto'
      DataSource = dsDatos
      TabOrder = 1
    end
    object TituloTipoImpuesto: TDBEdit
      Left = 184
      Top = 83
      Width = 337
      Height = 21
      DataField = 'TituloTipoImpuesto'
      DataSource = dsDatos
      TabOrder = 2
    end
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 424
    Top = 80
  end
end
