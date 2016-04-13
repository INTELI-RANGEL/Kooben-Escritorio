object FrmUsuario: TFrmUsuario
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Datos de Usuario'
  ClientHeight = 248
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object JvLabel1: TJvLabel
    Left = 59
    Top = 16
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
  object JvLabel2: TJvLabel
    Left = 18
    Top = 43
    Width = 84
    Height = 13
    Caption = 'Apellido Paterno:'
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
  end
  object JvLabel3: TJvLabel
    Left = 16
    Top = 70
    Width = 86
    Height = 13
    Caption = 'Apellido Materno:'
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
  end
  object JvLabel4: TJvLabel
    Left = 16
    Top = 175
    Width = 86
    Height = 13
    Caption = 'Repita Password:'
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
  end
  object JvLabel5: TJvLabel
    Left = 50
    Top = 148
    Width = 52
    Height = 13
    Caption = 'Password:'
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
  end
  object JvLabel6: TJvLabel
    Left = 30
    Top = 122
    Width = 72
    Height = 13
    Caption = 'Clave Usuario:'
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
  end
  object JvLabel7: TJvLabel
    Left = 30
    Top = 97
    Width = 72
    Height = 13
    Caption = 'Administrador:'
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
  end
  object btnAceptar: TAdvGlowButton
    Left = 187
    Top = 211
    Width = 100
    Height = 29
    Caption = '&Aceptar'
    Default = True
    ImageIndex = 1
    Images = ClientModule1.PngImageList1
    ModalResult = 1
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    TabOrder = 0
    OnClick = btnAceptarClick
    Appearance.ColorChecked = 16111818
    Appearance.ColorCheckedTo = 16367008
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 16111818
    Appearance.ColorDownTo = 16367008
    Appearance.ColorHot = 16117985
    Appearance.ColorHotTo = 16372402
    Appearance.ColorMirrorHot = 16107693
    Appearance.ColorMirrorHotTo = 16775412
    Appearance.ColorMirrorDown = 16102556
    Appearance.ColorMirrorDownTo = 16768988
    Appearance.ColorMirrorChecked = 16102556
    Appearance.ColorMirrorCheckedTo = 16768988
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
  end
  object btnCancelar: TAdvGlowButton
    Left = 293
    Top = 211
    Width = 100
    Height = 29
    Cancel = True
    Caption = '&Cancelar'
    ImageIndex = 8
    Images = ClientModule1.PngImageList1
    ModalResult = 2
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    TabOrder = 1
    Appearance.ColorChecked = 16111818
    Appearance.ColorCheckedTo = 16367008
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 16111818
    Appearance.ColorDownTo = 16367008
    Appearance.ColorHot = 16117985
    Appearance.ColorHotTo = 16372402
    Appearance.ColorMirrorHot = 16107693
    Appearance.ColorMirrorHotTo = 16775412
    Appearance.ColorMirrorDown = 16102556
    Appearance.ColorMirrorDownTo = 16768988
    Appearance.ColorMirrorChecked = 16102556
    Appearance.ColorMirrorCheckedTo = 16768988
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
  end
  object sNombre: TDBEdit
    Left = 108
    Top = 16
    Width = 285
    Height = 21
    DataField = 'sNombre'
    DataSource = dsUsuarioUpt
    TabOrder = 2
  end
  object sAPaterno: TDBEdit
    Left = 108
    Top = 43
    Width = 285
    Height = 21
    DataField = 'sAPaterno'
    DataSource = dsUsuarioUpt
    TabOrder = 3
  end
  object sAMaterno: TDBEdit
    Left = 108
    Top = 70
    Width = 285
    Height = 21
    DataField = 'sAMaterno'
    DataSource = dsUsuarioUpt
    TabOrder = 4
  end
  object sIdUsuario: TDBEdit
    Left = 108
    Top = 122
    Width = 149
    Height = 21
    DataField = 'sIdUsuario'
    DataSource = dsUsuarioUpt
    TabOrder = 6
  end
  object sPassword: TDBEdit
    Left = 108
    Top = 148
    Width = 149
    Height = 21
    DataField = 'sPassword'
    DataSource = dsUsuarioUpt
    PasswordChar = '*'
    TabOrder = 7
  end
  object RePassword: TEdit
    Left = 108
    Top = 175
    Width = 149
    Height = 21
    PasswordChar = '*'
    TabOrder = 8
  end
  object Administrador: TDBComboBox
    Left = 108
    Top = 97
    Width = 53
    Height = 21
    Style = csDropDownList
    DataField = 'Administrador'
    DataSource = dsUsuarioUpt
    Items.Strings = (
      'Si'
      'No')
    TabOrder = 5
  end
  object dsUsuarioUpt: TDataSource
    Left = 328
    Top = 104
  end
end
