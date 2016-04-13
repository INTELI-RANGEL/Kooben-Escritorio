inherited FrmDatosPresentacion: TFrmDatosPresentacion
  BorderStyle = bsDialog
  Caption = 'Tipo de Presentaci'#243'n de Ingredientes'
  ClientHeight = 305
  ClientWidth = 401
  Position = poScreenCenter
  ExplicitWidth = 407
  ExplicitHeight = 333
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBarraLugar: TcxGroupBox
    Top = 274
    ExplicitTop = 212
    ExplicitWidth = 401
    Width = 401
    inherited BtnCancel: TAdvGlowButton
      Left = 319
      ExplicitLeft = 319
    end
    inherited BtnRec: TAdvGlowButton
      Left = 239
      ExplicitLeft = 239
    end
  end
  inherited PanelDatosLugares: TcxGroupBox
    ExplicitWidth = 401
    ExplicitHeight = 212
    Height = 274
    Width = 401
    inherited cxButton1: TcxButton
      Left = 323
      Top = -7
      TabOrder = 5
      ExplicitLeft = 323
      ExplicitTop = -7
    end
    object PanelCodigo: TPanel
      Left = 3
      Top = 15
      Width = 395
      Height = 32
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object JvLabel2: TJvLabel
        Left = 13
        Top = 8
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
      object CodigoPresentacion: TDBEdit
        Left = 54
        Top = 6
        Width = 120
        Height = 21
        DataField = 'CodigoPresentacion'
        DataSource = dsDatos
        TabOrder = 0
      end
    end
    object PanelTitulo: TPanel
      Left = 3
      Top = 129
      Width = 395
      Height = 135
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 4
      ExplicitTop = 100
      ExplicitHeight = 164
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 54
        Height = 135
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitHeight = 102
        object JvLabel1: TJvLabel
          Left = 20
          Top = 3
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
      end
      object TituloPresentacion: TDBEdit
        Left = 54
        Top = 0
        Width = 341
        Height = 135
        Align = alClient
        DataField = 'TituloPresentacion'
        DataSource = dsDatos
        TabOrder = 1
        ExplicitHeight = 21
      end
    end
    object pnlMedida: TPanel
      Left = 3
      Top = 73
      Width = 395
      Height = 27
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 54
        Height = 27
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object JvLabel3: TJvLabel
          Left = 12
          Top = 3
          Width = 40
          Height = 13
          Caption = 'Medida:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
      end
      object iIdUnidad: TDBLookupComboBox
        Left = 54
        Top = 0
        Width = 341
        Height = 21
        Align = alClient
        DataField = 'iIdUnidad'
        DataSource = dsDatos
        KeyField = 'iIdUnidad'
        ListField = 'sNombre'
        ListSource = dsUnidades
        TabOrder = 1
      end
    end
    object pnlCantidad: TPanel
      Left = 3
      Top = 47
      Width = 395
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object JvLabel4: TJvLabel
        Left = 3
        Top = 2
        Width = 49
        Height = 13
        Caption = 'Cantidad:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object Cantidad: TcxDBCalcEdit
        Left = 54
        Top = -1
        DataBinding.DataField = 'Cantidad'
        DataBinding.DataSource = dsDatos
        TabOrder = 0
        Width = 121
      end
    end
    object pnlFraccion: TPanel
      Left = 3
      Top = 100
      Width = 395
      Height = 29
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object lblLeyendaFraccion: TJvLabel
        Left = 169
        Top = 0
        Width = 226
        Height = 29
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
        ExplicitWidth = 5
        ExplicitHeight = 13
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 169
        Height = 29
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object Fraccion: TcxDBCheckBox
          Left = 3
          Top = 4
          Caption = 'Permite fracci'#243'n de enteros:'
          DataBinding.DataField = 'Fraccion'
          DataBinding.DataSource = dsDatos
          Properties.Alignment = taRightJustify
          Properties.ValueChecked = 'Si'
          Properties.ValueUnchecked = 'No'
          Properties.OnChange = FraccionPropertiesChange
          TabOrder = 0
          Width = 158
        end
      end
    end
  end
  inherited dsDatos: TDataSource
    Left = 176
  end
  inherited CdTmp: TClientDataSet
    Left = 312
    Top = 112
  end
  inherited Timer1: TTimer
    Left = 232
    Top = 0
  end
  inherited Timer2: TTimer
    Left = 288
    Top = 16
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 184
    Top = 48
  end
  object dsUnidades: TDataSource
    DataSet = ClientModule1.cdUnidades
    Left = 112
    Top = 136
  end
end
