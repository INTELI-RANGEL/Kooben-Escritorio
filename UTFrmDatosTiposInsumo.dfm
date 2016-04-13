inherited FrmDatosTiposInsumo: TFrmDatosTiposInsumo
  BorderStyle = bsDialog
  Caption = 'Datos tipo de ingrediente'
  ClientHeight = 202
  ClientWidth = 389
  Position = poScreenCenter
  ExplicitWidth = 395
  ExplicitHeight = 230
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBarraLugar: TcxGroupBox
    Top = 171
    ExplicitTop = 177
    ExplicitWidth = 473
    Width = 389
    inherited BtnRec: TcxButton
      Left = 221
      ExplicitLeft = 305
    end
    inherited BtnCancel: TcxButton
      Left = 305
      ExplicitLeft = 389
    end
  end
  inherited PanelDatosLugares: TcxGroupBox
    ExplicitWidth = 473
    ExplicitHeight = 177
    Height = 171
    Width = 389
    object JvLabel1: TJvLabel
      Left = 7
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
      Left = 7
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
    object JvLabel3: TJvLabel
      Left = 7
      Top = 77
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
    object NombreTipoInsumo: TDBEdit
      Left = 70
      Top = 51
      Width = 310
      Height = 21
      DataField = 'NombreTipoInsumo'
      DataSource = dsDatos
      TabOrder = 1
    end
    object CodigoTipoInsumo: TDBEdit
      Left = 70
      Top = 25
      Width = 100
      Height = 21
      DataField = 'CodigoTipoInsumo'
      DataSource = dsDatos
      TabOrder = 0
    end
    object DescripcionTipoInsumo: TDBMemo
      Left = 70
      Top = 77
      Width = 310
      Height = 81
      DataField = 'DescripcionTipoInsumo'
      DataSource = dsDatos
      TabOrder = 2
    end
  end
  inherited dsDatos: TDataSource
    Left = 344
    Top = 32
  end
  inherited CdTmp: TClientDataSet
    Left = 240
  end
  inherited Timer1: TTimer
    Left = 288
    Top = 24
  end
  inherited Timer2: TTimer
    Left = 400
    Top = 32
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 216
    Top = 32
  end
end
