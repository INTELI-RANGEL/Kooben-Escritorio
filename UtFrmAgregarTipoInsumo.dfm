object FrmAgregarTipoInsumo: TFrmAgregarTipoInsumo
  Left = 0
  Top = 0
  Caption = 'Agregar Tipos de Insumo'
  ClientHeight = 374
  ClientWidth = 652
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 652
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = -6
    ExplicitWidth = 447
    object lblEncabezado: TJvLabel
      Left = 8
      Top = 8
      Width = 70
      Height = 13
      Caption = 'lblEncabezado'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 652
    Height = 292
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 47
    ExplicitWidth = 447
    object Splitter1: TSplitter
      Left = 250
      Top = 0
      Height = 292
      ExplicitLeft = 247
      ExplicitTop = 6
    end
    object GridTiposDisponibles: TcxGrid
      Left = 0
      Top = 0
      Width = 250
      Height = 292
      Align = alLeft
      TabOrder = 0
      ExplicitTop = 6
      ExplicitHeight = 200
      object tvTiposDisponibles: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsDisponibles
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
        object ColCodigoTipoInsumo: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CodigoTipoInsumo'
        end
        object ColNombreTipoInsumo: TcxGridDBColumn
          Caption = 'Nombre'
          DataBinding.FieldName = 'NombreTipoInsumo'
        end
      end
      object GridTiposDisponiblesLevel1: TcxGridLevel
        GridView = tvTiposDisponibles
      end
    end
    object Panel4: TPanel
      Left = 253
      Top = 0
      Width = 87
      Height = 292
      Align = alLeft
      TabOrder = 1
      ExplicitLeft = 247
      ExplicitTop = -2
      object btnAgregar: TButton
        Left = 6
        Top = 6
        Width = 75
        Height = 25
        Caption = '&Agregar >'
        TabOrder = 0
        OnClick = btnAgregarClick
      end
      object Button2: TButton
        Left = 6
        Top = 30
        Width = 75
        Height = 25
        Caption = '< &Quitar'
        TabOrder = 1
        OnClick = Button2Click
      end
      object btnTodos: TButton
        Left = 6
        Top = 54
        Width = 75
        Height = 25
        Caption = '&Todos >>'
        TabOrder = 2
        Visible = False
      end
      object btnNinguno: TButton
        Left = 6
        Top = 78
        Width = 75
        Height = 25
        Caption = '<< &Ninguno'
        TabOrder = 3
        Visible = False
      end
    end
    object cxGrid2: TcxGrid
      Left = 340
      Top = 0
      Width = 312
      Height = 292
      Align = alClient
      TabOrder = 2
      ExplicitLeft = 308
      ExplicitTop = 6
      object tvTipos: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsTipo
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
        object ColCodigoTipoInsumo1: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CodigoTipoInsumo'
        end
        object ColNombreTipoInsumo1: TcxGridDBColumn
          Caption = 'Nombre'
          DataBinding.FieldName = 'NombreTipoInsumo'
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = tvTipos
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 333
    Width = 652
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 6
    Padding.Top = 4
    Padding.Right = 6
    Padding.Bottom = 4
    TabOrder = 2
    ExplicitTop = 339
    object btnCancelar: TAdvGlowButton
      Left = 546
      Top = 4
      Width = 100
      Height = 33
      Align = alRight
      Cancel = True
      Caption = '&Cancelar'
      ImageIndex = 8
      Images = ClientModule1.PngImageList1
      ModalResult = 2
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
      ExplicitLeft = 280
      ExplicitTop = 0
      ExplicitHeight = 41
    end
    object btnAceptar: TAdvGlowButton
      Left = 446
      Top = 4
      Width = 100
      Height = 33
      Align = alRight
      Caption = '&Ok'
      Default = True
      ImageIndex = 1
      Images = ClientModule1.PngImageList1
      ModalResult = 1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
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
      ExplicitLeft = 440
      ExplicitTop = 6
    end
    object btnRestablecer: TAdvGlowButton
      Left = 272
      Top = 4
      Width = 100
      Height = 33
      Align = alRight
      Caption = '&Restablecer'
      ImageIndex = 2
      Images = ClientModule1.PngImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      OnClick = btnRestablecerClick
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
      ExplicitLeft = 144
      ExplicitTop = -20
    end
    object Panel5: TPanel
      Left = 372
      Top = 4
      Width = 74
      Height = 33
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 3
      ExplicitLeft = 200
      ExplicitTop = -2
      ExplicitHeight = 41
    end
  end
  object cdDisponibles: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 168
    Top = 120
  end
  object dsDisponibles: TDataSource
    DataSet = cdDisponibles
    Left = 168
    Top = 72
  end
  object dsTipo: TDataSource
    DataSet = cdTipo
    Left = 368
    Top = 72
  end
  object cdTipo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 368
    Top = 120
  end
end
