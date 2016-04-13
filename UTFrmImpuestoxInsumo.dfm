object FrmImpuestoxInsumo: TFrmImpuestoxInsumo
  Left = 0
  Top = 0
  Caption = 'Impuestos por Insumo'
  ClientHeight = 388
  ClientWidth = 557
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter
    Left = 250
    Top = 0
    Height = 388
    ExplicitLeft = 288
    ExplicitTop = 160
    ExplicitHeight = 100
  end
  object GridImpuesto: TcxGrid
    Left = 0
    Top = 0
    Width = 250
    Height = 388
    Align = alLeft
    TabOrder = 0
    ExplicitLeft = -3
    object tvImpuesto: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsImpuesto
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      object ColCodigoImpuesto: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'CodigoImpuesto'
      end
      object ColTituloImpuesto: TcxGridDBColumn
        Caption = 'T'#237'tulo'
        DataBinding.FieldName = 'TituloImpuesto'
      end
      object ColCtaTipo: TcxGridDBColumn
        Caption = 'Cta. Tipos Ins.'
        DataBinding.FieldName = 'CtaTipo'
      end
      object ColCtaInsumo: TcxGridDBColumn
        Caption = 'Cta. Insumos'
        DataBinding.FieldName = 'CtaInsumo'
      end
    end
    object GridImpuestoLevel1: TcxGridLevel
      GridView = tvImpuesto
    end
  end
  object Panel1: TPanel
    Left = 253
    Top = 0
    Width = 304
    Height = 388
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = 304
    ExplicitTop = 168
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Splitter1: TSplitter
      Left = 0
      Top = 200
      Width = 304
      Height = 3
      Cursor = crVSplit
      Align = alBottom
      ExplicitLeft = 24
      ExplicitTop = 191
    end
    object GridTipo: TcxGrid
      Left = 0
      Top = 41
      Width = 304
      Height = 159
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 3
      ExplicitTop = 42
      object tvGrupoImpuesto: TcxGridDBTableView
        PopupMenu = pmGrupo
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsGrupo
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
      object GridTipoLevel1: TcxGridLevel
        GridView = tvGrupoImpuesto
      end
    end
    object pnlInsumo: TPanel
      Left = 0
      Top = 203
      Width = 304
      Height = 185
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitTop = 200
      object GridInsumo: TcxGrid
        Left = 0
        Top = 41
        Width = 304
        Height = 144
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitHeight = 185
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
          object ColCodigoInsumo: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CodigoInsumo'
          end
          object ColNombreInsumo: TcxGridDBColumn
            Caption = 'Nombre'
            DataBinding.FieldName = 'NombreInsumo'
          end
        end
        object GridInsumoLevel1: TcxGridLevel
          GridView = tvInsumo
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 304
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Padding.Left = 6
        Padding.Top = 4
        Padding.Right = 6
        Padding.Bottom = 4
        TabOrder = 1
        ExplicitLeft = 3
        ExplicitTop = 3
        object lblLeyendaInsumo: TMemo
          Left = 6
          Top = 4
          Width = 292
          Height = 33
          Align = alClient
          BorderStyle = bsNone
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Lines.Strings = (
            'lblLeyendaInsumo')
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = 3
          ExplicitTop = -6
          ExplicitWidth = 304
          ExplicitHeight = 41
        end
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 304
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Padding.Left = 6
      Padding.Top = 4
      Padding.Right = 6
      Padding.Bottom = 4
      TabOrder = 2
      ExplicitLeft = 3
      ExplicitTop = -6
      object lblLeyendaGrupo: TMemo
        Left = 6
        Top = 4
        Width = 292
        Height = 33
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Lines.Strings = (
          'lblLeyendaGrupo')
        ParentFont = False
        TabOrder = 0
        ExplicitLeft = 3
        ExplicitTop = -6
        ExplicitWidth = 304
        ExplicitHeight = 41
      end
    end
  end
  object cdImpuesto: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = cdImpuestoAfterScroll
    Left = 80
    Top = 152
  end
  object dsImpuesto: TDataSource
    DataSet = cdImpuesto
    Left = 80
    Top = 104
  end
  object cdGrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 112
  end
  object dsGrupo: TDataSource
    DataSet = cdGrupo
    Left = 280
    Top = 64
  end
  object dsInsumo: TDataSource
    DataSet = cdInsumo
    Left = 280
    Top = 240
  end
  object cdInsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 288
  end
  object pmGrupo: TPopupMenu
    Left = 440
    Top = 64
    object AgregarTipodeInsumo1: TMenuItem
      Caption = 'Modificar Tipos de Insumo'
      OnClick = AgregarTipodeInsumo1Click
    end
    object RefrescarTiposdeInsumo1: TMenuItem
      Caption = 'Refrescar Tipos de Insumo'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ReportarTiposdeInsumo1: TMenuItem
      Caption = 'Reportar Tipos de Insumo'
    end
  end
end
