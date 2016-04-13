object FrmUsuarioPermisos: TFrmUsuarioPermisos
  Left = 0
  Top = 0
  Caption = 'FrmUsuarioPermisos'
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
  object sbUsuarios: TScrollBox
    Left = 0
    Top = 0
    Width = 145
    Height = 420
    Align = alLeft
    TabOrder = 0
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
      Top = 92
      Width = 701
      Height = 274
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
      Height = 91
      Align = alTop
      TabOrder = 1
      object NombreUsuario: TDBText
        Left = 72
        Top = 15
        Width = 87
        Height = 13
        AutoSize = True
        DataField = 'NombreUsuario'
        DataSource = dsUsuario
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
        Width = 42
        Height = 13
        Caption = 'Usuario:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel3: TJvLabel
        Left = 22
        Top = 34
        Width = 82
        Height = 13
        Caption = #191'Administrador?:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object Administrador: TDBText
        Left = 110
        Top = 34
        Width = 81
        Height = 13
        AutoSize = True
        DataField = 'Administrador'
        DataSource = dsUsuario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object JvLabel4: TJvLabel
        Left = 255
        Top = 34
        Width = 81
        Height = 13
        Caption = 'Miembro del Rol:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object NombreRol: TDBText
        Left = 342
        Top = 34
        Width = 62
        Height = 13
        AutoSize = True
        DataField = 'NombreRol'
        DataSource = dsUsuario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pnlGeneralAcciones: TPanel
        Left = 1
        Top = 59
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
        Width = 110
        Height = 43
        Align = alLeft
        Caption = '   &Nuevo Usuario'
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
        Left = 227
        Top = 5
        Width = 110
        Height = 43
        Align = alLeft
        Caption = '   &Deshabilitar Usuario'
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
      object btnAutorizar: TAdvGlowButton
        Left = 367
        Top = 5
        Width = 110
        Height = 43
        Align = alLeft
        Caption = '   &Habilitar Usuario'
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
          1A000004ED494441545847C5576D4C5B65147E7A2F2D6D810D18B80F17028CA9
          3820820A631FC2C846881164C9DC34269AC9341A379038CC7EB8C4C4255B4246
          B2198C59FC2251A699A8688038DC4C74B2900DD88823630A0C0714CBF828F4E3
          DEB6B7F5BC9795513EEEBDF0676FF3A4B9EDE97B9EF39C73DEF754E7A78507B8
          B807E85B76AD5B8E02A2730A976A2B31DCDB099BF50ED624A66253EE1E3CBAE5
          B925C7B364020DA74A31D87D157169DB61309AE1119D686FF882888CC0BCC28C
          D7AB2F61EDC674CD449694828F0F3C0581A28F4BD9069FC70DD7E438FC3E3F12
          D277C8CE393E0427F765E07AF3D79A096856E0B3B21D088F5A0D83298C9CFA66
          1CF07A032C7F7760A4FF26F8103D584D4FFC378E435FB610D16C55229A14E8BC
          F00D453B469BFBE09A9A80E09894C16AC139318A81EE6B70B9048882283B5C19
          BB029FBF93A7EA9C196822D078BA0C1131EB204C8DC3ED9C9C866B8A08D8D175
          F917E415ECC2E1A315C8D9950BBBDD41A5CDC1EB16F0FB57C75549A8A6E0D6E5
          067C7FA204916BE241124C6FA8D3C1E3F6C23E7A076F1D7A1591ABA2E016DD54
          94A1181EB0E0A3AA33D087F0B2E907CD764512AA0A5C6DAC01AFD753B4B67B98
          C498D5029D38828A2325309978386C63F0087638281D31ABC2517EF800428D46
          4445F0B0F4FCA54840558133FB933034682555F52C7488A280CD598FA368771E
          9C0E177CB30A32E089E77998CC46DCB50CA17DF411E497BCBF280945024CF0BA
          838978F6F97CB4B676D1931F292989888E5E09A753909F175F3AE83909F5AD5E
          EC3B5AB3A899620AECB609180D1C789D079B3393081BE919B04F4EC0E71508A2
          0204F825015EC7E8F26B40F27AA84D244874DAB1966390DC4EF8BD2E8D20123E
          CFF2098447C7525B51154B5A1DCEB623853C0EE8C362E611D8F0532102504C41
          880E70881C45EBBC2739935D1B98FC53B6719863E2820830C7B3976A1B72B1E9
          F0B92789844820493582F38BE8EB19405266C1F253C07E199F598C7F6F0F81F3
          31E78C8436F0647FB3771CC94FE7CC10981BBDA6A33867EF9B68691B825E473D
          2FA7421D7EAA1987CD0A73F24BAA47B16A0AD80EB1DB2B30D03F402A684B8391
          13D078B11F85E5A715A3D7A400332A2E3D8E5FAF9BA097A6A8239449E87522BA
          6FDCC6FAC22A848587C90416929E7DDE53F4B3B6DB9019679F3C8FAAEFAC3010
          09CE1FDC09DBE23210C0E03FC3A8776622FF957255F99981EA5DF049C7A7A8B3
          1C43764206F21F2AC495D20FB135BA0F1B1269F8D0F1C84ADC39CFD1BB5B9250
          7FA50EE9117B716EAC7B41222C7A45026D962EBCF167168A5337217FED7E4812
          0F371DC97C9819BD4DADB0355D4084CD82632FDEAFF2D99ECEE6EE46BBED0754
          762C2C842281536DD5F8D17A102F27EFC16AC3931024BB3C0DC98C6916E0420D
          32D845F8DE1F2D0B7A38F1441A8E5CEB548C7E41056A6ED4E2DBFED7F0CCFAAD
          880D7D0C1EEA67C545A765E52DABA67C078C02D1CF23E0A58832CF1AB0333E19
          918678487E8FE2851BD8B066787AFAD1B2AA53CB5190707F5E0C2AC2B28B6F43
          10CFD33D1E4E7BB14DB5FF6B6B12D7A9FA2F08ED81557C18E78A9A676C830EA2
          B6C14640A4F1CBE5A1ABD745A049972068C00EA9579580D7A543DFDDE0AA0C52
          20A73613E1344EB16199A3DC0686668E0ACF4FE3182B40260A7B975FEC73BF6C
          28AF4E83695112696E177DE78348836DE30BBFCDD8A99E03AA61CD3158E8D49B
          5D7473F7D374172C85C45C674ACED9BEFF0312655339B70C75BD000000004945
          4E44AE426082}
        TabOrder = 2
        TabStop = True
        Visible = False
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
      object btnDesautorizar: TAdvGlowButton
        Left = 477
        Top = 5
        Width = 110
        Height = 43
        Align = alLeft
        Caption = '   &Deshabilitar Usuario'
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
          1A00000498494441545847C5976B4C1C5514C7FF33C32CBB082DD092E2AB0162
          D55A34C136D85A289416D2A0518C4DFBC10F46C144228F929468A3B556ABF848
          9B546DA30D5689156D2DA6354222AD26560221297D45516C34F2DA6D1779ED73
          667776C67B67BBB80B333B0331E92537C33267CFFF77CE3DE7DE0BA390819B38
          D89BA8AD4A330BC980E873A3ABF53D5CFBEB0AA69DC3C8CCB91FAB8AB7E29E87
          1F9D773CF306683F5887D181F358FE40212CD62404451F2EB47F4A40C690B428
          09CF1DEAC2AD2BF24C83CC6B090E57AD8140A25F9E5B00391880DF3509455690
          9DB7511567B904ECDFFE202E9FF9C23480E90C7C52BF11C969CB60B1DD4244E5
          19018EB7C071F522C6067F0797C083D6F4D4F549D47ED64D40D7198298CAC095
          1FBE22D14E10E732FCEE29085E973A692DF8A6C6313270097EBF00511055C1C5
          198B70744789A138353005D0F17E3D5296DE06C13D8980CF159E7E3701F0A0BF
          E77B946C29C5CEDD8D282A2D86C7E325A5CD420A083877ACC910C27009FEE869
          C7376F572235330B240561870C83604082677C18D5B54F2375491A0262801465
          22AE8D38F0C18123E01338D5F4B5339EB810861938DFD1028EE749B4D337A60B
          134E0718710C8D2F55C266E3E09D9E4050F0C04B9663E9926434ECAC42A2D58A
          B4140E8E3F7F890B60988123CFDC05FBA8936495A7A1431405AC7DE83E3CF644
          097C5E3FE4A8828C28711C075B9215FF38ECB8307E37CA2A5FD185880B4013DE
          569383F2C7CBD0DBDB4F3E29C8CDCD417AFA62F87C82FA597F30E0D9104EF74A
          D8BEBB656100EEE929FCB4770D4ACB8B48A46131490ACDFCAEE53554DD33E7CF
          E9C357170630353E86EE37F351BC692D024149D7895C7BC9B0DA2306B361E216
          61727A06692B52C5213F14497BCE479C424CDCB92206362E40020378459688FB
          204BC29CA9340C988E3CDA301AC2B00DD98C3CC801178110C9146626D338B820
          F1C8972210860059F91518FADB0E56A6E2144204BBEBBAAE78E88D54D0C9BF93
          865385A3712129842140D1B6E7D1DD6707CF909E5797C2A7EB34B8C7A2BE5748
          CD78A79DA8F8F976C32C1902500F19858D18191C215910C1EF0D683A0DBC2CCF
          2C8F951560798B6E5CC6C31440455D13CE5EB6810FB9353D8A2F92A86FD407CF
          88905E25D56B729802A0BED6EDEFC481934E4DB7B4439490001A39B3CFA62BAD
          B52119027C74B119A51D59F8D6BB0765278E6A3AB7811CC1E4B0529AD2E7254E
          8D7501FA1CFD587D32056349CDD857B00B5B32CB217174FF9F3BDAFA52603D9C
          AD2B7EEC7483EE3BCDC3E860DF219C72D6E0A9955BB1CCB21A42C8A3DE86E8D8
          BCFE6B93AB1B36FBAEAB1067EDC7E11FDF848FAB7F9BF3DD39002DBFB6E2F8E0
          B3D870C77A6424DE8B20E9FFD9635BD9395310273A379013311113E2102A1FD1
          DE356300241264FE97166CCE5A89544B16424A50F3C0AD7952FF748B907DD8F6
          DF9E1FCF3E06A0FEC71720889D843A99F8A1572AFDF3FEF52A97A92CC433A25D
          110350F0793656A5D820D3DA8CFA97510FE3DD3AED4DC90C59A42563008A5AF3
          914CAE53B43958752F0937094B2EA10AB98E31E44993429FEA0F7936EF1832A3
          176313BD1F18DE09CD789F7DC61BA53DFAFDFF021071180F44EF5AF62F1C6F38
          6646A2E40B0000000049454E44AE426082}
        TabOrder = 3
        TabStop = True
        Visible = False
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
        Left = 337
        Top = 5
        Width = 30
        Height = 43
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 4
      end
      object btnImprimir: TAdvGlowButton
        Left = 587
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
        TabOrder = 5
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
      end
      object btnEditarUsuario: TAdvGlowButton
        Left = 117
        Top = 5
        Width = 110
        Height = 43
        Align = alLeft
        Caption = '   &Editar Usuario'
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
        TabOrder = 6
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
  object cdUsuario: TClientDataSet
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
        Name = 'Usuario-32'
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000000017352474200AECE1CE9000000097048597300000EC400000EC40195
          2B0E1B00000006624B474400FF00FF00FFA0BDA7930000000976704167000000
          60000000600078DBD9F40000002574455874646174653A637265617465003230
          30392D30392D31335431333A31383A34312B30323A303045E4CAFE0000002574
          455874646174653A6D6F6469667900323030392D30392D31335431333A31383A
          34312B30323A303034B972420000001974455874536F66747761726500777777
          2E696E6B73636170652E6F72679BEE3C1A000004C24944415478DAD5967B5054
          551CC73F77EF3E60171F208A94E308964F7C46A851A818640E4A358A169AA396
          3D7CD54CFF3893934DA6944D33EA688E66E468989AA4063A855696E830029ACF
          D4C451521041777159F675EF76EE4AEA3420CB82E3F49DD9B977CF3D8FCFEF77
          7EE7F73B924F888728E97F09E072DCE260CE722ACB8E63AB2AA76BEC00FA8F9A
          48EFA7D21E3C40FE8AF95C395B4CF781CF600C31E3713928CDCF1620D731B737
          F3FAEA83443F3EE4C100AC792D9EA89E03B074E88CAA78D086CA0623D6CA4B9C
          3B9C874ED663BD56CBB44F36332825B36D01362C184D587814C6500B3E55BDD3
          AE01549C3FCAF54B7F22EB0D7E28EBB59BCCFBFA10DDE346B40DC0F1FDDFF2DB
          E6654476EF2D2C57EE0E962410A34F1DDC8D2A9E060163341905A082D7E366F1
          BEFAB601C84A8F22BAD7507C8AF79E916271745C3856C8E8942406C70FE658C9
          1F14EC29C06231E3B45B499DBD94A4A90B5B0770EE703EB959B3E8D8B587B0D6
          7767718FDB8BBDA69CB7E64DA763A770DC2EB7084A13957F57B0EAF37518F4B2
          BFEBE2027BEB0072166570E5CC61B1F7610D001275750EDA87C29B73335184EF
          BD9EBB9E31892DB0DEAC65FDDA2D980D1E32961712DD332E788075331EE3EA95
          2A249DC1BFB8CBE564F8B07E4C783119475D3DEA3D01F9AF645926D41C4275C5
          554A6B7A913AEBFDE000B40F3BE6C6322E3D95A2A2D3FE96B8B85822223AE070
          381B7A343935069DC2AE222F93176D0C0EE096CDCA810FE349193752587ABB9B
          D7ABDC796F4E465921F7808DCCACBCE000AC35D739F47102A3C60CC77DCF3E07
          2AA3AC92FBBB9DA99FFE181C80577CC97DA333696989B8DC2D05D0B6C043FE89
          4E4CFEE09BE00034654F8F22237D104EB74A4BA4252997A396624732E3E72C0B
          1E60E37B637929DE8ACBAB9D82C0EB965EAFE3F4C90B84A7E7D0F7C991C1031C
          D8B696C8B2A5443F1225CE7CE01E08314A6CCF3BC9CC1CC7FD3D15482A5E3F49
          CF94097D70B802F380E67ED56DE7D7EA314C59B4A1F5003B572EA477ED174476
          89F467BEE66436497CB7E70293B3ED58C22CAD07D0B46A5234D392559CEAED92
          DB948C0689B2F395DC1CB89CD457DF6DDE5B8102145F3EC1EE19037927BD3D1E
          498F57F9CF44A238868A382DBF68635B5D024BD61C0A64DAE601D61EFD921D15
          4B18113394D42EE33932FF2312232ED233567842D22A9E248AB2F04CBD97C252
          0547D234EA5EEEC4AE233B18D22E83ACC4CFB42E2D0728A938CDECC261BC30A0
          3FA9D133501419B7E44116B5BE6C6F11B6BDFB6967ABC0E071501F128E23B61F
          31AF3C4F446C5724BB07832848A5B6EFF9EA681E53BBAD66FED0B703075851B2
          9A9D5573C9EC3B9128E3133815BBD877B5C1D5C2625172B59F5608B5BA20CB92
          984845A977A17A6F674CD18249B660F5FEC5BEAB5BA9AF19C3F6B4DDCD036C3C
          95C3D64B3349EA964867531F3CAAB3994DE4BEF9C9A03371C37599B25BC5E296
          9442F6739B9A06F00A8B12B61879B6475F3A1A7BA0F83C2DC87D4D4B2F190444
          3967AACF326FD00F8C8D496E1C60C1CF7370BA7E12D4E2F6834C4B526FF36E52
          C56C4EAA5C8FB27D4241E3004F6F8AA17FBB50D15577F7FED78618225428B971
          8DE299D58D038CCC49204CD62CD7A1F31F1D9DBF5D2702CFA78555C3355C7B4A
          0DFF7D3EA905082A2EB1DC9E49BF340EF030F4D001FE01BE364BBF818C706100
          00000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Usuario-32-Gris'
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000002000000020010300000049B4E8
          B700000006504C5445000000FFFFFFA5D99FDD000000097048597300000EC400
          000EC401952B0E1B0000001974455874536F667477617265007777772E696E6B
          73636170652E6F72679BEE3C1A000000824944415478DA63FCCFC0C0C00821FE
          373630FEFF33A580F1FF8719158CFF2F6CA961FC7FD0F11FE3FFC68F7D40A282
          9DF13FD36F66C6FF2C7F808A0336008986860638C10023EA1919FF1FB007110E
          40EE0339262021C30234948587F1FF162923C67FFF941318FF32312C60FCCDC2
          7081F1330F90F820C0C0CEF8400146C05D05003A953FD9377B50830000000049
          454E44AE426082}
      end>
    Left = 504
    Top = 200
    Bitmap = {}
  end
  object dsPermisos: TDataSource
    Left = 216
    Top = 264
  end
  object dsUsuario: TDataSource
    DataSet = cdUsuario
    Left = 328
    Top = 184
  end
  object cdUsuarioUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 192
    Top = 176
  end
  object cdPermisosUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 336
    Top = 240
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
    ReportOptions.LastChange = 42368.858536446760000000
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
        DataSet = frxDBUsuario
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
            'AUTORIZACI'#211'N DE PERMISOS')
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
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Usuario: [frxDBUsuario."NombreUsuario "]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 128.504020000000000000
          Top = 86.929190000000000000
          Width = 608.504330000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #191'Administrador?: [frxDBUsuario."Administrador"]')
          ParentFont = False
          VAlign = vaCenter
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
  object frxDBUsuario: TfrxDBDataset
    UserName = 'frxDBUsuario'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sIdUsuario=sIdUsuario'
      'sPassword=sPassword'
      'sNombre=sNombre'
      'sAPaterno=sAPaterno'
      'sAMaterno=sAMaterno'
      'NombreUsuario=NombreUsuario '
      'sMail=sMail'
      'IdUsuario=IdUsuario'
      'Comentarios=Comentarios'
      'Administrador=Administrador'
      'Activo=Activo')
    DataSet = cdUsuario
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
end
