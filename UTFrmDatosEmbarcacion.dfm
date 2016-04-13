inherited FrmDatosEmbarcacion: TFrmDatosEmbarcacion
  BorderStyle = bsDialog
  Caption = 'Datos de la ubicaci'#243'n'
  ClientHeight = 122
  ClientWidth = 365
  Position = poScreenCenter
  ExplicitWidth = 371
  ExplicitHeight = 150
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBarraLugar: TcxGroupBox
    Top = 91
    ExplicitTop = 90
    ExplicitWidth = 408
    Width = 365
    inherited BtnRec: TcxButton
      Left = 197
      ExplicitLeft = 240
    end
    inherited BtnCancel: TcxButton
      Left = 281
      ExplicitLeft = 324
    end
  end
  inherited PanelDatosLugares: TcxGroupBox
    ExplicitWidth = 408
    ExplicitHeight = 90
    Height = 91
    Width = 365
    object JvLabel1: TJvLabel
      Left = 9
      Top = 24
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
      Left = 9
      Top = 51
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
    object DBEdit1: TDBEdit
      Left = 50
      Top = 24
      Width = 120
      Height = 21
      DataField = 'CodigoEmbarcacion'
      DataSource = dsDatos
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 50
      Top = 51
      Width = 310
      Height = 21
      DataField = 'NombreEmbarcacion'
      DataSource = dsDatos
      TabOrder = 1
    end
  end
  inherited dsDatos: TDataSource
    Left = 224
    Top = 65528
  end
  inherited CdTmp: TClientDataSet
    Left = 200
    Top = 32
  end
  inherited Timer1: TTimer
    Left = 248
    Top = 32
  end
  inherited Timer2: TTimer
    Left = 296
    Top = 0
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 288
    Top = 32
  end
end
