inherited FrmDatosCiudad: TFrmDatosCiudad
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Datos de la ciudad'
  ClientHeight = 354
  ClientWidth = 350
  ExplicitWidth = 356
  ExplicitHeight = 382
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBarraLugar: TcxGroupBox
    Top = 323
    ExplicitTop = 323
    ExplicitWidth = 350
    Width = 350
    inherited BtnCancel: TAdvGlowButton
      Left = 268
      ExplicitLeft = 266
    end
    inherited BtnRec: TAdvGlowButton
      Left = 188
      ExplicitLeft = 182
    end
    inherited BtnAddNew: TAdvGlowButton
      Visible = False
    end
  end
  inherited PanelDatosLugares: TcxGroupBox
    ExplicitWidth = 350
    ExplicitHeight = 323
    Height = 323
    Width = 350
    inherited cxButton1: TcxButton
      TabOrder = 7
    end
    object Codigo: TcxLabel
      Left = 14
      Top = 22
      Caption = 'C'#243'digo:'
      Transparent = True
    end
    object Titulo: TcxLabel
      Left = 14
      Top = 46
      Caption = 'T'#237'tulo:'
      Transparent = True
    end
    object Codigo_estado: TcxLabel
      Left = 14
      Top = 69
      Caption = 'C'#243'digo Estado:'
      Transparent = True
    end
    object Descripcion: TcxLabel
      Left = 14
      Top = 128
      Caption = 'Descripci'#243'n:'
      Transparent = True
    end
    object DBEditCodigo: TDBEdit
      Left = 96
      Top = 19
      Width = 233
      Height = 19
      BevelOuter = bvNone
      Ctl3D = False
      DataField = 'codigociudad'
      DataSource = dsDatos
      ParentCtl3D = False
      TabOrder = 0
    end
    object DBEditTitulo: TDBEdit
      Left = 96
      Top = 43
      Width = 233
      Height = 19
      BevelOuter = bvNone
      Ctl3D = False
      DataField = 'titulociudad'
      DataSource = dsDatos
      ParentCtl3D = False
      TabOrder = 1
    end
    object EditCodigoEstado: TEdit
      Left = 96
      Top = 67
      Width = 206
      Height = 19
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnKeyPress = EditCodigoEstadoKeyPress
    end
    object EditTituloEstado: TEdit
      Tag = 99
      Left = 96
      Top = 92
      Width = 233
      Height = 21
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = '*'
    end
    object BtnFindGrupo: TcxButton
      Left = 306
      Top = 67
      Width = 23
      Height = 19
      Caption = '...'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Blueprint'
      TabOrder = 3
      OnClick = BtnFindGrupoClick
    end
    object DBEditEstado: TDBEdit
      Left = 335
      Top = 19
      Width = 121
      Height = 21
      DataField = 'idestado'
      DataSource = dsDatos
      TabOrder = 6
      Visible = False
      OnChange = DBEditEstadoChange
    end
    object DBMemoDescripcion: TDBRichEdit
      Left = 14
      Top = 143
      Width = 315
      Height = 146
      BevelEdges = []
      BevelOuter = bvNone
      Ctl3D = False
      DataField = 'descripcion'
      DataSource = dsDatos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      PlainText = True
      TabOrder = 5
    end
  end
  inherited Timer1: TTimer
    Left = 120
    Top = 296
  end
  inherited Timer2: TTimer
    Left = 72
    Top = 288
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 96
    Top = 312
  end
  object cdEstado: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 160
    Top = 320
  end
  object DataSource1: TDataSource
    DataSet = cdEstado
    Left = 120
    Top = 304
  end
end
