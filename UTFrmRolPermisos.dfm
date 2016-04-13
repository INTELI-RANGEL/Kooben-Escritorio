object FrmRolPermisos: TFrmRolPermisos
  Left = 0
  Top = 0
  Caption = 'FrmRolPermisos'
  ClientHeight = 420
  ClientWidth = 851
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  ShowHint = True
  OnClose = FormClose
  OnMouseWheel = FormMouseWheel
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 145
    Top = 0
    Height = 420
    MinSize = 140
    ExplicitLeft = 312
    ExplicitTop = 176
    ExplicitHeight = 100
  end
  object sbRoles: TScrollBox
    Left = 0
    Top = 0
    Width = 145
    Height = 420
    Align = alLeft
    TabOrder = 0
    ExplicitLeft = -1
    ExplicitTop = 1
  end
  object Panel1: TPanel
    Left = 148
    Top = 0
    Width = 703
    Height = 420
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 1
      Top = 111
      Width = 701
      Height = 255
      Align = alClient
      TabOrder = 0
      object tvPermisos: TcxGridDBTableView
        OnDblClick = tvPermisosDblClick
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsPermisos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        object Descripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 300
        end
        object Lectura: TcxGridDBColumn
          DataBinding.FieldName = 'Lectura'
          Width = 66
        end
        object Edicion: TcxGridDBColumn
          Caption = 'Edici'#243'n'
          DataBinding.FieldName = 'Edicion'
          Width = 66
        end
        object Insercion: TcxGridDBColumn
          Caption = 'Inserci'#243'n'
          DataBinding.FieldName = 'Insercion'
          Width = 66
        end
        object Borrado: TcxGridDBColumn
          DataBinding.FieldName = 'Borrado'
          Width = 66
        end
        object Impresion: TcxGridDBColumn
          Caption = 'Impresi'#243'n'
          DataBinding.FieldName = 'Impresion'
          Width = 66
        end
        object Exportar: TcxGridDBColumn
          DataBinding.FieldName = 'Exportar'
        end
        object Importar: TcxGridDBColumn
          DataBinding.FieldName = 'Importar'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = tvPermisos
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 701
      Height = 110
      Align = alTop
      TabOrder = 1
      object CodigoRol: TDBText
        Left = 85
        Top = 15
        Width = 56
        Height = 13
        AutoSize = True
        DataField = 'CodigoRol'
        DataSource = dsRol
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object JvLabel1: TJvLabel
        Left = 22
        Top = 15
        Width = 57
        Height = 13
        Caption = 'C'#243'digo Rol:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel3: TJvLabel
        Left = 29
        Top = 34
        Width = 50
        Height = 13
        Caption = 'T'#237'tulo Rol:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object TituloRol: TDBText
        Left = 85
        Top = 34
        Width = 50
        Height = 13
        AutoSize = True
        DataField = 'TituloRol'
        DataSource = dsRol
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object JvLabel4: TJvLabel
        Left = 29
        Top = 53
        Width = 98
        Height = 13
        Caption = 'Usuarios asignados:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object CuentaUsuarios: TDBText
        Left = 133
        Top = 53
        Width = 89
        Height = 13
        Hint = 'haga doble click para ver los usuarios asignados'
        AutoSize = True
        DataField = 'CuentaUsuarios'
        DataSource = dsRol
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnDblClick = CuentaUsuariosDblClick
      end
      object pnlGeneralAcciones: TPanel
        Left = 1
        Top = 78
        Width = 699
        Height = 31
        Align = alBottom
        BevelOuter = bvNone
        Padding.Bottom = 2
        TabOrder = 0
        OnResize = pnlGeneralAccionesResize
        object pnlSangria: TPanel
          Left = 0
          Top = 0
          Width = 116
          Height = 29
          Align = alLeft
          BevelOuter = bvNone
          Padding.Top = 6
          Padding.Right = 2
          TabOrder = 0
          object JvLabel2: TJvLabel
            Left = 57
            Top = 6
            Width = 57
            Height = 23
            Align = alRight
            Caption = 'Permisos:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
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
            ExplicitHeight = 13
          end
        end
        object pnlAcciones: TPanel
          Left = 116
          Top = 0
          Width = 269
          Height = 29
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object btnEditarPermisos: TAdvGlowButton
            Left = 0
            Top = 0
            Width = 24
            Height = 29
            Hint = 'Editar permisos'
            Align = alLeft
            ImageIndex = 7
            Images = ClientModule1.Lista16
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 0
            TabStop = True
            OnClick = btnEditarPermisosClick
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
          object btnPermitirTodo: TAdvGlowButton
            Left = 24
            Top = 0
            Width = 24
            Height = 29
            Hint = 'Permitir todo'
            Align = alLeft
            ImageIndex = 17
            Images = ClientModule1.Lista16
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 1
            TabStop = True
            OnClick = btnPermitirTodoClick
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
          object btnQuitarTodos: TAdvGlowButton
            Left = 48
            Top = 0
            Width = 24
            Height = 29
            Hint = 'Quitar todos los permisos'
            Align = alLeft
            ImageIndex = 18
            Images = ClientModule1.Lista16
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 2
            TabStop = True
            OnClick = btnQuitarTodosClick
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
            Left = 72
            Top = 0
            Width = 13
            Height = 29
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
          end
          object btnLectura: TAdvGlowButton
            Left = 85
            Top = 0
            Width = 24
            Height = 29
            Hint = 'Lectura'
            Align = alLeft
            ImageIndex = 1
            Images = ClientModule1.ImageList1
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 4
            TabStop = True
            OnClick = btnLecturaClick
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
          object btnEdicion: TAdvGlowButton
            Left = 109
            Top = 0
            Width = 24
            Height = 29
            Hint = 'Edici'#243'n'
            Align = alLeft
            ImageIndex = 0
            Images = ClientModule1.ImageList1
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 5
            TabStop = True
            OnClick = btnEdicionClick
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
          object btnInsercion: TAdvGlowButton
            Left = 133
            Top = 0
            Width = 24
            Height = 29
            Hint = 'Inserci'#243'n'
            Align = alLeft
            ImageIndex = 3
            Images = ClientModule1.ImageList1
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 6
            TabStop = True
            OnClick = btnInsercionClick
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
          object btnBorrado: TAdvGlowButton
            Left = 157
            Top = 0
            Width = 24
            Height = 29
            Hint = 'Borrado'
            Align = alLeft
            ImageIndex = 9
            Images = ClientModule1.ImageList1
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 7
            TabStop = True
            OnClick = btnBorradoClick
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
          object btnImpresion: TAdvGlowButton
            Left = 181
            Top = 0
            Width = 24
            Height = 29
            Hint = 'Impresi'#243'n'
            Align = alLeft
            ImageIndex = 11
            Images = ClientModule1.ImageList1
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 8
            TabStop = True
            OnClick = btnImpresionClick
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
          object btnImportar: TAdvGlowButton
            Left = 229
            Top = 0
            Width = 24
            Height = 29
            Hint = 'Borrado'
            Align = alLeft
            ImageIndex = 2
            Images = ClientModule1.ImageList1
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 10
            TabStop = True
            OnClick = btnImportarClick
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
          object btnExportar: TAdvGlowButton
            Left = 205
            Top = 0
            Width = 24
            Height = 29
            Hint = 'Impresi'#243'n'
            Align = alLeft
            ImageIndex = 8
            Images = ClientModule1.ImageList1
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 9
            TabStop = True
            OnClick = btnExportarClick
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
    end
    object Panel3: TPanel
      Left = 1
      Top = 366
      Width = 701
      Height = 53
      Align = alBottom
      Padding.Left = 6
      Padding.Top = 4
      Padding.Bottom = 4
      TabOrder = 2
      object btnNuevoUsuario: TAdvGlowButton
        Left = 7
        Top = 5
        Width = 120
        Height = 43
        Align = alLeft
        Caption = '   &Nuevo Rol'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Picture.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00097048597300000EC400000EC401952B0E1B00000006624B474400FF00FF00
          FFA0BDA793000000097670416700000060000000600078DBD9F4000000257445
          5874646174653A63726561746500323030392D30392D31335431333A31383A34
          312B30323A303045E4CAFE0000002574455874646174653A6D6F646966790032
          3030392D30392D31335431333A31383A34312B30323A303034B9724200000019
          74455874536F667477617265007777772E696E6B73636170652E6F72679BEE3C
          1A000004EA494441545847C597796C147514C7BF33D3D9AB2DD02B1C364DDB80
          5A289AA2B6A060A1DA8206B02628118D068AC683529B94843F241AFFC1C4D004
          4C8D215A6C5014F1026D1B29476210D2A4A542A452844AE9B165DB6EBBDDDDD9
          993D667CBFE1B00DEDCEB434E1B779D9CCEEDBDFFBBCF77BC76F398D16EEE1E2
          EFA16DDD34379908289217A70E7C8CDEF6F3F0B83A312B7321162C5F87071E5F
          3D617F260C50BB7B2BBADB9A90F6D032586C0E841409676BF711481F1CD31C78
          BDEA1466CFCB310D32A123F874F3A390C9FBB4ECA5504341048607A1A91A3272
          56E8C6792106BBD62FC2B986AF4D03988EC017652B10973013167B2C19556F1B
          10440B9CFFB4A0AFE3228418112CA787AE0FA2F4CBD304BAC410C45404CE1FFF
          96BC75D3E62A02DE21C8FE615D582E484303E86AFB1381800C45567483D353A6
          A1FADD0243E34CC11440DD9E32C427CF81EC1D44501ABE21012F01F8D07AE637
          14AC2A44C58E6DC82F5C0E9FCF4FA9CD231C94F1FB573B0D210C8FE0D2995AFC
          F8510966CC4A0785E0C6861C8750300CDF4027DE2A7D0D339212105482949456
          F47639F149E55E883182AEFA41832F2A8461049AEA6A20882279EBB929C370BB
          9CE0943E6CDB5E02BB5D80DFE34648F6C14FC7919C1487F28ACDB0DA6C488817
          E0BCF2575400C308ECDD38173DDD2E8AAAC85C87A2C8589C371F6B9F2F80E40F
          401D9190B72C098200BBC3867E670FCE0EDC8FA292F7C685880AC002FEC3964C
          3CFB5C111A1B5BE949437676261213A7439264FD79FCC541E42338DC18C6FA1D
          35E3AA453D029F6708360B0F810B6171EE5C9279F40CF88687A0866512258AC8
          D02232C2FE81C9E740241CA232892042DD8E951C93485082160E981482504393
          07884B4CA1B2A22C8E983538528F2214F2438C4D9E3C400C07F8159EBC956E86
          9C85DD9CB0F07B3D837024A74D1E40EF5429395083C304A19050484D0AAF29F8
          F74A17E6E6AEBA3B80F4DC625CBBDA035E65C61984391148FF62FB20B21ECBBF
          3B80FC17DFC4E9E61E881CD5BC7E14C6A251CEF83D2E38B25E326CC5869D90ED
          90B26C1BBA3ABA280AE68EC1C6CBA83BD18135E57BA606A078EB4E1C3B678718
          F1524544871039056D17AE22754D2562E362A70680EDB264D751547EEF828520
          78EDCE4A6059CF3CEFBEDC8BC3522E8A5E2D3734AE27B991D6672D9FA3B02E1D
          47FCEFA3E8BB6AD43426A1E3921B36CD0B2B249200ECA0114CC3EAD849375AD2
          3660CE877958599F86EDA72AA2776B365DC6BB94363B5BF1C61F79285EB80045
          B33722121110A4962CC43AD05EDF084FFD71C47B9C10431202B6044899F391B1
          E1192466CE02E70B41A48174D6F313AA5B7EC52BA955D8BAE8ED317D1D136077
          73157E766DC1CB59EB30D3F208E4884FBF0DB1C5D15D80B75A74618350A53BA1
          2070E4894A0D93CD86F00D3D7A5985580C852FE358CF4104069EC2A1D547EE80
          B803A0E6C2011CECD88427539F408AF54184A89EA32EEA96D186A2C85BE156AE
          A1DDDB04D957887D2BF78FDA6E1440983CCAFDC682A7D3B330C3928E88168A3A
          708DF2E7D6F7319C48109DF8BBBF0DA50FFF825519FFDF174701949D7807B272
          94E6781CFD965DA9A6EA5F1B0B934ABBC97029F7E1D0DA86DBECA30096EECFC0
          82783BA952718CF8CB385518942A68765F47D3A6FEB101F20FE4228EB2975527
          CFA06F56294F89A7B1B4A2771614F6AEBFD8E79AAE6872A950C8B1BA174E8E0D
          6072972955336C44536A6D8CCDFE03D8C644505A267FD00000000049454E44AE
          426082}
        TabOrder = 0
        TabStop = True
        OnClick = btnNuevoUsuarioClick
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
      object btnBorrar: TAdvGlowButton
        Left = 247
        Top = 5
        Width = 120
        Height = 43
        Align = alLeft
        Caption = '   &Eliminar Rol'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Picture.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00097048597300000EC400000EC401952B0E1B00000006624B474400FF00FF00
          FFA0BDA793000000097670416700000060000000600078DBD9F4000000257445
          5874646174653A63726561746500323030392D30392D31335431333A31383A34
          312B30323A303045E4CAFE0000002574455874646174653A6D6F646966790032
          3030392D30392D31335431333A31383A34312B30323A303034B9724200000019
          74455874536F667477617265007777772E696E6B73636170652E6F72679BEE3C
          1A000004D1494441545847C5566B6C145514FE76A6FBEC833EB6428DD6D2B462
          6D31D64701450BD536C418C58010638CC15623DA52ABD44862C5688CAF80A104
          3504A80D581F5183262D11823104699A5040A20D8550AC7D2C6CED76DF3BB3B3
          33E3BDB36CB3DBEECC4EFB87939C1F77E7ECFDBEFB9D73EEB90699186EA03137
          105B8136CC47013EE8C3C9AE4F7175E83C3CCE112C2A5E8AF255EBB1E481C7E7
          7C9E3913E8DEB5056383A75178D74330596C10F820CE7477102213B065D9F0E2
          9E932828ADD44D644E29F8BCE13E70E4F485152B21096184BC539025198B2B57
          2BE00C9B861D1BEFC19FC7BED64D40B702FB9B57232367214CD674022A4D03B0
          46131C97CE6262F802D83423684DBBAF4DA1E9AB5384E88A9444742970FEF8B7
          E4B42EB2B98490CF0D2EE0559CD642D03D89D1C173088538F01CAF002EC8CFC2
          81D76A5282D3005D047ADA9B9169BF199C6F0AE1A037EA211F21E0C740EFAFA8
          59538BAD6DADA8AE5D05BF3F404A9B4124CCE1C4A10F53924899828BBDDDF8E9
          A37A642F2A029120BAA1C100211C817F72049B9B9E47765E0EC27C9814A51957
          471DD8BD732F8C69AC12FAEE31BF2689940A9CEEE9046B3492D37AAEBB172EA7
          03067E02AD6FD5C36A6511F0B820707E04483AEC791968D9DA00B3C5829C4C16
          8ECB7F691248A9C0DE4D25181F7312558DF4E8E0790ECB97DD89279EAA413010
          821457903124966561B559F09F631C67266F475DFDDBAA24340950C17F6C2CC6
          634FD6A1AF6F80AC645454142337770182414E59AB9B014646C4CF7D116C6CEB
          540DD34C81DFE386C5C4803508585E5542BC94AC01BFD70D29C211E7359C832C
          72880426E75F036244206D224224B71D6D39EA623808391282B8B977DAE93AB9
          131292308B80EBD652C45C53818CDC7CD256A48AC54400A9E95CC2A6743D9B00
          514808C0986E4F88A5C0F1A64920CD000478866C1EBC2E39959DE67EB6C92D83
          0931547E9F670A367BE174F04C70FA21651B32F99590C25E4282274E245521A0
          5C0FADC3D3318CCCE3CAE5519454AD51082403D745A0A86A2DFEFD671C8C44C1
          29091EE2FBD9EA55BDED9A12C392F80B435328BBBF5A155C1781EA0D2FE354FF
          388C06D2F34A2AA22E6C27EDA0626C9B9B5C4E4ED8CA9ED104CF1DB9A4EF4172
          B87D1B9678BF80FD263B44327EE3CDF441CA2C26A549C195B4E97D11ED7EBA00
          CFD548E0A4E8C88D37F3C7365535927D8881EB4A416C83153B8E62E70F4E9844
          1F1839DA0D310FBDE1D24D201E5C17812FCFEE436D4F117E096C47DDF707D0D9
          9787E18B2E58641FCC08120FC18A00B857AEA42431135C3305FD8E01BCF4C732
          AC5D5A8EBA824D104516617225B3E9360C1DE983E7C871647A1C300A41842C39
          58F7BB7A6750A064E0AA0476F5EFC16167239E2D5B8F85A67BC1897EE535A4FC
          81BC0518B349713A082552948FDCDD91F2F46A24661561E7DF5DF86EF8053C7C
          CB83C837DF0181F4B3966DA83BA10B3C1634538904021172A2AA6F4C78B4A80C
          D9A62288B2A039701BD7455B69AE164F228140F36FAF82E38F92399E41F6A44F
          2AF579FF5E835715F79D7D59CA37AD98A4F7C0CA838B519E69854447445CAFCF
          A4F1C996B02AF89BED8937A456ECAC9BB0BAAB0A19E4394567144326616C5631
          A4F064F21CA3054845E9787D2C2981FACF6E4BFAFBFE966155C2BA6FC2F81D92
          4D36B5368BFD6FDED33019F59960A9C0D55A90FEFE3FEF74A6A958D06EE40000
          000049454E44AE426082}
        TabOrder = 1
        TabStop = True
        OnClick = btnBorrarClick
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
      object Panel4: TPanel
        Left = 487
        Top = 5
        Width = 30
        Height = 43
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        ExplicitLeft = 367
      end
      object btnImprimir: TAdvGlowButton
        Left = 517
        Top = 5
        Width = 110
        Height = 43
        Align = alLeft
        Caption = '   &Imprimir Permisos'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Picture.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000467414D410000AFC837058AE9000000097048597300000EC400000E
          C401952B0E1B0000001974455874536F6674776172650041646F626520496D61
          6765526561647971C9653C000006D7494441545847C5575968945714FE669FC9
          D2B864D30683FA608D892F82BEB4142AB43E14295A6DAD0B416DFA20055B512C
          BEF892AA14451B456B83AD48D014A441297611C197E282A2C65A8D4988D993C9
          3233997DFEA5E79C9B7F32593479107AE1CEFFCF5DCEF9CE39DF39F7FE36931A
          FEC7669B0980BABADF9193E3C34CB0DAC81887D389C78FFFC5FEFD9F4F6F1A03
          98AED5D7FF35DD9249F3070F9E3093C9F8B4FBECD343C44B2D678F68BA81784A
          4724A121144B617024911669B3B13F5EDD660440D7F5495258B96E1000EA86D5
          7535C64DED794D000C633C8089CA19844ECA3506454F6EBC67060EC08C3C6018
          5ADA03E394B3D24CE5E21105D698C26B530563860094D049CA472DD647C3A113
          1F0C6D1480C9A05F730838BED22D77F3FB04E5BAAEBC6518C66B0C0159C68DDD
          AD31D12CA5A484C1B0E53A59CECA75CA0859AB69B0DB9DD325C1AB39100A85B0
          71E3C7E8E9ED196576A672E5099D41907283953388D11014171561CD9A0FD0D9
          D9F94A10E32AE1F3E7CF71FEFCCF68696985DBEDC5FCF92558BBF643D4D75FC1
          F1E3D5084553623DA75D3A05C952B6DCD0188886782C81F2A50BB07BF7016CDA
          F411AE5EFD8D40B423120963E1C2526CDDBA0D1515156950691FD5D47C8FB6B6
          4E5455ED12C59A9692454343BD88C5A22AAE442AB6384E452745AE16AB89ED46
          8A00D038D114DA6808E2F118F2F3F3B177EF37B2D7E572A1BBBB0767CF9EA4D0
          18387CF8888C8B0782C1202DDC87D3A77F80DF3F9C2E22BCE9C1835B18188863
          F1E2C5A2C0E1B0C3C99DEABDD5B8E2313083B9C04FC2D2DADA8ADC5C3B4A4B97
          494D703B9CF0793C985D988F3D7B7661E7CE4AAC5CB94A013875EA24FD791B8B
          162D12F258CDE3F1A2A1E117AC5FFF89D83FF13062C5DC35763F7982E7AD35A6
          69C3B56B57B062C5BB5C16D19518C0EDFE667CBAF01DBCE86EC7E5CBE771E6CC
          5945C2C6C6462C5FBE9C361B62A1EA0EE2814BAC89C7350C0F87110844303212
          452814456FEF3085AC174D4D1DC4994EBC78D18BF6F63E7474F44BF7FB83022E
          2BCB836C9F17F7FDAD5895BF1436725C5959399E3D6B123B0540229182C763A7
          D828C52E97533C118DC669CC8D60304C2092F43F418AFC78F2A49D9EFDE8EB0B
          12B008018BCA33B3F7F70749AE8159B3B2A13B0C6C5BF61EDE2A2A86DD692750
          6EEA39C4AD9802E0F1B8050D2B67EBC3E1982874B9EC64859308A71193FD78F8
          B0195D5D7EF2404440050223A474EA1E088488F91AC976C1E57441B79BB0916C
          36CEE974A0A0A080F607148048244E2E0D1269BC482653B4C00E9FCF4340786C
          0E6EDD6AA430B5101987D1DF3F48960F4CDBBBBBFD24D7202B470404770EC7EC
          D93914C68864512A45BA24BD28CE77EE34D1408C585B8879F3E612C25964ED10
          EEDE6D9210316AEB7C57E44B73555EF86237464045C670384A7BA3246B3E7122
          20DC686FF713B7B2A496B00CC982CACA9DD8B2E54B421B51759EAA194F1617CF
          4576B65BF8C09DBD934824283C297A4F0AFBB9B1C7DC6E37BC5EB6D423E4E534
          E5B1502846DE1A12806C84C3C1C4CC456DED611C3DFA9D025055F5052A2BBF26
          9245D296F97C5924CC2B1BD962F5649E28A25AC21880059A5391CF056B2D7B81
          F72412F17431E3B9DCDC3770E8D03EAABA3FA9106467FB24E6A6A9AA1F33B4B6
          F6186EDCF8432CE15865B697DDA32786850B197B6EF5EA35D8B1E32B32302C62
          7C9496F178047979790A4041413EC52425135C0BB2B2BCE43E2795E437B16041
          2915931593404CBEED8C2705B3FDDEBDFB94AE6D924DD9D95ED291248F30EF35
          29CD123EFE292FAFA0387560C992A582D8EB750A1FBC5E2F366FFE0C85854512
          7F45362698BC65BC5BE36A8ED7B082B2B2328AF351B23C2A324DD3471E7551E1
          6A1A2DED4AA0190A05CDEAEA23742624CCAEAE01B3B37340AED30D0D7FCB9362
          6C52DA98898466C66249930A92190EC7695F94F644CCA1A1B039383862FAFD21
          B3AF2F60F6F40C9B1D1D7ED97BEEDCAFF2ECEE1E14D9ACE3D8B113E6A54B1765
          5CEA0093221C1EC6D3A74F0939BBDF4B27171F4A71B19A19CF1E48A592120A7E
          57FFD5934F4E7EB73AFF674F72AE3B9D740E503A2BB93E2ADF6D74BE5CC6BA75
          EB45F6B8FB406DED8FF445F38F543ED3CC434D4D35C56DF4E8A562C1AEB5AEE0
          CC157ECF1CE323D91AE36CB0DB6D54578AB061C376CC99C3E99C44494909B66F
          DF41E3A593016432FDE2C53FE942F1BE54C931259602F51CEB9960C6E6D83B65
          65A53870E05B5457F3BD608A4BAA046242A3326A3E7AD43CD5547A8C940B37B8
          5341228E70D7E9734C7145F12525EB9B9BDBCC0B172E4D296FCA8FD3EBD76F53
          560C4AC1196BEC6EB68E4361594CB7210983BA0B8CCDA970F1388F7145BC79F3
          26EAEA6AC7D593491CC89C6D6969960A38F5D7CD982BC7E627BBD73A3B18045F
          CF98EC13DB7F10BE0E04EE790C1D0000000049454E44AE426082}
        TabOrder = 3
        TabStop = True
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
        ExplicitLeft = 397
      end
      object btnEditarUsuario: TAdvGlowButton
        Left = 127
        Top = 5
        Width = 120
        Height = 43
        Align = alLeft
        Caption = '   &Editar Rol'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Picture.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00097048597300000EC400000EC401952B0E1B00000006624B474400FF00FF00
          FFA0BDA793000000097670416700000060000000600078DBD9F4000000257445
          5874646174653A63726561746500323030392D30392D31335431333A31383A34
          312B30323A303045E4CAFE0000002574455874646174653A6D6F646966790032
          3030392D30392D31335431333A31383A34312B30323A303034B9724200000019
          74455874536F667477617265007777772E696E6B73636170652E6F72679BEE3C
          1A000004EA494441545847C597796C147514C7BF33D3D9AB2DD02B1C364DDB80
          5A289AA2B6A060A1DA8206B02628118D068AC683529B94843F241AFFC1C4D004
          4C8D215A6C5014F1026D1B29476210D2A4A542A452844AE9B165DB6EBBDDDDD9
          993D667CBFE1B00DEDCEB434E1B779D9CCEEDBDFFBBCF77BC76F398D16EEE1E2
          EFA16DDD34379908289217A70E7C8CDEF6F3F0B83A312B7321162C5F87071E5F
          3D617F260C50BB7B2BBADB9A90F6D032586C0E841409676BF711481F1CD31C78
          BDEA1466CFCB310D32A123F874F3A390C9FBB4ECA5504341048607A1A91A3272
          56E8C6792106BBD62FC2B986AF4D03988EC017652B10973013167B2C19556F1B
          10440B9CFFB4A0AFE3228418112CA787AE0FA2F4CBD304BAC410C45404CE1FFF
          96BC75D3E62A02DE21C8FE615D582E484303E86AFB1381800C45567483D353A6
          A1FADD0243E34CC11440DD9E32C427CF81EC1D44501ABE21012F01F8D07AE637
          14AC2A44C58E6DC82F5C0E9FCF4FA9CD231C94F1FB573B0D210C8FE0D2995AFC
          F8510966CC4A0785E0C6861C8750300CDF4027DE2A7D0D339212105482949456
          F47639F149E55E883182AEFA41832F2A8461049AEA6A20882279EBB929C370BB
          9CE0943E6CDB5E02BB5D80DFE34648F6C14FC7919C1487F28ACDB0DA6C488817
          E0BCF2575400C308ECDD38173DDD2E8AAAC85C87A2C8589C371F6B9F2F80E40F
          401D9190B72C098200BBC3867E670FCE0EDC8FA292F7C685880AC002FEC3964C
          3CFB5C111A1B5BE949437676261213A7439264FD79FCC541E42338DC18C6FA1D
          35E3AA453D029F6708360B0F810B6171EE5C9279F40CF88687A0866512258AC8
          D02232C2FE81C9E740241CA232892042DD8E951C93485082160E981482504393
          07884B4CA1B2A22C8E983538528F2214F2438C4D9E3C400C07F8159EBC956E86
          9C85DD9CB0F07B3D837024A74D1E40EF5429395083C304A19050484D0AAF29F8
          F74A17E6E6AEBA3B80F4DC625CBBDA035E65C61984391148FF62FB20B21ECBBF
          3B80FC17DFC4E9E61E881CD5BC7E14C6A251CEF83D2E38B25E326CC5869D90ED
          90B26C1BBA3ABA280AE68EC1C6CBA83BD18135E57BA606A078EB4E1C3B678718
          F1524544871039056D17AE22754D2562E362A70680EDB264D751547EEF828520
          78EDCE4A6059CF3CEFBEDC8BC3522E8A5E2D3734AE27B991D6672D9FA3B02E1D
          47FCEFA3E8BB6AD43426A1E3921B36CD0B2B249200ECA0114CC3EAD849375AD2
          3660CE877958599F86EDA72AA2776B365DC6BB94363B5BF1C61F79285EB80045
          B33722121110A4962CC43AD05EDF084FFD71C47B9C10431202B6044899F391B1
          E1192466CE02E70B41A48174D6F313AA5B7EC52BA955D8BAE8ED317D1D136077
          73157E766DC1CB59EB30D3F208E4884FBF0DB1C5D15D80B75A74618350A53BA1
          2070E4894A0D93CD86F00D3D7A5985580C852FE358CF4104069EC2A1D547EE80
          B803A0E6C2011CECD88427539F408AF54184A89EA32EEA96D186A2C85BE156AE
          A1DDDB04D957887D2BF78FDA6E1440983CCAFDC682A7D3B330C3928E88168A3A
          708DF2E7D6F7319C48109DF8BBBF0DA50FFF825519FFDF174701949D7807B272
          94E6781CFD965DA9A6EA5F1B0B934ABBC97029F7E1D0DA86DBECA30096EECFC0
          82783BA952718CF8CB385518942A68765F47D3A6FEB101F20FE4228EB2975527
          CFA06F56294F89A7B1B4A2771614F6AEBFD8E79AAE6872A950C8B1BA174E8E0D
          6072972955336C44536A6D8CCDFE03D8C644505A267FD00000000049454E44AE
          426082}
        TabOrder = 4
        TabStop = True
        OnClick = btnEditarUsuarioClick
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
      object btnUsuarios: TAdvGlowButton
        Left = 367
        Top = 5
        Width = 120
        Height = 43
        Align = alLeft
        Caption = '   &Usuarios'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Picture.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00097048597300000EC400000EC401952B0E1B00000784494441545847D5575B
          6C54D7155DF73DEFF130F543660C44904049444BECA404DAC8E1A120125BB11C
          114210A95A09258AFA910FC25FFB83542A3E90AA4A54515B5508094A902A41E5
          A088BA6AA0114A8863124888E590E0181BDBF3B2EF3CEFB37B1F62833D13201F
          55D4235DCDBD77CED97BEDBDD6DEE75CC9A781EF71C8DFA36FE1FAFF0BC0FF82
          2DE9DB34303A3A8AD3A74FC3B22C84C361F4F6F6229148DC17630303033877EE
          1C2449424B4B8B58AB284ADDB535006CDBC6FEFDFB71E1C205C46231789E8772
          B98C2B57AEE0E2C58B686C6C44A954C2891327C0205555453018144E78FEDEBD
          7B3132328268340AC771904EA7C1996340F5460D8093274FE2C8912328140A98
          9A9A4220101046666666B075EB566CDAB4097D7D7DC2280FFEE52C8D8D8DA1BD
          BD1DD96C16E3E3E3022467809F19D0B163C7B063C78E1A0C35223C75EA147A7A
          7AD0DFDF8FDDBB778B88BBBBBBB166CD1A9C3F7F1E939393E0143320D7754576
          D809DF1F3D7A14870F1FC6D9B367D1D9D989542A2532D3DADA8AE3C78FD7A78F
          3570E7D8BE7DBB78A4E8FD4AA5E293613F9FCFFBB95CCEDFB56B97BF79F3669F
          9CFADBB66DF3491BBEAEEBBE6118BE2CCB3E45EC53F4623E65455C7C4FF4F907
          0E1C58E84A3CD75070E8D021ECD9B307E45070582C16414604155D5D5D4207CD
          CDCD425483838360CD24934941C1962D5B70E6CC19AC5CB95250609AE6DC158F
          C7B17EFDFA9A2CD400E0D432E7EC9C75C046F81D0BECE0C183608AF87F16270B
          9001F03CD6C1C4C484D0C4B265CB042DD3D3D3822206C7B4363535DD5B031C29
          2F6627CC77269311196041B2083923ECAC5AAD8AF7EC94E7B1F0D8215704DFF3
          7AFE9FDFF1DC48245257033522244EC1171B250D88888863689A869D3B770A40
          6C908130D05927FCCBEF792E3BE7B55C05A40D74747420140ADD07806FB62556
          3CA78B8D71EA2532F2EC33CF22168EA2502C084A1808EB841DF333FFAA81A028
          458E961D32EF77725FAF93CECF8004387E15972E5F82677BD0740DAEE7C2777D
          7C72E96394F522B4AA4691678453161A47CD7A908C30D62E5F8C81ABD7406684
          48390B26E9E3DAD0A7F0387ECAC8C2310FC0BBD7DE41C3FE004EDDF8333A566D
          40D88F41AEA878F2E18D988CDD446C5F02FDD57E849C283CDF134E384BE15802
          292F0FE9578F2171E33DB4AC790A653F08478FA3FDE91710FCCF9BF874AD84D2
          D5F7E12E40305705576E0EE2D13FACC54F1F6A83A396908C27F0FC23AF40550C
          F40DF7E1EF97DE46585E84F12FB338B0F5777842FE092CD802C49425A3FDF79D
          505B347AB6115DBD1AF1C75F02A50F53EFFC09E5CFAFA30C15E58F1D3C747618
          A1D4F23918730036FC7125246D060DD13042411DAA0158868D0A19C9E65DA467
          A691331DBC187D195D6DCF415734D88E0D9B2AA2E4000DE511ACF8FC2F48E63E
          80938C423388BA8A8FB2A9C02EC9A84E5BB0B215788955F8E1D1CFC072634204
          0533D52C86334348D0AE17D00DBA74045880813862A1046CC9C463A1E7F1D775
          37F0CB8E7D58916A23EECB289805144B45C4030AD675FF027FDBF80FBCBDEE4D
          E81513462C0E351A8746C11056A8BA042DA2A33C789540CD08E74216DC0EFB3E
          7B0BBF39FF3296362E4528A0C308CA94019DA8F071B3308594D983DEC5BF4655
          CBC0F2242C4EC4B0AA39069F322093B00A8E82FECB5FC0752C98521C89C98BE8
          F9683BD4D6665466A867E47CD805075593F68EAFCB687AFD3092DDAFDC3E114D
          14AF23118A23A2290819242C02A0D3BD2B3970B3713C97DA07D798A6CC04D010
          32305DAEE0DDA131FC6B781C7D97BFC2BFAF7E0143934890412C524A28A49EC0
          874DAFC19F4A43A14AD28292C8804273B428607F3530A7014181A23B888454AA
          5D8D3A994C7DDF80AFF8489B594AFDCFE91D53425740236074297406D0558489
          AA6830801039D13515BACA205450B7C0D08F5F453E4D5A223BC2395DAA4E5404
          29EDD313F301AC5FDC8B929B4120E2913303AA2CC1933C14D30E1E69DC089900
          064913864AD150FF9795DBF53CDB5CB8EBA92A514721E98A0C29D684AFE31B40
          9D0B32AD6151ABAA05394FBF8F3F331FC08AE483F8EDBA73508A6DC8554D8C99
          A348573228565D34475A68A102951C68B2223897089C18779CE8190883A0B629
          1A8EE65631B9B413EECD12BCDC243C129EAB2D41F88DB7D0F0F49EB9038D1021
          DB996D52A399314C50490DE72F633C53407BEB4BD0430A742A18766E51672C5B
          15DA905C787408B1A80B3AB423B211DE1D3DD781ED51D9392E945C165DD605F8
          4B1E85F4836530DA1EA06E308BFD16E06F3D94F234B28D7F0E8D2016090B005C
          B9964BBDC12627B45D7B1EA99B2AC122001EB76C66C6D7E03030CBA6E90A76FF
          ECE1B974CFD6FE9DCDF0AEDF051CA9FFCDA783470DC9F6A92A28D25BBCDFFA15
          F7E4D9A5A86D9BCE8704C621800EED1F56A534AFF1D6EE04F7F83009D3D9204A
          0DB750AE92906E714BE72ED144845F0180A150B6080467CCA6D47386A668AB7E
          7275DB3C00F51EEE4AC1ACB08647C7713D63A2400E340265B0A43D871CD91439
          3518D28359A6931175469F287A2019C7533F5A8E2875D67B8DBB0258B8B86A57
          91C9973091CB93434770CEA7618DCAB22112C092A6458847F8E051FF23E43B67
          A076413D192D9C753F736EAFF98E1FA7F564B410C0FDCCB9BDE6BF503632D492
          2F3F320000000049454E44AE426082}
        TabOrder = 5
        TabStop = True
        OnClick = btnUsuariosClick
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
        ExplicitLeft = 298
        ExplicitTop = 6
      end
    end
  end
  object pnlEditarPermisos: TPanel
    Left = 492
    Top = 60
    Width = 305
    Height = 317
    Padding.Left = 6
    Padding.Top = 4
    Padding.Right = 6
    TabOrder = 2
    Visible = False
    object cbLectura: TCheckBox
      Left = 96
      Top = 63
      Width = 169
      Height = 17
      Caption = 'Asignar permiso de Lectura'
      TabOrder = 0
    end
    object cbEdicion: TCheckBox
      Left = 96
      Top = 86
      Width = 169
      Height = 17
      Caption = 'Asignar permiso de Edici'#243'n'
      TabOrder = 1
    end
    object cbInsercion: TCheckBox
      Left = 96
      Top = 109
      Width = 169
      Height = 17
      Caption = 'Asignar permiso de Inserci'#243'n'
      TabOrder = 2
    end
    object cbBorrado: TCheckBox
      Left = 96
      Top = 132
      Width = 169
      Height = 17
      Caption = 'Asignar permiso de Borrado'
      TabOrder = 3
    end
    object cbImpresion: TCheckBox
      Left = 96
      Top = 155
      Width = 169
      Height = 17
      Caption = 'Asignar permiso de Impresi'#243'n'
      TabOrder = 4
    end
    object btnAceptarEdicion: TAdvGlowButton
      Left = 100
      Top = 235
      Width = 81
      Height = 28
      Caption = '&Aceptar'
      Default = True
      ImageIndex = 1
      Images = ClientModule1.PngImageList1
      ModalResult = 1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 5
      OnClick = btnAceptarEdicionClick
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
    object btnCancelarEdicion: TAdvGlowButton
      Left = 181
      Top = 235
      Width = 81
      Height = 28
      Cancel = True
      Caption = '&Cancelar'
      ImageIndex = 8
      Images = ClientModule1.PngImageList1
      ModalResult = 2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 6
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
    object DBMemo1: TDBMemo
      Left = 7
      Top = 5
      Width = 291
      Height = 43
      Align = alTop
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      DataField = 'Descripcion'
      DataSource = dsPermisos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      TabOrder = 7
    end
    object cbExportar: TCheckBox
      Left = 96
      Top = 179
      Width = 169
      Height = 17
      Caption = 'Asignar permiso de Exportaci'#243'n'
      TabOrder = 8
    end
    object cbImportar: TCheckBox
      Left = 96
      Top = 202
      Width = 169
      Height = 17
      Caption = 'Asignar permiso de Importaci'#243'n'
      TabOrder = 9
    end
  end
  object pnlCuentaUsuarios: TPanel
    Left = 35
    Top = 117
    Width = 279
    Height = 268
    TabOrder = 3
    Visible = False
    object cxGrid2: TcxGrid
      Left = 1
      Top = 65
      Width = 277
      Height = 161
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 16
      ExplicitTop = -16
      ExplicitWidth = 250
      ExplicitHeight = 200
      object tvUsuarioxRol: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsUsuarioxRol
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        object sIdUsuario: TcxGridDBColumn
          Caption = 'Usuario'
          DataBinding.FieldName = 'sIdUsuario'
        end
        object NombreUsuario: TcxGridDBColumn
          Caption = 'Nombre Usuario'
          DataBinding.FieldName = 'NombreUsuario'
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = tvUsuarioxRol
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 277
      Height = 64
      Align = alTop
      TabOrder = 1
      object JvLabel5: TJvLabel
        Left = 14
        Top = 7
        Width = 57
        Height = 13
        Caption = 'C'#243'digo Rol:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel6: TJvLabel
        Left = 21
        Top = 26
        Width = 50
        Height = 13
        Caption = 'T'#237'tulo Rol:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object DBText1: TDBText
        Left = 77
        Top = 26
        Width = 48
        Height = 13
        AutoSize = True
        DataField = 'TituloRol'
        DataSource = dsRol
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 77
        Top = 7
        Width = 48
        Height = 13
        AutoSize = True
        DataField = 'CodigoRol'
        DataSource = dsRol
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object JvLabel7: TJvLabel
        Left = 21
        Top = 43
        Width = 98
        Height = 13
        Caption = 'Usuarios asignados:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object DBText3: TDBText
        Left = 125
        Top = 43
        Width = 48
        Height = 13
        AutoSize = True
        DataField = 'CuentaUsuarios'
        DataSource = dsRol
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 226
      Width = 277
      Height = 41
      Align = alBottom
      Padding.Left = 6
      Padding.Top = 4
      Padding.Right = 6
      Padding.Bottom = 4
      TabOrder = 2
      ExplicitTop = 232
      object btnUsrAgregar: TAdvGlowButton
        Left = 7
        Top = 5
        Width = 76
        Height = 31
        Align = alLeft
        Caption = '&Agregar'
        ImageIndex = 0
        Images = ClientModule1.PngImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        OnClick = btnUsrAgregarClick
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
        ExplicitLeft = 5
      end
      object btnUsrQuitar: TAdvGlowButton
        Left = 83
        Top = 5
        Width = 76
        Height = 31
        Align = alLeft
        Caption = '&Quitar'
        ImageIndex = 5
        Images = ClientModule1.PngImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        OnClick = btnUsrQuitarClick
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
        ExplicitLeft = 125
        ExplicitTop = 6
      end
      object btnUsrCerrar: TAdvGlowButton
        Left = 194
        Top = 5
        Width = 76
        Height = 31
        Align = alRight
        Caption = '&Cerrar'
        ImageIndex = 8
        Images = ClientModule1.PngImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 2
        OnClick = btnUsrCerrarClick
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
        ExplicitLeft = 213
        ExplicitTop = 6
      end
    end
  end
  object pnlEditarUsuarios: TPanel
    Left = 310
    Top = 134
    Width = 272
    Height = 189
    TabOrder = 4
    Visible = False
    object Panel9: TPanel
      Left = 1
      Top = 147
      Width = 270
      Height = 41
      Align = alBottom
      Padding.Left = 6
      Padding.Top = 4
      Padding.Right = 6
      Padding.Bottom = 4
      TabOrder = 0
      ExplicitTop = 96
      ExplicitWidth = 183
      object btnEditarCancelar: TAdvGlowButton
        Left = 187
        Top = 5
        Width = 76
        Height = 31
        Align = alRight
        Cancel = True
        Caption = '&Cancelar'
        ImageIndex = 8
        Images = ClientModule1.PngImageList1
        ModalResult = 2
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        OnClick = btnEditarCancelarClick
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
        ExplicitLeft = 125
        ExplicitTop = 6
      end
      object btnEditarOk: TAdvGlowButton
        Left = 111
        Top = 5
        Width = 76
        Height = 31
        Align = alRight
        Caption = '&Aceptar'
        Default = True
        ImageIndex = 1
        Images = ClientModule1.PngImageList1
        ModalResult = 1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        OnClick = btnEditarOkClick
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
        ExplicitLeft = 105
        ExplicitTop = 6
      end
    end
    object cxGrid3: TcxGrid
      Left = 1
      Top = 1
      Width = 270
      Height = 146
      Align = alClient
      TabOrder = 1
      ExplicitTop = -5
      ExplicitWidth = 183
      ExplicitHeight = 89
      object tvUsuariosNo: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsUsuariosNo
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
        OptionsSelection.InvertSelect = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        object edtsIdUsuario: TcxGridDBColumn
          Caption = 'Usuario'
          DataBinding.FieldName = 'sIdUsuario'
          Width = 80
        end
        object edtNombreUsuario: TcxGridDBColumn
          Caption = 'Nombre Usuario'
          DataBinding.FieldName = 'NombreUsuario'
          Width = 300
        end
      end
      object cxGrid3Level1: TcxGridLevel
        GridView = tvUsuariosNo
      end
    end
  end
  object cdRol: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 384
    Top = 312
  end
  object imgUsuario: TPngImageList
    Height = 32
    Width = 32
    PngImages = <
      item
        Background = clWindow
        Name = 'Rol1-32'
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000000017352474200AECE1CE9000000097048597300000EC400000EC40195
          2B0E1B0000077E4944415478DAED576B6C14E7153DB3EF5DAFBDBB2C7EF00A76
          8C0D3821015CBB0DAD252C1781E23AC5011592485848D482AAB4692584849AE6
          0F3F4849841235694AA346A56D2C085208482E8D481021254EE3F0706201C636
          7E3F62EF7BBDBBF3EEBD1FB6510AB20155ED9F7EABD1CCEC7CF3DD73CF39F7CE
          8C64D2C0FF7048FF07703F0078AA2449FF1D000303033875EA14144541565616
          366DDA844020704F8B5EBC7811E7CF9F17600B0A0AC4BD56ABF5DE00A8AA8AFD
          FBF7A3A5A505393939300C03E9741AEDEDED686D6D456E6E2E52A9148E1D3B26
          40DA6C36B8DD6E1184E7EFD9B3077D7D7DC8CECE86A669181F1F17CC31A07B02
          70FCF8711C397204C9641263636370B95C6291783C8E0D1B36A0A6A606CDCDCD
          98BA8DF7CCD2D0D010CACBCB110E87313C3C2C4032037CCE809A9A9AB075EBD6
          D9016CDBB60DD5D5D5D8BE7D3B0E1E3C88B367CFA2A4A4046D6D6DE8EEEEC6AE
          5DBB70F8F0611417170B696459462C16C3C4C4043A3A3AD0DBDB0BAFD78B7DFB
          F6A1ABAB4BDC7BF4E851545454E0C48913B303D8B2658BB881B3661AED763B12
          8984C874F7EEDD18191911DE60CACF9D3B2724E34C79CF73980996C4E3F188F5
          9889C1C14171CFDEBD7B670770E8D021343636221289080D39B368342AA4A8AB
          AB133EC8CFCF17A6BA7CF9B2081C0C0645E075EBD6E1F4E9D358BA74A908CCC0
          A7369FCF87356BD6CC0E80B5E6EC3938FB806FE6FFD8602CC9C99327C5753627
          1B9001F03CF6C1E8E8A860A1B0B05068CFD2B081195C7D7D3DF2F2F26607C00B
          B1DEBCE7C09C09B3C0B432FD0D0D0D62615DD7A783F3750EC460991D06C7C7FC
          7F2693116076ECD8312DCB8C00784C198E0707E2CDE974A2AAAA4A80E273361F
          076780531BB3C6A6EBEFEF174C30109EC78CDC8DFE3B01F0D164A3BB70E182C8
          94698ED2FEE98DF5307503D73AAF4355D4E9E09C3967C9E7FEB9B9D8BCF18738
          73E68C00C93E6100B5B5B5D325FBEF9DF40E063453A6A6730D895002192D23B2
          8A4713285DB204C5AB8B3074691403917E0A2A0B9978E360695DC2DA952588D9
          E72032D02D7211C04886CA552B50585A2672936662E0E3EE0FF0E45FD7636FE5
          6EEC59F92A2E7DF9391213713C56BC0A6DCE7F62FD1F9EC41BF56F60657C35C6
          D5AF611AB768966C4EB8423D2879FB27905EF833522B9E41F79516E8A681472A
          ABE07DEF79845E7B15454D9FC1B5AC12D6BB01681FB98CD5BF5D85EF952E8266
          4B21E80B60F3A33B61B33AD1DCD98CF7AEFC0D59963918BE19C6810D2FE109CB
          B7A14015348F291694BFB616B6023B9DABC82E2B83AFF239329081B10FDE42FA
          7A2FD2B021DDA6A1F44C273C0B8BEF04F0DD379742B2C7E1CFCE82C7ED002505
          C5A922438B84A33AC6E33144121A9EC96E40DDA28D7058ED503595FCA020A501
          FE741F965CFF238291CFA105A9813975981913E984156ACA0239467285333002
          CBB0FC2F57A7ED2600C4E5304A5E0EA292DAABD3E5240076D85C74D96505AD81
          1BC33751AA3E8D678B5EC142770C39F6146EF4DC2413924774157EEA114F5455
          E3F52FA2281A7C1FB55F36C2B1681EB4B4894C44811CD7A0C4096C5247B45DC1
          F24F637067E7DC66A0F9EABB78F193062CCE5D0C8FCB01A7DB420C38480A1323
          C9312C4CD463D3825F43B687A01812160472B02C3F07263160215727352B3EFA
          AA0BBAA62021F910F8BA15F5977E04DBFC7C64E204206252700D7282CCDA9F46
          DE2F7E87E0533B6F0378BBF565345D7F05F3FD41B83C447F96445A3A41758091
          5E033F2FFA3BE0C88892B458A852C87CB2A2D19E16951541A78D80E8860586AE
          2161F5A1ECB303A88CBC092D3B0895B257621A81A1FE319682F7FB3F46C1CF0E
          DF0670A4ED004E74BD8E02FF5CCADE0A2B815028484F7418AB32CFA3A6B001A6
          8D00D8ADA257689A41D46BA202542A538DCAF056D332C13F5923ED651D3F78B7
          02FE255EA813149800B014723805F7A34F21FF85F76F03E80CDDC04FCF3E8EB2
          C5257039BC30284E92025CBD31889D45CD981798070705B7582418E459995AB0
          42CD88012874AC73294E3618D3A0164D3D216E0BE0B1E3CF6285FB02743B8148
          66480A6A5C1D1AB27EF97B04D7377EB30A2E0D7C81773A5F44D2D387093D06C5
          62474FE7047EF3AD2B70B86D70582451722A05C8A8B418656850E60A31C00078
          58481FC10A1192861BC18B7FC2DAB65FC1F0D29B56861A93F430ECB52FC15FB3
          1996C9AE28003084A90E39101AC228955467F42B0C8792289FFF1C1C1E2B1CB0
          08C3290420AD648881490014509B7C17608FB00754F282AC512B8E8451A7B4C0
          7C6835A4B985702E2AA26E806FB4E519DF8A39B10F3BFA90E3CD1200B872152A
          BB8CAA09ED0DF209F70296C12060262761DA8527582248566CAB7AE46E8F9A99
          9F865363827AF93F7AC6E1F3BA61235A758B498BB3EE9A30219B4E3423957537
          480A0241280C9E434635A82C77ACABC04C63D6EF824FAF75236575618EC70DD5
          3444208DB213DAEBB7AA40D5D80B269D6B02209F872251D47F67394A17143C38
          80299D3A0786D14B4FC7244962A7573327F769EA01195101545AE487449A1ED1
          89243DB25514057DA87EBC18D9F4D23ADBB8AF2F235995118AA6304AD925D29A
          D09C1FC576AB04BFD78587F2E6905CFCD663BDD725EFF7DBF06E367A90390F0C
          E03F3FFE05E17AE9DD86E72C680000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Rol1-32-Gris'
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000000097048597300000EC400000EC401952B0E1B0000033E4944415478DA
          ED965B28AC5114C7FFE32EA43C7874BF3E684A8A7893DC4B942951A3344914CD
          C8835C43F2E0C1E541A4944BC9ADA69994070F6EF1C028452E0DE2C125352545
          6EC75AA7EF3BDF67669AA1733A8A7F4DB367BEFDADF5DB6BAFBDD656BCBE09FF
          518A1F802F0D50575787DDDD5D28954A747474386D747F7F1FD5D5D5F0F2F242
          545414BABABAA050289C0718181840454585D5E4CBCB4B040606F278787818E3
          E3E3ECE4E9E9097ABD1E2E2E2E484B4BC3F2F2B2ECBDF0F0701C1D1D3907A0D5
          6A313838083F3F3F5C5C5CC82693F1B0B03076F6FE1929323212999999989C9C
          C4D5D595ECD9FAFA3A1213131D03A4A7A7A3B0B0101A8D06636363686A6A82AF
          AF2F3C3C3CB0B9B9C95B929C9C0C8BC562734582B9BCBC3C1C1C1CC0D3D313A7
          A7A708090981C964720C505656C6E1B5250A77565616E6E6E6909494848D8D0D
          BB00EFD5DCDC8CD6D656C700DDDDDDD0E974B6F7EB2D91F6F6F6101313C3BF69
          ECEEEECEFFBBBABA22343414FDFDFDA8ACAC84B3FAD0312C2828C0ECECACDDE7
          B7B7B79C883E3E3EFF066068688873E36FEA6B17A2EF07303F3F8FECEC6C9497
          97733594EAE5E58533DD6030202727C7CAD0C2C202323232707F7FCF675F2A2A
          CBBDBDBD368FA80820381744191F1717C7E39D9D1D59F68F8E8EA2A4A4446688
          6AC4C3C3038F535252F87D2A603333330C275D88B42F880054E3AFAFAF1D86AC
          BEBEDE66635A5D5DC5E2E22257CEAAAA2AF4F5F5E1EEEE0EA5A5A5989E9E16E7
          E5E7E7CB162302D8EB56821A1A1AD0D6D6E610706565054B4B4B0C4A6A6969B1
          AA80D2AD6080A9A929A8542ABB46272626505454E4D0B934CC353535BCEF24AA
          96D431053D3E3EC2CDCDED0F00B5DEF74927282020003737374E3B1734323282
          A0A020A4A6A6A2B3B3538C088916438B1201DADBDBD1D8D8284EA09A7E7C7CCC
          63EA88C5C5C51F0620C5C7C7636B6BEBB723C916933DB22B020813FCFDFD3912
          B9B9B97C1F209D9C9C203838F85300090909E8E9E9E15341DFB42DA4C3C34344
          4444C801CECECEF8FCD7D6D642AD56E3FCFC9C2361369B3FE59CB4B6B606A3D1
          C8C77B7B7B9BA34C770AB22BC8AA12528BA5CB86B7B7377FA2A3A33F0D404589
          4EC4F3F3335F48626363ADE67CAD52FC03F003F02D017E015BC0B1B0326262FE
          0000000049454E44AE426082}
      end>
    Left = 504
    Top = 200
    Bitmap = {}
  end
  object dsPermisos: TDataSource
    Left = 216
    Top = 264
  end
  object dsRol: TDataSource
    DataSet = cdRol
    Left = 232
    Top = 120
  end
  object cdRolUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 192
    Top = 176
  end
  object cdPermisosUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 336
    Top = 296
  end
  object frxPermisos: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42366.856075740700000000
    ReportOptions.LastChange = 42371.512413587960000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 552
    Top = 40
    Datasets = <
      item
        DataSet = ClientModule1.fdsOrganizacion
        DataSetName = 'fdsOrganizacion'
      end
      item
        DataSet = frxDBPermisos
        DataSetName = 'frxDBPermisos'
      end
      item
        DataSet = frxDBRol
        DataSetName = 'frxDBUsuario'
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
      object PageHeader2: TfrxPageHeader
        Height = 139.842610000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo47: TfrxMemoView
          Width = 740.787635910000000000
          Height = 109.606370000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Picture2: TfrxPictureView
          Left = 3.779530000000000000
          Top = 3.779530000000001000
          Width = 113.385900000000000000
          Height = 86.929190000000000000
          ShowHint = False
          DataField = 'Imagen'
          DataSet = ClientModule1.fdsOrganizacion
          DataSetName = 'fdsOrganizacion'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo48: TfrxMemoView
          Left = 128.504020000000000000
          Top = 7.559059999999999000
          Width = 608.503937010000000000
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
        object Memo49: TfrxMemoView
          Left = 128.504020000000000000
          Top = 26.456710000000000000
          Width = 608.503937007874000000
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
        object Memo50: TfrxMemoView
          Left = 128.504020000000000000
          Top = 49.133890000000010000
          Width = 608.504037090000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'AUTORIZACI'#211'N DE PERMISOS POR ROL')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 3.779530000000000000
          Top = 90.708720000000000000
          Width = 113.385900000000000000
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
        object Memo18: TfrxMemoView
          Left = 128.504020000000000000
          Top = 68.031540000000010000
          Width = 608.504330000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Rol: [frxDBUsuario."CodigoRol"] - [frxDBUsuario."TituloRol"]')
        end
        object Memo19: TfrxMemoView
          Left = 128.504020000000000000
          Top = 86.929190000000000000
          Width = 608.504330000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'N'#250'mero de Usuarios asignados: [frxDBUsuario."CuentaUsuarios"]')
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 268.346630000000000000
        Width = 740.409927000000000000
        DataSet = frxDBPermisos
        DataSetName = 'frxDBPermisos'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          Width = 419.527830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Descripcion'
          DataSet = frxDBPermisos
          DataSetName = 'frxDBPermisos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxDBPermisos."Descripcion"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 464.882190000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Edicion'
          DataSet = frxDBPermisos
          DataSetName = 'frxDBPermisos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBPermisos."Edicion"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 510.236550000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Insercion'
          DataSet = frxDBPermisos
          DataSetName = 'frxDBPermisos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBPermisos."Insercion"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 555.590910000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Borrado'
          DataSet = frxDBPermisos
          DataSetName = 'frxDBPermisos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBPermisos."Borrado"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 600.945270000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Impresion'
          DataSet = frxDBPermisos
          DataSetName = 'frxDBPermisos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBPermisos."Impresion"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 646.299630000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Exportar'
          DataSet = frxDBPermisos
          DataSetName = 'frxDBPermisos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBPermisos."Exportar"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 691.653990000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Importar'
          DataSet = frxDBPermisos
          DataSetName = 'frxDBPermisos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBPermisos."Importar"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 419.527830000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Lectura'
          DataSet = frxDBPermisos
          DataSetName = 'frxDBPermisos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBPermisos."Lectura"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 26.456710000000000000
        Top = 219.212740000000000000
        Width = 740.409927000000000000
        Condition = 'True'
        ReprintOnNewPage = True
        object Memo17: TfrxMemoView
          Left = 419.527830000000000000
          Width = 317.480520000000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'PERMISOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 419.527830000000000000
          Top = 13.228346460000010000
          Width = 45.354360000000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clSilver
          DataSet = frxDBPermisos
          DataSetName = 'frxDBPermisos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Leer')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 464.882190000000000000
          Top = 13.228346460000010000
          Width = 45.354360000000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clSilver
          DataSet = frxDBPermisos
          DataSetName = 'frxDBPermisos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Editar')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 510.236550000000000000
          Top = 13.228346460000010000
          Width = 45.354360000000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clSilver
          DataSet = frxDBPermisos
          DataSetName = 'frxDBPermisos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Insertar')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 555.590910000000000000
          Top = 13.228346460000010000
          Width = 45.354360000000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clSilver
          DataSet = frxDBPermisos
          DataSetName = 'frxDBPermisos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Borrar')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 600.945270000000000000
          Top = 13.228346460000010000
          Width = 45.354360000000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clSilver
          DataSet = frxDBPermisos
          DataSetName = 'frxDBPermisos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Imprimir')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Width = 419.527830000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clSilver
          DataSet = frxDBPermisos
          DataSetName = 'frxDBPermisos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            'Fuente de informaci'#243'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 646.299630000000000000
          Top = 13.228346460000010000
          Width = 45.354360000000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clSilver
          DataSet = frxDBPermisos
          DataSetName = 'frxDBPermisos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Exportar')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 691.653990000000000000
          Top = 13.228346460000010000
          Width = 45.354360000000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clSilver
          DataSet = frxDBPermisos
          DataSetName = 'frxDBPermisos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Importar')
          ParentFont = False
        end
      end
    end
  end
  object frxDBRol: TfrxDBDataset
    UserName = 'frxDBUsuario'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdRol=IdRol'
      'CodigoRol=CodigoRol'
      'TituloRol=TituloRol'
      'CuentaUsuarios=CuentaUsuarios')
    DataSet = cdRol
    BCDToCurrency = False
    Left = 632
    Top = 40
  end
  object frxDBPermisos: TfrxDBDataset
    UserName = 'frxDBPermisos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TABLE_NAME=TABLE_NAME'
      'TABLE_COMMENT=TABLE_COMMENT'
      'Descripcion=Descripcion'
      'Permisos=Permisos'
      'Lectura=Lectura'
      'Edicion=Edicion'
      'Insercion=Insercion'
      'Borrado=Borrado'
      'Impresion=Impresion'
      'Exportar=Exportar'
      'Importar=Importar')
    DataSource = dsPermisos
    BCDToCurrency = False
    Left = 704
    Top = 40
  end
  object cdUsuarioxrol: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 424
    Top = 16
  end
  object dsUsuarioxRol: TDataSource
    DataSet = cdUsuarioxrol
    Left = 504
    Top = 16
  end
  object cdUsuarioxRolUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 72
    Top = 32
  end
  object cdUsuariosNo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 240
  end
  object dsUsuariosNo: TDataSource
    DataSet = cdUsuariosNo
    Left = 96
    Top = 224
  end
end
