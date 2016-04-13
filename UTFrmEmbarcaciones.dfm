inherited FrmEmbarcaciones: TFrmEmbarcaciones
  Caption = 'Ubicaciones'
  ExplicitWidth = 989
  ExplicitHeight = 523
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TcxGroupBox
    inherited GroupBoxFiltro: TcxGroupBox
      object JvLabel1: TJvLabel [0]
        Left = 3
        Top = 16
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
      object JvLabel2: TJvLabel [1]
        Left = 3
        Top = 72
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
      inherited BtnSearch: TcxButton
        OnClick = BtnSearchClick
      end
      object srCodigo: TEdit
        Left = 16
        Top = 35
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object srNombre: TEdit
        Left = 16
        Top = 91
        Width = 121
        Height = 21
        TabOrder = 2
      end
    end
  end
  inherited PanelPrincipal: TPanel
    inherited DBGridPrincipal: TNextDBGrid
      object NxDBTextColumn1: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'C'#243'digo'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
        FieldName = 'CodigoEmbarcacion'
      end
      object NxDBTextColumn2: TNxDBTextColumn
        DefaultWidth = 79
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Nombre'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        Width = 79
        FieldName = 'NombreEmbarcacion'
      end
    end
    inherited CxGridDatos: TcxGrid
      inherited CxDbGridDatos: TcxGridDBTableView
        OptionsView.ColumnAutoWidth = True
        object CxColumnCodigo: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CodigoEmbarcacion'
          Width = 100
        end
        object CxColumnNombre: TcxGridDBColumn
          Caption = 'Ubicaci'#243'n'
          DataBinding.FieldName = 'NombreEmbarcacion'
          Width = 624
        end
      end
    end
  end
  inherited MainPopupMenu: TPopupMenu
    Left = 712
    Top = 40
  end
  inherited cdDatos: TClientDataSet
    Left = 158
    Top = 176
  end
  inherited dsDatos: TDataSource
    Left = 112
    Top = 192
  end
  inherited DxBManagerMain: TdxBarManager
    DockControlHeights = (
      72
      0
      0
      0)
  end
  inherited dxSkinController1: TdxSkinController
    Left = 144
    Top = 224
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 4195128
  end
  inherited CxStyle2: TcxStyleRepository
    PixelsPerInch = 96
  end
end
