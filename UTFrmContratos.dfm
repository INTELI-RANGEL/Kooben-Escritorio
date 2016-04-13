inherited FrmContratos: TFrmContratos
  Caption = 'FrmContratos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TcxGroupBox
    inherited GroupBoxFiltro: TcxGroupBox
      object JvLabel1: TJvLabel [0]
        Left = 11
        Top = 13
        Width = 49
        Height = 13
        Caption = 'Contrato:'
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
      object edtFContrato: TEdit
        Left = 31
        Top = 32
        Width = 121
        Height = 21
        TabOrder = 1
        Text = 'edtFContrato'
        OnKeyDown = edtFContratoKeyDown
      end
    end
  end
  inherited PanelPrincipal: TPanel
    inherited CxGridDatos: TcxGrid
      inherited CxDbGridDatos: TcxGridDBTableView
        object NombreEmbarcacion: TcxGridDBColumn
          Caption = 'Embarcaci'#243'n'
          DataBinding.FieldName = 'NombreEmbarcacion'
          Visible = False
          GroupIndex = 0
        end
        object CodigoContrato: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CodigoContrato'
        end
        object Referencia: TcxGridDBColumn
          DataBinding.FieldName = 'Referencia'
        end
        object FechaInicio: TcxGridDBColumn
          Caption = 'Inicio'
          DataBinding.FieldName = 'FechaInicio'
        end
        object FechaTermino: TcxGridDBColumn
          Caption = 'T'#233'rmino'
          DataBinding.FieldName = 'FechaTermino'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DisplayFormat = 'dd/mm/yyyy'
        end
        object Personal: TcxGridDBColumn
          DataBinding.FieldName = 'Personal'
        end
        object PersonalMinimo: TcxGridDBColumn
          Caption = 'Personal M'#237'nimo'
          DataBinding.FieldName = 'PersonalMinimo'
        end
      end
    end
  end
  inherited DxBManagerMain: TdxBarManager
    DockControlHeights = (
      72
      0
      0
      0)
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
  end
  inherited CxStyle2: TcxStyleRepository
    PixelsPerInch = 96
  end
end
