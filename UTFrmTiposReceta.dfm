inherited FrmTiposReceta: TFrmTiposReceta
  Caption = 'Tipos de Recetas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TcxGroupBox
    inherited GroupBoxFiltro: TcxGroupBox
      object JvLabel1: TJvLabel [0]
        Left = 3
        Top = 13
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
        Top = 67
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
        Top = 32
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object srNombre: TEdit
        Left = 16
        Top = 86
        Width = 121
        Height = 21
        TabOrder = 2
      end
    end
  end
  inherited PanelPrincipal: TPanel
    inherited CxGridDatos: TcxGrid
      inherited CxDbGridDatos: TcxGridDBTableView
        object ColCodigoTipoReceta: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CodigoTipoReceta'
          Width = 108
        end
        object ColNombreTipoReceta: TcxGridDBColumn
          Caption = 'Tipo Receta'
          DataBinding.FieldName = 'NombreTipoReceta'
          Width = 174
        end
        object ColOrden: TcxGridDBColumn
          DataBinding.FieldName = 'Orden'
        end
      end
    end
  end
  inherited MainPopupMenu: TPopupMenu
    Left = 688
    Top = 88
  end
  inherited dsDatos: TDataSource
    Left = 536
    Top = 168
  end
  inherited qGrabar: TClientDataSet
    Left = 616
    Top = 96
  end
  inherited DxBManagerMain: TdxBarManager
    Left = 832
    Top = 112
    DockControlHeights = (
      72
      0
      0
      0)
  end
  inherited dxSkinController1: TdxSkinController
    Left = 280
    Top = 240
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
  end
  inherited CxStyle2: TcxStyleRepository
    PixelsPerInch = 96
  end
end
