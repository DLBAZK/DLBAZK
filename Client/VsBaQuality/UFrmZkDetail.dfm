inherited FrmZkDetail: TFrmZkDetail
  Caption = #30149#26696#36136#25511#35814#32454
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited advtlbrpgr1: TAdvToolBarPager
    CaptionButtons = [cbClose]
  end
  inherited AdvPanel1: TAdvPanel
    FullHeight = 200
    inherited pnlTop: TAdvPanel
      Height = 0
      Visible = False
      ExplicitHeight = 0
      FullHeight = 200
    end
    inherited pnlList: TAdvPanel
      Top = 0
      Height = 351
      ExplicitTop = 0
      ExplicitHeight = 351
      FullHeight = 200
      inherited grdList: TDBGridEh
        Height = 351
        AutoFitColWidths = True
        Font.Charset = ANSI_CHARSET
        Font.Height = -15
        Font.Name = #24494#36719#38597#40657
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghAutoFitRowHeight]
        ParentFont = False
        ReadOnly = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CH0A01'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #30149#26696#21495
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = #24494#36719#38597#40657
            Title.Font.Style = []
            Width = 117
          end
          item
            EditButtons = <>
            FieldName = 'dmmc'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #25187#20998#39033
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = #24494#36719#38597#40657
            Title.Font.Style = []
            Width = 176
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'Score'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #25187#20998
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = #24494#36719#38597#40657
            Title.Font.Style = []
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'Person'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #35780#20998#20154
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = #24494#36719#38597#40657
            Title.Font.Style = []
            Width = 84
          end
          item
            EditButtons = <>
            FieldName = 'PFSJ'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #35780#20998#26102#38388
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = #24494#36719#38597#40657
            Title.Font.Style = []
            Width = 155
          end>
      end
    end
  end
end
