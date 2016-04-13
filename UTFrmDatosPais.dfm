inherited FrmDatosPais: TFrmDatosPais
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Datos del pais'
  ClientHeight = 328
  ClientWidth = 358
  ExplicitWidth = 364
  ExplicitHeight = 356
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBarraLugar: TcxGroupBox
    Top = 297
    ExplicitTop = 297
    ExplicitWidth = 358
    Width = 358
    inherited BtnCancel: TAdvGlowButton
      Left = 276
      ExplicitLeft = 276
    end
    inherited BtnRec: TAdvGlowButton
      Left = 196
      ExplicitLeft = 196
    end
    inherited BtnAddNew: TAdvGlowButton
      Visible = False
    end
  end
  inherited PanelDatosLugares: TcxGroupBox
    ExplicitWidth = 358
    ExplicitHeight = 297
    Height = 297
    Width = 358
    inherited cxButton1: TcxButton
      TabOrder = 4
    end
    object Label1: TcxLabel
      Left = 9
      Top = 23
      Caption = 'C'#243'digo:'
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 9
      Top = 48
      Caption = 'T'#237'tulo:'
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 9
      Top = 103
      Caption = 'Descripci'#243'n:'
      Transparent = True
    end
    object DBEditCodigo: TDBEdit
      Left = 81
      Top = 21
      Width = 256
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvNone
      Ctl3D = False
      DataField = 'codigopais'
      DataSource = dsDatos
      ParentCtl3D = False
      TabOrder = 0
    end
    object DBEditTitulo: TDBEdit
      Left = 81
      Top = 45
      Width = 256
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvNone
      Ctl3D = False
      DataField = 'titulopais'
      DataSource = dsDatos
      ParentCtl3D = False
      TabOrder = 1
    end
    object DBMemoComentarios: TDBRichEdit
      Left = 9
      Top = 126
      Width = 328
      Height = 150
      BevelInner = bvNone
      BevelOuter = bvNone
      Ctl3D = False
      DataField = 'comentario'
      DataSource = dsDatos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      PlainText = True
      TabOrder = 3
    end
    object cxLabel1: TcxLabel
      Left = 9
      Top = 78
      Caption = 'Nacionalidad:'
      Transparent = True
    end
    object DBEditNacionalidad: TDBEdit
      Left = 81
      Top = 78
      Width = 256
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvNone
      Ctl3D = False
      DataField = 'Nacionalidad'
      DataSource = dsDatos
      ParentCtl3D = False
      TabOrder = 2
    end
  end
  inherited Timer2: TTimer
    Left = 48
    Top = 176
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 16
    Top = 176
  end
end
