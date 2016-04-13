object FrmComparaPrecios: TFrmComparaPrecios
  Left = 0
  Top = 0
  Caption = 'Comparativa de Precios'
  ClientHeight = 407
  ClientWidth = 685
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object frxPreview1: TfrxPreview
    Left = 0
    Top = 41
    Width = 685
    Height = 366
    Align = alClient
    OutlineVisible = False
    OutlineWidth = 120
    ThumbnailVisible = False
    UseReportHints = True
    ExplicitTop = 0
    ExplicitHeight = 387
  end
  object pnlComparativa: TPanel
    Left = 200
    Top = 64
    Width = 465
    Height = 241
    TabOrder = 0
    Visible = False
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 463
      Height = 32
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object JvLabel1: TJvLabel
        Left = 16
        Top = 11
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
      object Nombre: TDBEdit
        Left = 65
        Top = 8
        Width = 392
        Height = 21
        DataField = 'Nombre'
        DataSource = dsComparativa
        TabOrder = 0
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 33
      Width = 463
      Height = 166
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Splitter1: TSplitter
        Left = 334
        Top = 0
        Height = 166
        ExplicitLeft = 343
        ExplicitTop = -6
      end
      object cxGrid2: TcxGrid
        Left = 337
        Top = 0
        Width = 126
        Height = 166
        Align = alClient
        TabOrder = 0
        object tvComparativaPartida: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsComparativaPartida
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object NombreTipoInsumo2: TcxGridDBColumn
            Caption = 'Tipo Insumo'
            DataBinding.FieldName = 'NombreTipoInsumo'
            Visible = False
            GroupIndex = 0
          end
          object NombreInsumo2: TcxGridDBColumn
            Caption = 'Insumo'
            DataBinding.FieldName = 'NombreInsumo'
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = tvComparativaPartida
        end
      end
      object pnlInsumos: TPanel
        Left = 0
        Top = 0
        Width = 334
        Height = 166
        Align = alLeft
        TabOrder = 1
        object cxGrid1: TcxGrid
          Left = 1
          Top = 1
          Width = 252
          Height = 164
          Align = alClient
          TabOrder = 0
          object tvInsumo: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsInsumo
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
            object NombreTipoInsumo: TcxGridDBColumn
              Caption = 'Tipo Insumo'
              DataBinding.FieldName = 'NombreTipoInsumo'
              Visible = False
              GroupIndex = 0
            end
            object NombreInsumo: TcxGridDBColumn
              Caption = 'Insumo'
              DataBinding.FieldName = 'NombreInsumo'
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = tvInsumo
          end
        end
        object Panel3: TPanel
          Left = 253
          Top = 1
          Width = 80
          Height = 164
          Align = alRight
          TabOrder = 1
          object btnAgregar: TAdvGlowButton
            Left = 6
            Top = 16
            Width = 68
            Height = 25
            Caption = '&Agregar'
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 0
            OnClick = btnAgregarClick
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
          object tbnQuitar: TAdvGlowButton
            Left = 6
            Top = 47
            Width = 68
            Height = 25
            Caption = '&Quitar'
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 1
            OnClick = tbnQuitarClick
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
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 199
      Width = 463
      Height = 41
      Align = alBottom
      Padding.Left = 12
      Padding.Top = 4
      Padding.Right = 6
      Padding.Bottom = 4
      TabOrder = 2
      object btnCancelar: TAdvGlowButton
        Left = 356
        Top = 5
        Width = 100
        Height = 31
        Align = alRight
        Cancel = True
        Caption = '&Cancelar'
        ImageIndex = 9
        Images = ClientModule1.PngImageList1
        ModalResult = 2
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
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
      object btnAceptar: TAdvGlowButton
        Left = 256
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
      object btnVisualizar: TAdvGlowButton
        Left = 13
        Top = 5
        Width = 100
        Height = 31
        Align = alLeft
        Caption = '&Visualizar'
        ImageIndex = 25
        Images = ClientModule1.PngImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 2
        OnClick = btnVisualizarClick
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
  end
  object pnlAbrir: TPanel
    Left = 8
    Top = 86
    Width = 297
    Height = 130
    TabOrder = 1
    Visible = False
    object Panel6: TPanel
      Left = 1
      Top = 88
      Width = 295
      Height = 41
      Align = alBottom
      Padding.Left = 6
      Padding.Top = 4
      Padding.Right = 6
      Padding.Bottom = 4
      TabOrder = 0
      object btnAbrirCancelar: TAdvGlowButton
        Left = 188
        Top = 5
        Width = 100
        Height = 31
        Align = alRight
        Caption = '&Cancelar'
        ImageIndex = 9
        Images = ClientModule1.PngImageList1
        ModalResult = 2
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        OnClick = btnAbrirCancelarClick
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
      object btnAbrirOk: TAdvGlowButton
        Left = 88
        Top = 5
        Width = 100
        Height = 31
        Align = alRight
        Caption = '&Aceptar'
        ImageIndex = 1
        Images = ClientModule1.PngImageList1
        ModalResult = 1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        OnClick = btnAbrirOkClick
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
    object lvComparativa: TListView
      Left = 1
      Top = 1
      Width = 295
      Height = 87
      Align = alClient
      Columns = <>
      LargeImages = ClientModule1.Lista16
      GroupView = True
      TabOrder = 1
      OnDblClick = lvComparativaDblClick
      OnSelectItem = lvComparativaSelectItem
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 685
    Height = 41
    Align = alTop
    Padding.Left = 6
    Padding.Top = 4
    Padding.Bottom = 4
    TabOrder = 3
    ExplicitLeft = 256
    ExplicitTop = 200
    ExplicitWidth = 185
    object btnNuevo: TAdvGlowButton
      Left = 7
      Top = 5
      Width = 74
      Height = 31
      Align = alLeft
      Caption = '&Nuevo'
      ImageIndex = 0
      Images = ClientModule1.PngImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btnNuevoClick
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
    object btnAbrir: TAdvGlowButton
      Left = 81
      Top = 5
      Width = 74
      Height = 31
      Align = alLeft
      Caption = '&Abrir'
      ImageIndex = 4
      Images = ClientModule1.PngImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = btnAbrirClick
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
      ExplicitLeft = 278
      ExplicitTop = 0
      ExplicitHeight = 41
    end
    object btnCerrar: TAdvGlowButton
      Left = 229
      Top = 5
      Width = 74
      Height = 31
      Align = alLeft
      Caption = '&Cerrar'
      ImageIndex = 9
      Images = ClientModule1.PngImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
      OnClick = btnCerrarClick
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
      ExplicitLeft = 161
      ExplicitTop = 4
    end
    object btnModificar: TAdvGlowButton
      Left = 155
      Top = 5
      Width = 74
      Height = 31
      Align = alLeft
      Caption = '&Modificar'
      ImageIndex = 1
      Images = ClientModule1.PngImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      OnClick = btnModificarClick
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
      ExplicitLeft = 141
      ExplicitTop = 4
    end
  end
  object cdInsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 160
  end
  object cdComparativa: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = cdComparativaAfterOpen
    AfterClose = cdComparativaAfterClose
    AfterRefresh = cdComparativaAfterRefresh
    Left = 32
    Top = 216
  end
  object cdComparativaPartida: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 280
  end
  object dsInsumo: TDataSource
    DataSet = cdInsumo
    Left = 88
    Top = 160
  end
  object dsComparativa: TDataSource
    DataSet = cdComparativa
    Left = 112
    Top = 216
  end
  object dsComparativaPartida: TDataSource
    DataSet = cdComparativaPartida
    Left = 160
    Top = 280
  end
  object cdComparativaLista: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 440
    Top = 16
  end
  object repComparativa: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = frxPreview1
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42394.546894826400000000
    ReportOptions.LastChange = 42394.666163668980000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = repComparativaGetValue
    Left = 336
    Top = 16
    Datasets = <
      item
        DataSet = ClientModule1.fdsOrganizacion
        DataSetName = 'fdsOrganizacion'
      end
      item
        DataSet = frxDSComparativa
        DataSetName = 'frxDSComparativa'
      end
      item
        DataSet = frxDSComparativaPrecios
        DataSetName = 'frxDSComparativaPrecios'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object GroupHeader1: TfrxGroupHeader
        Height = 49.133890000000000000
        Top = 219.212740000000000000
        Width = 740.409927000000000000
        Condition = 'frxDSComparativaPrecios."IdTipoInsumo"'
        object Memo14: TfrxMemoView
          Left = 3.779530000000000000
          Width = 733.228820000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Width = 733.228820000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDSComparativaPrecios."NombreTipoInsumo"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 15.118120000000000000
          Top = 15.118120000000010000
          Width = 721.890230000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDSComparativaPrecios."DescripcionTipoInsumo"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 34.015770000000010000
          Width = 355.275820000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            'Insumo')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 359.055350000000000000
          Top = 34.015770000000010000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            'Proveedor')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 453.543600000000000000
          Top = 34.015770000000010000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            'Marca')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 548.031849999999900000
          Top = 34.015770000000010000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            'Presentaci'#243'n')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 642.520100000000000000
          Top = 34.015770000000010000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Precio')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 291.023810000000000000
        Width = 740.409927000000000000
        DataSet = frxDSComparativaPrecios
        DataSetName = 'frxDSComparativaPrecios'
        RowCount = 0
        Stretched = True
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Width = 355.275820000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDSComparativaPrecios
          DataSetName = 'frxDSComparativaPrecios'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            
              '[frxDSComparativaPrecios."CodigoInsumo"] - [frxDSComparativaPrec' +
              'ios."NombreInsumo"]')
          ParentFont = False
          SuppressRepeated = True
        end
        object Memo4: TfrxMemoView
          Left = 359.055350000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sNombreCorto'
          DataSet = frxDSComparativaPrecios
          DataSetName = 'frxDSComparativaPrecios'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxDSComparativaPrecios."sNombreCorto"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 453.543600000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'TituloMarca'
          DataSet = frxDSComparativaPrecios
          DataSetName = 'frxDSComparativaPrecios'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxDSComparativaPrecios."TituloMarca"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 548.031850000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'TituloPresentacion'
          DataSet = frxDSComparativaPrecios
          DataSetName = 'frxDSComparativaPrecios'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxDSComparativaPrecios."TituloPresentacion"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 642.520100000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDSComparativaPrecios
          DataSetName = 'frxDSComparativaPrecios'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDSComparativaPrecios."PrecioCompra"]')
          ParentFont = False
        end
      end
      object PageHeader2: TfrxPageHeader
        Height = 139.842610000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo47: TfrxMemoView
          Width = 740.787489450000000000
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
          Width = 608.503939450000000000
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
          Width = 608.503939450000000000
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
          Width = 608.503939450000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'COMPARATIVA DE PRECIOS')
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
        object Memo8: TfrxMemoView
          Left = 128.504020000000000000
          Top = 90.708720000000000000
          Width = 608.504330000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDSComparativa."Nombre"] - PRECIOS AL D'#205'A: [FechaAplicacion]')
          ParentFont = False
        end
      end
    end
  end
  object frxDSComparativa: TfrxDBDataset
    UserName = 'frxDSComparativa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdComparativa=IdComparativa'
      'Nombre=Nombre')
    DataSet = cdComparativa
    BCDToCurrency = False
    Left = 416
    Top = 328
  end
  object frxDSComparativaPrecios: TfrxDBDataset
    UserName = 'frxDSComparativaPrecios'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdInsumoPrecio=IdInsumoPrecio'
      'IdInsumo=IdInsumo'
      'CodigoInsumo=CodigoInsumo'
      'NombreInsumo=NombreInsumo'
      'DescripcionInsumo=DescripcionInsumo'
      'iIdUnidad=iIdUnidad'
      'sNombre=sNombre'
      'IdTipoInsumo=IdTipoInsumo'
      'CodigoTipoInsumo=CodigoTipoInsumo'
      'NombreTipoInsumo=NombreTipoInsumo'
      'DescripcionTipoInsumo=DescripcionTipoInsumo'
      'iIdEmpresa=iIdEmpresa'
      'sNombreCorto=sNombreCorto'
      'sRazonSocial=sRazonSocial'
      'IdMarca=IdMarca'
      'CodigoMarca=CodigoMarca'
      'TituloMarca=TituloMarca'
      'IdPresentacion=IdPresentacion'
      'CodigoPresentacion=CodigoPresentacion'
      'TituloPresentacion=TituloPresentacion'
      'PrecioCompra=PrecioCompra'
      'PrecioVenta=PrecioVenta'
      'Aplicacion=Aplicacion')
    DataSet = cdComparativaPrecios
    BCDToCurrency = False
    Left = 528
    Top = 328
  end
  object cdComparativaPrecios: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 552
    Top = 16
  end
end
