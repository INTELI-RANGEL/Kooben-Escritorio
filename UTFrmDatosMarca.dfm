inherited FrmDatosMarca: TFrmDatosMarca
  BorderStyle = bsDialog
  Caption = 'Datos de la Marca'
  ClientHeight = 127
  ClientWidth = 365
  Position = poScreenCenter
  ExplicitWidth = 371
  ExplicitHeight = 155
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBarraLugar: TcxGroupBox
    Top = 96
    ExplicitTop = 100
    ExplicitWidth = 512
    Width = 365
    inherited BtnRec: TcxButton
      Left = 197
      ExplicitLeft = 344
    end
    inherited BtnCancel: TcxButton
      Left = 281
      ExplicitLeft = 428
    end
  end
  inherited PanelDatosLugares: TcxGroupBox
    ExplicitWidth = 512
    ExplicitHeight = 100
    Height = 96
    Width = 365
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
      Top = 52
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
    object CodigoMarca: TDBEdit
      Left = 50
      Top = 25
      Width = 120
      Height = 21
      DataField = 'CodigoMarca'
      DataSource = dsDatos
      TabOrder = 0
    end
    object TituloMarca: TDBEdit
      Left = 50
      Top = 52
      Width = 310
      Height = 21
      DataField = 'TituloMarca'
      DataSource = dsDatos
      TabOrder = 1
    end
  end
  inherited dsDatos: TDataSource
    Left = 312
  end
  inherited CdTmp: TClientDataSet
    Left = 280
  end
  inherited Timer1: TTimer
    Left = 128
    Top = 65528
  end
  inherited Timer2: TTimer
    Left = 232
    Top = 8
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 176
    Top = 8
  end
end
