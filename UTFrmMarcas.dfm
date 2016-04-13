inherited FrmMarcas: TFrmMarcas
  Align = alCustom
  Caption = 'Cat'#225'logo de Marcas'
  ExplicitWidth = 989
  ExplicitHeight = 523
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TcxGroupBox
    inherited GroupBoxFiltro: TcxGroupBox
      object JvLabel1: TJvLabel [0]
        Left = 3
        Top = 11
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
        Width = 32
        Height = 13
        Caption = 'T'#237'tulo:'
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
        Top = 30
        Width = 133
        Height = 21
        TabOrder = 1
      end
      object srTitulo: TEdit
        Left = 16
        Top = 91
        Width = 133
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
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
        FieldName = 'CodigoMarca'
      end
      object NxDBTextColumn2: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        FieldName = 'TituloMarca'
      end
    end
    inherited CxGridDatos: TcxGrid
      inherited CxDbGridDatos: TcxGridDBTableView
        OptionsView.ColumnAutoWidth = True
        object CxColumnCodigo: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CodigoMarca'
          Width = 100
        end
        object CxColumnmarca: TcxGridDBColumn
          Caption = 'Marca'
          DataBinding.FieldName = 'TituloMarca'
          Width = 634
        end
      end
    end
  end
  inherited cdDatos: TClientDataSet
    Top = 200
  end
  inherited dsDatos: TDataSource
    Left = 312
    Top = 168
  end
  inherited DxBManagerMain: TdxBarManager
    DockControlHeights = (
      72
      0
      0
      0)
  end
  inherited dxSkinController1: TdxSkinController
    Left = 320
    Top = 144
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
  end
  inherited CxStyle2: TcxStyleRepository
    PixelsPerInch = 96
  end
end
