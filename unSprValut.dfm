object fmSprValut: TfmSprValut
  Left = 0
  Top = 0
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1074#1072#1083#1102#1090
  ClientHeight = 364
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 640
    Height = 25
    ActionManager = ActionManager1
    Caption = 'ActionMainMenuBar1'
    Color = clMenuBar
    ColorMap.DisabledFontColor = 7171437
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedFont = clBlack
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Spacing = 0
    ExplicitLeft = 168
    ExplicitTop = 120
    ExplicitWidth = 150
    ExplicitHeight = 29
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 25
    Width = 640
    Height = 339
    Align = alClient
    TabOrder = 1
    ExplicitTop = 31
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      DataController.DataSource = oradssprvalut
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1COD: TcxGridDBColumn
        Caption = #1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1077
        DataBinding.FieldName = 'COD'
        Width = 138
      end
      object cxGrid1DBTableView1SHORT_NAME: TcxGridDBColumn
        Caption = #1057#1086#1082#1088#1072#1097#1077#1085#1085#1086#1077' '#1085#1072#1079#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'SHORT_NAME'
        Width = 143
      end
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'NAME'
      end
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
    end
    object cxGrid1Level2: TcxGridLevel
      Caption = 'cxGrid1Level2'
      GridView = cxGrid1DBTableView1
    end
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actIns
          end
          item
            Action = actEDit
          end
          item
            Action = actDel
          end
          item
            Action = actREfresh
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Left = 368
    Top = 88
    StyleName = 'Platform Default'
    object actIns: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    end
    object actEDit: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    end
    object actDel: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
    end
    object actREfresh: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      OnExecute = actREfreshExecute
    end
  end
  object oqSprValut: TOraQuery
    Session = dmOra.OraSession
    SQL.Strings = (
      'select * from hbuh.v_spr_valut')
    Active = True
    Left = 296
    Top = 24
  end
  object oradssprvalut: TOraDataSource
    DataSet = oqSprValut
    Left = 376
    Top = 48
  end
end
