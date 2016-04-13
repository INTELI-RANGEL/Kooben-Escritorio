object FrmInsumoPedido: TFrmInsumoPedido
  Left = 0
  Top = 0
  Caption = 'FrmInsumoPedido'
  ClientHeight = 430
  ClientWidth = 828
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 201
    Width = 828
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitLeft = 8
    ExplicitTop = 191
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 204
    Width = 828
    Height = 185
    Align = alClient
    TabOrder = 0
    object tvPedido: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellDblClick = tvPedidoCellDblClick
      OnCustomDrawCell = tvPedidoCustomDrawCell
      DataController.DataSource = dsInsumoPedidoPartida
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
      object CodigoInsumo: TcxGridDBColumn
        Caption = 'C'#243'digo Solicitar'
        DataBinding.FieldName = 'CodigoInsumo'
        Width = 80
      end
      object NombreInsumo: TcxGridDBColumn
        Caption = 'Nombre Solicitar'
        DataBinding.FieldName = 'NombreInsumo'
        Width = 300
      end
      object Cantidad: TcxGridDBColumn
        Caption = 'Solicitar'
        DataBinding.FieldName = 'Cantidad'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '0.000000;-0.000000'
        Width = 80
      end
      object sNombre: TcxGridDBColumn
        Caption = 'U.M.'
        DataBinding.FieldName = 'sNombre'
        Width = 80
      end
      object CodigoInsumoOriginal: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'CodigoInsumoOriginal'
        Width = 80
      end
      object NombreInsumoOriginal: TcxGridDBColumn
        Caption = 'Nombre'
        DataBinding.FieldName = 'NombreInsumoOriginal'
        Width = 300
      end
      object CantidadOriginal: TcxGridDBColumn
        DataBinding.FieldName = 'CantidadOriginal'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '0.000000;-0.000000'
        Width = 80
      end
      object sNombreOriginal: TcxGridDBColumn
        Caption = 'U.M.'
        DataBinding.FieldName = 'sNombreOriginal'
        Width = 80
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tvPedido
    end
  end
  object TPanel
    Left = 0
    Top = 0
    Width = 828
    Height = 201
    Align = alTop
    TabOrder = 1
    object Panel1: TPanel
      Left = 1
      Top = 90
      Width = 826
      Height = 110
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 826
        Height = 31
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 88
          Height = 31
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object JvLabel5: TJvLabel
            Left = 30
            Top = 8
            Width = 58
            Height = 13
            Caption = 'Referencia:'
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
        end
        object Panel5: TPanel
          Left = 88
          Top = 0
          Width = 738
          Height = 31
          Align = alClient
          BevelOuter = bvNone
          Padding.Left = 6
          Padding.Top = 8
          Padding.Right = 5
          Padding.Bottom = 2
          TabOrder = 1
          object DBEdit1: TDBEdit
            Left = 6
            Top = 8
            Width = 727
            Height = 21
            Align = alClient
            DataField = 'Referencia'
            DataSource = dsInsumoPedidoUpt
            TabOrder = 0
          end
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 31
        Width = 826
        Height = 79
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 88
          Height = 79
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object JvLabel7: TJvLabel
            Left = 22
            Top = 8
            Width = 66
            Height = 13
            Caption = 'Comentarios:'
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
        end
        object Panel8: TPanel
          Left = 88
          Top = 0
          Width = 738
          Height = 79
          Align = alClient
          BevelOuter = bvNone
          Padding.Left = 6
          Padding.Top = 8
          Padding.Right = 5
          Padding.Bottom = 6
          TabOrder = 1
          object DBMemo1: TDBMemo
            Left = 6
            Top = 8
            Width = 727
            Height = 65
            Align = alClient
            DataField = 'Comentarios'
            DataSource = dsInsumoPedidoUpt
            TabOrder = 0
          end
        end
      end
    end
    object Panel9: TPanel
      Left = 1
      Top = 1
      Width = 826
      Height = 89
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object JvLabel1: TJvLabel
        Left = 14
        Top = 8
        Width = 74
        Height = 13
        Caption = 'C'#243'digo Pedido:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object DBText1: TDBText
        Left = 94
        Top = 8
        Width = 48
        Height = 13
        AutoSize = True
        DataField = 'CodigoInsumoPedido'
        DataSource = dsInsumoPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object JvLabel2: TJvLabel
        Left = 20
        Top = 27
        Width = 68
        Height = 13
        Caption = 'C'#243'digo Men'#250':'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object DBText2: TDBText
        Left = 94
        Top = 27
        Width = 48
        Height = 13
        AutoSize = True
        DataField = 'CodigoMenu'
        DataSource = dsInsumoPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object JvLabel3: TJvLabel
        Left = 52
        Top = 46
        Width = 36
        Height = 13
        Caption = 'Desde:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object DBText3: TDBText
        Left = 94
        Top = 46
        Width = 48
        Height = 13
        AutoSize = True
        DataField = 'Desde'
        DataSource = dsInsumoPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object JvLabel4: TJvLabel
        Left = 37
        Top = 65
        Width = 51
        Height = 13
        Caption = 'Ubicaci'#243'n:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object DBText5: TDBText
        Left = 94
        Top = 65
        Width = 138
        Height = 13
        DataField = 'CodigoEmbarcacion'
        DataSource = dsInsumoPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object JvLabel6: TJvLabel
        Left = 172
        Top = 46
        Width = 15
        Height = 13
        Caption = 'Al:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object DBText4: TDBText
        Left = 193
        Top = 46
        Width = 48
        Height = 13
        AutoSize = True
        DataField = 'Hasta'
        DataSource = dsInsumoPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText6: TDBText
        Left = 238
        Top = 65
        Width = 48
        Height = 13
        AutoSize = True
        DataField = 'NombreEmbarcacion'
        DataSource = dsInsumoPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 389
    Width = 828
    Height = 41
    Align = alBottom
    Padding.Left = 4
    Padding.Top = 4
    Padding.Right = 4
    Padding.Bottom = 4
    TabOrder = 2
    object btnAceptar: TAdvGlowButton
      Left = 623
      Top = 5
      Width = 100
      Height = 31
      Align = alRight
      Caption = '&Aceptar'
      Default = True
      ImageIndex = 1
      Images = ClientModule1.PngImageList1
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
      Left = 723
      Top = 5
      Width = 100
      Height = 31
      Align = alRight
      Cancel = True
      Caption = '&Cancelar'
      ImageIndex = 8
      Images = ClientModule1.PngImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = btnCancelarClick
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
    object btnImprimirInsumos: TAdvGlowButton
      Left = 5
      Top = 5
      Width = 113
      Height = 31
      Align = alLeft
      Caption = '&Imprimir Pedido'
      Default = True
      ImageIndex = 24
      Images = ClientModule1.PngImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      OnClick = btnImprimirInsumosClick
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
    object Panel11: TPanel
      Left = 118
      Top = 5
      Width = 24
      Height = 31
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 3
    end
    object btnEliminarPedido: TAdvGlowButton
      Left = 142
      Top = 5
      Width = 113
      Height = 31
      Align = alLeft
      Caption = '&Eliminar Pedido'
      ImageIndex = 5
      Images = ClientModule1.PngImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 4
      OnClick = btnEliminarPedidoClick
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
  end
  object pnlEdit: TPanel
    Left = 312
    Top = 28
    Width = 481
    Height = 211
    TabOrder = 3
    Visible = False
    object JvLabel8: TJvLabel
      Left = 39
      Top = 19
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
    object lblCodigoInsumo: TDBText
      Left = 84
      Top = 19
      Width = 94
      Height = 13
      AutoSize = True
      DataField = 'CodigoInsumo'
      DataSource = dsInsumoPedidoPartida
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object JvLabel9: TJvLabel
      Left = 16
      Top = 43
      Width = 62
      Height = 13
      Caption = 'Ingrediente:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object lblNombreInsumo: TDBText
      Left = 84
      Top = 43
      Width = 100
      Height = 13
      AutoSize = True
      DataField = 'NombreInsumo'
      DataSource = dsInsumoPedidoPartida
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object JvLabel10: TJvLabel
      Left = 17
      Top = 69
      Width = 96
      Height = 13
      Caption = 'Cantidad calculada:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel11: TJvLabel
      Left = 16
      Top = 133
      Width = 97
      Height = 13
      Caption = 'Cantidad a solicitar:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object lblCantidad: TDBText
      Left = 119
      Top = 69
      Width = 74
      Height = 13
      BiDiMode = bdRightToLeft
      DataField = 'Cantidad'
      DataSource = dsInsumoPedidoPartida
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object lblMedida: TDBText
      Left = 199
      Top = 69
      Width = 54
      Height = 13
      AutoSize = True
      BiDiMode = bdLeftToRight
      DataField = 'sNombre'
      DataSource = dsInsumoPedidoPartida
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object JvLabel12: TJvLabel
      Left = 11
      Top = 106
      Width = 102
      Height = 13
      Caption = 'Solicitar Ingrediente:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object lblMedida2: TDBText
      Left = 231
      Top = 133
      Width = 61
      Height = 13
      AutoSize = True
      BiDiMode = bdLeftToRight
      DataField = 'sNombre'
      DataSource = dsInsumoPedidoPartida
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object Panel10: TPanel
      Left = 1
      Top = 169
      Width = 479
      Height = 41
      Align = alBottom
      Padding.Left = 4
      Padding.Top = 4
      Padding.Right = 4
      Padding.Bottom = 4
      TabOrder = 0
      object btnFormaCancelar: TAdvGlowButton
        Left = 374
        Top = 5
        Width = 100
        Height = 31
        Align = alRight
        Caption = '&Cancelar'
        ImageIndex = 8
        Images = ClientModule1.PngImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        OnClick = btnFormaCancelarClick
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
      object btnFormaAceptar: TAdvGlowButton
        Left = 274
        Top = 5
        Width = 100
        Height = 31
        Align = alRight
        Caption = '&Aceptar'
        ImageIndex = 1
        Images = ClientModule1.PngImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        OnClick = btnFormaAceptarClick
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
    end
    object EdtCantidad: TJvDBCalcEdit
      Left = 119
      Top = 130
      Width = 106
      Height = 21
      DecimalPlaces = 6
      DisplayFormat = '0.000000'
      TabOrder = 1
      DecimalPlacesAlwaysShown = True
      DataField = 'CantidadReal'
      DataSource = dsInsumoPedidoPartidaUpt
    end
    object EdtIdInsumo: TDBLookupComboBox
      Left = 119
      Top = 103
      Width = 346
      Height = 21
      DataField = 'IdInsumoReal'
      DataSource = dsInsumoPedidoPartidaUpt
      KeyField = 'IdInsumo'
      ListField = 'NombreInsumo'
      ListSource = dsIngredientes
      TabOrder = 2
    end
  end
  object cdInsumoPedido: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 72
    Top = 328
  end
  object cdInsumoPedidoUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 176
    Top = 128
  end
  object dsExplosion: TDataSource
    Left = 256
    Top = 128
  end
  object cdInsumoPedidoPartida: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 72
    Top = 192
  end
  object cdInsumoPedidoPartidaUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 312
    Top = 328
  end
  object dsMenu: TDataSource
    Left = 368
    Top = 176
  end
  object dsInsumoPedidoPartida: TDataSource
    DataSet = cdInsumoPedidoPartida
    Left = 200
    Top = 192
  end
  object dsInsumoPedido: TDataSource
    DataSet = cdInsumoPedido
    Left = 168
    Top = 328
  end
  object dsInsumoPedidoUpt: TDataSource
    DataSet = cdInsumoPedidoUpt
    Left = 296
    Top = 256
  end
  object dsInsumoPedidoPartidaUpt: TDataSource
    DataSet = cdInsumoPedidoPartidaUpt
    Left = 456
    Top = 328
  end
  object cdUnidad: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 544
    Top = 264
  end
  object dsUnidad: TDataSource
    DataSet = cdUnidad
    Left = 600
    Top = 264
  end
  object dsIngredientes: TDataSource
    OnDataChange = dsIngredientesDataChange
    Left = 136
    Top = 248
  end
  object cdVerificaComisaria: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 504
    Top = 192
  end
  object Reporte: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42353.869414317100000000
    ReportOptions.LastChange = 42393.545034664350000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 416
    Top = 272
    Datasets = <
      item
        DataSet = ClientModule1.fdsOrganizacion
        DataSetName = 'fdsOrganizacion'
      end
      item
        DataSet = frdsInsumoPedido
        DataSetName = 'frdsInsumoPedido'
      end
      item
        DataSet = frdsInsumoPedidoPartida
        DataSetName = 'frdsInsumoPedidoPartida'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader2: TfrxPageHeader
        Height = 139.842610000000000000
        Top = 18.897650000000000000
        Width = 980.410081999999900000
        object Memo47: TfrxMemoView
          Width = 978.898270000000000000
          Height = 109.606370000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Picture2: TfrxPictureView
          Left = 3.779530000000000000
          Top = 3.779530000000001000
          Width = 113.385900000000000000
          Height = 86.929190000000000000
          ShowHint = False
          DataField = 'Imagen'
          DataSet = ClientModule1.fdsOrganizacion
          DataSetName = 'fdsOrganizacion'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo48: TfrxMemoView
          Left = 128.504020000000000000
          Top = 7.559059999999999000
          Width = 846.614720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsOrganizacion."nombreorganizacion"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 128.504020000000000000
          Top = 26.456710000000000000
          Width = 846.614720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsOrganizacion."tituloorganizacion"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 128.504020000000000000
          Top = 64.252010000000000000
          Width = 846.614720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'PEDIDO DE INSUMOS')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 3.779530000000000000
          Top = 90.708720000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsOrganizacion."Etiqueta"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 86.929190000000000000
        Top = 219.212740000000000000
        Width = 980.410081999999900000
        Child = Reporte.Child1
        DataSet = frdsInsumoPedido
        DataSetName = 'frdsInsumoPedido'
        RowCount = 0
        object Memo10: TfrxMemoView
          Width = 978.898270000000000000
          Height = 86.929190000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779529999999994000
          Width = 971.339210000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C'#243'digo Pedido: [frdsInsumoPedido."CodigoInsumoPedido"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 18.897650000000000000
          Width = 971.339210000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C'#243'digo Men'#250': [frdsInsumoPedido."CodigoMenu"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 34.015770000000000000
          Width = 971.339210000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Desde: [frdsInsumoPedido."Desde"] Al: [frdsInsumoPedido."Hasta"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 49.133890000000010000
          Width = 971.339210000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Ubicaci'#243'n: [frdsInsumoPedido."CodigoEmbarcacion"] - [frdsInsumoP' +
              'edido."NombreEmbarcacion"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 3.779530000000000000
          Top = 71.811069999999970000
          Width = 971.339210000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Referencia: [frdsInsumoPedido."Referencia"]')
          ParentFont = False
        end
      end
      object Child1: TfrxChild
        Height = 15.118120000000000000
        Top = 328.819110000000000000
        Width = 980.410081999999900000
        Stretched = True
        object Memo11: TfrxMemoView
          Width = 978.898270000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Comentarios:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 71.811070000000000000
          Width = 903.307670000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdsInsumoPedido."Comentarios"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 11.338590000000000000
        Top = 415.748300000000000000
        Width = 980.410081999999900000
        DataSet = frdsInsumoPedidoPartida
        DataSetName = 'frdsInsumoPedidoPartida'
        RowCount = 0
        Stretched = True
        object Memo8: TfrxMemoView
          Left = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'CodigoInsumo'
          DataSet = frdsInsumoPedidoPartida
          DataSetName = 'frdsInsumoPedidoPartida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            '[frdsInsumoPedidoPartida."CodigoInsumo"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 98.267780000000000000
          Width = 234.330860000000000000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NombreInsumo'
          DataSet = frdsInsumoPedidoPartida
          DataSetName = 'frdsInsumoPedidoPartida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            '[frdsInsumoPedidoPartida."NombreInsumo"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 495.118430000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'CodigoInsumoOriginal'
          DataSet = frdsInsumoPedidoPartida
          DataSetName = 'frdsInsumoPedidoPartida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            '[frdsInsumoPedidoPartida."CodigoInsumoOriginal"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 589.606680000000000000
          Width = 234.330860000000000000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NombreInsumoOriginal'
          DataSet = frdsInsumoPedidoPartida
          DataSetName = 'frdsInsumoPedidoPartida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            '[frdsInsumoPedidoPartida."NombreInsumoOriginal"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 332.598640000000000000
          Width = 79.370130000000000000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frdsInsumoPedidoPartida
          DataSetName = 'frdsInsumoPedidoPartida'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[frdsInsumoPedidoPartida."Cantidad"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 411.968770000000000000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sNombre'
          DataSet = frdsInsumoPedidoPartida
          DataSetName = 'frdsInsumoPedidoPartida'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdsInsumoPedidoPartida."sNombre"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 823.937540000000000000
          Width = 79.370130000000000000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'CantidadOriginal'
          DataSet = frdsInsumoPedidoPartida
          DataSetName = 'frdsInsumoPedidoPartida'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[frdsInsumoPedidoPartida."CantidadOriginal"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 903.307670000000000000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sNombreOriginal'
          DataSet = frdsInsumoPedidoPartida
          DataSetName = 'frdsInsumoPedidoPartida'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdsInsumoPedidoPartida."sNombreOriginal"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 26.456710000000000000
        Top = 366.614410000000000000
        Width = 980.410081999999900000
        Condition = 'frdsInsumoPedidoPartida."IdInsumoPedido"'
        ReprintOnNewPage = True
        Stretched = True
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 11.338590000000010000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            'C'#243'digo Solicitar')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 98.267780000000000000
          Top = 11.338590000000010000
          Width = 234.330708660000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            'Insumo Solicitar')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 495.118430000000000000
          Top = 11.338590000000010000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            'C'#243'digo Original')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 589.606680000000000000
          Top = 11.338590000000010000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            'Insumo Original')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 332.598640000000000000
          Top = 11.338590000000010000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            'Cantidad')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 411.968770000000000000
          Top = 11.338590000000010000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'U.M.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 823.937540000000000000
          Top = 11.338590000000010000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            'Cantidad')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 903.307670000000000000
          Top = 11.338590000000010000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'U.M.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Top = 449.764070000000000000
        Width = 980.410081999999900000
        object Memo26: TfrxMemoView
          Left = 3.779530000000000000
          Width = 480.000310000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 495.118430000000000000
          Width = 480.000310000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frdsInsumoPedido: TfrxDBDataset
    UserName = 'frdsInsumoPedido'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdInsumoPedido=IdInsumoPedido'
      'IdMenu=IdMenu'
      'CodigoMenu=CodigoMenu'
      'Desde=Desde'
      'Hasta=Hasta'
      'IdEmbarcacion=IdEmbarcacion'
      'CodigoEmbarcacion=CodigoEmbarcacion'
      'NombreEmbarcacion=NombreEmbarcacion'
      'CodigoInsumoPedido=CodigoInsumoPedido'
      'Referencia=Referencia'
      'Comentarios=Comentarios'
      'Fecha=Fecha'
      'Emision=Emision'
      'Estado=Estado')
    DataSource = dsInsumoPedido
    BCDToCurrency = False
    Left = 472
    Top = 248
  end
  object frdsInsumoPedidoPartida: TfrxDBDataset
    UserName = 'frdsInsumoPedidoPartida'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdTipoInsumoOriginal=IdTipoInsumoOriginal'
      'CodigoTipoInsumoOriginal=CodigoTipoInsumoOriginal'
      'NombreTipoInsumoOriginal=NombreTipoInsumoOriginal'
      'IdTipoInsumoOriginal=IdTipoInsumoOriginal'
      'CodigoTipoInsumoOriginal=CodigoTipoInsumoOriginal'
      'NombreTipoInsumoOriginal=NombreTipoInsumoOriginal'
      'IdTipoInsumo=IdTipoInsumo'
      'CodigoTipoInsumo=CodigoTipoInsumo'
      'NombreTipoInsumo=NombreTipoInsumo'
      'IdInsumoPedidoPartida=IdInsumoPedidoPartida'
      'IdInsumoPedido=IdInsumoPedido'
      'IdInsumoOriginal=IdInsumoOriginal'
      'CodigoInsumoOriginal=CodigoInsumoOriginal'
      'NombreInsumoOriginal=NombreInsumoOriginal'
      'DescripcionInsumoOriginal=DescripcionInsumoOriginal'
      'CantidadOriginal=CantidadOriginal'
      'iIdUnidadOriginal=iIdUnidadOriginal'
      'sCodigoOriginal=sCodigoOriginal'
      'sNombreOriginal=sNombreOriginal'
      'IdInsumo=IdInsumo'
      'CodigoInsumo=CodigoInsumo'
      'NombreInsumo=NombreInsumo'
      'DescripcionInsumo=DescripcionInsumo'
      'Cantidad=Cantidad'
      'iIdUnidad=iIdUnidad'
      'sCodigo=sCodigo'
      'sNombre=sNombre'
      'Calorias=Calorias'
      'Grasas=Grasas'
      'HidratosCarbono=HidratosCarbono'
      'IndiceGlucemico=IndiceGlucemico'
      'Proteinas=Proteinas'
      'Estado=Estado')
    DataSource = dsInsumoPedidoPartida
    BCDToCurrency = False
    Left = 496
    Top = 296
  end
end
