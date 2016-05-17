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
  end
  inherited advtlbrpgr1: TAdvToolBarPager
    Width = 1237
    inherited AdvPage1: TAdvPage
      Width = 1229
      ExplicitWidth = 1229
    end
  end
  inherited AdvPanel1: TAdvPanel
    Width = 1237
    Height = 574
    ExplicitTop = 31
    ExplicitWidth = 863
    ExplicitHeight = 389
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
      ExplicitWidth = 863
      FullHeight = 200
      object AdvGroupBox1: TAdvGroupBox
        Left = 0
        Top = 0
        Width = 1237
        Height = 89
        Align = alClient
        Caption = #30149#20363#31579#36873#26465#20214
        TabOrder = 0
        ExplicitWidth = 863
        ExplicitHeight = 105
        object EllipsLabel1: TEllipsLabel
          Left = 10
          Top = 23
          Width = 72
          Height = 13
          Caption = #20986#38498#26085#26399#33539#22260
          EllipsType = etNone
          Version = '1.0.0.0'
        end
        object EllipsLabel2: TEllipsLabel
          Left = 10
          Top = 63
          Width = 48
          Height = 13
          Caption = #20303#38498#22825#25968
          EllipsType = etNone
          Version = '1.0.0.0'
        end
        object EllipsLabel3: TEllipsLabel
          Left = 346
          Top = 23
          Width = 24
          Height = 13
          Caption = #31185#23460
          EllipsType = etNone
          Version = '1.0.0.0'
        end
        object EllipsLabel4: TEllipsLabel
          Left = 190
          Top = 23
          Width = 12
          Height = 13
          Caption = #33267
          EllipsType = etNone
          Version = '1.0.0.0'
        end
        object EllipsLabel5: TEllipsLabel
          Left = 190
          Top = 63
          Width = 12
          Height = 13
          Caption = #33267
          EllipsType = etNone
          Version = '1.0.0.0'
        end
        object advDtpks: TAdvDateTimePicker
          Left = 91
          Top = 19
          Width = 81
          Height = 21
          Date = 42507.468192141200000000
          Time = 42507.468192141200000000
          Kind = dkDate
          TabOrder = 0
          BorderStyle = bsSingle
          Ctl3D = True
          DateTime = 42507.468192141200000000
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
          OnKeyPress = suiedtstartKeyPress
        end
        object suiComboBox1: TsuiComboBox
          Left = 376
          Top = 20
          Width = 103
          Height = 21
          UIStyle = DeepBlue
          BorderColor = clBlack
          ArrowColor = clBlack
          ButtonColor = 15263976
          ItemHeight = 13
          TabOrder = 4
          Text = 'suiComboBox1'
        end
        object suiCheckBox1: TsuiCheckBox
          Left = 348
          Top = 57
          Width = 45
          Height = 19
          UIStyle = WinXP
          AutoSize = True
          Checked = False
          Caption = #27515#20129
          TabOrder = 5
          State = cbUnchecked
          Transparent = True
        end
        object suiCheckBox2: TsuiCheckBox
          Left = 434
          Top = 57
          Width = 45
          Height = 19
          UIStyle = WinXP
          AutoSize = True
          Checked = False
          Caption = #25163#26415
          TabOrder = 6
          State = cbUnchecked
          Transparent = True
        end
        object AdvGlowButton1: TAdvGlowButton
          Left = 504
          Top = 42
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
          TabOrder = 7
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
        ExplicitLeft = 2
        ExplicitTop = 6
        ExplicitWidth = 477
        object suichkCheckAll: TsuiCheckBox
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
        object suichkinverseAll: TsuiCheckBox
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
        object FlatbtnAllCancle: TFlatButton
          Left = 115
          Top = 5
          Width = 65
          Height = 25
          Caption = #20840#21462#28040
          TabOrder = 2
        end
      end
      object dbgrdhDest: TDBGridEh
        Left = 1
        Top = 33
        Width = 587
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
          object FlatPanel6: TFlatPanel
            Left = 0
            Top = 0
            Width = 561
            Height = 0
            Transparent = True
            ParentColor = True
            Align = alLeft
            TabOrder = 0
            ExplicitLeft = -561
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
        ExplicitWidth = 559
        object suichkAll: TsuiCheckBox
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
        object suichkinverse: TsuiCheckBox
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
        object FlatbtnCancle: TFlatButton
          Left = 115
          Top = 5
          Width = 65
          Height = 25
          Caption = #20840#21462#28040
          TabOrder = 2
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
      ExplicitLeft = 581
      ExplicitTop = 83
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
    Left = 320
    Top = 517
  end
  inherited al1: TActionList
    Left = 384
    Top = 517
  end
  inherited ds1: TDataSource
    Left = 352
    Top = 517
  end
end
