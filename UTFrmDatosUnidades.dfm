inherited FrmDatosUnidades: TFrmDatosUnidades
  BorderStyle = bsDialog
  Caption = 'Unidad de medida'
  ClientHeight = 152
  ClientWidth = 365
  Position = poScreenCenter
  ExplicitWidth = 371
  ExplicitHeight = 180
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBarraLugar: TcxGroupBox
    Top = 121
    ExplicitTop = 201
    ExplicitWidth = 295
    Width = 365
    inherited BtnRec: TcxButton
      Left = 197
      ExplicitLeft = 127
    end
    inherited BtnCancel: TcxButton
      Left = 281
      ExplicitLeft = 211
    end
  end
  inherited PanelDatosLugares: TcxGroupBox
    ExplicitWidth = 295
    ExplicitHeight = 201
    Height = 121
    Width = 365
    object JvLabel1: TJvLabel
      Left = 9
      Top = 25
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
      Top = 52
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
      Left = 9
      Top = 79
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
    object sSigla: TDBEdit
      Left = 50
      Top = 79
      Width = 310
      Height = 21
      DataField = 'sSigla'
      DataSource = dsDatos
      TabOrder = 2
    end
    object sNombre: TDBEdit
      Left = 50
      Top = 52
      Width = 310
      Height = 21
      DataField = 'sNombre'
      DataSource = dsDatos
      TabOrder = 1
    end
    object sCodigo: TDBEdit
      Left = 50
      Top = 25
      Width = 120
      Height = 21
      DataField = 'sCodigo'
      DataSource = dsDatos
      TabOrder = 0
    end
  end
  inherited dsDatos: TDataSource
    Left = 368
    Top = 8
  end
  inherited CdTmp: TClientDataSet
    Left = 240
    Top = 8
  end
  inherited Timer1: TTimer
    Left = 208
    Top = 96
  end
  inherited Timer2: TTimer
    Left = 200
    Top = 8
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 296
    Top = 8
  end
end
