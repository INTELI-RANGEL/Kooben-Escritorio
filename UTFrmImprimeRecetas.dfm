object FrmImprimeRecetas: TFrmImprimeRecetas
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Impresi'#243'n de Recetas'
  ClientHeight = 150
  ClientWidth = 261
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object imgImpresion: TImage
    Left = 200
    Top = 8
    Width = 33
    Height = 31
    Picture.Data = {
      0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
      000000200806000000737A7AF4000000017352474200AECE1CE9000000046741
      4D410000B18F0BFC6105000000097048597300000EBC00000EBC0195BC724900
      000179494441545847ED97BF4EC33010C683107FA4EE3C0E3362E00958780076
      27198A044F1032F719902A5128F0020CEC8C8825C90262001ADB39EEA2446A43
      C0AE6D1A04B5F44989A2D83F9FBFCB5D3C00F0BA54A78BD3C695008CB1735481
      0203DDA8A2AB03C0A59438CFFC230802825EFD0E6209F0E311D867A7F31F417F
      70BDB1CD86E0525FF9C043939CA0DE6A87FBBE0F132E9C2E4E1B212337B2E809
      EF0F09E075FAC1020108E8990066C8160C209700BF2F02E4095914B0D31F39CB
      84BDE34B1042B4D592CF1E20802CCB6078FBE00462F7E802C6778F9024893E40
      1CC790A629141809DB4173D0E25114E90318945D93524DEFB41FC1BF05D8C29D
      AFA336FF4404AA6E48E58DD2032FAA1DE7790E9CF319E9644718862A808C00FC
      E972DC0663DA132A00A81C1F941D115EAC54E74F1E68AA6C4A299F85D4531D9D
      0AA0D73677DDA068B764F4791E5CDD6BA901B066DB15E7F41DB7888035C08400
      BA8C400960322A0F5847E09D52D064B80238EBF4DF50F57369FBFC03095B567E
      67D0C8380000000049454E44AE426082}
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 261
    Height = 106
    Align = alClient
    TabOrder = 3
  end
  object cbTipoReceta: TCheckBox
    Left = 8
    Top = 38
    Width = 161
    Height = 17
    Caption = 'Filtrar por tipo de Receta'
    TabOrder = 0
    OnClick = cbTipoRecetaClick
  end
  object NombreTipoReceta: TComboBox
    Left = 20
    Top = 61
    Width = 220
    Height = 21
    Style = csDropDownList
    Enabled = False
    TabOrder = 1
    OnKeyDown = NombreTipoRecetaKeyDown
  end
  object Panel1: TPanel
    Left = 0
    Top = 106
    Width = 261
    Height = 44
    Align = alBottom
    Padding.Top = 4
    Padding.Right = 8
    Padding.Bottom = 4
    TabOrder = 2
    object btnAceptar: TAdvGlowButton
      Left = 52
      Top = 5
      Width = 100
      Height = 34
      Align = alRight
      Caption = '&Aceptar'
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
      Left = 152
      Top = 5
      Width = 100
      Height = 34
      Align = alRight
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
  end
  object cdTipoReceta: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 96
    Top = 54
  end
  object cdReceta: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 340
    Top = 32
  end
  object dsTipoReceta: TDataSource
    Left = 56
    Top = 54
  end
  object RepRecetas: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42186.741985949100000000
    ReportOptions.LastChange = 42314.515743090300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Top = 86
    Datasets = <
      item
        DataSet = ClientModule1.fdsOrganizacion
        DataSetName = 'fdsOrganizacion'
      end
      item
        DataSet = fdsReceta
        DataSetName = 'fdsReceta'
      end
      item
        DataSet = fdsRecetaPda
        DataSetName = 'fdsRecetaPda'
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
          Top = 60.472480000000000000
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
          Left = 139.842610000000000000
          Top = 83.149660000000000000
          Width = 600.945270000000000000
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
        object Memo14: TfrxMemoView
          Left = 139.842610000000000000
          Top = 3.779530000000001000
          Width = 593.385843858268000000
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
        object Memo15: TfrxMemoView
          Left = 139.842610000000000000
          Top = 22.677180000000000000
          Width = 593.385843858268000000
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
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 83.149660000000000000
          Width = 124.724490000000000000
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
          VAlign = vaCenter
        end
      end
      object DetailData1: TfrxDetailData
        Height = 16.118120000000000000
        Top = 532.913730000000000000
        Width = 740.409927000000000000
        DataSet = fdsRecetaPda
        DataSetName = 'fdsRecetaPda'
        RowCount = 0
        object Memo31: TfrxMemoView
          Left = 7.559060000000000000
          Width = 729.449290000000000000
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
          Width = 491.338900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NombreInsumo'
          DataSet = fdsRecetaPda
          DataSetName = 'fdsRecetaPda'
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
          DataField = 'CodigoInsumo'
          DataSet = fdsRecetaPda
          DataSetName = 'fdsRecetaPda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8W = (
            '[fdsRecetaPda."CodigoInsumo"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 612.283860000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = fdsRecetaPda
          DataSetName = 'fdsRecetaPda'
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsRecetaPda."Cantidad"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 680.315400000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sNombre'
          DataSet = fdsRecetaPda
          DataSetName = 'fdsRecetaPda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '[fdsRecetaPda."sNombre"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 94.488250000000000000
        Top = 570.709030000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Memo29: TfrxMemoView
          Left = 7.559060000000000000
          Width = 729.449290000000000000
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
        object Memo21: TfrxMemoView
          Left = 672.756340000000000000
          Top = 7.559060000000045000
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
          Left = 536.693260000000000000
          Top = 7.559060000000045000
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
          Top = 45.354360000000040000
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
        Top = 725.669760000000000000
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
        DataSet = fdsReceta
        DataSetName = 'fdsReceta'
        RowCount = 0
        object Picture3: TfrxPictureView
          Left = 7.559060000000000000
          Top = 22.677179999999990000
          Width = 321.260050000000000000
          Height = 147.401670000000000000
          ShowHint = False
          DataField = 'Imagen'
          DataSet = fdsReceta
          DataSetName = 'fdsReceta'
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
          DataSet = fdsReceta
          DataSetName = 'fdsReceta'
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
          Top = 87.047310000000130000
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
          Top = 87.047310000000130000
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
        Height = 42.574830000000000000
        Top = 468.661720000000000000
        Width = 740.409927000000000000
        Condition = 'true'
        object Memo17: TfrxMemoView
          Left = 8.559060000000000000
          Top = 1.850340000000017000
          Width = 729.449290000000000000
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
          Width = 491.338900000000000000
          Height = 15.118110240000000000
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
          Left = 614.063021420000000000
          Top = 27.307050000000000000
          Width = 66.252010000000000000
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
          Left = 680.314975280000000000
          Top = 27.307050000000000000
          Width = 56.692950000000000000
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
    DataSet = cdReceta
    BCDToCurrency = False
    Left = 272
    Top = 16
  end
  object cdRecetaPda: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IdReceta'
    MasterFields = 'IdReceta'
    MasterSource = dsReceta
    PacketRecords = 0
    Params = <>
    Left = 144
    Top = 54
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
    Left = 192
    Top = 54
  end
  object dsReceta: TDataSource
    DataSet = cdReceta
    Left = 272
    Top = 64
  end
end
