inherited FrmTiposInsumo: TFrmTiposInsumo
  Caption = 'Tipos de Ingredientes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TcxGroupBox
    inherited GroupBoxFiltro: TcxGroupBox
      inherited BtnSearch: TcxButton
        OnClick = BtnSearchClick
      end
      object srCodigo: TEdit
        Left = 16
        Top = 24
        Width = 121
        Height = 21
        TabOrder = 1
      end
    end
  end
  inherited PanelPrincipal: TPanel
    inherited DBGridPrincipal: TNextDBGrid
      object CodigoTipoInsumo: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
        FieldName = 'CodigoTipoInsumo'
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
        FieldName = 'NombreTipoInsumo'
      end
      object NxDBTextColumn3: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 2
        SortType = stAlphabetic
        FieldName = 'DescripcionTipoInsumo'
      end
    end
    inherited CxGridDatos: TcxGrid
      inherited CxDbGridDatos: TcxGridDBTableView
        OptionsView.ColumnAutoWidth = True
        object CxColumncodigo: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CodigoTipoInsumo'
          BestFitMaxWidth = 100
          Width = 100
        end
        object CxColumnNombre: TcxGridDBColumn
          Caption = 'Tipo Insumo'
          DataBinding.FieldName = 'NombreTipoInsumo'
          BestFitMaxWidth = 150
          Width = 150
        end
        object CxColumndescripcion: TcxGridDBColumn
          Caption = 'Descripci'#243'n'
          DataBinding.FieldName = 'DescripcionTipoInsumo'
          Width = 329
        end
      end
    end
  end
  inherited cdDatos: TClientDataSet
    Left = 142
    Top = 192
  end
  inherited dsDatos: TDataSource
    Left = 160
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
    Top = 120
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 15204424
  end
  inherited CxStyle2: TcxStyleRepository
    PixelsPerInch = 96
  end
end
