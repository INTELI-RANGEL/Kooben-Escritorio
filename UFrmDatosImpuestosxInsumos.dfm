object FrmDatosImpuestosxinsumos: TFrmDatosImpuestosxinsumos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Nuevo registro'
  ClientHeight = 149
  ClientWidth = 606
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 606
    Height = 108
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitWidth = 623
    ExplicitHeight = 598
    object cbbImpuestos: TcxDBLookupComboBox
      Left = 64
      Top = 10
      DataBinding.DataField = 'IdImpuesto'
      DataBinding.DataSource = dsUpt
      Properties.KeyFieldNames = 'IdImpuesto'
      Properties.ListColumns = <
        item
          FieldName = 'TituloImpuesto'
        end>
      Properties.ListSource = dsImpuestos
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 529
    end
    object rb1: TcxRadioButton
      Left = 10
      Top = 37
      Width = 167
      Height = 17
      Caption = 'Asignar a un insumo'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = rb1Click
    end
    object rb2: TcxRadioButton
      Left = 10
      Top = 64
      Width = 175
      Height = 17
      Caption = 'Asignar a grupo'
      TabOrder = 3
      OnClick = rb2Click
    end
    object btnInsumo: TcxButtonEdit
      Left = 274
      Top = 37
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnInsumoPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 2
      OnEnter = btnInsumoEnter
      OnExit = btnInsumoExit
      OnKeyPress = btnInsumoKeyPress
      Width = 319
    end
    object cbbGrupo: TcxDBLookupComboBox
      Left = 274
      Top = 64
      DataBinding.DataField = 'IdTipoInsumo'
      DataBinding.DataSource = dsUpt
      Properties.KeyFieldNames = 'IdTipoInsumo'
      Properties.ListColumns = <
        item
          FieldName = 'NombreTipoInsumo'
        end>
      Properties.ListSource = dsGrupo
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 319
    end
    object dxLayControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lyLayControl1Item1: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Impuesto:'
      Control = cbbImpuestos
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lyLayControl1Item3: TdxLayoutItem
      Parent = dxLayControl1Group1
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxRadioButton1'
      CaptionOptions.Visible = False
      Control = rb1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lyLayControl1Item4: TdxLayoutItem
      Parent = dxLayControl1Group2
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxRadioButton1'
      CaptionOptions.Visible = False
      Control = rb2
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lyInsumo: TdxLayoutItem
      Parent = dxLayControl1Group1
      CaptionOptions.Text = 'Insumo:'
      Control = btnInsumo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayControl1Group1: TdxLayoutAutoCreatedGroup
      Parent = dxLayControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object lyGrupo: TdxLayoutItem
      Parent = dxLayControl1Group2
      CaptionOptions.Text = 'Grupo:'
      Control = cbbGrupo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayControl1Group2: TdxLayoutAutoCreatedGroup
      Parent = dxLayControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 108
    Width = 606
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 117
    ExplicitWidth = 607
    object btnGuardar: TcxButton
      AlignWithMargins = True
      Left = 350
      Top = 3
      Width = 123
      Height = 35
      Align = alRight
      Caption = '&Guardar y Salir'
      ModalResult = 1
      TabOrder = 0
      ExplicitLeft = 400
    end
    object btn2: TcxButton
      AlignWithMargins = True
      Left = 479
      Top = 3
      Width = 124
      Height = 35
      Align = alRight
      Caption = '&Salir'
      ModalResult = 2
      TabOrder = 1
      ExplicitLeft = 480
    end
    object btn3: TcxButton
      AlignWithMargins = True
      Left = 221
      Top = 3
      Width = 123
      Height = 35
      Align = alRight
      Caption = '&Guardar'
      TabOrder = 2
      Visible = False
      ExplicitLeft = 400
    end
  end
  object cdImpuestos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 160
    Top = 88
  end
  object dsImpuestos: TDataSource
    DataSet = cdImpuestos
    Left = 160
    Top = 40
  end
  object cdGrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 24
    Top = 96
  end
  object dsGrupo: TDataSource
    DataSet = cdGrupo
    Left = 72
    Top = 96
  end
  object cdInsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 496
    Top = 80
  end
  object dsInsumo: TDataSource
    DataSet = cdInsumo
    Left = 456
    Top = 80
  end
  object cdUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 176
    Top = 96
  end
  object dsUpt: TDataSource
    DataSet = cdUpt
    Left = 224
    Top = 104
  end
end
