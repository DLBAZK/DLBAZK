inherited FrmBaSy: TFrmBaSy
  Caption = #30149#26696#39318#39029#36136#25511
  ClientHeight = 596
  ClientWidth = 967
  ExplicitWidth = 983
  ExplicitHeight = 634
  PixelsPerInch = 96
  TextHeight = 13
  inherited advfcstsbr: TAdvOfficeStatusBar
    Top = 577
    Width = 967
    ExplicitTop = 577
    ExplicitWidth = 967
  end
  inherited advtlbrpgr1: TAdvToolBarPager
    Width = 967
    ExplicitWidth = 967
    inherited AdvPage1: TAdvPage
      Width = 959
      ExplicitWidth = 959
    end
  end
  inherited AdvPanel1: TAdvPanel
    Width = 967
    Height = 552
    ExplicitWidth = 967
    ExplicitHeight = 552
    FullHeight = 200
    object AdvPanel2: TAdvPanel
      Left = 0
      Top = 49
      Width = 967
      Height = 503
      Align = alClient
      Color = 16640730
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
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
      object AdvSplitter1: TAdvSplitter
        Left = 454
        Top = 1
        Height = 501
        Appearance.BorderColor = clNone
        Appearance.BorderColorHot = clNone
        Appearance.Color = clWhite
        Appearance.ColorTo = clSilver
        Appearance.ColorHot = clWhite
        Appearance.ColorHotTo = clGray
        GripStyle = sgDots
        ExplicitLeft = 496
        ExplicitTop = 128
        ExplicitHeight = 100
      end
      object suiGroupBox1: TsuiGroupBox
        Left = 1
        Top = 1
        Width = 453
        Height = 501
        UIStyle = DeepBlue
        Align = alLeft
        Caption = #24403#21069#35760#24405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        TabOrder = 0
        BorderColor = clBlack
        object dbgrdhBarecord: TDBGridEh
          Left = 3
          Top = 16
          Width = 447
          Height = 482
          Align = alClient
          DataGrouping.GroupLevels = <>
          DataSource = dsLocal
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clBlack
          FooterFont.Height = -11
          FooterFont.Name = 'Tahoma'
          FooterFont.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
          ParentFont = False
          RowDetailPanel.Color = clBtnFace
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -12
          TitleFont.Name = #24494#36719#38597#40657
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'CH0A01'
              Footers = <>
              ReadOnly = True
              Title.Caption = #30149#26696#21495
              Width = 100
            end
            item
              EditButtons = <>
              FieldName = 'CH0A02'
              Footers = <>
              ReadOnly = True
              Title.Caption = #22995#21517
              Width = 90
            end
            item
              EditButtons = <>
              Footers = <>
              ReadOnly = True
              Title.Caption = #20998#20540
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object suiGroupBox2: TsuiGroupBox
        Left = 457
        Top = 1
        Width = 509
        Height = 501
        UIStyle = DeepBlue
        Align = alClient
        Caption = #21382#21490#35760#24405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        TabOrder = 1
        BorderColor = clBlack
        object dbgrdhBaHistory: TDBGridEh
          Left = 3
          Top = 16
          Width = 503
          Height = 482
          Align = alClient
          DataGrouping.GroupLevels = <>
          DataSource = dsHistory
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clBlack
          FooterFont.Height = -11
          FooterFont.Name = 'Tahoma'
          FooterFont.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
          ParentFont = False
          RowDetailPanel.Color = clBtnFace
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -12
          TitleFont.Name = #24494#36719#38597#40657
          TitleFont.Style = []
          OnDblClick = dbgrdhBaHistoryDblClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'times'
              Footers = <>
              ReadOnly = True
              Title.Caption = #35780#20998#27425#25968
              Width = 100
            end
            item
              EditButtons = <>
              FieldName = 'Score'
              Footers = <>
              ReadOnly = True
              Title.Caption = #20998#20540
              Width = 90
            end
            item
              EditButtons = <>
              FieldName = 'PFSJ'
              Footers = <>
              ReadOnly = True
              Title.Caption = #35780#20998#26102#38388
            end>
          object RowDetailData: TRowDetailPanelControlEh
            object DBGridEh1: TDBGridEh
              Left = 0
              Top = 0
              Width = 280
              Height = 0
              Align = alLeft
              DataGrouping.GroupLevels = <>
              Flat = False
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clBlack
              FooterFont.Height = -11
              FooterFont.Name = 'Tahoma'
              FooterFont.Style = []
              RowDetailPanel.Color = clBtnFace
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'CH0A01'
                  Footers = <>
                  Title.Caption = #30149#26696#21495
                  Width = 100
                end
                item
                  EditButtons = <>
                  FieldName = 'CH0A02'
                  Footers = <>
                  Title.Caption = #22995#21517
                  Width = 90
                end
                item
                  EditButtons = <>
                  FieldName = 'Score'
                  Footers = <>
                  Title.Caption = #20998#20540
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
        end
      end
    end
    object AdvPanel3: TAdvPanel
      Left = 0
      Top = 0
      Width = 967
      Height = 49
      Align = alTop
      Color = 16640730
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
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
      object EllipsLabel1: TEllipsLabel
        Left = 14
        Top = 24
        Width = 48
        Height = 13
        Caption = #20986#38498#26085#26399
        EllipsType = etNone
        Version = '1.0.0.0'
      end
      object EllipsLabel2: TEllipsLabel
        Left = 199
        Top = 24
        Width = 12
        Height = 13
        Caption = #33267
        EllipsType = etNone
        Version = '1.0.0.0'
      end
      object advDtpks: TAdvDateTimePicker
        Left = 82
        Top = 20
        Width = 97
        Height = 25
        Date = 42502.592581018520000000
        Time = 42502.592581018520000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        Kind = dkDate
        ParentFont = False
        TabOrder = 0
        BorderStyle = bsNone
        Ctl3D = True
        DateTime = 42502.592581018520000000
        Version = '1.2.0.1'
        LabelTransparent = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
      end
      object advDtpjs: TAdvDateTimePicker
        Left = 231
        Top = 20
        Width = 97
        Height = 25
        Date = 42502.592581018520000000
        Time = 42502.592581018520000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        Kind = dkDate
        ParentFont = False
        TabOrder = 1
        BorderStyle = bsNone
        Ctl3D = True
        DateTime = 42502.592581018520000000
        Version = '1.2.0.1'
        LabelTransparent = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
      end
      object AdvbtnOK: TAdvGlowButton
        Left = 373
        Top = 13
        Width = 81
        Height = 32
        AutoSize = True
        Caption = #20998#26512
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        ImageIndex = 23
        Images = DM_Img.ilButton
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = AdvbtnOKClick
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
        DropDownPosition = dpBottom
      end
      object AdvbtnClose: TAdvGlowButton
        Left = 472
        Top = 13
        Width = 81
        Height = 32
        Action = acClose
        ImageIndex = 1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 3
        Appearance.BorderColor = 12631218
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.Color = 14671574
        Appearance.ColorTo = 15000283
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 14144974
        Appearance.ColorMirrorTo = 15197664
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
    end
  end
  object DLCDSLocal: TDlClientDataset
    Aggregates = <>
    Params = <>
    AfterScroll = DLCDSLocalAfterScroll
    Left = 40
    Top = 272
  end
  object DLCDSHistory: TDlClientDataset
    Aggregates = <>
    Params = <>
    Left = 112
    Top = 272
  end
  object dsLocal: TDataSource
    DataSet = DLCDSLocal
    Left = 72
    Top = 272
  end
  object dsHistory: TDataSource
    DataSet = DLCDSHistory
    Left = 152
    Top = 272
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 208
    Top = 280
  end
end
