object FrmSelInsumo: TFrmSelInsumo
  Left = 0
  Top = 0
  Caption = 'Seleccionar Insumo'
  ClientHeight = 260
  ClientWidth = 878
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCabecera: TPanel
    Left = 0
    Top = 0
    Width = 878
    Height = 49
    Align = alTop
    TabOrder = 2
    ExplicitLeft = -413
    ExplicitWidth = 860
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
    object CheckBox1: TCheckBox
      Left = 8
      Top = 26
      Width = 169
      Height = 17
      Caption = 'Organizar por Tipo de Insumo'
      TabOrder = 0
      OnClick = CheckBox1Click
    end
  end
  object GridClientes: TcxGrid
    Left = 0
    Top = 49
    Width = 878
    Height = 170
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -413
    ExplicitTop = -66
    ExplicitWidth = 860
    ExplicitHeight = 268
    object tvInsumos: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellDblClick = tvInsumosCellDblClick
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
      object ColNombreTipoInsumo: TcxGridDBColumn
        Caption = 'Tipo de Insumo'
        DataBinding.FieldName = 'NombreTipoInsumo'
        Width = 237
      end
      object ColNombreInsumo: TcxGridDBColumn
        Caption = 'Insumo'
        DataBinding.FieldName = 'NombreInsumo'
        Width = 435
      end
    end
    object tvInsumos2: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellDblClick = tvInsumos2CellDblClick
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
      object ColNombreTipoInsumo2: TcxGridDBColumn
        Caption = 'Tipo Insumo'
        DataBinding.FieldName = 'NombreTipoInsumo'
        Visible = False
        GroupIndex = 0
        Width = 144
      end
      object ColNombreInsumo2: TcxGridDBColumn
        Caption = 'Insumo'
        DataBinding.FieldName = 'NombreInsumo'
      end
    end
    object GridClientesLevel1: TcxGridLevel
      GridView = tvInsumos
    end
    object GridClientesLevel2: TcxGridLevel
      GridView = tvInsumos2
    end
  end
  object pnlPies: TPanel
    Left = 0
    Top = 219
    Width = 878
    Height = 41
    Align = alBottom
    Padding.Left = 6
    Padding.Top = 4
    Padding.Right = 6
    Padding.Bottom = 4
    TabOrder = 1
    ExplicitLeft = -413
    ExplicitTop = 161
    ExplicitWidth = 860
    object btnAceptar: TAdvGlowButton
      Left = 671
      Top = 5
      Width = 100
      Height = 31
      Align = alRight
      Caption = '&Aceptar'
      Default = True
      ImageIndex = 1
      Images = ClientModule1.PngImageList1
      ModalResult = 1
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
      ExplicitLeft = 653
    end
    object btnCancelar: TAdvGlowButton
      Left = 771
      Top = 5
      Width = 100
      Height = 31
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
      ExplicitLeft = 753
    end
  end
end
