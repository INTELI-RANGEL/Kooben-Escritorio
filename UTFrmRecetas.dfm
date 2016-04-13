object FrmRecetas: TFrmRecetas
  Left = 0
  Top = 0
  Caption = 'FrmRecetas'
  ClientHeight = 282
  ClientWidth = 562
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 181
    Top = 49
    Width = 2
    Height = 202
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    ExplicitHeight = 130
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 562
    Height = 49
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alTop
    TabOrder = 0
    object rgTipoPlazas: TRadioGroup
      Left = 221
      Top = 1
      Width = 340
      Height = 47
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alRight
      Caption = 'Mostrar Solicitudes de Plazas:'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Pendientes'
        'Completas'
        'Todas')
      TabOrder = 0
      OnClick = rgTipoPlazasClick
    end
    object Button1: TButton
      Left = 64
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object tvEstructura: TcxTreeView
    Left = 0
    Top = 49
    Width = 181
    Height = 202
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alLeft
    TabOrder = 1
    OnChange = tvEstructuraChange
  end
  object lvPlazas: TJvListView
    Left = 183
    Top = 49
    Width = 379
    Height = 202
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alClient
    Columns = <
      item
        Caption = 'C'#243'digo Plaza'
        Width = 80
      end
      item
        Caption = 'Fecha Docto'
      end
      item
        Caption = 'Fecha Reg.'
      end
      item
        Caption = 'Plazas'
      end
      item
        Caption = 'Observaciones'
      end>
    Groups = <
      item
        GroupID = 0
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        GroupID = 1
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end>
    LargeImages = ClientModule1.Lista64
    GroupView = True
    SmallImages = ClientModule1.Lista16
    TabOrder = 2
    ColumnsOrder = '0=80,1=50,2=50,3=50,4=50'
    ExtendedColumns = <
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 251
    Width = 562
    Height = 31
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    Padding.Top = 5
    Padding.Right = 8
    Padding.Bottom = 5
    TabOrder = 3
    object Btn_Abrir: TcxButton
      Left = 441
      Top = 6
      Width = 56
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alRight
      Caption = '&Abrir'
      TabOrder = 0
      OnClick = Btn_AbrirClick
    end
    object Btn_Cancelar: TcxButton
      Left = 497
      Top = 6
      Width = 56
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alRight
      Cancel = True
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object dsOrganizacion: TDataSource
    Left = 384
    Top = 152
  end
  object dsCatalogoPlazas: TDataSource
    Left = 496
    Top = 144
  end
end
