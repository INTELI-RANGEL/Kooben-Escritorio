object FrmSolCotizacionxProveedor: TFrmSolCotizacionxProveedor
  Left = 0
  Top = 0
  Caption = 'Proveedores en Solicitud de Cotizaci'#243'n'
  ClientHeight = 389
  ClientWidth = 695
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
  object pnlProveedores: TPanel
    Left = 0
    Top = 0
    Width = 695
    Height = 348
    Align = alClient
    TabOrder = 0
    ExplicitTop = -6
    object Splitter1: TSplitter
      Left = 363
      Top = 1
      Height = 346
      ExplicitLeft = 344
      ExplicitTop = 128
      ExplicitHeight = 100
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 250
      Height = 346
      Align = alLeft
      TabOrder = 0
      ExplicitLeft = 224
      ExplicitTop = 72
      ExplicitHeight = 200
      object tvProveedores: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = tvProveedoresCellDblClick
        DataController.DataSource = dsProveedores
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        object ColsNombreCorto: TcxGridDBColumn
          Caption = 'Nombre'
          DataBinding.FieldName = 'sNombreCorto'
        end
        object ColsRazonSocial: TcxGridDBColumn
          Caption = 'Raz'#243'n Social'
          DataBinding.FieldName = 'sRazonSocial'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = tvProveedores
      end
    end
    object Panel3: TPanel
      Left = 251
      Top = 1
      Width = 112
      Height = 346
      Align = alLeft
      TabOrder = 1
      ExplicitLeft = 248
      ExplicitTop = -4
      object btnAgregar: TAdvGlowButton
        Left = 6
        Top = 8
        Width = 100
        Height = 36
        Caption = 'A&gregar ->'
        ImageIndex = 3
        Images = ClientModule1.ImageList1
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
      object btnQuitar: TAdvGlowButton
        Left = 6
        Top = 45
        Width = 100
        Height = 36
        Caption = '<- &Quitar'
        ImageIndex = 4
        Images = ClientModule1.ImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        OnClick = btnQuitarClick
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
    object cxGrid2: TcxGrid
      Left = 366
      Top = 1
      Width = 328
      Height = 346
      Align = alClient
      TabOrder = 2
      ExplicitLeft = 335
      ExplicitTop = -4
      ExplicitWidth = 362
      object tvProveedoresxSolicitud: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = tvProveedoresxSolicitudCellDblClick
        DataController.DataSource = dsSolCotizacionxProveedor
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        object ColsNombreCorto1: TcxGridDBColumn
          Caption = 'Nombre'
          DataBinding.FieldName = 'sNombreCorto'
        end
        object ColsRazonSocial1: TcxGridDBColumn
          Caption = 'Raz'#243'n Social'
          DataBinding.FieldName = 'sRazonSocial'
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = tvProveedoresxSolicitud
      end
    end
  end
  object pnlBotones: TPanel
    Left = 0
    Top = 348
    Width = 695
    Height = 41
    Align = alBottom
    Padding.Left = 6
    Padding.Top = 4
    Padding.Right = 6
    Padding.Bottom = 4
    TabOrder = 1
    ExplicitLeft = -1
    ExplicitTop = 353
    object btnAceptar: TAdvGlowButton
      Left = 488
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
      ExplicitLeft = 296
      ExplicitTop = 0
      ExplicitHeight = 41
    end
    object btnCancelar: TAdvGlowButton
      Left = 588
      Top = 5
      Width = 100
      Height = 31
      Align = alRight
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
      ExplicitLeft = 594
    end
  end
  object dsSolCotizacionxProveedorUpt: TDataSource
    Left = 520
    Top = 160
  end
  object dsProveedores: TDataSource
    Left = 136
    Top = 168
  end
  object dsSolCotizacionxProveedor: TDataSource
    Left = 520
    Top = 104
  end
  object dsSolCotizacion: TDataSource
    Left = 296
    Top = 272
  end
end
