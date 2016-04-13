object FrmSeleccionarCliente: TFrmSeleccionarCliente
  Left = 0
  Top = 0
  Caption = 'FrmSeleccionarCliente'
  ClientHeight = 358
  ClientWidth = 860
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
  object GridClientes: TcxGrid
    Left = 0
    Top = 49
    Width = 860
    Height = 268
    Align = alClient
    TabOrder = 0
    object tvClientes: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellDblClick = tvClientesCellDblClick
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
      object ColsNombreCorto: TcxGridDBColumn
        Caption = 'Nombre Corto'
        DataBinding.FieldName = 'sNombreCorto'
        Width = 237
      end
      object ColsRazonSocial: TcxGridDBColumn
        Caption = 'Raz'#243'n Social'
        DataBinding.FieldName = 'sRazonSocial'
        Width = 435
      end
    end
    object tvClientes2: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellDblClick = tvClientes2CellDblClick
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
      object ColTituloPais: TcxGridDBColumn
        Caption = 'Pa'#237's'
        DataBinding.FieldName = 'TituloPais'
        Visible = False
        GroupIndex = 0
      end
      object ColTituloEstado: TcxGridDBColumn
        Caption = 'Estado'
        DataBinding.FieldName = 'TituloEstado'
        Visible = False
        GroupIndex = 1
      end
      object ColTituloCiudad: TcxGridDBColumn
        Caption = 'Ciudad'
        DataBinding.FieldName = 'TituloCiudad'
        Visible = False
        GroupIndex = 2
      end
      object ColsNombreCorto2: TcxGridDBColumn
        Caption = 'Nombre Corto'
        DataBinding.FieldName = 'sNombreCorto'
      end
      object ColsRazonSocial2: TcxGridDBColumn
        Caption = 'Raz'#243'n Social'
        DataBinding.FieldName = 'sRazonSocial'
      end
    end
    object GridClientesLevel1: TcxGridLevel
      GridView = tvClientes
    end
    object GridClientesLevel2: TcxGridLevel
      GridView = tvClientes2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 317
    Width = 860
    Height = 41
    Align = alBottom
    Padding.Left = 6
    Padding.Top = 4
    Padding.Right = 6
    Padding.Bottom = 4
    TabOrder = 1
    object btnAceptar: TAdvGlowButton
      Left = 653
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
    end
    object btnCancelar: TAdvGlowButton
      Left = 753
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
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 860
    Height = 49
    Align = alTop
    TabOrder = 2
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
      Width = 225
      Height = 17
      Caption = 'Organizar por localizaci'#243'n geogr'#225'fica'
      TabOrder = 0
      OnClick = CheckBox1Click
    end
  end
end
