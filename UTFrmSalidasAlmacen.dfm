object FrmSalidasAlmacen: TFrmSalidasAlmacen
  Left = 0
  Top = 0
  Caption = 'Salidas al Almac'#233'n'
  ClientHeight = 570
  ClientWidth = 971
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlEncabezado: TPanel
    Left = 0
    Top = 0
    Width = 971
    Height = 194
    Align = alTop
    Caption = '|'
    TabOrder = 0
    OnDblClick = pnlEncabezadoDblClick
    object JvLabel2: TJvLabel
      Left = 14
      Top = 43
      Width = 58
      Height = 13
      Caption = 'Referencia:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel7: TJvLabel
      Left = 14
      Top = 68
      Width = 62
      Height = 13
      Caption = 'Localizaci'#243'n:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object Referencia: TDBEdit
      Left = 78
      Top = 43
      Width = 120
      Height = 21
      DataField = 'Referencia'
      DataSource = dsRegistroMovUpt
      TabOrder = 1
    end
    object Panel1: TPanel
      Left = 1
      Top = 122
      Width = 969
      Height = 71
      Align = alBottom
      BevelOuter = bvNone
      Padding.Right = 6
      Padding.Bottom = 4
      TabOrder = 4
      object Comentarios: TcxDBMemo
        Left = 77
        Top = 0
        Align = alClient
        DataBinding.DataField = 'Comentarios'
        DataBinding.DataSource = dsRegistroMovUpt
        TabOrder = 0
        Height = 67
        Width = 886
      end
      object pnllblComentarios: TPanel
        Left = 0
        Top = 0
        Width = 77
        Height = 67
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object JvLabel4: TJvLabel
          Left = 13
          Top = 4
          Width = 66
          Height = 13
          Caption = 'Comentarios:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 95
      Width = 969
      Height = 27
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 77
        Height = 27
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object JvLabel3: TJvLabel
          Left = 13
          Top = 0
          Width = 40
          Height = 13
          Caption = 'Recibi'#243':'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
      end
      object Panel5: TPanel
        Left = 77
        Top = 0
        Width = 892
        Height = 27
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object pnlIdAutorizo: TPanel
          Left = 502
          Top = 0
          Width = 390
          Height = 27
          Align = alRight
          BevelOuter = bvNone
          Padding.Left = 20
          Padding.Right = 6
          TabOrder = 1
          object IdAutorizo: TDBLookupComboBox
            Left = 20
            Top = 0
            Width = 364
            Height = 21
            Align = alClient
            DataField = 'IdAutorizo'
            DataSource = dsRegistroMovUpt
            KeyField = 'IdUsuario'
            ListField = 'sNombre'
            ListSource = dsAutorizo
            TabOrder = 0
          end
        end
        object IdRecibio: TDBLookupComboBox
          Left = 0
          Top = 0
          Width = 502
          Height = 21
          Align = alClient
          DataField = 'IdRecibio'
          DataSource = dsRegistroMovUpt
          KeyField = 'IdUsuario'
          ListField = 'sNombre'
          ListSource = dsRecibido
          TabOrder = 0
        end
      end
    end
    object pnlCodigoRegistroMovimiento: TPanel
      Left = 1
      Top = 1
      Width = 969
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object JvLabel1: TJvLabel
        Left = 13
        Top = 14
        Width = 39
        Height = 13
        Caption = 'C'#243'digo:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel5: TJvLabel
        Left = 534
        Top = 14
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
      object CodigoRegistroMovimiento: TDBEdit
        Left = 77
        Top = 14
        Width = 403
        Height = 21
        DataField = 'CodigoRegistroMovimiento'
        DataSource = dsRegistroMovUpt
        TabOrder = 0
      end
      object Aplicacion: TJvDBDateEdit
        Left = 578
        Top = 14
        Width = 121
        Height = 21
        DataField = 'Aplicacion'
        DataSource = dsRegistroMovUpt
        TabOrder = 1
      end
      object pnlBotonesEncabezado: TPanel
        Left = 897
        Top = 0
        Width = 72
        Height = 41
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 2
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
    end
    object IdEmbarcacion: TDBLookupComboBox
      Left = 78
      Top = 68
      Width = 403
      Height = 21
      DataField = 'IdEmbarcacion'
      DataSource = dsRegistroMovUpt
      KeyField = 'IdEmbarcacion'
      ListField = 'NombreEmbarcacion'
      ListSource = dsEmbarcacion
      TabOrder = 2
    end
  end
  object pnlDatos: TPanel
    Left = 0
    Top = 194
    Width = 971
    Height = 335
    Align = alClient
    TabOrder = 1
    object pnlAccionesPartida: TPanel
      Left = 1
      Top = 1
      Width = 100
      Height = 333
      Align = alLeft
      Padding.Left = 4
      Padding.Top = 6
      Padding.Right = 4
      TabOrder = 0
      Visible = False
      object btnImprimir2: TAdvGlowButton
        Left = 5
        Top = 7
        Width = 90
        Height = 41
        Align = alTop
        Caption = '&Imprimir'
        ImageIndex = 24
        Images = ClientModule1.PngImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        TabStop = True
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
      object AdvGlowButton2: TAdvGlowButton
        Left = 5
        Top = 48
        Width = 90
        Height = 41
        Align = alTop
        Caption = 'AdvGlowButton1'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        TabStop = True
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
      object AdvGlowButton3: TAdvGlowButton
        Left = 5
        Top = 89
        Width = 90
        Height = 41
        Align = alTop
        Caption = 'AdvGlowButton1'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 2
        TabStop = True
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
      object AdvGlowButton4: TAdvGlowButton
        Left = 5
        Top = 130
        Width = 90
        Height = 41
        Align = alTop
        Caption = 'AdvGlowButton1'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 3
        TabStop = True
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
      object AdvGlowButton5: TAdvGlowButton
        Left = 5
        Top = 171
        Width = 90
        Height = 41
        Align = alTop
        Caption = 'AdvGlowButton1'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 4
        TabStop = True
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
    object pnlPartidas: TPanel
      Left = 101
      Top = 1
      Width = 869
      Height = 333
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object gridPartida: TcxGrid
        Left = 0
        Top = 62
        Width = 869
        Height = 271
        Align = alClient
        TabOrder = 0
        object tvRegistroMovPda: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsRegistroMovimientoPartida
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object CodigoInsumo: TcxGridDBColumn
            DataBinding.FieldName = 'CodigoInsumo'
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Grouping = False
          end
          object NombreInsumo: TcxGridDBColumn
            DataBinding.FieldName = 'NombreInsumo'
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Grouping = False
          end
          object Solicitado: TcxGridDBColumn
            DataBinding.FieldName = 'Solicitado'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DecimalPlaces = 6
            Properties.DisplayFormat = ',0.000000;-,0.000000'
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Grouping = False
          end
          object UMedida: TcxGridDBColumn
            Caption = 'U. Medida'
            DataBinding.FieldName = 'UMedida'
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Grouping = False
          end
          object Registrado: TcxGridDBColumn
            Caption = 'Reg. Alm.'
            DataBinding.FieldName = 'Registrado'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DecimalPlaces = 6
            Properties.DisplayFormat = ',0.000000;-,0.000000'
          end
          object sNombre: TcxGridDBColumn
            DataBinding.FieldName = 'sNombre'
            IsCaptionAssigned = True
          end
        end
        object gridPartidaLevel1: TcxGridLevel
          GridView = tvRegistroMovPda
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 869
        Height = 62
        Align = alTop
        Padding.Left = 6
        Padding.Bottom = 2
        TabOrder = 1
        object edtNombreInsumo: TDBText
          Left = 7
          Top = 46
          Width = 861
          Height = 13
          Align = alBottom
          AutoSize = True
          DataField = 'NombreInsumo'
          DataSource = dsInsumoBuscar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 106
        end
        object Panel9: TPanel
          Left = 7
          Top = 1
          Width = 861
          Height = 45
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Panel10: TPanel
            Left = 0
            Top = 0
            Width = 322
            Height = 45
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object JvLabel6: TJvLabel
              Left = 7
              Top = 5
              Width = 77
              Height = 13
              Caption = 'Codigo Insumo:'
              Transparent = True
              HotTrackFont.Charset = DEFAULT_CHARSET
              HotTrackFont.Color = clWindowText
              HotTrackFont.Height = -11
              HotTrackFont.Name = 'Tahoma'
              HotTrackFont.Style = []
            end
            object JvLabel8: TJvLabel
              Left = 181
              Top = 5
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
            object edtCodigoInsumo: TEdit
              Left = 0
              Top = 22
              Width = 169
              Height = 21
              TabOrder = 0
              OnChange = edtCodigoInsumoChange
              OnKeyDown = edtCodigoInsumoKeyDown
            end
            object edtSolicitado: TJvCalcEdit
              Left = 172
              Top = 22
              Width = 121
              Height = 21
              TabOrder = 1
              DecimalPlacesAlwaysShown = False
              OnChange = edtSolicitadoChange
              OnKeyDown = edtSolicitadoKeyDown
            end
            object btnOkInsumo: TAdvGlowButton
              Left = 296
              Top = 22
              Width = 20
              Height = 21
              ImageIndex = 1
              Images = ClientModule1.PngImageList1
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              TabOrder = 2
              TabStop = True
              OnClick = btnOkInsumoClick
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
              Enabled = False
            end
          end
          object Panel11: TPanel
            Left = 322
            Top = 0
            Width = 539
            Height = 45
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object edtsNombre: TDBText
              Left = 5
              Top = 25
              Width = 54
              Height = 17
              DataField = 'sCodigo'
              DataSource = dsInsumoBuscar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object pnlPresentacion: TPanel
              Left = 74
              Top = 27
              Width = 305
              Height = 24
              BevelOuter = bvNone
              TabOrder = 0
              Visible = False
              object lblPresentacion: TJvLabel
                Left = 248
                Top = 4
                Width = 89
                Height = 13
                Caption = 'lblPresentacion'
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
              object IdPresentacion: TDBLookupComboBox
                Left = 0
                Top = 0
                Width = 242
                Height = 21
                Align = alLeft
                KeyField = 'IdPresentacion'
                ListField = 'TituloPresentacion'
                ListSource = dsPresentacion
                TabOrder = 0
              end
            end
            object rgTipoMedida: TRadioGroup
              Left = 0
              Top = -11
              Width = 432
              Height = 31
              Columns = 3
              Ctl3D = True
              ItemIndex = 0
              Items.Strings = (
                'Unidad de Medida'
                'Presentaci'#243'n'
                'Conversi'#243'n')
              ParentCtl3D = False
              TabOrder = 1
              OnClick = rgTipoMedidaClick
            end
            object pnlConversion: TPanel
              Left = 251
              Top = 14
              Width = 305
              Height = 24
              BevelOuter = bvNone
              TabOrder = 2
              Visible = False
              object lblConversion: TJvLabel
                Left = 248
                Top = 4
                Width = 78
                Height = 13
                Caption = 'lblConversion'
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
              object IdConversion: TDBLookupComboBox
                Left = 0
                Top = 0
                Width = 242
                Height = 21
                Align = alLeft
                KeyField = 'IdConversion'
                ListField = 'sNombre_S'
                ListSource = dsConversion
                TabOrder = 0
              end
            end
          end
        end
      end
    end
  end
  object pnlBotones: TPanel
    Left = 0
    Top = 529
    Width = 971
    Height = 41
    Align = alBottom
    Padding.Left = 14
    Padding.Top = 4
    Padding.Right = 6
    Padding.Bottom = 4
    TabOrder = 2
    object btnGrabar: TAdvGlowButton
      Left = 748
      Top = 5
      Width = 100
      Height = 31
      Align = alRight
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
      Left = 864
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
    object Panel7: TPanel
      Left = 563
      Top = 5
      Width = 185
      Height = 31
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      object btnImprimir: TAdvGlowButton
        Left = 0
        Top = 0
        Width = 100
        Height = 31
        Align = alLeft
        Caption = '&Imprimir'
        ImageIndex = 24
        Images = ClientModule1.PngImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        OnClick = btnImprimirClick
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
    object Panel8: TPanel
      Left = 848
      Top = 5
      Width = 16
      Height = 31
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 3
    end
  end
  object pnlSelInsumo: TPanel
    Left = 156
    Top = 240
    Width = 672
    Height = 297
    TabOrder = 3
    Visible = False
    object Panel6: TPanel
      Left = 1
      Top = 255
      Width = 670
      Height = 41
      Align = alBottom
      Padding.Left = 6
      Padding.Top = 4
      Padding.Right = 6
      Padding.Bottom = 4
      TabOrder = 0
      object btnSelOk: TAdvGlowButton
        Left = 463
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
        OnClick = btnSelOkClick
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
        Left = 563
        Top = 5
        Width = 100
        Height = 31
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
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 670
      Height = 254
      Align = alClient
      TabOrder = 1
      object tvInsumoBuscar: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = tvInsumoBuscarCellDblClick
        DataController.DataSource = dsInsumoBuscar
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsView.GroupByBox = False
        object selCodigoInsumo: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CodigoInsumo'
          Width = 80
        end
        object selNombreInsumo: TcxGridDBColumn
          Caption = 'Nombre'
          DataBinding.FieldName = 'NombreInsumo'
          Width = 500
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = tvInsumoBuscar
      end
    end
  end
  object cdRegistroMovUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterEdit = cdRegistroMovUptAfterEdit
    AfterApplyUpdates = cdRegistroMovUptAfterApplyUpdates
    Left = 176
    Top = 32
  end
  object cdRegistroMovPdaUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = cdRegistroMovPdaUptAfterPost
    AfterApplyUpdates = cdRegistroMovPdaUptAfterApplyUpdates
    Left = 288
    Top = 24
  end
  object dsRegistroMovUpt: TDataSource
    DataSet = cdRegistroMovUpt
    Left = 176
    Top = 256
  end
  object dsRegistroMovPdaUpt: TDataSource
    DataSet = cdRegistroMovPdaUpt
    Left = 288
    Top = 256
  end
  object cdRecibio: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 56
  end
  object cdAutorizo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 400
    Top = 56
  end
  object dsRecibido: TDataSource
    DataSet = cdRecibio
    Left = 328
    Top = 112
  end
  object dsAutorizo: TDataSource
    DataSet = cdAutorizo
    Left = 400
    Top = 112
  end
  object cdRegistroMovimientoPartida: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 200
    Top = 112
  end
  object dsRegistroMovimientoPartida: TDataSource
    DataSet = cdRegistroMovimientoPartida
    Left = 416
    Top = 256
  end
  object cdInsumoBuscar: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = cdInsumoBuscarAfterOpen
    AfterClose = cdInsumoBuscarAfterClose
    Left = 544
    Top = 264
  end
  object dsInsumoBuscar: TDataSource
    DataSet = cdInsumoBuscar
    Left = 648
    Top = 112
  end
  object frxSalidas: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42306.717406631900000000
    ReportOptions.LastChange = 42390.467459918980000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 824
    Top = 40
    Datasets = <
      item
        DataSet = ClientModule1.fdsOrganizacion
        DataSetName = 'fdsOrganizacion'
      end
      item
        DataSet = fdsRegistroMovimiento
        DataSetName = 'fdsRegistroMovimiento'
      end
      item
        DataSet = fdsRegistroMovimientoPartida
        DataSetName = 'fdsRegistroMovimientoPartida'
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
        Height = 71.811070000000000000
        Top = 196.535560000000000000
        Width = 740.409927000000000000
        Condition = 'fdsRegistroMovimiento."IdRegistroMovimiento"'
        object Memo3: TfrxMemoView
          Width = 737.008350000000000000
          Height = 71.811070000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 120.944960000000000000
          Top = 3.779530000000022000
          Width = 604.724409448818900000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CodigoRegistroMovimiento'
          DataSet = fdsRegistroMovimiento
          DataSetName = 'fdsRegistroMovimiento'
          Memo.UTF8W = (
            '[fdsRegistroMovimiento."CodigoRegistroMovimiento"]')
        end
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000022000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'C'#243'digo de Salida:')
        end
        object Memo4: TfrxMemoView
          Left = 120.944960000000000000
          Top = 22.677179999999990000
          Width = 604.724409448818900000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fdsRegistroMovimiento
          DataSetName = 'fdsRegistroMovimiento'
          Memo.UTF8W = (
            '[fdsRegistroMovimiento."Referencia"]')
        end
        object Memo5: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.677179999999990000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Referencia:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 120.944960000000000000
          Top = 41.574829999999990000
          Width = 604.724409448818900000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fdsRegistroMovimiento
          DataSetName = 'fdsRegistroMovimiento'
          Memo.UTF8W = (
            '[fdsRegistroMovimiento."Aplicacion"]')
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 41.574829999999990000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fecha:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 11.338590000000000000
        Top = 291.023810000000000000
        Width = 740.409927000000000000
        DataSet = fdsRegistroMovimiento
        DataSetName = 'fdsRegistroMovimiento'
        RowCount = 0
      end
      object PageHeader1: TfrxPageHeader
        Height = 117.165430000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 86.929190000000000000
          ShowHint = False
          DataField = 'Imagen'
          DataSet = ClientModule1.fdsOrganizacion
          DataSetName = 'fdsOrganizacion'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo13: TfrxMemoView
          Left = 3.779530000000000000
          Top = 86.929190000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[fdsOrganizacion."Etiqueta"]')
        end
        object Memo14: TfrxMemoView
          Left = 105.826840000000000000
          Top = 7.559059999999999000
          Width = 627.401980000000000000
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
          Left = 105.826840000000000000
          Top = 26.456710000000000000
          Width = 627.401980000000000000
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
        object Memo16: TfrxMemoView
          Left = 105.826840000000000000
          Top = 60.472479999999990000
          Width = 627.401980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'SALIDAS AL ALMACEN')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 105.826840000000000000
          Top = 79.370130000000000000
          Width = 627.401980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Localizaci'#243'n: [fdsRegistroMovimiento."NombreEmbarcacion"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 457.323130000000000000
        Width = 740.409927000000000000
        object Memo17: TfrxMemoView
          Left = 510.236550000000000000
          Top = 11.338590000000120000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Hoja [Page#] de [TotalPages#]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 15.118120000000000000
        Top = 381.732530000000000000
        Width = 740.409927000000000000
        DataSet = fdsRegistroMovimientoPartida
        DataSetName = 'fdsRegistroMovimientoPartida'
        RowCount = 0
        Stretched = True
        object Memo18: TfrxMemoView
          Left = 41.574830000000000000
          Width = 374.173470000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            
              '  [fdsRegistroMovimientoPartida."CodigoInsumo"] - [fdsRegistroMo' +
              'vimientoPartida."NombreInsumo"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 585.827150000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = fdsRegistroMovimientoPartida
          DataSetName = 'fdsRegistroMovimientoPartida'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsRegistroMovimientoPartida."Registrado"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 661.417750000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sNombre'
          DataSet = fdsRegistroMovimientoPartida
          DataSetName = 'fdsRegistroMovimientoPartida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsRegistroMovimientoPartida."sNombre"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 415.748300000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = fdsRegistroMovimientoPartida
          DataSetName = 'fdsRegistroMovimientoPartida'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsRegistroMovimientoPartida."Solicitado"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 498.897960000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'UMedida'
          DataSet = fdsRegistroMovimientoPartida
          DataSetName = 'fdsRegistroMovimientoPartida'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsRegistroMovimientoPartida."UMedida"]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 34.015770000000010000
        Top = 325.039580000000000000
        Width = 740.409927000000000000
        Condition = 'fdsRegistroMovimientoPartida."NombreTipoInsumo"'
        object Memo10: TfrxMemoView
          Left = 498.897960000000000000
          Top = 18.897650000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'U. Medida')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 585.827150000000000000
          Top = 18.897650000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Registro en Inventario')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 415.748300000000000000
          Top = 18.897650000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Solicitado')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 41.574830000000000000
          Top = 18.897650000000000000
          Width = 374.173470000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '  Insumo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Top = 18.897650000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[fdsRegistroMovimientoPartida."NombreTipoInsumo"]')
          ParentFont = False
        end
      end
    end
  end
  object fdsRegistroMovimiento: TfrxDBDataset
    UserName = 'fdsRegistroMovimiento'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdRegistroMovimiento=IdRegistroMovimiento'
      'IdComisaria=IdComisaria'
      'CodigoComisaria=CodigoComisaria'
      'Fecha=Fecha'
      'Referencia=Referencia'
      'Requerido=Requerido'
      'IdMenu=IdMenu'
      'CodigoMenu=CodigoMenu'
      'Desde=Desde'
      'Hasta=Hasta'
      'Comentarios=Comentarios'
      'IdEmbarcacion=IdEmbarcacion'
      'CodigoEmbarcacion=CodigoEmbarcacion'
      'NombreEmbarcacion=NombreEmbarcacion'
      'CodigoRegistroMovimiento=CodigoRegistroMovimiento'
      'Referencia=Referencia'
      'Aplicacion=Aplicacion'
      'Comentarios=Comentarios'
      'IdAutorizo=IdAutorizo'
      'sNombreAutorizo=sNombreAutorizo'
      'IdRecibio=IdRecibio'
      'sNombreRecibio=sNombreRecibio'
      'TipoMovimiento=TipoMovimiento')
    DataSet = cdRegistroMovimiento
    BCDToCurrency = False
    Left = 552
    Top = 296
  end
  object fdsRegistroMovimientoPartida: TfrxDBDataset
    UserName = 'fdsRegistroMovimientoPartida'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdRegistroMovimientoPartida=IdRegistroMovimientoPartida'
      'IdRegistroMovimiento=IdRegistroMovimiento'
      'NombreTipoInsumo=NombreTipoInsumo'
      'IdInsumo=IdInsumo'
      'CodigoInsumo=CodigoInsumo'
      'NombreInsumo=NombreInsumo'
      'iIdUnidad=iIdUnidad'
      'sCodigo=sCodigo'
      'sNombre=sNombre'
      'Solicitado=Solicitado'
      'Registrado=Registrado'
      'Surtido=Surtido'
      'IdTipoInsumo=IdTipoInsumo'
      'IdPresentacion_Out=IdPresentacion_Out'
      'TituloPresentacion_Out=TituloPresentacion_Out'
      'IdConversion_Out=IdConversion_Out'
      'sNombre_Out=sNombre_Out'
      'IdComisaria=IdComisaria'
      'IdMarca=IdMarca'
      'IdPresentacion=IdPresentacion'
      'TituloPresentacion=TituloPresentacion'
      'UMedida=UMedida'
      'Leyenda=Leyenda')
    DataSet = cdRegistroMovimientoPartida
    BCDToCurrency = False
    Left = 552
    Top = 352
  end
  object cdRegistroMovimiento: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 176
    Top = 320
  end
  object cdBuscarSalida: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 320
  end
  object cdEmbarcacion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 728
    Top = 56
  end
  object dsEmbarcacion: TDataSource
    DataSet = cdEmbarcacion
    Left = 728
    Top = 104
  end
  object cdConsultaExistencia: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 528
    Top = 112
  end
  object cdPresentacion: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = cdPresentacionAfterScroll
    Left = 544
    Top = 48
  end
  object dsPresentacion: TDataSource
    DataSet = cdPresentacion
    Left = 624
    Top = 48
  end
  object cdConversion: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = cdConversionAfterScroll
    Left = 672
    Top = 288
  end
  object dsConversion: TDataSource
    DataSet = cdConversion
    Left = 744
    Top = 288
  end
end
