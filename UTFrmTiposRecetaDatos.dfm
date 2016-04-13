inherited FrmTiposRecetaDatos: TFrmTiposRecetaDatos
  BorderStyle = bsDialog
  Caption = 'Tipo de Receta'
  ClientHeight = 159
  ClientWidth = 365
  Position = poScreenCenter
  ExplicitWidth = 371
  ExplicitHeight = 187
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBarraLugar: TcxGroupBox
    Top = 128
    ExplicitTop = 128
    ExplicitWidth = 365
    Width = 365
    inherited BtnCancel: TAdvGlowButton
      Left = 283
      ExplicitLeft = 281
    end
    inherited BtnRec: TAdvGlowButton
      Left = 203
      ExplicitLeft = 197
    end
  end
  inherited PanelDatosLugares: TcxGroupBox
    ExplicitWidth = 365
    ExplicitHeight = 128
    Height = 128
    Width = 365
    object JvLabel1: TJvLabel [0]
      Left = 7
      Top = 16
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
      Left = 14
      Top = 43
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
    object JvLabel3: TJvLabel [2]
      Left = 10
      Top = 70
      Width = 36
      Height = 13
      Caption = 'Orden:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    inherited cxButton1: TcxButton
      TabOrder = 3
    end
    object CodigoTipoReceta: TDBEdit
      Left = 50
      Top = 16
      Width = 120
      Height = 21
      DataField = 'CodigoTipoReceta'
      DataSource = dsDatos
      TabOrder = 0
    end
    object NombreTipoReceta: TDBEdit
      Left = 50
      Top = 43
      Width = 310
      Height = 21
      DataField = 'NombreTipoReceta'
      DataSource = dsDatos
      TabOrder = 1
    end
    object Orden: TJvDBSpinEdit
      Left = 50
      Top = 70
      Width = 79
      Height = 21
      TabOrder = 2
      DataField = 'Orden'
      DataSource = dsDatos
    end
  end
  inherited dsDatos: TDataSource
    Left = 200
    Top = 16
  end
  inherited CdTmp: TClientDataSet
    Left = 208
    Top = 16
  end
  inherited Timer1: TTimer
    Left = 216
    Top = 16
  end
  inherited Timer2: TTimer
    Left = 232
    Top = 16
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 248
    Top = 16
  end
end
