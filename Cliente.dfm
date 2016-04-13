object FrmComisariato: TFrmComisariato
  Left = 0
  Top = 0
  Caption = 'FrmComisariato'
  ClientHeight = 253
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AlertSrv: TNxAlertWindow
    Left = 208
    Top = 72
    Width = 211
    Height = 116
    CloseGlyph.NormalGlyph.Data = {
      F6000000424DF600000000000000360000002800000008000000080000000100
      180000000000C000000000000000000000000000000000000000D2CFCAD2CECA
      00FF0000FF0000FF0000FF00D3D0CDD3D0CCD2CFCAD3CFC9D2CEC800FF0000FF
      00D3D0CCD3D0CCD3D0CC00FF00D3CFCAD3CFCAD3CEC9D3CEC8D3CFCBD3D0CC00
      FF0000FF0000FF00D3CFC9D3CEC9D3CEC8D3CEC700FF0000FF0000FF0000FF00
      D3CEC9D3CEC8D3CEC8D3CEC800FF0000FF0000FF00D3CFC9D3CFC8D3CFC8D3CE
      C8D3CEC9D3CEC800FF00D3CEC8D3CEC8D3CEC800FF0000FF00D3CEC8D3CEC7D2
      CDC6D3CEC8D3CEC800FF0000FF0000FF0000FF00D3CEC7D3CDC6}
    CloseGlyph.Transparent = True
    CloseGlyph.TransparentColor = clLime
    CloseGlyph.HoverGlyph.Data = {
      F6000000424DF600000000000000360000002800000008000000080000000100
      180000000000C000000000000000000000000000000000000000E08800E08800
      00FF0000FF0000FF0000FF00E08800E08800E08800E08800E0880000FF0000FF
      00E08800E08800E0880000FF00E08800E08800E08800E08800E08800E0880000
      FF0000FF0000FF00E08800E08800E08800E0880000FF0000FF0000FF0000FF00
      E08800E08800E08800E0880000FF0000FF0000FF00E08800E08800E08800E088
      00E08800E0880000FF00E08800E08800E0880000FF0000FF00E08800E08800E0
      8800E08800E0880000FF0000FF0000FF0000FF00E08800E08800}
    ForegroundColor = clSkyBlue
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    OptionsText = 'Options'
  end
  object MsgServidor: TWSocket
    LineMode = False
    LineLimit = 65536
    LineEnd = #13#10
    LineEcho = False
    LineEdit = False
    SocketFamily = sfIPv4
    Proto = 'tcp'
    LocalAddr = '0.0.0.0'
    LocalPort = '0'
    MultiThreaded = False
    MultiCast = False
    MultiCastIpTTL = 1
    FlushTimeout = 60
    SendFlags = wsSendNormal
    LingerOnOff = wsLingerOn
    LingerTimeout = 0
    KeepAliveOnOff = wsKeepAliveOff
    KeepAliveTime = 0
    KeepAliveInterval = 0
    SocksLevel = '5'
    SocksAuthentication = socksNoAuthentication
    LastError = 0
    ReuseAddr = False
    ComponentOptions = []
    ListenBacklog = 5
    ReqVerLow = 2
    ReqVerHigh = 2
    Left = 64
    Top = 24
  end
  object DSClientCallbackChannelManager1: TDSClientCallbackChannelManager
    ManagerId = '408837.697367.478217'
    Left = 216
    Top = 136
  end
end
