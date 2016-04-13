object FrmRegistroExistencia: TFrmRegistroExistencia
  Left = 0
  Top = 0
  Caption = 'Registro de Existencias (Inventario)'
  ClientHeight = 511
  ClientWidth = 767
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
  object Splitter3: TSplitter
    Left = 0
    Top = 324
    Width = 767
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 340
    ExplicitWidth = 633
  end
  object pnlEncabezado: TPanel
    Left = 0
    Top = 0
    Width = 767
    Height = 324
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 767
      Height = 130
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      OnDblClick = Panel1DblClick
      object JvLabel3: TJvLabel
        Left = 55
        Top = 67
        Width = 42
        Height = 13
        Caption = 'Elabora:'
        Transparent = True
        OnDblClick = Panel1DblClick
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel4: TJvLabel
        Left = 51
        Top = 99
        Width = 46
        Height = 13
        Caption = 'Autoriza:'
        Transparent = True
        OnDblClick = Panel1DblClick
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object lblUbicacion: TJvLabel
        Left = 46
        Top = 35
        Width = 51
        Height = 13
        Caption = 'Ubicaci'#243'n:'
        Transparent = True
        OnDblClick = Panel1DblClick
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object lblDomicilio: TJvLabel
        Left = 479
        Top = 38
        Width = 52
        Height = 13
        Caption = 'lblDomicilio'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object IdElaboro: TDBLookupComboBox
        Left = 103
        Top = 67
        Width = 370
        Height = 21
        DataField = 'IdElaboro'
        DataSource = dsExistencia
        KeyField = 'IdUsuario'
        ListField = 'sNombre'
        ListSource = dsElaboro
        ReadOnly = True
        TabOrder = 2
      end
      object Elaboracion: TJvDBDateEdit
        Left = 479
        Top = 67
        Width = 121
        Height = 21
        DataField = 'Elaboracion'
        DataSource = dsExistencia
        ReadOnly = True
        TabOrder = 3
        OnDblClick = Panel1DblClick
      end
      object IdAutorizo: TDBLookupComboBox
        Left = 103
        Top = 98
        Width = 370
        Height = 21
        DataField = 'IdAutorizo'
        DataSource = dsExistencia
        KeyField = 'IdUsuario'
        ListField = 'sNombre'
        ListSource = dsAutorizo
        ReadOnly = True
        TabOrder = 4
      end
      object pnlCodigoExistencia: TPanel
        Left = 0
        Top = 0
        Width = 767
        Height = 32
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        OnDblClick = Panel1DblClick
        object JvLabel1: TJvLabel
          Left = 15
          Top = 6
          Width = 82
          Height = 13
          Caption = 'C'#243'digo Registro:'
          Transparent = True
          OnDblClick = Panel1DblClick
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object JvLabel5: TJvLabel
          Left = 411
          Top = 6
          Width = 35
          Height = 13
          Caption = 'Fecha:'
          Transparent = True
          OnDblClick = Panel1DblClick
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object lblEncabezado: TJvLabel
          Left = 575
          Top = 7
          Width = 119
          Height = 19
          Caption = 'lblEncabezado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -16
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object CodigoExistencia: TDBEdit
          Left = 103
          Top = 6
          Width = 273
          Height = 21
          DataField = 'CodigoExistencia'
          DataSource = dsExistencia
          ReadOnly = True
          TabOrder = 0
          OnDblClick = Panel1DblClick
        end
        object pnlBotones: TPanel
          Left = 695
          Top = 0
          Width = 72
          Height = 32
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          Visible = False
          object btnEncabezadoGrabar: TAdvGlowButton
            Left = 4
            Top = 2
            Width = 29
            Height = 24
            ImageIndex = 6
            Images = ClientModule1.ImageList1
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 0
            OnClick = btnEncabezadoGrabarClick
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
          object btnEncabezadoCancel: TAdvGlowButton
            Left = 39
            Top = 2
            Width = 29
            Height = 24
            ImageIndex = 16
            Images = ClientModule1.Lista16
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 1
            OnClick = btnEncabezadoCancelClick
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
        object Aplicacion: TJvDBDateEdit
          Left = 452
          Top = 6
          Width = 103
          Height = 21
          DataField = 'Aplicacion'
          DataSource = dsExistencia
          ReadOnly = True
          TabOrder = 2
          OnDblClick = Panel1DblClick
        end
      end
      object IdEmbarcacion: TDBLookupComboBox
        Left = 103
        Top = 35
        Width = 370
        Height = 21
        DataField = 'IdEmbarcacion'
        DataSource = dsExistencia
        KeyField = 'IdEmbarcacion'
        ListField = 'NombreEmbarcacion'
        ListSource = dsEmbarcacion
        TabOrder = 1
        OnKeyDown = IdEmbarcacionKeyDown
      end
    end
    object pnlTextos: TPanel
      Left = 0
      Top = 130
      Width = 767
      Height = 177
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Splitter2: TSplitter
        Left = 0
        Top = 73
        Width = 767
        Height = 3
        Cursor = crVSplit
        Align = alTop
        ExplicitTop = 113
        ExplicitWidth = 87
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 767
        Height = 73
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 97
          Height = 73
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          OnDblClick = Panel1DblClick
          object JvLabel2: TJvLabel
            Left = 37
            Top = 5
            Width = 60
            Height = 13
            Caption = 'Descripci'#243'n:'
            Transparent = True
            OnDblClick = Panel1DblClick
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
        end
        object Panel4: TPanel
          Left = 97
          Top = 0
          Width = 670
          Height = 73
          Align = alClient
          BevelOuter = bvNone
          Padding.Left = 6
          Padding.Right = 6
          Padding.Bottom = 6
          TabOrder = 1
          object Descripcion: TDBMemo
            Left = 6
            Top = 0
            Width = 658
            Height = 67
            Align = alClient
            DataField = 'Descripcion'
            DataSource = dsExistencia
            ReadOnly = True
            TabOrder = 0
            OnDblClick = Panel1DblClick
          end
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 76
        Width = 767
        Height = 101
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 96
          Height = 101
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          OnDblClick = Panel1DblClick
          object JvLabel6: TJvLabel
            Left = 31
            Top = 5
            Width = 66
            Height = 13
            Caption = 'Comentarios:'
            Transparent = True
            OnDblClick = Panel1DblClick
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
        end
        object Panel9: TPanel
          Left = 96
          Top = 0
          Width = 671
          Height = 101
          Align = alClient
          BevelOuter = bvNone
          Padding.Left = 6
          Padding.Right = 6
          Padding.Bottom = 6
          TabOrder = 1
          object Comentarios: TDBMemo
            Left = 6
            Top = 0
            Width = 659
            Height = 95
            Align = alClient
            DataField = 'Comentarios'
            DataSource = dsExistencia
            ReadOnly = True
            TabOrder = 0
            OnDblClick = Panel1DblClick
          end
        end
      end
    end
    object Panel10: TPanel
      Left = 0
      Top = 307
      Width = 767
      Height = 17
      Align = alBottom
      BevelOuter = bvNone
      Caption = '.........'
      TabOrder = 2
      OnClick = Panel10Click
    end
  end
  object pnlSelTipo: TPanel
    Left = 400
    Top = 66
    Width = 385
    Height = 269
    TabOrder = 1
    Visible = False
    object Panel11: TPanel
      Left = 1
      Top = 1
      Width = 383
      Height = 31
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object JvLabel7: TJvLabel
        Left = 15
        Top = 9
        Width = 229
        Height = 13
        Caption = 'Seleccione el tipo de registro que desea:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
    end
    object Panel12: TPanel
      Left = 1
      Top = 32
      Width = 383
      Height = 195
      Align = alClient
      BevelOuter = bvNone
      Padding.Left = 12
      Padding.Right = 12
      Padding.Bottom = 6
      TabOrder = 1
      object rgOpcion: TRadioGroup
        Left = 12
        Top = 0
        Width = 359
        Height = 189
        Align = alClient
        ItemIndex = 0
        Items.Strings = (
          'Abrir uno existente...'
          'Vac'#237'o (Sin Insumos)'
          'Valores en cero de nombres de Insumos con Existencia'
          'Valores de nombres de Insumos con Existencia'
          'Valores en cero de todos los nombres de Insumos en el cat'#225'logo'
          'Valores de todos los nombres de Insumos en el cat'#225'logo')
        TabOrder = 0
      end
    end
    object Panel13: TPanel
      Left = 1
      Top = 227
      Width = 383
      Height = 41
      Align = alBottom
      Padding.Top = 2
      Padding.Right = 6
      Padding.Bottom = 2
      TabOrder = 2
      object btnSelAceptar: TAdvGlowButton
        Left = 224
        Top = 3
        Width = 76
        Height = 35
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
        OnClick = btnSelAceptarClick
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
      object btnSelCancelar: TAdvGlowButton
        Left = 300
        Top = 3
        Width = 76
        Height = 35
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
        OnClick = btnSelCancelarClick
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
  object pnlEditCantidad: TPanel
    Left = 21
    Top = 158
    Width = 313
    Height = 138
    TabOrder = 2
    Visible = False
    object JvLabel9: TJvLabel
      Left = 34
      Top = 12
      Width = 39
      Height = 13
      Caption = 'Codigo:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object edtCodigoInsumo: TDBText
      Left = 75
      Top = 12
      Width = 100
      Height = 13
      AutoSize = True
      DataField = 'CodigoInsumo'
      DataSource = dsExistenciaPartida
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object JvLabel10: TJvLabel
      Left = 30
      Top = 35
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
    object edtNombreInsumo: TDBText
      Left = 75
      Top = 35
      Width = 106
      Height = 13
      AutoSize = True
      DataField = 'NombreInsumo'
      DataSource = dsExistenciaPartida
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object JvLabel11: TJvLabel
      Left = 24
      Top = 59
      Width = 49
      Height = 13
      Caption = 'Cantidad:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object Panel6: TPanel
      Left = 1
      Top = 96
      Width = 311
      Height = 41
      Align = alBottom
      Padding.Top = 4
      Padding.Right = 6
      Padding.Bottom = 4
      TabOrder = 0
      object btnEditAceptar: TAdvGlowButton
        Left = 104
        Top = 5
        Width = 100
        Height = 31
        Align = alRight
        Caption = '&Aceptar'
        Default = True
        ImageIndex = 1
        Images = ClientModule1.PngImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        OnClick = btnEditAceptarClick
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
      object btnEdtCancelar: TAdvGlowButton
        Left = 204
        Top = 5
        Width = 100
        Height = 31
        Align = alRight
        Cancel = True
        Caption = '&Cancelar'
        ImageIndex = 8
        Images = ClientModule1.PngImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        OnClick = btnEdtCancelarClick
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
    object editCantidad: TJvDBCalcEdit
      Left = 75
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 1
      DecimalPlacesAlwaysShown = False
      DataField = 'Cantidad'
      DataSource = dsExistenciaPartidaUpt
    end
  end
  object pnlPartidas: TPanel
    Left = 0
    Top = 327
    Width = 767
    Height = 184
    Align = alClient
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 3
    object gridExistenciaPartida: TcxGrid
      Left = 0
      Top = 0
      Width = 767
      Height = 143
      Align = alClient
      TabOrder = 0
      object tvExistenciaPartida: TcxGridDBTableView
        PopupMenu = pmPartidas
        OnKeyDown = tvExistenciaPartidaKeyDown
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = tvExistenciaPartidaCellDblClick
        DataController.DataSource = dsExistenciaPartida
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.NoDataToDisplayInfoText = 'No se han seleccionado Insumos'
        OptionsView.GroupByBox = False
        object NombreTipoInsumo: TcxGridDBColumn
          Caption = 'Tipo Insumo'
          DataBinding.FieldName = 'NombreTipoInsumo'
          Visible = False
          GroupIndex = 0
        end
        object NombreInsumo: TcxGridDBColumn
          Caption = 'Nombre Insumo'
          DataBinding.FieldName = 'NombreInsumo'
        end
        object Cantidad: TcxGridDBColumn
          DataBinding.FieldName = 'Cantidad'
        end
        object sNombre: TcxGridDBColumn
          Caption = 'U.M.'
          DataBinding.FieldName = 'sNombre'
        end
      end
      object gridExistenciaPartidaLevel1: TcxGridLevel
        GridView = tvExistenciaPartida
      end
    end
    object pnlBotonesPartidas: TPanel
      Left = 0
      Top = 143
      Width = 767
      Height = 41
      Align = alBottom
      Padding.Left = 20
      Padding.Top = 4
      Padding.Right = 6
      Padding.Bottom = 4
      TabOrder = 1
      object btnGrabar: TAdvGlowButton
        Left = 21
        Top = 5
        Width = 100
        Height = 31
        Align = alLeft
        Caption = '&Grabar'
        ImageIndex = 6
        Images = ClientModule1.ImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        OnClick = btnGrabarClick
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
      object btnCerrar: TAdvGlowButton
        Left = 660
        Top = 5
        Width = 100
        Height = 31
        Align = alRight
        Caption = '&Cerrar'
        ImageIndex = 4
        Images = ClientModule1.ImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
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
      end
    end
  end
  object cdExistencia: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 344
  end
  object cdElaboro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 96
    Top = 344
  end
  object cdAutorizo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 152
    Top = 344
  end
  object dsExistencia: TDataSource
    DataSet = cdExistencia
    Left = 32
    Top = 392
  end
  object dsElaboro: TDataSource
    DataSet = cdElaboro
    Left = 96
    Top = 392
  end
  object dsAutorizo: TDataSource
    DataSet = cdAutorizo
    Left = 152
    Top = 392
  end
  object cdBuscarExistencia: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 232
    Top = 344
  end
  object cdExistenciaPartidaUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 336
    Top = 296
  end
  object cdRegistroExistencia: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 456
    Top = 296
  end
  object dsEmbarcacion: TDataSource
    DataSet = cdEmbarcacion
    Left = 536
    Top = 368
  end
  object cdExistenciaPartida: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 184
    Top = 192
  end
  object dsExistenciaPartida: TDataSource
    DataSet = cdExistenciaPartida
    Left = 184
    Top = 240
  end
  object pmPartidas: TAdvPopupMenu
    Version = '2.5.3.4'
    Left = 336
    Top = 168
    object InsertarInsumo1: TMenuItem
      Caption = 'I&nsertar Insumo'
      SubMenuImages = ClientModule1.PngImageList1
      ImageIndex = 0
      OnClick = InsertarInsumo1Click
    end
    object EditarInsumo1: TMenuItem
      Caption = '&Editar Insumo'
      OnClick = EditarInsumo1Click
    end
    object EliminarInsumo1: TMenuItem
      Caption = 'E&liminar Insumo'
      OnClick = EliminarInsumo1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Imprimir1: TMenuItem
      Caption = '&Imprimir'
      OnClick = Imprimir1Click
    end
  end
  object cdInsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 176
  end
  object dsExistenciaPartidaUpt: TDataSource
    DataSet = cdExistenciaPartidaUpt
    Left = 336
    Top = 344
  end
  object reportInventario: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42305.481434548610000000
    ReportOptions.LastChange = 42305.537066215280000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 264
    Top = 408
    Datasets = <
      item
        DataSet = fdsAutorizo
        DataSetName = 'fdsAutorizo'
      end
      item
        DataSet = fdsElaboro
        DataSetName = 'fdsElaboro'
      end
      item
        DataSet = fdsEmbarcacion
        DataSetName = 'fdsEmbarcacion'
      end
      item
        DataSet = fdsExistencia
        DataSetName = 'fdsExistencia'
      end
      item
        DataSet = fdsExistenciaPartida
        DataSetName = 'fdsExistenciaPartida'
      end
      item
        DataSet = ClientModule1.fdsOrganizacion
        DataSetName = 'fdsOrganizacion'
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
      object PageHeader1: TfrxPageHeader
        Height = 136.063080000000000000
        Top = 18.897650000000000000
        Width = 740.787880000000000000
        object Picture1: TfrxPictureView
          Left = 7.559060000000000000
          Top = 7.559059999999999000
          Width = 124.724490000000000000
          Height = 98.267780000000000000
          ShowHint = False
          DataField = 'Imagen'
          DataSet = ClientModule1.fdsOrganizacion
          DataSetName = 'fdsOrganizacion'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Left = 139.842610000000000000
          Top = 22.677180000000000000
          Width = 589.606680000000000000
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
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Top = 109.606370000000000000
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
        end
        object Memo3: TfrxMemoView
          Left = 139.842610000000000000
          Top = 45.354360000000000000
          Width = 589.606680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsEmbarcacion."NombreEmbarcacion"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 139.842610000000000000
          Top = 79.370130000000000000
          Width = 589.606680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Fecha de Aplicaci'#243'n: [fdsExistencia."Aplicacion"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 551.811380000000000000
          Top = 109.606370000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 257.008040000000000000
        Width = 740.787880000000000000
        DataSet = fdsExistenciaPartida
        DataSetName = 'fdsExistenciaPartida'
        RowCount = 0
        Stretched = True
        object Memo4: TfrxMemoView
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'CodigoInsumo'
          DataSet = fdsExistenciaPartida
          DataSetName = 'fdsExistenciaPartida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[fdsExistenciaPartida."CodigoInsumo"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 94.488250000000000000
          Width = 453.543600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NombreInsumo'
          DataSet = fdsExistenciaPartida
          DataSetName = 'fdsExistenciaPartida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[fdsExistenciaPartida."NombreInsumo"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 548.031849999999900000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = fdsExistenciaPartida
          DataSetName = 'fdsExistenciaPartida'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsExistenciaPartida."Cantidad"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 642.520100000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sNombre'
          DataSet = fdsExistenciaPartida
          DataSetName = 'fdsExistenciaPartida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[fdsExistenciaPartida."sNombre"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 18.897650000000000000
        Top = 215.433210000000000000
        Width = 740.787880000000000000
        Condition = 'fdsExistenciaPartida."IdExistencia"'
        ReprintOnNewPage = True
        object Memo6: TfrxMemoView
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 94.488250000000000000
          Width = 453.543600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            'Insumo')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 548.031849999999900000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 642.520100000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 136.063080000000000000
        Top = 336.378170000000000000
        Width = 740.787880000000000000
        object Memo13: TfrxMemoView
          Left = 3.779530000000000000
          Top = 79.370130000000010000
          Width = 340.157700000000000000
          Height = 56.692950000000010000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[<fdsElaboro."sNombre">]'
            '[fdsAutorizo."sPuesto"]'
            '[fdsElaboro."sIdDepartamento"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 396.850650000000000000
          Top = 79.370130000000010000
          Width = 340.157700000000000000
          Height = 56.692950000000010000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsAutorizo."sNombre"]'
            '[fdsAutorizo."sPuesto"]'
            '[fdsAutorizo."sIdDepartamento"]')
          ParentFont = False
        end
      end
    end
  end
  object cdEmbarcacion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 536
    Top = 320
  end
  object fdsExistencia: TfrxDBDataset
    UserName = 'fdsExistencia'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdExistencia=IdExistencia'
      'IdEmbarcacion=IdEmbarcacion'
      'CodigoExistencia=CodigoExistencia'
      'Descripcion=Descripcion'
      'Elaboracion=Elaboracion'
      'Aplicacion=Aplicacion'
      'IdElaboro=IdElaboro'
      'IdAutorizo=IdAutorizo'
      'Comentarios=Comentarios')
    DataSet = cdExistencia
    BCDToCurrency = False
    Left = 272
    Top = 464
  end
  object fdsExistenciaPartida: TfrxDBDataset
    UserName = 'fdsExistenciaPartida'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdExistenciaPartida=IdExistenciaPartida'
      'IdExistencia=IdExistencia'
      'NombreTipoInsumo=NombreTipoInsumo'
      'IdInsumo=IdInsumo'
      'CodigoInsumo=CodigoInsumo'
      'NombreInsumo=NombreInsumo'
      'DescripcionInsumo=DescripcionInsumo'
      'iIdUnidad=iIdUnidad'
      'sCodigo=sCodigo'
      'sNombre=sNombre'
      'Cantidad=Cantidad'
      'Cuenta=Cuenta')
    DataSet = cdExistenciaPartida
    BCDToCurrency = False
    Left = 360
    Top = 464
  end
  object fdsEmbarcacion: TfrxDBDataset
    UserName = 'fdsEmbarcacion'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CodigoEmbarcacion=CodigoEmbarcacion'
      'NombreEmbarcacion=NombreEmbarcacion')
    DataSet = cdEmbarcacion
    BCDToCurrency = False
    Left = 168
    Top = 464
  end
  object fdsElaboro: TfrxDBDataset
    UserName = 'fdsElaboro'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sNombre=sNombre'
      'sIdDepartamento=sIdDepartamento'
      'sPuesto=sPuesto')
    DataSet = cdElaboro
    BCDToCurrency = False
    Left = 432
    Top = 456
  end
  object fdsAutorizo: TfrxDBDataset
    UserName = 'fdsAutorizo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sNombre=sNombre'
      'sIdDepartamento=sIdDepartamento'
      'sPuesto=sPuesto')
    DataSet = cdAutorizo
    BCDToCurrency = False
    Left = 496
    Top = 456
  end
  object cdAlmacen: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = cdAlmacenAfterScroll
    Left = 608
    Top = 320
  end
  object dsAlmacen: TDataSource
    DataSet = cdAlmacen
    Left = 608
    Top = 368
  end
end
