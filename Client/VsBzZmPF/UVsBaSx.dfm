inherited FrmBaSx: TFrmBaSx
  Caption = #30149#20363#31579#36873
  ClientHeight = 618
  ClientWidth = 1237
  ExplicitWidth = 1253
  ExplicitHeight = 656
  PixelsPerInch = 96
  TextHeight = 13
  inherited advfcstsbr: TAdvOfficeStatusBar
    Top = 599
    Width = 1237
    ExplicitTop = 599
    ExplicitWidth = 1237
  end
  inherited advtlbrpgr1: TAdvToolBarPager
    Width = 1237
    ExplicitWidth = 1237
    inherited AdvPage1: TAdvPage
      Width = 1229
      ExplicitWidth = 1229
    end
  end
  inherited AdvPanel1: TAdvPanel
    Width = 1237
    Height = 574
    ExplicitWidth = 1237
    ExplicitHeight = 574
    FullHeight = 200
    object AdvPanel2: TAdvPanel
      Left = 0
      Top = 0
      Width = 1237
      Height = 89
      Align = alTop
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      TabOrder = 0
      UseDockManager = True
      Version = '2.1.1.0'
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      ColorTo = 14986888
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      FullHeight = 200
      object AdvGroupBox1: TAdvGroupBox
        Left = 0
        Top = 0
        Width = 1237
        Height = 89
        Align = alClient
        Caption = #30149#20363#31579#36873#26465#20214
        TabOrder = 0
        object dladvChkZyts: TDLAdvCheckBox
          Left = 9
          Top = 56
          Width = 208
          Height = 20
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #24494#36719#38597#40657
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          Alignment = taLeftJustify
          Caption = #20303#38498#22825#25968'                             '#21040
          ReturnIsTab = False
          Version = '1.3.4.1'
        end
        object dladvChkCH0A27: TDLAdvCheckBox
          Left = 9
          Top = 19
          Width = 208
          Height = 20
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #24494#36719#38597#40657
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          Alignment = taLeftJustify
          Caption = #20986#38498#26085#26399'                             '#21040
          ReturnIsTab = False
          Version = '1.3.4.1'
        end
        object advDtpks: TAdvDateTimePicker
          Left = 91
          Top = 19
          Width = 81
          Height = 21
          Date = 42507.468182870370000000
          Time = 42507.468182870370000000
          Kind = dkDate
          TabOrder = 0
          BorderStyle = bsSingle
          Ctl3D = True
          DateTime = 42507.468182870370000000
          Version = '1.2.0.1'
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
        end
        object advDtpjs: TAdvDateTimePicker
          Left = 223
          Top = 19
          Width = 81
          Height = 21
          Date = 42507.468182870370000000
          Time = 42507.468182870370000000
          Kind = dkDate
          TabOrder = 1
          BorderStyle = bsSingle
          Ctl3D = True
          DateTime = 42507.468182870370000000
          Version = '1.2.0.1'
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
        end
        object suiedtstart: TsuiEdit
          Left = 91
          Top = 57
          Width = 81
          Height = 19
          UIStyle = WinXP
          BorderColor = 6842472
          TabOrder = 2
          OnExit = suiedtstartExit
          OnKeyPress = suiedtstartKeyPress
        end
        object suiedtEnd: TsuiEdit
          Left = 223
          Top = 57
          Width = 81
          Height = 19
          UIStyle = WinXP
          BorderColor = 6842472
          TabOrder = 3
          OnExit = suiedtstartExit
          OnKeyPress = suiedtstartKeyPress
        end
        object AdvGlowButton1: TAdvGlowButton
          Left = 542
          Top = 52
          Width = 97
          Height = 31
          Caption = #31579#36873
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #24494#36719#38597#40657
          Font.Style = []
          ImageIndex = 11
          Images = DM_Img.ilButton
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = AdvGlowButton1Click
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
        object AdvedtCH0A23: TAdvEdit
          Left = 401
          Top = 17
          Width = 121
          Height = 23
          EmptyTextStyle = []
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #24494#36719#38597#40657
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Visible = True
          OnEnter = AdvedtCH0A23Enter
          OnExit = AdvedtCH0A23Exit
          OnKeyDown = AdvedtCH0A23KeyDown
          Version = '2.9.4.1'
        end
        object dladvChkCH0A23: TDLAdvCheckBox
          Left = 330
          Top = 20
          Width = 71
          Height = 20
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #24494#36719#38597#40657
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Alignment = taLeftJustify
          Caption = #20986#38498#31185#23460
          ReturnIsTab = False
          Version = '1.3.4.1'
        end
        object advckbDeath: TAdvOfficeCheckBox
          Left = 330
          Top = 53
          Width = 55
          Height = 20
          TabOrder = 9
          Alignment = taLeftJustify
          Caption = #27515#20129
          ReturnIsTab = False
          Version = '1.3.4.1'
        end
        object advckbOPS: TAdvOfficeCheckBox
          Left = 405
          Top = 53
          Width = 55
          Height = 20
          TabOrder = 10
          Alignment = taLeftJustify
          Caption = #25163#26415
          ReturnIsTab = False
          Version = '1.3.4.1'
        end
      end
    end
    object FlatPanel1: TFlatPanel
      Left = 648
      Top = 89
      Width = 589
      Height = 485
      Transparent = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentColor = True
      Align = alRight
      TabOrder = 1
      object FlatPanel2: TFlatPanel
        Left = 1
        Top = 1
        Width = 587
        Height = 32
        ParentColor = True
        Align = alTop
        TabOrder = 0
        object suichkCheckAll: TsuiCheckBox
          Tag = 201
          Left = 9
          Top = 5
          Width = 45
          Height = 23
          UIStyle = DeepBlue
          AutoSize = True
          Checked = False
          Caption = #20840#36873
          TabOrder = 0
          State = cbUnchecked
          Transparent = False
          OnClick = suichkAllClick
        end
        object suichkinverseAll: TsuiCheckBox
          Tag = 202
          Left = 64
          Top = 5
          Width = 45
          Height = 23
          UIStyle = DeepBlue
          AutoSize = True
          Checked = False
          Caption = #21453#36873
          TabOrder = 1
          State = cbUnchecked
          Transparent = False
          OnClick = suichkAllClick
        end
        object FlatbtnAllCancle: TFlatButton
          Tag = 203
          Left = 115
          Top = 5
          Width = 65
          Height = 25
          Caption = #20840#21462#28040
          TabOrder = 2
          OnClick = FlatbtnAllCancleClick
        end
      end
      object dbgrdhDest: TDBGridEh
        Left = 1
        Top = 33
        Width = 587
        Height = 399
        Align = alClient
        DataGrouping.GroupLevels = <>
        DataSource = dsDest
        Flat = True
        FooterColor = clWindow
        FooterFont.Charset = ANSI_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = #24494#36719#38597#40657
        FooterFont.Style = []
        RowDetailPanel.Color = clBtnFace
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = #24494#36719#38597#40657
        TitleFont.Style = []
        Columns = <
          item
            Checkboxes = True
            EditButtons = <>
            FieldName = 'chk'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #36873#25321
            Width = 33
          end
          item
            EditButtons = <>
            FieldName = 'CH0A00'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #20303#38498#21495
          end
          item
            EditButtons = <>
            FieldName = 'CH0A03'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #22995#21517
          end
          item
            EditButtons = <>
            FieldName = 'CH0A03'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #24615#21035
          end
          item
            EditButtons = <>
            FieldName = 'CH0A23'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #20986#38498#31185#23460
          end
          item
            EditButtons = <>
            FieldName = 'CH0A27'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #20986#38498#26085#26399
          end
          item
            EditButtons = <>
            FieldName = 'CH0A33'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #20027#31649#21307#24072
          end>
        object RowDetailData: TRowDetailPanelControlEh
          object FlatPanel6: TFlatPanel
            Left = 0
            Top = 0
            Width = 561
            Height = 0
            Transparent = True
            ParentColor = True
            Align = alLeft
            TabOrder = 0
            object FlatPanel7: TFlatPanel
              Left = 1
              Top = 1
              Width = 559
              Height = 32
              ParentColor = True
              Align = alTop
              TabOrder = 0
              object suiCheckBox7: TsuiCheckBox
                Left = 9
                Top = 5
                Width = 45
                Height = 23
                UIStyle = DeepBlue
                AutoSize = True
                Checked = False
                Caption = #20840#36873
                TabOrder = 0
                State = cbUnchecked
                Transparent = False
              end
              object suiCheckBox8: TsuiCheckBox
                Left = 64
                Top = 5
                Width = 45
                Height = 23
                UIStyle = DeepBlue
                AutoSize = True
                Checked = False
                Caption = #21453#36873
                TabOrder = 1
                State = cbUnchecked
                Transparent = False
              end
              object FlatButton3: TFlatButton
                Left = 115
                Top = 5
                Width = 65
                Height = 25
                Caption = #20840#21462#28040
                TabOrder = 2
              end
            end
            object DBGridEh1: TDBGridEh
              Left = 1
              Top = 33
              Width = 559
              Height = 451
              Align = alClient
              DataGrouping.GroupLevels = <>
              Flat = True
              FooterColor = clWindow
              FooterFont.Charset = ANSI_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -12
              FooterFont.Name = #24494#36719#38597#40657
              FooterFont.Style = []
              RowDetailPanel.Color = clBtnFace
              TabOrder = 1
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = #24494#36719#38597#40657
              TitleFont.Style = []
              Columns = <
                item
                  Checkboxes = True
                  EditButtons = <>
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #36873#25321
                  Width = 33
                end
                item
                  EditButtons = <>
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #20303#38498#21495
                end
                item
                  EditButtons = <>
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #22995#21517
                end
                item
                  EditButtons = <>
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #24615#21035
                end
                item
                  EditButtons = <>
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #20986#38498#31185#23460
                end
                item
                  EditButtons = <>
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #20986#38498#26085#26399
                end
                item
                  EditButtons = <>
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #20027#31649#21307#24072
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
        end
      end
      object FlatPanel8: TFlatPanel
        Left = 1
        Top = 432
        Width = 587
        Height = 52
        ParentColor = True
        Align = alBottom
        TabOrder = 2
        object AdvbtnSave: TAdvGlowButton
          Left = 486
          Top = 1
          Width = 100
          Height = 50
          Hint = #20445#23384
          Align = alRight
          Caption = #20445#23384
          ImageIndex = 10
          Images = DM_Img.ilButton
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 0
          OnClick = AdvbtnSaveClick
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
    object FlatPanel3: TFlatPanel
      Left = 0
      Top = 89
      Width = 577
      Height = 485
      Transparent = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentColor = True
      Align = alLeft
      TabOrder = 2
      object FlatPanel4: TFlatPanel
        Left = 1
        Top = 1
        Width = 575
        Height = 32
        ParentColor = True
        Align = alTop
        TabOrder = 0
        object suichkAll: TsuiCheckBox
          Tag = 101
          Left = 9
          Top = 5
          Width = 45
          Height = 23
          UIStyle = DeepBlue
          AutoSize = True
          Checked = False
          Caption = #20840#36873
          TabOrder = 0
          State = cbUnchecked
          Transparent = False
          OnClick = suichkAllClick
        end
        object suichkinverse: TsuiCheckBox
          Tag = 102
          Left = 64
          Top = 5
          Width = 45
          Height = 23
          UIStyle = DeepBlue
          AutoSize = True
          Checked = False
          Caption = #21453#36873
          TabOrder = 1
          State = cbUnchecked
          Transparent = False
          OnClick = suichkAllClick
        end
        object FlatbtnCancle: TFlatButton
          Tag = 103
          Left = 115
          Top = 5
          Width = 65
          Height = 25
          Caption = #20840#21462#28040
          TabOrder = 2
          OnClick = FlatbtnCancleClick
        end
      end
      object dbgrdhSource: TDBGridEh
        Left = 1
        Top = 33
        Width = 575
        Height = 451
        Align = alClient
        DataGrouping.GroupLevels = <>
        DataSource = ds1
        Flat = True
        FooterColor = clWindow
        FooterFont.Charset = ANSI_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = #24494#36719#38597#40657
        FooterFont.Style = []
        RowDetailPanel.Color = clBtnFace
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = #24494#36719#38597#40657
        TitleFont.Style = []
        Columns = <
          item
            Checkboxes = True
            EditButtons = <>
            FieldName = 'chk'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #36873#25321
            Width = 33
          end
          item
            EditButtons = <>
            FieldName = 'CH0A00'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #20303#38498#21495
          end
          item
            EditButtons = <>
            FieldName = 'CH0A02'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #22995#21517
          end
          item
            EditButtons = <>
            FieldName = 'CH0A03'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #24615#21035
          end
          item
            EditButtons = <>
            FieldName = 'CH0A23'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #20986#38498#31185#23460
          end
          item
            EditButtons = <>
            FieldName = 'CH0A27'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #20986#38498#26085#26399
          end
          item
            EditButtons = <>
            FieldName = 'CH0A33'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #20027#31649#21307#24072
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object FlatPanel5: TFlatPanel
      Left = 577
      Top = 89
      Width = 71
      Height = 485
      ParentColor = True
      Align = alClient
      TabOrder = 3
      object advspltr1: TAdvSplitter
        Left = 1
        Top = 1
        Height = 483
        Appearance.BorderColor = clNone
        Appearance.BorderColorHot = clNone
        Appearance.Color = clWhite
        Appearance.ColorTo = clSilver
        Appearance.ColorHot = clWhite
        Appearance.ColorHotTo = clGray
        GripStyle = sgDots
        ExplicitLeft = 0
        ExplicitTop = 200
        ExplicitHeight = 100
      end
      object advspltr2: TAdvSplitter
        Left = 67
        Top = 1
        Height = 483
        Align = alRight
        Appearance.BorderColor = clNone
        Appearance.BorderColorHot = clNone
        Appearance.Color = clWhite
        Appearance.ColorTo = clSilver
        Appearance.ColorHot = clWhite
        Appearance.ColorHotTo = clGray
        GripStyle = sgDots
        ExplicitLeft = 0
        ExplicitTop = 200
        ExplicitHeight = 100
      end
      object FlatbtnAllRight: TFlatButton
        Left = 24
        Top = 122
        Width = 25
        Height = 25
        Caption = '>>'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = FlatbtnAllRightClick
      end
      object FlatbtnRight: TFlatButton
        Tag = 1
        Left = 24
        Top = 177
        Width = 25
        Height = 25
        Caption = '>'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = FlatbtnAllRightClick
      end
      object FlatbtnLeft: TFlatButton
        Tag = 2
        Left = 24
        Top = 232
        Width = 25
        Height = 25
        Caption = '<'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = FlatbtnAllRightClick
      end
      object FlatbtnAllLeft: TFlatButton
        Tag = 3
        Left = 24
        Top = 287
        Width = 25
        Height = 25
        Caption = '<<'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = FlatbtnAllRightClick
      end
    end
  end
  inherited AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler
    Left = 152
    Top = 512
  end
  inherited AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler
    Left = 184
    Top = 512
  end
  inherited advfrmstylr1: TAdvFormStyler
    Left = 280
    Top = 512
  end
  inherited AdvPanelStyler1: TAdvPanelStyler
    Left = 248
    Top = 512
  end
  inherited dosm1: TDosMove
    Left = 216
    Top = 512
  end
  inherited DLCDS: TDlClientDataset
    Left = 112
    Top = 509
  end
  inherited al1: TActionList
    Left = 384
    Top = 517
  end
  inherited ds1: TDataSource
    DataSet = clientdtSource
    Left = 352
    Top = 517
  end
  object dsDest: TDataSource
    DataSet = clientdtDest
    Left = 1016
    Top = 480
  end
  object clientdtDest: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1048
    Top = 480
    object clientdtDestchk: TBooleanField
      FieldName = 'chk'
    end
    object clientdtDestCH0A00: TStringField
      FieldName = 'CH0A00'
    end
    object clientdtDestCH0A02: TStringField
      FieldName = 'CH0A02'
    end
    object clientdtDestCH0A03: TStringField
      FieldName = 'CH0A03'
    end
    object clientdtDestCH0A23: TStringField
      FieldName = 'CH0A23'
    end
    object clientdtDestCH0A27: TStringField
      FieldName = 'CH0A27'
    end
    object clientdtDestCH0A33: TStringField
      FieldName = 'CH0A33'
    end
    object clientdtDestCh0A01: TStringField
      FieldName = 'Ch0A01'
    end
    object clientdtDestChYear: TStringField
      FieldName = 'ChYear'
    end
  end
  object clientdtSource: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 312
    Top = 512
    object clientdtSourcechk: TBooleanField
      FieldName = 'chk'
    end
    object clientdtSourceCH0A00: TStringField
      FieldName = 'CH0A00'
    end
    object clientdtSourceCH0A02: TStringField
      FieldName = 'CH0A02'
    end
    object clientdtSourceCH0A03: TStringField
      FieldName = 'CH0A03'
    end
    object clientdtSourceCH0A23: TStringField
      FieldName = 'CH0A23'
    end
    object clientdtSourceCH0A27: TStringField
      FieldName = 'CH0A27'
    end
    object clientdtSourceCH0A33: TStringField
      FieldName = 'CH0A33'
    end
    object clientdtSourceCh0A01: TStringField
      FieldName = 'Ch0A01'
    end
    object clientdtSourceChYear: TStringField
      FieldName = 'ChYear'
    end
  end
end
