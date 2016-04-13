inherited FrmDatosIVA: TFrmDatosIVA
  Caption = 'Cat'#225'logo de Impuestos'
  ClientHeight = 310
  ExplicitHeight = 348
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBarraLugar: TcxGroupBox
    Top = 279
    inherited BtnRec: TAdvGlowButton
      ExplicitLeft = 378
      ExplicitTop = 1
    end
  end
  inherited PanelDatosLugares: TcxGroupBox
    ExplicitWidth = 545
    Height = 279
    inherited cxButton1: TcxButton
      Left = 464
      Top = 106
      ExplicitLeft = 464
      ExplicitTop = 106
    end
    object Panel1: TPanel
      Left = 3
      Top = 15
      Width = 540
      Height = 98
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitTop = 9
      object JvLabel1: TJvLabel
        Left = 118
        Top = 13
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
      object JvLabel4: TJvLabel
        Left = 68
        Top = 64
        Width = 89
        Height = 13
        Caption = 'Tipo de Impuesto:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel2: TJvLabel
        Left = 125
        Top = 39
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
      object CodigoImpuesto: TDBEdit
        Left = 185
        Top = 13
        Width = 217
        Height = 21
        DataField = 'CodigoImpuesto'
        DataSource = dsDatos
        TabOrder = 0
      end
      object IdTipoImpuesto: TDBLookupComboBox
        Left = 185
        Top = 64
        Width = 339
        Height = 21
        DataField = 'IdTipoImpuesto'
        DataSource = dsDatos
        KeyField = 'IdTipoImpuesto'
        ListField = 'TituloTipoImpuesto'
        ListSource = dsTipoImpuesto
        TabOrder = 2
      end
      object TituloImpuesto: TDBEdit
        Left = 185
        Top = 37
        Width = 339
        Height = 21
        DataField = 'TituloImpuesto'
        DataSource = dsDatos
        TabOrder = 1
      end
    end
    object Panel2: TPanel
      Left = 3
      Top = 113
      Width = 540
      Height = 156
      Align = alClient
      BevelOuter = bvNone
      Padding.Right = 16
      TabOrder = 2
      ExplicitLeft = 208
      ExplicitTop = 208
      ExplicitWidth = 185
      ExplicitHeight = 41
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 121
        Height = 156
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
      end
      object Panel4: TPanel
        Left = 121
        Top = 0
        Width = 403
        Height = 156
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitLeft = 176
        ExplicitTop = 56
        ExplicitWidth = 185
        ExplicitHeight = 41
        object cxGrid1: TcxGrid
          Left = 64
          Top = 0
          Width = 339
          Height = 156
          Align = alClient
          TabOrder = 0
          ExplicitLeft = 144
          ExplicitTop = -24
          ExplicitWidth = 250
          ExplicitHeight = 200
          object tvAplicacionImpuesto: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            OnCellDblClick = tvAplicacionImpuestoCellDblClick
            DataController.DataSource = dsAplicacion
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.GroupByBox = False
            object ColAplicacion: TcxGridDBColumn
              Caption = 'Aplicaci'#243'n'
              DataBinding.FieldName = 'Aplicacion'
            end
            object ColImporte: TcxGridDBColumn
              DataBinding.FieldName = 'Importe'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = '#,###,###,##0.####'
            end
            object ColsNombre: TcxGridDBColumn
              DataBinding.FieldName = 'sNombre'
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = tvAplicacionImpuesto
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 64
          Height = 156
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitLeft = -6
          ExplicitTop = -3
          object btnNuevo: TButton
            Left = 0
            Top = 18
            Width = 58
            Height = 25
            Caption = '&Nuevo'
            TabOrder = 0
            OnClick = btnNuevoClick
          end
          object btnEditar: TButton
            Left = 0
            Top = 45
            Width = 58
            Height = 25
            Caption = '&Editar'
            TabOrder = 1
            OnClick = btnEditarClick
          end
          object btnEliminar: TButton
            Left = 0
            Top = 72
            Width = 58
            Height = 25
            Caption = '&Eliminar'
            TabOrder = 2
            OnClick = btnEliminarClick
          end
        end
      end
    end
  end
  inherited Timer1: TTimer
    Left = 360
    Top = 24
  end
  inherited Timer2: TTimer
    Left = 280
    Top = 24
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 480
    Top = 56
  end
  object cdTipoImpuesto: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 488
    Top = 232
  end
  object dsTipoImpuesto: TDataSource
    DataSet = cdTipoImpuesto
    Left = 488
    Top = 176
  end
  object cdAplicacion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 128
  end
  object dsAplicacion: TDataSource
    DataSet = cdAplicacion
    Left = 40
    Top = 176
  end
  object cdUnidad: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 176
    Top = 256
  end
  object dsUnidad: TDataSource
    DataSet = cdUnidad
    Left = 176
    Top = 208
  end
end
