object FrmReportesIngredientes: TFrmReportesIngredientes
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'FrmReportesIngredientes'
  ClientHeight = 187
  ClientWidth = 537
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object JvLabel1: TJvLabel
    Left = 48
    Top = 56
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
  object JvLabel2: TJvLabel
    Left = 50
    Top = 83
    Width = 34
    Height = 13
    Caption = 'Hasta:'
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
  end
  object JvLabel3: TJvLabel
    Left = 33
    Top = 29
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
  object Panel1: TPanel
    Left = 0
    Top = 146
    Width = 537
    Height = 41
    Align = alBottom
    Padding.Left = 4
    Padding.Top = 4
    Padding.Right = 4
    Padding.Bottom = 4
    TabOrder = 0
    object btnAceptar: TAdvGlowButton
      Left = 332
      Top = 5
      Width = 100
      Height = 31
      Align = alRight
      Caption = '&Aceptar'
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
      Left = 432
      Top = 5
      Width = 100
      Height = 31
      Align = alRight
      Caption = '&Cancelar'
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
  end
  object Desde: TcxDateEdit
    Left = 112
    Top = 56
    EditValue = 0d
    Properties.AssignedValues.DisplayFormat = True
    Properties.AssignedValues.EditFormat = True
    Properties.DateButtons = [btnToday]
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 1
    Width = 121
  end
  object Hasta: TcxDateEdit
    Left = 112
    Top = 83
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 2
    Width = 121
  end
  object NombreEmbarcacion: TComboBox
    Left = 112
    Top = 29
    Width = 369
    Height = 21
    Style = csDropDownList
    TabOrder = 3
  end
  object Corte: TCheckBox
    Left = 33
    Top = 110
    Width = 200
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Incluir corte por Tipo de Receta:'
    Checked = True
    State = cbChecked
    TabOrder = 4
  end
  object frxReporte: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42245.482355057900000000
    ReportOptions.LastChange = 42249.799846377300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxReporteGetValue
    Left = 456
    Top = 72
    Datasets = <
      item
        DataSet = ClientModule1.fdsOrganizacion
        DataSetName = 'fdsOrganizacion'
      end
      item
        DataSet = ClientModule1.frxdsEmbarcacion
        DataSetName = 'frxdsEmbarcacion'
      end
      item
        DataSet = frxDSREporte
        DataSetName = 'frxDSREporte'
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
        Top = 257.008040000000000000
        Width = 740.409927000000000000
        AllowSplit = True
        DataSet = frxDSREporte
        DataSetName = 'frxDSREporte'
        RowCount = 0
        object Memo12: TfrxMemoView
          Left = 646.299630000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frxDSREporte
          DataSetName = 'frxDSREporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Width = 124.724409448819000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CodigoReceta'
          DataSet = frxDSREporte
          DataSetName = 'frxDSREporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxDSREporte."CodigoReceta"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 124.724490000000000000
          Width = 521.575140000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'NombreReceta'
          DataSet = frxDSREporte
          DataSetName = 'frxDSREporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxDSREporte."NombreReceta"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 646.299630000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'Veces'
          DataSet = frxDSREporte
          DataSetName = 'frxDSREporte'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDSREporte."Veces"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 102.047310000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Picture1: TfrxPictureView
          Width = 94.488250000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'Imagen'
          DataSet = ClientModule1.fdsOrganizacion
          DataSetName = 'fdsOrganizacion'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Left = 94.488250000000000000
          Width = 646.299630000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsOrganizacion."nombreorganizacion"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 94.488250000000000000
          Top = 18.897650000000000000
          Width = 646.299630000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsOrganizacion."tituloorganizacion"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 68.031540000000010000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[fdsOrganizacion."Etiqueta"]')
        end
        object Memo4: TfrxMemoView
          Left = 94.488250000000000000
          Top = 68.031540000000010000
          Width = 646.299630000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'REPORTE DE RECETAS UTILIZADAS DEL D'#205'A: [Desde] HASTA [Hasta]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 94.488250000000000000
          Top = 45.354360000000000000
          Width = 646.299630000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdsEmbarcacion."NombreEmbarcacion"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 15.118120000000000000
        Top = 181.417440000000000000
        Width = 740.409927000000000000
        Child = frxReporte.Child1
        Condition = 'frxDSREporte."mCorte"'
        ReprintOnNewPage = True
        object Memo13: TfrxMemoView
          Width = 740.787880000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDSREporte."lCorte"]')
          ParentFont = False
        end
      end
      object Child1: TfrxChild
        Height = 15.118120000000000000
        Top = 219.212740000000000000
        Width = 740.409927000000000000
        object Memo9: TfrxMemoView
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 124.724490000000000000
          Width = 521.575140000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Nombre')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 646.299630000000000000
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
          HAlign = haCenter
          Memo.UTF8W = (
            'Veces')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 11.338590000000000000
        Top = 294.803340000000000000
        Width = 740.409927000000000000
      end
    end
  end
  object cdReporte: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 136
    Top = 128
  end
  object frxDSREporte: TfrxDBDataset
    UserName = 'frxDSREporte'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CodigoTipoReceta=CodigoTipoReceta'
      'NombreTipoReceta=NombreTipoReceta'
      'CodigoTipoInsumo=CodigoTipoInsumo'
      'NombreTipoInsumo=NombreTipoInsumo'
      'IdReceta=IdReceta'
      'CodigoReceta=CodigoReceta'
      'NombreReceta=NombreReceta'
      'IdInsumo=IdInsumo'
      'CodigoInsumo=CodigoInsumo'
      'NombreInsumo=NombreInsumo'
      'Veces=Veces'
      'sNombre=sNombre'
      'mCorte=mCorte'
      'lCorte=lCorte')
    DataSet = cdReporte
    BCDToCurrency = False
    Left = 32
    Top = 128
  end
  object dsEmbarcacion: TDataSource
    DataSet = ClientModule1.cdEmbarcacion
    Left = 320
    Top = 88
  end
end
