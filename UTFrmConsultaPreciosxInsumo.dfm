object FrmConsultaPreciosxInsumo: TFrmConsultaPreciosxInsumo
  Left = 0
  Top = 0
  Caption = 'Consulta precios por Ingrediente'
  ClientHeight = 445
  ClientWidth = 651
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 651
    Height = 121
    Align = alTop
    Caption = 'Ingrediente'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object JvLabel1: TJvLabel
      Left = 24
      Top = 24
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
    object CodigoInsumo: TDBText
      Left = 69
      Top = 24
      Width = 68
      Height = 13
      AutoSize = True
      DataField = 'CodigoInsumo'
      DataSource = dsInsumo
    end
    object JvLabel2: TJvLabel
      Left = 20
      Top = 43
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
    object NombreInsumo: TDBText
      Left = 69
      Top = 43
      Width = 72
      Height = 13
      AutoSize = True
      DataField = 'NombreInsumo'
      DataSource = dsInsumo
    end
    object DescripcionInsumo: TDBMemo
      Left = 20
      Top = 62
      Width = 525
      Height = 51
      DataField = 'DescripcionInsumo'
      DataSource = dsInsumo
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 121
    Width = 651
    Height = 324
    Align = alClient
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 365
      Top = 1
      Height = 322
      Color = clBtnFace
      ParentColor = False
    end
    object pnlGrafica: TPanel
      Left = 368
      Top = 1
      Width = 282
      Height = 322
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object Panel2: TPanel
        Left = 0
        Top = 281
        Width = 282
        Height = 41
        Align = alBottom
        TabOrder = 0
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 61
        Width = 282
        Height = 220
        Align = alClient
        TabOrder = 1
        object tvHistorial: TcxGridDBTableView
          PopupMenu = PopupMenu1
          OnKeyDown = tvHistorialKeyDown
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = tvHistorialCellDblClick
          DataController.DataSource = dsHistorial
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.GroupByBox = False
          object ColIdInsumoPrecio: TcxGridDBColumn
            DataBinding.FieldName = 'IdInsumoPrecio'
            Visible = False
          end
          object ColAplicacion: TcxGridDBColumn
            DataBinding.FieldName = 'Aplicacion'
            SortIndex = 0
            SortOrder = soDescending
          end
          object ColPrecioCompra: TcxGridDBColumn
            Caption = 'Precio Compra'
            DataBinding.FieldName = 'PrecioCompra'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '$ ,0.00;-$ ,0.00'
            Properties.ReadOnly = True
          end
          object ColPrecioVenta: TcxGridDBColumn
            Caption = 'Precio Venta'
            DataBinding.FieldName = 'PrecioVenta'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '$ ,0.00;-$ ,0.00'
            Properties.ReadOnly = True
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = tvHistorial
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 282
        Height = 61
        Align = alTop
        TabOrder = 2
        object lblTituloMarca: TDBText
          Left = 41
          Top = 21
          Width = 80
          Height = 13
          AutoSize = True
          DataField = 'TituloMarca'
          DataSource = dsHistorial
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object JvLabel5: TJvLabel
          Left = 6
          Top = 21
          Width = 35
          Height = 13
          Caption = 'Marca:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object lblNombreInsumo: TDBText
          Left = 47
          Top = 5
          Width = 100
          Height = 13
          AutoSize = True
          DataField = 'NombreInsumo'
          DataSource = dsInsumo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object JvLabel6: TJvLabel
          Left = 6
          Top = 5
          Width = 41
          Height = 13
          Caption = 'Insumo:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object JvLabel7: TJvLabel
          Left = 6
          Top = 40
          Width = 68
          Height = 13
          Caption = 'Presentaci'#243'n:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object lblTituloPresentacion: TDBText
          Left = 75
          Top = 40
          Width = 119
          Height = 13
          AutoSize = True
          DataField = 'TituloPresentacion'
          DataSource = dsHistorial
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object pnlDatos: TPanel
      Left = 1
      Top = 1
      Width = 364
      Height = 322
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      object tlUniverso: TTreeList
        Left = 0
        Top = 67
        Width = 364
        Height = 214
        Align = alClient
        Indent = 19
        MultiSelect = True
        ReadOnly = True
        TabOrder = 0
        Visible = True
        OnChange = tlUniversoChange
        OnClick = tlUniversoClick
        Columns = <
          item
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Image = True
            Width = 150
          end
          item
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'Compra'
            Width = 50
          end
          item
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'Venta'
            Width = 50
          end
          item
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'Fecha'
            Width = 50
          end>
        ColumnLines = True
        Separator = ';'
        ItemHeight = 16
        HeaderSettings.AllowResize = True
        HeaderSettings.Color = clBtnFace
        HeaderSettings.Font.Charset = DEFAULT_CHARSET
        HeaderSettings.Font.Color = clWindowText
        HeaderSettings.Font.Height = -11
        HeaderSettings.Font.Name = 'Tahoma'
        HeaderSettings.Font.Style = []
        HeaderSettings.Height = 18
        Version = '1.0.1.6'
        ExplicitTop = 83
      end
      object pnlAplicacion: TPanel
        Left = 0
        Top = 0
        Width = 364
        Height = 51
        Align = alTop
        TabOrder = 2
        object JvLabel3: TJvLabel
          Left = 8
          Top = 25
          Width = 87
          Height = 13
          Caption = 'Ver precios al d'#237'a:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object JvLabel4: TJvLabel
          Left = 191
          Top = 25
          Width = 80
          Height = 13
          Caption = '* (al d'#237'a de hoy)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          OnClick = JvLabel4Click
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object deAplicacion: TcxDateEdit
          Left = 101
          Top = 25
          Properties.OnEditValueChanged = deAplicacionPropertiesEditValueChanged
          TabOrder = 0
          Width = 84
        end
        object cbMostrar: TCheckBox
          Left = 8
          Top = 4
          Width = 105
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Mostrar historial'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = cbMostrarClick
        end
      end
      object pnlComparar: TPanel
        Left = 0
        Top = 281
        Width = 364
        Height = 41
        Align = alBottom
        TabOrder = 3
        Visible = False
        OnResize = pnlCompararResize
        object btnComparar: TAdvGlowButton
          Left = 136
          Top = 6
          Width = 100
          Height = 27
          Caption = '  &Comparar'
          ImageIndex = 20
          Images = ClientModule1.PngImageList1
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 0
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
          Enabled = False
        end
      end
    end
  end
  object dsInsumo: TDataSource
    Left = 304
    Top = 120
  end
  object dsMarcaxInsumo: TDataSource
    Left = 440
    Top = 224
  end
  object dsPresentacionxInsumo: TDataSource
    Left = 328
    Top = 216
  end
  object frdsHistorialPrecios: TfrxDBDataset
    UserName = 'frdsHistorialPrecios'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdInsumo=IdInsumo'
      'IdMarca=IdMarcal'
      'CodigoMarca=CodigoMarca'
      'TituloMarca=TituloMarca'
      'IdPresentacion=IdPresentacion'
      'CodigoPresentacion=CodigoPresentacion'
      'TituloPresentacion=TituloPresentacion'
      'PrecioCompra=PrecioCompra'
      'PrecioVenta=PrecioVenta'
      'Aplicacion=Aplicacion')
    DataSet = memHistorial
    BCDToCurrency = False
    Left = 168
    Top = 216
  end
  object dsPrecios: TDataSource
    Left = 128
    Top = 344
  end
  object cdHistorialPrecios: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 72
    Top = 216
  end
  object memHistorial: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'IdInsumoPrecio'
        DataType = ftInteger
      end
      item
        Name = 'IdInsumo'
        DataType = ftInteger
      end
      item
        Name = 'NombreTipoInsumo'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'CodigoInsumo'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'NombreInsumo'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'iIdUnidad'
        DataType = ftInteger
      end
      item
        Name = 'IdMarca'
        DataType = ftInteger
      end
      item
        Name = 'CodigoMarca'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TituloMarca'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'IdPresentacion'
        DataType = ftInteger
      end
      item
        Name = 'CodigoPresentacion'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TituloPresentacion'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'PrecioCompra'
        DataType = ftFloat
      end
      item
        Name = 'PrecioVenta'
        DataType = ftFloat
      end
      item
        Name = 'Aplicacion'
        DataType = ftDate
      end
      item
        Name = 'iIdEmpresa'
        DataType = ftInteger
      end
      item
        Name = 'sNombreCorto'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'sRazonSocial'
        DataType = ftString
        Size = 255
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 280
    Top = 352
  end
  object dsHistorial: TDataSource
    DataSet = memHistorial
    Left = 352
    Top = 352
  end
  object cdMarcaxInsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 176
    Top = 80
  end
  object cdPresentacionxUnidad: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 72
    Top = 272
  end
  object cdPrecios: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 72
    Top = 344
  end
  object cdProveedores: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 272
    Top = 280
  end
  object PopupMenu1: TPopupMenu
    Images = ClientModule1.PngImageList1
    OnPopup = PopupMenu1Popup
    Left = 584
    Top = 224
    object Editar1: TMenuItem
      Caption = '&Editar'
      ImageIndex = 4
      OnClick = Editar1Click
    end
    object Borrar1: TMenuItem
      Caption = 'Borrar'
      ImageIndex = 5
      OnClick = Borrar1Click
    end
  end
  object cdRegistroBorrar: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 576
    Top = 64
  end
  object cdInsumoPrecio: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 384
    Top = 32
  end
end
