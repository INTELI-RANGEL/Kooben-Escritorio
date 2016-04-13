inherited FrmProveedor: TFrmProveedor
  Caption = 'Cat'#225'logo de Proveedores'
  ClientWidth = 976
  ExplicitTop = -1
  ExplicitWidth = 992
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TcxGroupBox
    inherited GroupBoxFiltro: TcxGroupBox
      inherited BtnSearch: TcxButton
        OnClick = BtnSearchClick
      end
    end
  end
  inherited PanelPrincipal: TPanel
    Width = 743
    ExplicitWidth = 743
    inherited DBGridPrincipal: TNextDBGrid
      Width = 741
      ExplicitWidth = 741
    end
    inherited PnlPro: TPanel
      Width = 741
      ExplicitWidth = 741
      inherited PBPaginacion: TAdvProgressBar
        Width = 643
        ExplicitWidth = 643
      end
      inherited PnlNum: TPanel
        Left = 644
        ExplicitLeft = 644
      end
    end
    inherited CxGridDatos: TcxGrid
      Width = 741
      ExplicitWidth = 741
      inherited CxDbGridDatos: TcxGridDBTableView
        object NombreEmpresa: TcxGridDBColumn
          Caption = 'Empresa'
          DataBinding.FieldName = 'sNombreCorto'
          Width = 200
        end
        object RegimenFiscal: TcxGridDBColumn
          Caption = 'R'#233'gimen Fiscal'
          DataBinding.FieldName = 'eRegimenFiscal'
          Width = 100
        end
        object RazonSocial: TcxGridDBColumn
          Caption = 'Raz'#243'n Social'
          DataBinding.FieldName = 'sRazonSocial'
          Width = 100
        end
        object RFC: TcxGridDBColumn
          Caption = 'RFC'
          DataBinding.FieldName = 'sRFC'
          Width = 200
        end
        object TipoEmpresa: TcxGridDBColumn
          Caption = 'Tipo de Empresa'
          DataBinding.FieldName = 'eTipoEmpresa'
          Width = 100
        end
        object Domicilio: TcxGridDBColumn
          Caption = 'Domicilio'
          DataBinding.FieldName = 'sDomicilio'
          Width = 200
        end
        object CP: TcxGridDBColumn
          Caption = 'CP'
          DataBinding.FieldName = 'sCp'
          Width = 50
        end
        object Municipio: TcxGridDBColumn
          Caption = 'Municipio'
          DataBinding.FieldName = 'sCiudad'
          Width = 100
        end
        object Ciudad: TcxGridDBColumn
          DataBinding.FieldName = 'Ciudad'
          Width = 100
        end
        object Estado: TcxGridDBColumn
          DataBinding.FieldName = 'Estado'
          Width = 100
        end
        object Pais: TcxGridDBColumn
          Caption = 'Pa'#237's'
          DataBinding.FieldName = 'Pais'
          Width = 100
        end
        object Comentarios: TcxGridDBColumn
          Caption = 'Comentarios'
          DataBinding.FieldName = 'mComentarios'
          Width = 300
        end
      end
    end
  end
  inherited PanelBarra: TcxGroupBox
    ExplicitWidth = 976
    Width = 976
    inherited Panel1: TcxGroupBox
      ExplicitWidth = 880
      Width = 880
    end
    inherited Panel2: TcxGroupBox
      Left = 881
      ExplicitLeft = 881
    end
  end
  inherited cdDatos: TClientDataSet
    Left = 310
    Top = 152
  end
  inherited dsDatos: TDataSource
    Left = 392
    Top = 56
  end
  inherited mdEstructura: TJvMemoryData
    Left = 744
    Top = 216
  end
  inherited qGrabar: TClientDataSet
    Left = 632
    Top = 176
  end
  inherited mdDeposito: TClientDataSet
    Left = 536
    Top = 104
  end
  inherited OpenXLS: TOpenDialog
    Left = 760
    Top = 144
  end
  inherited SaveXLS: TSaveDialog
    Left = 728
    Top = 144
  end
  inherited DxBManagerMain: TdxBarManager
    Left = 808
    Top = 80
    DockControlHeights = (
      72
      0
      0
      0)
  end
  inherited dxSkinController1: TdxSkinController
    Left = 304
    Top = 72
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
  end
  inherited CxStyle2: TcxStyleRepository
    PixelsPerInch = 96
  end
  object cdProveedorxInsumo: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    Left = 296
    Top = 264
  end
  object cdAux: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 288
    Top = 328
  end
end
