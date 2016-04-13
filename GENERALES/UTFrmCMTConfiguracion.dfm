object FrmCMTConfiguracion: TFrmCMTConfiguracion
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Configuraci'#243'n'
  ClientHeight = 387
  ClientWidth = 328
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object CxPageConfig: TcxPageControl
    Left = 0
    Top = 58
    Width = 328
    Height = 329
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxPage1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 327
    ClientRectLeft = 2
    ClientRectRight = 326
    ClientRectTop = 28
    object cxPage1: TcxTabSheet
      Caption = 'Configuraci'#243'n de Periodos Consumo'
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 324
        Height = 264
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = ClientModule1.dxlytcxlkndfl1
        object rgDesde: TcxRadioGroup
          Left = 10
          Top = 10
          Caption = 'Desde:'
          Enabled = False
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Lunes'
              Value = 'L'
            end
            item
              Caption = 'Martes'
              Value = 'M'
            end
            item
              Caption = 'Mi'#233'rcoles'
              Value = 'MI'
            end
            item
              Caption = 'Jueves'
              Value = 'J'
            end
            item
              Caption = 'Viernes'
              Value = 'V'
            end
            item
              Caption = 'S'#225'bado'
              Value = 'S'
            end
            item
              Caption = 'Domingo'
              Value = 'D'
            end>
          Properties.OnChange = rgDesdePropertiesChange
          ItemIndex = 0
          TabOrder = 0
          Height = 103
          Width = 304
        end
        object rgHasta: TcxRadioGroup
          Left = 10
          Top = 119
          Caption = 'Hasta:'
          Enabled = False
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Lunes'
              Value = 'L'
            end
            item
              Caption = 'Martes'
              Value = 'M'
            end
            item
              Caption = 'Mi'#233'rcoles'
              Value = 'MI'
            end
            item
              Caption = 'Jueves'
              Value = 'J'
            end
            item
              Caption = 'Viernes'
              Value = 'V'
            end
            item
              Caption = 'S'#225'bado'
              Value = 'S'
            end
            item
              Caption = 'Domingo'
              Value = 'D'
            end>
          Properties.OnChange = rgHastaPropertiesChange
          ItemIndex = 6
          TabOrder = 1
          Height = 105
          Width = 185
        end
        object cxCbbSemanas: TcxComboBox
          Left = 82
          Top = 230
          Enabled = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            '1 Semana'
            '2 Semanas'
            '3 Semanas'
            '4 Semanas'
            '5 Semanas')
          Style.HotTrack = False
          TabOrder = 2
          Width = 121
        end
        object DxLayoutLayoutControl1Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxlytmLayoutControl1Item1: TdxLayoutItem
          Parent = DxLayoutLayoutControl1Group_Root
          CaptionOptions.Text = 'cxRadioGroup1'
          CaptionOptions.Visible = False
          Control = rgDesde
          ControlOptions.ShowBorder = False
          Enabled = False
          Index = 0
        end
        object dxlytmLayoutControl1Item11: TdxLayoutItem
          Parent = DxLayoutLayoutControl1Group_Root
          CaptionOptions.Text = 'cxRadioGroup1'
          CaptionOptions.Visible = False
          Control = rgHasta
          ControlOptions.ShowBorder = False
          Enabled = False
          Index = 1
        end
        object dxlytmLayoutControl1Item12: TdxLayoutItem
          Parent = DxLayoutLayoutControl1Group_Root
          CaptionOptions.Text = 'No. Semanas:'
          Control = cxCbbSemanas
          ControlOptions.ShowBorder = False
          Enabled = False
          Index = 2
        end
      end
      object pnl1: TPanel
        Left = 0
        Top = 264
        Width = 324
        Height = 35
        Align = alBottom
        TabOrder = 1
        Visible = False
        object cxbtnGuardar: TcxButton
          AlignWithMargins = True
          Left = 164
          Top = 4
          Width = 75
          Height = 27
          Align = alRight
          Caption = '&Guardar'
          TabOrder = 0
        end
        object cxbtnCancelar: TcxButton
          AlignWithMargins = True
          Left = 245
          Top = 4
          Width = 75
          Height = 27
          Align = alRight
          Caption = '&Cancelar'
          TabOrder = 1
          OnClick = cxbtnCancelarClick
        end
      end
    end
  end
  object cdConfiguracion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 288
  end
  object DxManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = Form2.cxImageList32x32
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 112
    Top = 288
    DockControlHeights = (
      0
      0
      58
      0)
    object dxbrDxManager1Bar1: TdxBar
      Caption = 'Nuevo'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 496
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBtnGuardar'
        end
        item
          Visible = True
          ItemName = 'dxBtnEliminar'
        end
        item
          Visible = True
          ItemName = 'dxBtnSalir'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBtnNuevo: TdxBarLargeButton
      Caption = '&Nuevo'
      Category = 0
      Hint = 'Nuevo'
      Visible = ivAlways
      LargeImageIndex = 0
      AutoGrayScale = False
    end
    object dxBtnEditar: TdxBarLargeButton
      Caption = '&Editar'
      Category = 0
      Hint = 'Editar'
      Visible = ivAlways
      LargeImageIndex = 7
      AutoGrayScale = False
    end
    object dxBtnEliminar: TdxBarLargeButton
      Caption = '&Eliminar'
      Category = 0
      Hint = 'Eliminar'
      Visible = ivNever
      LargeImageIndex = 2
      AutoGrayScale = False
    end
    object dxBtnSalir: TdxBarLargeButton
      Caption = '&Salir'
      Category = 0
      Hint = 'Salir'
      Visible = ivAlways
      LargeImageIndex = 3
      OnClick = dxBtnSalirClick
      AutoGrayScale = False
    end
    object dxBtnGuardar: TdxBarLargeButton
      Caption = '&Guardar'
      Category = 0
      Hint = 'Guardar'
      Visible = ivAlways
      LargeImageIndex = 5
      OnClick = dxBtnGuardarClick
      AutoGrayScale = False
    end
  end
end
