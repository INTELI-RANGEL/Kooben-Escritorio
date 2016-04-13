inherited FrmDatosPeriodoConsumo: TFrmDatosPeriodoConsumo
  BorderStyle = bsDialog
  Caption = 'Datos del Periodo de Consumo'
  ClientHeight = 202
  ClientWidth = 389
  Position = poScreenCenter
  ExplicitWidth = 395
  ExplicitHeight = 230
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBarraLugar: TcxGroupBox
    Top = 171
    ExplicitTop = 147
    ExplicitWidth = 484
    Width = 389
    inherited BtnRec: TcxButton
      Left = 221
      ExplicitLeft = 316
    end
    inherited BtnCancel: TcxButton
      Left = 305
      ExplicitLeft = 400
    end
  end
  inherited PanelDatosLugares: TcxGroupBox
    ExplicitWidth = 389
    ExplicitHeight = 201
    Height = 171
    Width = 389
    object JvLabel1: TJvLabel
      Left = 7
      Top = 32
      Width = 32
      Height = 13
      Caption = 'T'#237'tulo:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel2: TJvLabel
      Left = 7
      Top = 91
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
    object JvLabel3: TJvLabel
      Left = 7
      Top = 61
      Width = 36
      Height = 13
      Caption = 'Desde:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel4: TJvLabel
      Left = 212
      Top = 61
      Width = 34
      Height = 13
      Caption = 'Hasta:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object edTituloPeriodoConsumo: TDBEdit
      Left = 70
      Top = 32
      Width = 310
      Height = 21
      DataField = 'TituloPeriodoConsumo'
      DataSource = dsDatos
      TabOrder = 0
    end
    object dtpDesde: TJvDBDateTimePicker
      Left = 70
      Top = 59
      Width = 120
      Height = 21
      Date = 42183.392731238430000000
      Time = 42183.392731238430000000
      Kind = dtkTime
      TabOrder = 1
      DropDownDate = 42183.000000000000000000
      DataField = 'Desde'
      DataSource = dsDatos
    end
    object dtpHasta: TJvDBDateTimePicker
      Left = 260
      Top = 59
      Width = 120
      Height = 21
      Date = 42183.392731238430000000
      Time = 42183.392731238430000000
      Kind = dtkTime
      TabOrder = 2
      DropDownDate = 42183.000000000000000000
      DataField = 'Hasta'
      DataSource = dsDatos
    end
    object DescripcionPeriodoConsumo: TDBMemo
      Left = 70
      Top = 91
      Width = 310
      Height = 70
      DataField = 'DescripcionPeriodoConsumo'
      DataSource = dsDatos
      TabOrder = 3
    end
  end
  inherited dsDatos: TDataSource
    Left = 352
    Top = 112
  end
  inherited CdTmp: TClientDataSet
    Left = 152
    Top = 144
  end
  inherited Timer1: TTimer
    Left = 240
    Top = 128
  end
  inherited Timer2: TTimer
    Left = 176
    Top = 0
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 296
    Top = 128
  end
end
