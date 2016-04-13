object FrmEstadoInventarios: TFrmEstadoInventarios
  Left = 0
  Top = 0
  Caption = 'Estado de Inventarios'
  ClientHeight = 513
  ClientWidth = 1002
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1002
    Height = 73
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 464
    Width = 1002
    Height = 49
    Align = alBottom
    Padding.Left = 6
    Padding.Top = 4
    Padding.Right = 6
    Padding.Bottom = 4
    TabOrder = 1
    object btnAutorizar: TAdvGlowButton
      Left = 510
      Top = 5
      Width = 100
      Height = 39
      Align = alRight
      Caption = '&Autorizar'
      ImageIndex = 17
      Images = ClientModule1.PngImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btnAutorizarClick
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
    object btnDesautorizar: TAdvGlowButton
      Left = 610
      Top = 5
      Width = 100
      Height = 39
      Align = alRight
      Caption = '&Desautorizar'
      ImageIndex = 18
      Images = ClientModule1.PngImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = btnDesautorizarClick
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
      Left = 895
      Top = 5
      Width = 100
      Height = 39
      Align = alRight
      Caption = '&Cerrar'
      ImageIndex = 8
      Images = ClientModule1.PngImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
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
    object Panel3: TPanel
      Left = 710
      Top = 5
      Width = 185
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 3
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 73
    Width = 1002
    Height = 370
    Align = alClient
    TabOrder = 2
    object tvExistencia: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsExistencia
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.InvertSelect = False
      OptionsView.GroupByBox = False
      object NombreEmbarcacion: TcxGridDBColumn
        Caption = 'Localizaci'#243'n'
        DataBinding.FieldName = 'NombreEmbarcacion'
        Visible = False
        GroupIndex = 0
      end
      object CodigoExistencia: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'CodigoExistencia'
        Width = 100
      end
      object Descripcion: TcxGridDBColumn
        Caption = 'Descripci'#243'n'
        DataBinding.FieldName = 'Descripcion'
        Width = 300
      end
      object Elaboracion: TcxGridDBColumn
        Caption = 'Elaboraci'#243'n'
        DataBinding.FieldName = 'Elaboracion'
        Width = 70
      end
      object Aplicacion: TcxGridDBColumn
        Caption = 'Aplicaci'#243'n'
        DataBinding.FieldName = 'Aplicacion'
        Width = 70
      end
      object Estado: TcxGridDBColumn
        DataBinding.FieldName = 'Estado'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tvExistencia
    end
  end
  object TabSet1: TTabSet
    Left = 0
    Top = 443
    Width = 1002
    Height = 21
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Tabs.Strings = (
      'Todos'
      'Autorizados'
      'Abiertos')
    TabIndex = 0
    OnChange = TabSet1Change
  end
  object cdExistencia: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = cdExistenciaAfterScroll
    Left = 144
    Top = 160
  end
  object dsExistencia: TDataSource
    DataSet = cdExistencia
    Left = 144
    Top = 112
  end
end
