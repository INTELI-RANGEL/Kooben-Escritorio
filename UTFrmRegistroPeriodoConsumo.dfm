object FrmRegistroPeriodoConsumo: TFrmRegistroPeriodoConsumo
  Left = 0
  Top = 0
  Caption = 'Periodo de Consumo'
  ClientHeight = 514
  ClientWidth = 1172
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 65
    Width = 1172
    Height = 449
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 1150
    object Splitter1: TSplitter
      Left = 201
      Top = 0
      Height = 408
      ExplicitLeft = 192
      ExplicitTop = 160
      ExplicitHeight = 100
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 201
      Height = 408
      Align = alLeft
      TabOrder = 0
      RootLevelOptions.DetailTabsPosition = dtpTop
      ExplicitLeft = -3
      ExplicitTop = -6
      object tvPartidas: TcxGridDBTableView
        PopupMenu = pmInsumos
        OnMouseDown = tvPartidasMouseDown
        Navigator.Buttons.CustomButtons = <>
        OnEditDblClick = tvPartidasEditDblClick
        OnEditKeyDown = tvPartidasEditKeyDown
        DataController.DataSource = dsReceta
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnFilteredItemsList = True
        FilterRow.InfoText = 'Has click para filtrar.'
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.MultiSelect = True
        OptionsView.GroupByBox = False
        object colCodigoReceta: TcxGridDBColumn
          Caption = 'Codigo Receta'
          DataBinding.FieldName = 'CodigoReceta'
        end
        object colNombreReceta: TcxGridDBColumn
          Caption = 'Nombre Receta'
          DataBinding.FieldName = 'NombreReceta'
        end
        object colPersonasxReceta: TcxGridDBColumn
          Caption = 'Personas Receta'
          DataBinding.FieldName = 'PersonasxReceta'
        end
        object colPersonas: TcxGridDBColumn
          Caption = 'Personas Registro'
          DataBinding.FieldName = 'Personas'
        end
        object colFactorReceta: TcxGridDBColumn
          Caption = 'Factor Receta'
          DataBinding.FieldName = 'FactorReceta'
        end
      end
      object tvRecientes: TcxGridDBTableView
        PopupMenu = pmInsumos
        OnMouseDown = tvPartidasMouseDown
        Navigator.Buttons.CustomButtons = <>
        OnEditDblClick = tvPartidasEditDblClick
        OnEditKeyDown = tvPartidasEditKeyDown
        DataController.DataSource = dsRecetasRecientes
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Has click para filtrar.'
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object colCodigoRecetaReciente: TcxGridDBColumn
          Caption = 'Codigo Receta'
          DataBinding.FieldName = 'CodigoReceta'
        end
        object colNombreRecetaReciente: TcxGridDBColumn
          Caption = 'Nombre Receta'
          DataBinding.FieldName = 'NombreReceta'
        end
        object colPersonasRecientes: TcxGridDBColumn
          Caption = 'Personas '
          DataBinding.FieldName = 'Personas'
        end
      end
      object glNivel1: TcxGridLevel
        Caption = 'Recetas'
        GridView = tvPartidas
      end
      object glNivel2: TcxGridLevel
        Caption = 'Recientes'
        GridView = tvRecientes
        OnGetGridView = glNivel2GetGridView
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 408
      Width = 1172
      Height = 41
      Align = alBottom
      TabOrder = 1
      ExplicitWidth = 1150
    end
    object sbPeriodo: TScrollBox
      Left = 204
      Top = 0
      Width = 77
      Height = 408
      Align = alLeft
      TabOrder = 2
    end
  end
  object gbFecha: TGroupBox
    Left = 0
    Top = 0
    Width = 1172
    Height = 65
    Align = alTop
    Caption = 'Consumo'
    TabOrder = 1
    ExplicitWidth = 1150
    object JvLabel2: TJvLabel
      Left = 14
      Top = 27
      Width = 35
      Height = 13
      Caption = 'Fecha:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel3: TJvLabel
      Left = 174
      Top = 27
      Width = 118
      Height = 13
      Caption = 'N'#250'mero de Comensales:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object Fecha: TDBEdit
      Left = 55
      Top = 27
      Width = 73
      Height = 21
      DataField = 'Fecha'
      DataSource = dsRegistroConsumo
      TabOrder = 0
    end
    object Personas: TDBEdit
      Left = 298
      Top = 27
      Width = 73
      Height = 21
      DataField = 'Personas'
      DataSource = dsRegistroConsumo
      TabOrder = 1
    end
  end
  object cdRegistroConsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 360
    Top = 392
  end
  object dsRegistroConsumo: TDataSource
    DataSet = cdRegistroConsumo
    Left = 352
    Top = 336
  end
  object cdBuscarRegistroConsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 264
    Top = 304
  end
  object cdRegistroConsumoInsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 680
    Top = 72
  end
  object cdRegistroConsumoUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 312
    Top = 120
  end
  object cdRegistroConsumoInsumoLista: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 672
    Top = 24
  end
  object cdPeriodoConsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 216
  end
  object cdReceta: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 768
    Top = 264
  end
  object pmInsumos: TPopupMenu
    Left = 256
    Top = 192
    object Nuevo1: TMenuItem
      Caption = '&Nueva Receta'
      OnClick = Nuevo1Click
    end
    object EditarInsumo1: TMenuItem
      Caption = 'Editar Receta'
    end
    object EliminarSeleccionado1: TMenuItem
      Caption = '&Eliminar Seleccionada'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      OnClick = Imprimir1Click
    end
    object ImprimirIngredientes1: TMenuItem
      Caption = 'Imprimir Ingredientes'
      OnClick = ImprimirIngredientes1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Imprimirtodoelda1: TMenuItem
      Caption = 'Imprimir Recetas del d'#237'a'
      OnClick = Imprimirtodoelda1Click
    end
    object ImprimirIngredientesdelDa1: TMenuItem
      Caption = 'Imprimir Ingredientes del D'#237'a'
      OnClick = ImprimirIngredientesdelDa1Click
    end
  end
  object dsRegistroConsumoInsumoLista: TDataSource
    DataSet = cdRegistroConsumoInsumoLista
    Left = 680
    Top = 128
  end
  object repRegistroConsumo: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42185.575470972200000000
    ReportOptions.LastChange = 42185.771278981480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 352
    Top = 448
    Datasets = <
      item
        DataSet = fdsExplosion
        DataSetName = 'fdsExplosion'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 260.787570000000000000
        Width = 740.409927000000000000
        DataSet = fdsExplosion
        DataSetName = 'fdsExplosion'
        RowCount = 0
        Stretched = True
        object Memo11: TfrxMemoView
          Width = 737.008350000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 34.015770000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NombreInsumo'
          DataSet = fdsExplosion
          DataSetName = 'fdsExplosion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fdsExplosion."NombreInsumo"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 215.433210000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = fdsExplosion
          DataSetName = 'fdsExplosion'
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsExplosion."Cantidad"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 294.803340000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = fdsExplosion
          DataSetName = 'fdsExplosion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsExplosion."sNombre"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 396.850650000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = fdsExplosion
          DataSetName = 'fdsExplosion'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsExplosion."PrecioCompra"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 498.897960000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Importe'
          DataSet = fdsExplosion
          DataSetName = 'fdsExplosion'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsExplosion."Importe"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 41.574830000000000000
        Top = 196.535560000000000000
        Width = 740.409927000000000000
        Condition = 'fdsExplosion."IdTipoInsumo"'
        ReprintOnNewPage = True
        object Memo10: TfrxMemoView
          Width = 737.008350000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Width = 729.449290000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fdsExplosion."NombreTipoInsumo"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 34.015770000000000000
          Top = 18.897650000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Ingrediente')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 215.433210000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cantidad')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 294.803340000000000000
          Top = 18.897650000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'U.M.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 396.850650000000000000
          Top = 18.897650000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Precio Compra')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 498.897960000000000000
          Top = 18.897650000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 37.795300000000000000
        Top = 298.582870000000000000
        Width = 740.409927000000000000
        object Memo12: TfrxMemoView
          Left = 143.622140000000000000
          Width = 238.110390000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.6n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'N'#250'mero de Ingredientes: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 498.897960000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fdsExplosion."Importe">,MasterData1)]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 404.409710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 117.165430000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo15: TfrxMemoView
          Width = 737.008350000000000000
          Height = 117.165430000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 105.826840000000000000
          Height = 105.826840000000000000
          ShowHint = False
          Picture.Data = {
            0D546478536D617274496D616765FFD8FFE000104A4649460001010100000000
            0000FFDB0043000906071410121414121416141516181818171814181C191E1A
            1C17171C171A18191E1B1E28211C1C251C1D17223D21252F2B2E2F2E171F3638
            332C37282D2E2BFFDB0043010A0A0A0E0D0E1B10101B2C2420252E2C38353737
            2C2C2C2C2C2E2F2F2C30362C2C372C2C2C2D342C2C372C2C2C2C2D2C302C2C2C
            2C2C2C2C2C2C2C2C2C2C2C2CFFC000110800B200D103012200021101031101FF
            C4001C0001000202030100000000000000000000000506040701030802FFC400
            4010000201030203060403060502070100000102030004111221050631071322
            4151613271819114425215236272A1C13382B1D1F0245344738392A2D2E116FF
            C4001A010100020301000000000000000000000000010302040506FFC4002B11
            0002020103020502070000000000000000010211030412213141051322325171
            B1146181A1C1D1F1FFDA000C03010002110311003F00DE34A52805294A014A52
            805294A014A52805295C6680E695877FC520B7DE69A38BFF0031D57ED9350779
            CEB1E3FE9A19EEC9F87B98DB41FF00D560107DEA1B4BA82CF4AA9C37BC4EE14F
            EEADEC81E85D9AE1C7F95422FF005AFBB4E5F97FF13793DC64E4A8D3127C82A0
            D58F62C6B5A7ABC51EE64A2C9ABFE376F03A24D3468F21D28ACC0124F4005485
            6BDE74E57823B569A18D237B775B9C8072FDCF88A6ADC8D436C9040F4F4BC70B
            BC13C31CA0603A2B6339C6A19C646C7E62ACC19A39636886A8CAA5295710294A
            500A52940294A500A52940294A500A52940294350F7DCD16709D325CC41BF407
            0CFF0020AB9627E9404C52AA639C5E462B6F637728E9ADD0409F3CCA4311EE14
            D74DEC1C4AE1BC5730D9478C95857BD931EBAE4C28F9E93554F3E38F564D32DD
            2CAA80B310A0752C401F7355EE23CEF69103DDB1BA7FD168A676F97EEF207D6A
            B3C7A1E196CA1EF59EFA40CA80487BE62E572AA117C2ACDE430339A4DCF66092
            CA08EC258C4E778DD42BC485822B945C80A589DD88C693B553F886FD91BFD89A
            F9276C38E710B904AD925AA1F85EE65D4F8F531228FB6B15F36FC16E5E56371C
            46471FF6A04585403D33BBBFD750A82E59E62B8BBBB4B6672B25AB4C6E8A81A1
            FC45628C03BF421B5EDF0631BED9BDF2DB71A93758D27B412484B000B44FA7BC
            6CE029C1033BE401D31BEBE4CB99B71BAE2F82782278CDC5A43221B0B582E2E9
            CCC03CC5B507817514F1025A43E4B904F519C575712E2BC4E696C84CC3864170
            42E621DE3862B9092170A232DB81B1C1C75AED8F84A89EFC2DB19E1D51DD5B84
            25573226991E0940C090E09D2BEDE2DEB32C383DE5E70F884CCD0DC4772258DA
            7C1748D24CA86D23C6C5323F2F5DFA6E728A4AFF007EBC82FB12600192703193
            D4FB9F7AFAAC27E2710CE1C391D447E339F92E48AC4FDB2CE0F7719F6D64FF00
            A46188F91C5739629CB9A32B44B4B186055864104107CC1D88AAEF66AE63825B
            573E3B59E48C29FCB196D708F71DDB2E0D753DA5ECD925CA1F2C9EED577EBA53
            533FC8B2D712FF00D2F148242702EE230BE01F1CB18D6A48FCBE10DE6C4F4C6D
            9AE868EB1CF65A76632E4BAD2B8AE6BA860294A500A52940294A500A52940294
            A500AAB768CD7AB66EF60E124405DBC25D9828F8107EA27D8D5A6A0F98B996CE
            D15D6E678D0E924C65C6B2A411B2E7273BD0159E5DE5F6BCB78A6BBBE9EED644
            56D0AC123C91923F76016C74DCD58B84F2DDA5A6F6F6F1444F9A2807EFD6A99D
            91F334370F790444851334B0ABEC7BB7C6A206E7E3D4C73FAC56C8AE16AE7916
            4716CB63542B5C716E026FF8BCC7BE9207822802943F146E5FBC183D4374CEE0
            63D6B63D5539C7852C924332DDA59C80344CEDA72F13FC48BA880181DC1C1C1A
            C34D2DB27F4123554D34E52E55F4C5DDC216391891AA4B198B2360EE24546418
            2375193B558EDB8E456D2DB5D9BA96FBBB12C5712C685C06982B2AE400AA80AE
            001B92C3D6AD10705B4042C76D3CE758935C9A80671108B592F80DA936381835
            376569300134C504606C91286C7CCB0033F25ADFC99E35CA30A2B56BCA10CD34
            F7F32B5B99D2378DB5E892060BE22483804EC7A918D8D6573170BB1BE681E5EF
            2E0C3B6A8F7470719591C0D0572012335CF11E216C6F62B62A6E6466C36B72CB
            1EC4F4F8750C74C0C0AB7A40A31B74CE3DB3E42B5679A9A76CB678A70ADCAAF9
            5F9A22A27974A476E890A0180482DA540D800B85FF00E55D89C17502279249B3
            E4ED85FF00DAA00FBE6A4A69D5002ECAA3A0D440FA0CD63FE34B1212376C7E62
            34AFD09EBF4CD55BE4FDAA8C691CDBF0F48D3401E1F4E83D86D5920051E407DA
            B03F10727548BB754886B3BF4CF53FD0575243AB2444EC7390676DB3EA01C91F
            6AC5C5BF73067C57B1BB6959119B19C2B02703A9C03D2A179F6C4CD66EC99EF2
            12B3C65412C1A260E7481B925432E3CF5636EB531651B8CEB58D77F0F779E9EF
            903CEB218676358A9284D38F627B0E117CB710452A9CAC88AC3041EA33E448AC
            CAA7F67E7B817164C496B69091E4BA253DE2041F16901B4E4F9A9AB857A38BB5
            68A45294A90294A500A52940294A500A529402B53F6F5CABF88B75BB4CF79002
            1B033A90F97AEC77CF965BD76DB15D73441D594F42083F5A03C97D9DF1DFC0F1
            0825FCA5BBB7DF1E193C24E7D8E0FD2BD17C7B99FF000F288122324ACA197F49
            D4481F0E5BCBD2BCF3DA4F2C1E1B78F1E90236F1C65738D27F2EE4EE3AE3CB50
            ADE3D8FF00308BDE1E8351324188A4D58CEC32A76FCA474FE535A1AC8455646A
            E8CD724D70F8AEE405A770B9E91A00800FE6DD89C7CAB23877018A162F8D6E7F
            3BF8980F2019893FD6A5695CB96793E9C19518D713C702B3BB2A28DC9638FEA6
            AA7C779FA1485CC3ACB90444CD1B052DD32091B81D6BA78AAADA5C5CDC4913CE
            F9478C83A8AC6C34109ABE1C32B1207EA1EB548E66E39F8F9E35C148C10A350F
            10D640666EBB8FED5B5E4638C149BB6CE9F85E865A8CAA525E8577FA131D9B2E
            6692768DE69493A48180BABE37662428EB8C6E7AD5F61E24EEE46A0DD468B71A
            F1FCD237841F61519CC1616F636A1DC34A2250B147239D04F4195180DBEE73EF
            521C91248F6892CAD969497C0D950745551E400036F9D60E50DB69595EB653D4
            4A5A8E91BA5FD7E88C94B06C8655556FD72B19180FE1F21F7ACD6B3D4A164667
            F5DF4E7E6171B575DC712553A50195FF004C7BE3F98F45FAD7D77D20D4CCAAA8
            1491B92D9033BED8C7D6AA6E6F9E8687077C102C634A2851E8062BB335A3788F
            3DF155860B813C00DCBB2C502C4090A18A8624EF8DAA6AD3B3857CCF737133DE
            310DDF2B69EECFA20F4F2DFF00A55CF4B5CCE5FC9314E5D11B6695AEECB89F13
            E1E313A7ED1847468B0B32FCD4ECFF007ACEE1DDA7D94874CDDE5A3FA5D214FE
            BD2AA969A6B98F283E3A925C47FE9F895B4C37FC429B661E85434C87CB1D186F
            9EA3006E6ADF556E64417564CD032487C32C4C18105A360E0AB0DB3B11513C6B
            B5AB0B58D0EB33B9C663870CCB91925B24018F4F5AEA68A6DE3A7D8AE5D4BA5D
            C872AA158E7249520018F5CEFF006F4AEF87A79FD4E6BCFDC7BB74BA91985A47
            1C499F0B48BA9F18F319D20E6A720E3FC62D2CD38ACF3C7342FDDB35B84DC239
            001047C27041FF0086B70C4DD34AC2E0BC4D2EE08A78FE091430CFBF9566D00A
            52940294A500A52940294A50140ED7B93FF68DA978D754F08668F7032362CB93
            EB8FF9D6B51762DCCA6D2F444EE161B9C2104672FD23C63A1C9C67A6F5E9B35E
            62ED6F951F865EF7D10C432BEB888FCACB872BED82723EB5864829C5C59299E9
            3A5417257312711B48E743B9F0B83D43A81A87F7FAD4ED79B9C5C64E2CB480E6
            9B62A05C2CFF0087EE81EF58A87CC7D4AA83F9F3D0FA9F3A8386C3532CD6F084
            91B0C6E2EF2D2E4E37117E538F5C63D2AE1C5AD0CD0CB18382E8C14FA311E13F
            4383F4AD77C5A5B9322B5B5C6A91C0436EA3560AF85F3E40039396C574B4B352
            C7EAE68CF14374F6EFDB7DF9AFA105CC7C4A4BCB88629DD54C3947931E1CEACB
            4985C81E103EB9E95B0AC6117088E892CDA4615AE73121DBE21180011FE5F2EB
            55FECEF83CB6B752B5CAF76C46942CC3C649CB04DFC5D335B06F2FA3846A95D5
            07F11C7DBD6A896469D4572CE8789CE170C18DA7182EABBB7CB6617EC9691717
            12B30C83A62CC4A307200D27511B799AAC76C9C752D7874911059EE4774807BE
            E58F9EC3FB566739F36C96D652DC5B42CD85D9E4C205CEC1C236EE01DFCAB5AF
            2D711B4D697B7B249797CFE3011599621E49FA411EFB0AB70E19B6A73EDD8E52
            A7C160ECE3804A58F10BCDE79515635C63BB40A00D8FC2481D3D3E759B1F38C6
            78AC96A6655458D5406C61A5CEA203796148182773E98AAB7317395C5E868630
            21898609425DD8673F16C13E99AAB43C0E353B4607BB78CFD8ED5B6B039B729F
            F859E66DA51370712E78B381CA7786571D56153260FB91B0FAD5479879EE49C1
            8D228923F59877CDF3083C23EE7AD568B0C609D87FCE82B8EF31D1491F2C0ACB
            1E9A1022596523E7F060A0462D22AEA65463E00CC4B1C27C23726AA42D42E7BC
            CA67467D543B6E401E801DAADB25CE8DC9441E797DEA1B8B462E645588B3C8E3
            1A634662E47C38006E7AD6C95165E37CCDC2A0B67B6E1D6AC4CA104B3499C950
            C0B28D44B6E01E98EB544E25C5E59A495BBC7D323125751008E801036E800FA5
            597973B37BD9E74592DA748B23BC62021008CF875919FA7AD5F785F61A8F3334
            B23C70023119219DBD43300001E5B64FB8A11C175EC56175E116FAFCF5B2FF00
            29738ABCD7458DA2431A4718D288A1547A05181FD0577D490294A500A5294029
            4A500A529402AA9DA5F2B8E2565244AA1A55F143938C38F7C1DB1E5E756BAE0D
            01A2BB01E2ED1BDC58CA749CF7888C0E430F0B8DCEDD06D8ADD75A63B4EE1478
            4712838AC3BA3C83BC56C9F11521B4E06C0A67CF635B86CAE5668D244F85D432
            E7D08C8E95C6F10C5B67BD772C8B3BAABDC71983F72ADDC44E8CECF1E033107C
            632461063073824E4F4C5586A179A78734D1868C6A78C93A0F491581578CFB94
            2707D715AFA6928E45BBA1932A6F3D95BDBA4D6ED12E991583820B921B0FD72C
            C74EAF0ED9CF5155EE6AED0259237BAE1ED04082558999CFEFE53803E023C283
            3EE76F2E9566E5FE4531CFDF1448E3C60452FEFD8743F10202FA6FABE756BEE6
            CC2B3E2DF4C670CDE0C291E44F407D8D6F4F511DD72575F05B9E1813AC2DBFAA
            A3CE72DE77CE659CCF3CA7382C8CDF4538C0FA0AB5F2BF28C779A7BFB9983344
            B3288645503533294D2C84929A4039F33D2B6E3F302942615247446705118FF0
            646A7FF28354EBE53C34FE2E487303334939EEF4986570135C0A497D2C3E20DB
            F53B0DAADF3A528D56D7D8A2356ACA3F31F02BBB592389DA1314CFDDC73BB14C
            7A77B818527D46D5917FC817D0C26589ED66D00B3057627006762CD83E7E9575
            BBE07FB46E19AE816B4454EE10361642CB9691F1B9209C01D063CEB8BFECE387
            CAB8EE3BA3FAA23A4FF71F7151F89AA4DF3DF82C785BF6F4350F294ED7D751C3
            3B4C226CE7F0CA0303A4E0938385F5D8D6D6B5ECD2C028D4B24A7AEA95CEA39D
            F0701463DB1568E17C322B68D6385151400361B9C7A9F3359954E5D5393F4F08
            BA1852EA435872AD9C0BA63B78C0CE77193F73555ED3385ADB5B0BB8018E5B79
            11A32AD803530076C6FE5B7A67DEB61D55BB4DE1ED71C36E1131A8057DCE3646
            0C7FA03F5C561872CB7AB64E4C6B6F08D81C16F0CD6D14BD59E3563B69C92A0F
            4C9D3F2C9AEDFC4BFF00DB39F98FF5A87ECF2E44BC36D1C7E68533F30A148DFC
            B22A66E2C83B062CE08DBC2C40FA8AEC1A076DB1623C7A757A2F41EDBF5F9ED5
            DB5D56D6EB18C28C0EBF33EA7D4D76D00A52940294A500A52940294A500A5294
            044F34F044BEB692DDF2038C6463208DC60B0201F7C5537B299658639AC2E348
            96D58600C9F0C9E20416392B9C818500002B639AA8F38597713417E9E1EE9B4D
            C69DB542FE162DFAB46CFE67C1B6326A8D462F331B44A74CB250D700E6B9AF3C
            5A556E21335C4CB2C92308D974461B4A8565041F0852C73ABAE46C06F5D7170E
            5EFCC6A3BB49A2EA8136689B20A8208CE1BE2209F4C62A6F8A709EF88612BC27
            4B2931E9C907F994EE0EE0F96F5116C6CECE4D2A5EE2E00DCF8A6937F520694C
            FF0094575619E2F16C8A77F42B6B9326C3874A9B4689128E8F3334D21F2C8190
            17EFE7D2A46D786E92CD248F31605487D3A707A80AA00FBE4D625EF1FC5BA4D1
            47AD5C672ECB1AA7BC858E460ED8009A8DBABD79910B49B1F340D1C67DB4FF00
            8D27F94806B5D47264E5F1F72784566FB9764B095BF65DCC92C875136B2AF791
            8D473B140A225193D4F979D66DAF353C0F141C4A2FC3CD21D2AE9BC0C4F4D2E4
            9C1F2C139CD5A0593C80051A00C1F10D087DC2210E7FCCC2B225E031CB13C530
            578DC60C611422E7A95D8B64939C926AC9E5C7553E7EE6709CA3D0E9A550AEF8
            7714E0E48B65FC7D929D587399917CD46E09C7B03F21565E59E64838847AE06D
            C635A1D990FA30FEFD2AB963A5B93B46D432A971DC98A5295516955E4B93F66F
            1396CB3882E834F0973BF79D5D011818EA718CF4EB5B46B57F68B6E0DA898489
            1496EEB2C6ED9EAA7751A4E7C436C0AD5763CEBC552E1AF165C976D461624C64
            1F2D1AB61EC083B576F4B296585A47373EDC72E59EA4A552B90FB45B7E241636
            222BAC1D709CF551B9427623CFD6AEB56980A52940294A500A52940294A500A5
            29402B1EFECD278DE3906A470430F635914A02BBCB772CC8D14B9EF603A1B3D4
            AF58DCFBB26927DF352F509C5736D791CA368E7D30C9FCF93DD9006FAB274F4E
            8772028A9B15C1D662F2F27E4CB62F83038ED8FE22DE588120BA10A412083D54
            E47BE2ABF0F1286186367648F50034AA9C961B300AA0B1DF3E46ADD504F2D958
            3E30892C997D08A5E46F2C85505B4F97A0AB349A878D38A564491D3CB16DAED9
            E265754591C42CC9A5821F12B2875DB1A881B7954C70EE1B1DBA808093E6EE75
            3B7BB31DCD44FF00FD04BDEC63F0E52277D1AA47F18C8241D081BA9DB723DF15
            F7C4AEEE492AA9A06E750231A7F89DBC29F2018D46486594A9F17C84D2266E2E
            563197603FD7E83A9AC2BBE22C080A1541FCD2EDD7D10788FF004A8FB678DC78
            099081822DF2D9F63336CDF71F2ACFB51292088638867AB36A6C79FC3FEF5879
            71875176225914B30324C5C0F0B6948D71FA411A867DC9AA07307255D42E6FB8
            722C7725F2F6C8FF00BA917A6A21B48D47A91903D37EBB4EB8358C35128BE113
            46BCE0FCED6F2698EE1BF0D75D1E198142186DE12C3041F239AECE61E77B3B25
            6D72ABC806D1C675331F21B6C3EB5AB3B48E0D73697245EB34D048E5A298FA9D
            CA8DC918E983E9B543DBDAC48352818C0393FF00ED76707874337A93E0AF2EB9
            E354D7267719E2D37129BBFB8F02AFF8512F451E44F5CB6E37AEBAE1581E873F
            2AE6BD060C31C51DB13899F34B2CAE461DD9921659E066496339D4A71B03BE7D
            7E55E91ECEB99C712B18A6254C98D32850400E3AEC7EFF005AF395F5D2C6B96D
            F3B01EB52FD99F3BCDC2FBC3DC19A19482543E9D18EA541D8FF4E95A5AAC6B7F
            A7A9BDA59BD9EAE87A769513CB1CC30F11804F6EDA94EC41041561D54E475152
            D5A66E0A52940294A500A52940294A500A529404473470C3736B2C6BB395CA37
            E975DD587A104039FF005AF9E097E2E21490641E8C0F55753A5D4E36C86046DB
            7A54C1AAB5927E16FA688FC1738990938C381A1D00E992175646FD73D05696BB
            16FC76BB1945F24FD56F982DCADD5B4F8C8C340481B8EF30549F55D4A074DB56
            738CD592BAEE205914AB80CA7A83B835C9C197CB9A9163568AD5ECFAD488434B
            22B2902319F12386C6B3E153B799A9EBAB0498A1917514DC024E327D4746FAD6
            4471851850001E4062BEEADD46A5E592695518A8D1F31A05180001E806057D55
            7B9879DAC6C0E9B89D5588C8450CEC7E8A0E3EB8AD6BC7FB733E25B3B718E8B2
            4C7FAE81FDCD630D365C9CA44DA3744B2AA296621540C92C7000F524F4AAD4DC
            E51CA1870F8DEFA41B0108C479FE299B1181F226A9BD9EDA711E260CBC46259A
            073A91AE5BC18070CA96EB804EDF13E31B119ADBD696890A8489151474540001
            F415BF8BC3E2BDEECC5C8A4F15E58BBE2D6CF15F7736EADBAC710EF5948DC319
            0E3073E4A3A79D6807B6365762D6F23774866FDE226C5D46E34E7C88C1F91AF5
            DD523B46ECFA3E2A11D58453A1DA40A32C07E563D48F4DF6AE8638A82A8F08AD
            ABEA683575D734810428F21648F3B2A9E83ED5D179C55101C10CDE83FDEAFF00
            C53B21BB741E243BF404E76DB7C0237EBD6A36D7B2AB953FE0F4F360FF00FD6B
            A0B352D906ABE4D178773DF34EFE0A25ADA3DC36B97217CBDFD80F4AB3F08E17
            25CC8B0DBA17723655C0C01D49276007A9AD8BC23B217600DC4E13F8625CFD32
            DFED5B1397B962DAC17104601C619DB776FE66FEDD2A3CE8634F6F2FE49F2679
            1ADDC25D8FAE55E06B616D1C0A49D3BB13E6CDBB1FBD4BD295A2DDBB3752AE05
            294A12294A500A52940294A500A529402ABDCE56EC2259E21996060EBBE32BF9
            91BF8586DED9CF95586BE5D723077076350D26A98302D2E04A88EA72AEA1811E
            8467CEB1B89F19B7B519B89E287D3BC755CFCB277AA971AE5FE28B0DCC76B72B
            0C7182D6CB1A8D6DE663663F00CE40C7A8DFCABCE3C42EE59DCBCEEF23F425CE
            4FCB7AE5AF0EF57A9F058A566F7E65EDAADA0256D63372C3F313A13E87049FB5
            6B3E62ED3AFEF58FEF4C11F4EEE1F08C7BB7526AABC3F86CB72E23823795CF45
            8D4B1FB0ADC9C8BD8A02B1CDC44B2B675770318C7501CFFA815BB8F4D8E1D110
            D9ABB97F95EF3894988227935361A5607429F577C6DFEB5BE3913B25B7B0FDE5
            CE9B99B6F89468420E7280EF9F7357FE1DC3E2B78C470469120E8A8A140CFB0A
            CAABCC6CE00C5734A5490294A501C62B9A52805294A014A52805294A014A5280
            5294A014A52805294A014A5280E08AD3BCDBD920BAE28B2463BAB5994B4A63C6
            5245EBB1E81F6DC79E6B71D718A021396B94ED387285B68550E305F00BB79F89
            BA9A9CA52805294A014A52805294A014A52805294A014A52805294A014A52805
            294A014A52805294A014A52805294A014A52805294A014A52805294A014A5280
            5294A014A52805294A03FFD9}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo16: TfrxMemoView
          Left = 120.944960000000000000
          Top = 3.779530000000001000
          Width = 604.724800000000000000
          Height = 34.015770000000010000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Century Schoolbook'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Relaci'#243'n de Ingredientes requeridos')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 359.055350000000000000
        Width = 740.409927000000000000
        object Memo18: TfrxMemoView
          Left = 498.897960000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fdsExplosion."Importe">,MasterData1)]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 404.409710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Gran total:')
          ParentFont = False
        end
      end
    end
  end
  object fdsRegistroConsumo: TfrxDBDataset
    UserName = 'fdsRegistroConsumo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdRegistroConsumo=IdRegistroConsumo'
      'IdPeriodoConsumo=IdPeriodoConsumo'
      'TituloPeriodoConsumo=TituloPeriodoConsumo'
      'DescripcionPeriodoConsumo=DescripcionPeriodoConsumo'
      'Desde=Desde'
      'Hasta=Hasta'
      'Fecha=Fecha'
      'Personas=Personas'
      'CtaGrupo=CtaGrupo')
    DataSet = cdRegistroConsumo
    BCDToCurrency = False
    Left = 344
    Top = 264
  end
  object fdsRegistroConsumoInsumoLista: TfrxDBDataset
    UserName = 'fdsRegistroConsumoInsumoLista'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Personas=Personas'
      'CodigoReceta=CodigoReceta'
      'DescripcionReceta=DescripcionReceta'
      'NombreReceta=NombreReceta'
      'PreparacionReceta=PreparacionReceta'
      'PersonasxReceta=PersonasxReceta'
      'CodigoTipoReceta=CodigoTipoReceta'
      'NombreTipoReceta=NombreTipoReceta'
      'FactorReceta=FactorReceta')
    DataSet = cdRegistroConsumoInsumoLista
    BCDToCurrency = False
    Left = 688
    Top = 184
  end
  object cdRegistroConsumoDia: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 432
    Top = 136
  end
  object fdsRegistroConsumoDia: TfrxDBDataset
    UserName = 'fdsRegistroConsumoDia'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdRegistroConsumo=IdRegistroConsumo'
      'IdPeriodoConsumo=IdPeriodoConsumo'
      'TituloPeriodoConsumo=TituloPeriodoConsumo'
      'DescripcionPeriodoConsumo=DescripcionPeriodoConsumo'
      'Desde=Desde'
      'Hasta=Hasta'
      'Fecha=Fecha'
      'Personas=Personas'
      'CtaGrupo=CtaGrupo')
    DataSet = cdRegistroConsumoDia
    BCDToCurrency = False
    Left = 432
    Top = 176
  end
  object cdRegistroConsumoDatosDia: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IdRegistroConsumo'
    MasterFields = 'IdRegistroConsumo'
    MasterSource = dsRegistroConsumoDia
    PacketRecords = 0
    Params = <>
    Left = 544
    Top = 312
  end
  object fdsRegistroCOnsumoDatosDia: TfrxDBDataset
    UserName = 'fdsRegistroCOnsumoDatosDia'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdRegistroConsumoDatos=IdRegistroConsumoDatos'
      'IdRegistroConsumo=IdRegistroConsumo'
      'IdReceta=IdReceta'
      'IdPeriodoConsumo=IdPeriodoConsumo'
      'IdTipoReceta=IdTipoReceta'
      'Fecha=Fecha'
      'Personas=Personas'
      'TituloPeriodoConsumo=TituloPeriodoConsumo'
      'DescripcionPeriodoConsumo=DescripcionPeriodoConsumo'
      'Desde=Desde'
      'Hasta=Hasta'
      'CodigoReceta=CodigoReceta'
      'DescripcionReceta=DescripcionReceta'
      'NombreReceta=NombreReceta'
      'PreparacionReceta=PreparacionReceta'
      'PersonasxReceta=PersonasxReceta'
      'CodigoTipoReceta=CodigoTipoReceta'
      'NombreTipoReceta=NombreTipoReceta'
      'FactorReceta=FactorReceta')
    DataSet = cdRegistroConsumoDatosDia
    BCDToCurrency = False
    Left = 536
    Top = 248
  end
  object dsRegistroConsumoDia: TDataSource
    DataSet = cdRegistroConsumoDia
    Left = 536
    Top = 384
  end
  object cdExplosion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 376
    Top = 56
  end
  object fdsExplosion: TfrxDBDataset
    UserName = 'fdsExplosion'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdTipoInsumo=IdTipoInsumo'
      'CodigoTipoInsumo=CodigoTipoInsumo'
      'NombreTipoInsumo=NombreTipoInsumo'
      'IdInsumo=IdInsumo'
      'CodigoInsumo=CodigoInsumo'
      'NombreInsumo=NombreInsumo'
      'DescripcionInsumo=DescripcionInsumo'
      'Calorias=Calorias'
      'Grasas=Grasas'
      'HidratosCarbono=HidratosCarbono'
      'IndiceGlucemico=IndiceGlucemico'
      'Proteinas=Proteinas'
      'Cantidad=Cantidad'
      'Importe=Importe'
      'iIdUnidad=iIdUnidad'
      'sCodigo=sCodigo'
      'sNombre=sNombre'
      'IdInsumoPrecio=IdInsumoPrecio'
      'PrecioCompra=PrecioCompra'
      'PrecioVenta=PrecioVenta'
      'Aplicacion=Aplicacion')
    DataSet = cdExplosion
    BCDToCurrency = False
    Left = 312
    Top = 57
  end
  object dsReceta: TDataSource
    DataSet = cdReceta
    Left = 768
    Top = 328
  end
  object repReceta: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42186.741985949100000000
    ReportOptions.LastChange = 42221.769096157400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 696
    Top = 264
    Datasets = <
      item
        DataSet = ClientModule1.fdsOrganizacion
        DataSetName = 'fdsOrganizacion'
      end
      item
      end
      item
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object GroupHeader1: TfrxGroupHeader
        Top = 211.653680000000000000
        Width = 740.409927000000000000
        Condition = 'fdsReceta."IdReceta"'
        ReprintOnNewPage = True
        StartNewPage = True
        Stretched = True
      end
      object PageHeader1: TfrxPageHeader
        Height = 132.401670000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Memo4: TfrxMemoView
          Width = 737.008350000000000000
          Height = 105.826840000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 139.842610000000000000
          Top = 3.779530000000019000
          Width = 593.386210000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Berlin Sans FB Demi'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fdsOrganizacion."nombreorganizacion"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 7.559060000000000000
          Top = 3.779530000000019000
          Width = 124.724490000000000000
          Height = 71.811070000000000000
          ShowHint = False
          DataField = 'Imagen'
          DataSet = ClientModule1.fdsOrganizacion
          DataSetName = 'fdsOrganizacion'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo3: TfrxMemoView
          Left = 139.842610000000000000
          Top = 30.236239999999900000
          Width = 593.386210000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fdsOrganizacion."tituloorganizacion"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 139.842610000000000000
          Top = 45.354360000000000000
          Width = 593.386210000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[fdsOrganizacion."Calle"] No. [fdsOrganizacion."Numero"], Col. [' +
              'fdsOrganizacion."Colonia"], C.P. [fdsOrganizacion."cp"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 139.842610000000000000
          Top = 60.472479999999710000
          Width = 593.386210000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[fdsOrganizacion."Municipio"] [fdsOrganizacion."localidad"], [fd' +
              'sOrganizacion."Estado"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 7.559060000000000000
          Top = 83.149659999999600000
          Width = 733.228820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RECETA DE ALIMENTOS')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 15.118120000000000000
        Top = 544.252320000000100000
        Width = 740.409927000000000000
        RowCount = 0
        object Memo31: TfrxMemoView
          Left = 7.559060000000000000
          Width = 725.669760000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Color = 15328986
          Highlight.Condition = 'INT(<Line> / 2) = (<Line> / 2)'
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 121.944960000000000000
          Top = 1.000000000000000000
          Width = 445.984540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NombreInsumo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            '[fdsRecetaPda."NombreInsumo"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 7.559060000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8W = (
            '[fdsRecetaPda."IdInsumo"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 570.709030000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsRecetaPda."Cantidad"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 657.638220000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sNombre'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8W = (
            '[fdsRecetaPda."sNombre"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 94.488249999999990000
        Top = 582.047620000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Memo21: TfrxMemoView
          Left = 642.520100000000000000
          Top = 3.779530000000136000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 506.457020000000000000
          Top = 3.779530000000136000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'N'#250'mero de Ingredientes:')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 7.559060000000000000
          Width = 725.669760000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 49.133890000000000000
          Top = 64.252010000000040000
          Width = 684.094930000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Century Schoolbook'
          Font.Style = []
          Memo.UTF8W = (
            '[fdsReceta."PreparacionReceta"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 7.559060000000000000
          Top = 45.354360000000150000
          Width = 725.669760000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Century Schoolbook'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '   MODO DE PREPARACI'#211'N')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 737.008350000000000000
        Width = 740.409927000000000000
        object Memo30: TfrxMemoView
          Left = 461.102660000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina: [(<Page#>)] de [TotalPages#]')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object MasterData1: TfrxMasterData
        Height = 210.551330000000000000
        Top = 234.330860000000000000
        Width = 740.409927000000000000
        RowCount = 0
        object Picture3: TfrxPictureView
          Left = 7.559060000000000000
          Top = 22.677179999999990000
          Width = 321.260050000000000000
          Height = 147.401670000000000000
          ShowHint = False
          DataField = 'Imagen'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo34: TfrxMemoView
          Left = 411.968770000000000000
          Top = 22.677179999999990000
          Width = 306.141930000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Century Schoolbook'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fdsReceta."NombreReceta"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 340.157700000000000000
          Top = 24.677179999999990000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'NOMBRE:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 340.157700000000000000
          Top = 68.031539999999970000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C'#211'DIGO:')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 396.850650000000000000
          Top = 68.031539999999970000
          Width = 328.819110000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fdsReceta."CodigoReceta"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 340.157700000000000000
          Top = 109.606370000000000000
          Width = 385.512060000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'RECETA CALCULADA PARA ALIMENTAR A            COMENSALES')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 561.370440000000000000
          Top = 109.606370000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsReceta."Personas"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 340.157700000000000000
          Top = 87.047310000000060000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'TIPO DE ALIMENTO:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 453.543600000000000000
          Top = 87.047310000000060000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fdsReceta."NombreTipoReceta"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 340.157700000000000000
          Top = 132.283550000000000000
          Width = 385.512060000000000000
          Height = 49.133890000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clNone
          HAlign = haBlock
          Memo.UTF8W = (
            '[fdsReceta."DescripcionReceta"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 7.559060000000000000
          Width = 721.890230000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Century Schoolbook'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '   DATOS DE LA RECETA')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 52.440630000000000000
        Top = 468.661720000000000000
        Width = 740.409927000000000000
        Condition = 'true'
        object Memo17: TfrxMemoView
          Left = 8.559060000000001000
          Top = 1.850340000000017000
          Width = 725.669760000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Century Schoolbook'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '   INGREDIENTES PARA ESTA RECETA')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 7.559055120000000000
          Top = 27.307050000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 121.944960000000000000
          Top = 27.307050000000000000
          Width = 445.984540000000000000
          Height = 15.118110236220470000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Ingrediente')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 568.708661420000000000
          Top = 27.307050000000000000
          Width = 92.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Cantidad')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 657.637795275590700000
          Top = 27.307049999999830000
          Width = 75.590599999999990000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Medida')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 10.559055120000000000
          Top = 11.542980000000000000
          Width = 734.488250000000000000
          Height = 28.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
  object fdsReceta: TfrxDBDataset
    UserName = 'fdsReceta'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdReceta=IdReceta'
      'IdTipoReceta=IdTipoReceta'
      'CodigoReceta=CodigoReceta'
      'NombreReceta=NombreReceta'
      'DescripcionReceta=DescripcionReceta'
      'PreparacionReceta=PreparacionReceta'
      'Personas=Personas'
      'Imagen=Imagen'
      'CodigoTipoReceta=CodigoTipoReceta'
      'NombreTipoReceta=NombreTipoReceta')
    DataSet = cdRecetaImagen
    BCDToCurrency = False
    Left = 704
    Top = 328
  end
  object cdRecetaImagen: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 496
    Top = 72
  end
  object cdRecetaPda: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 888
    Top = 152
  end
  object fdsRecetaPda: TfrxDBDataset
    UserName = 'fdsRecetaPda'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdRecetaPartida=IdRecetaPartida'
      'IdInsumo=IdInsumo'
      'IdReceta=IdReceta'
      'Cantidad=Cantidad'
      'iIdUnidad=iIdUnidad'
      'CodigoInsumo=CodigoInsumo'
      'NombreInsumo=NombreInsumo'
      'DescripcionInsumo=DescripcionInsumo'
      'Calorias=Calorias'
      'iIdUnidad_Insumo=iIdUnidad_Insumo'
      'IdTipoInsumo=IdTipoInsumo'
      'sCodigo=sCodigo'
      'sNombre=sNombre'
      'sCodigo_Insumo=sCodigo_Insumo'
      'sNombre_Insumo=sNombre_Insumo'
      'CodigoTipoInsumo=CodigoTipoInsumo'
      'NombreTipoInsumo=NombreTipoInsumo')
    DataSet = cdRecetaPda
    BCDToCurrency = False
    Left = 880
    Top = 96
  end
  object cdRecetasRecientes: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 896
    Top = 264
  end
  object dsRecetasRecientes: TDataSource
    DataSet = cdRecetasRecientes
    Left = 904
    Top = 312
  end
end
