inherited FrmDatosContrato: TFrmDatosContrato
  Caption = 'FrmDatosContrato'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBarraLugar: TcxGroupBox
    inherited BtnCancel: TAdvGlowButton
      ExplicitLeft = 464
    end
    inherited BtnRec: TAdvGlowButton
      ExplicitLeft = 384
    end
    inherited BtnAddNew: TAdvGlowButton
      ExplicitLeft = 2
    end
  end
  inherited PanelDatosLugares: TcxGroupBox
    object JvLabel1: TJvLabel
      Left = 61
      Top = 32
      Width = 85
      Height = 13
      Caption = 'C'#243'digo Contrato:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel2: TJvLabel
      Left = 61
      Top = 59
      Width = 57
      Height = 13
      Caption = 'Ubicacipon:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel3: TJvLabel
      Left = 61
      Top = 86
      Width = 106
      Height = 13
      Caption = 'Descripci'#243'n Contrato:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel4: TJvLabel
      Left = 61
      Top = 181
      Width = 58
      Height = 13
      Caption = 'Referencia:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel5: TJvLabel
      Left = 61
      Top = 208
      Width = 78
      Height = 13
      Caption = 'Fecha de Inicio:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel6: TJvLabel
      Left = 320
      Top = 208
      Width = 91
      Height = 13
      Caption = 'Fecha de Termino:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel7: TJvLabel
      Left = 61
      Top = 235
      Width = 105
      Height = 13
      Caption = 'N'#250'mero de Personas:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel8: TJvLabel
      Left = 61
      Top = 262
      Width = 100
      Height = 13
      Caption = 'M'#237'nimo de Personas:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object CodigoContrato: TDBEdit
      Left = 176
      Top = 32
      Width = 201
      Height = 21
      DataField = 'CodigoContrato'
      DataSource = dsDatos
      TabOrder = 0
    end
    object Referencia: TDBEdit
      Left = 176
      Top = 181
      Width = 362
      Height = 21
      DataField = 'Referencia'
      DataSource = dsDatos
      TabOrder = 3
    end
    object FechaInicio: TJvDBDateEdit
      Left = 176
      Top = 208
      Width = 121
      Height = 21
      DataField = 'FechaInicio'
      DataSource = dsDatos
      TabOrder = 4
    end
    object FechaTermino: TJvDBDateEdit
      Left = 417
      Top = 208
      Width = 121
      Height = 21
      DataField = 'FechaTermino'
      DataSource = dsDatos
      TabOrder = 5
    end
    object Personal: TJvDBSpinEdit
      Left = 176
      Top = 235
      Width = 121
      Height = 21
      TabOrder = 6
      DataField = 'Personal'
      DataSource = dsDatos
    end
    object PersonalMinimo: TJvDBSpinEdit
      Left = 176
      Top = 262
      Width = 121
      Height = 21
      TabOrder = 7
      DataField = 'PersonalMinimo'
      DataSource = dsDatos
    end
    object IdEmbarcacion: TDBLookupComboBox
      Left = 176
      Top = 59
      Width = 305
      Height = 21
      DataField = 'IdEmbarcacion'
      DataSource = dsDatos
      KeyField = 'IdEmbarcacion'
      ListField = 'NombreEmbarcacion'
      ListSource = dsEmbarcacion
      TabOrder = 1
    end
    object Descripcion: TDBMemo
      Left = 176
      Top = 86
      Width = 362
      Height = 89
      DataField = 'DescripcionContrato'
      DataSource = dsDatos
      TabOrder = 2
    end
  end
  inherited dsDatos: TDataSource
    Left = 360
    Top = 64
  end
  inherited Timer1: TTimer
    Left = 480
    Top = 56
  end
  inherited Timer2: TTimer
    Left = 424
    Top = 88
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 432
    Top = 240
  end
  object dsEmbarcacion: TDataSource
    DataSet = ClientModule1.cdEmbarcacion
    Left = 424
    Top = 144
  end
end
