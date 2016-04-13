inherited FrmPresentaciones: TFrmPresentaciones
  Caption = 'Tipos de Presentaci'#243'n'
  ExplicitWidth = 989
  ExplicitHeight = 523
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TcxGroupBox
    inherited GroupBoxFiltro: TcxGroupBox
      object JvLabel1: TJvLabel [0]
        Left = 3
        Top = 29
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
        Top = 94
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
        Top = 48
        Width = 137
        Height = 21
        TabOrder = 1
      end
      object srTitulo: TEdit
        Left = 16
        Top = 113
        Width = 137
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
        FieldName = 'CodigoPresentacion'
      end
      object NxDBTextColumn2: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'T'#237'tulo'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        FieldName = 'TituloPresentacion'
      end
    end
    inherited CxGridDatos: TcxGrid
      inherited CxDbGridDatos: TcxGridDBTableView
        OptionsView.ColumnAutoWidth = True
        object CxColumnCódigo: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CodigoPresentacion'
          BestFitMaxWidth = 100
          Width = 100
        end
        object CxColumnPresentacion: TcxGridDBColumn
          Caption = 'Presentaci'#243'n'
          DataBinding.FieldName = 'TituloPresentacion'
          Width = 300
        end
        object CxColumnCantidad: TcxGridDBColumn
          DataBinding.FieldName = 'Cantidad'
          Width = 90
        end
        object CxColumnsNombre: TcxGridDBColumn
          Caption = 'U.M.'
          DataBinding.FieldName = 'sNombre'
          Width = 70
        end
      end
    end
  end
  inherited cdDatos: TClientDataSet
    Left = 270
    Top = 200
  end
  inherited dsDatos: TDataSource
    Top = 168
  end
  inherited mdEstructura: TJvMemoryData
    Left = 672
    Top = 192
  end
  inherited qGrabar: TClientDataSet
    Left = 584
    Top = 224
  end
  inherited mdDeposito: TClientDataSet
    Left = 600
    Top = 320
  end
  inherited OpenXLS: TOpenDialog
    Left = 840
    Top = 224
  end
  inherited SaveXLS: TSaveDialog
    Left = 784
    Top = 144
  end
  inherited DxBManagerMain: TdxBarManager
    Left = 920
    Top = 192
    DockControlHeights = (
      72
      0
      0
      0)
  end
  inherited dxSkinController1: TdxSkinController
    Left = 320
    Top = 200
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
  end
  inherited CxStyle2: TcxStyleRepository
    PixelsPerInch = 96
  end
end
