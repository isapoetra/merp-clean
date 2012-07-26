inherited jasafrm: Tjasafrm
  Left = 315
  Top = 35
  Caption = 'Master Jasa'
  ClientHeight = 506
  ClientWidth = 619
  ExplicitWidth = 627
  ExplicitHeight = 540
  PixelsPerInch = 96
  TextHeight = 13
  inherited JvNetscapeSplitter1: TJvNetscapeSplitter
    Left = 359
    Height = 461
    ExplicitLeft = 359
    ExplicitHeight = 461
  end
  inherited Panel1: TPanel
    Width = 619
    TabOrder = 4
    ExplicitWidth = 619
  end
  inherited pnlbg1: TPanel
    Width = 619
    TabOrder = 2
    ExplicitWidth = 619
  end
  inherited pnlbg2: TPanel
    Width = 619
    TabOrder = 3
    ExplicitWidth = 619
  end
  inherited JvScrollMax1: TJvScrollMax
    Left = 369
    Height = 461
    TabOrder = 1
    ExplicitLeft = 369
    ExplicitHeight = 461
    inherited navdbcontainer: TJvScrollMaxBand
      inherited dbnav: TJvDBNavigator
        Hints.Strings = ()
      end
      inherited btnAdd: TJvXPButton
        OnClick = btnAddClick
      end
      inherited btnEdit: TJvXPButton
        OnClick = btnEditClick
      end
    end
  end
  object DBGrid1: TDBGrid [5]
    Left = 0
    Top = 45
    Width = 359
    Height = 461
    Align = alClient
    DataSource = dsform
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyDown = DBGrid1KeyDown
    OnKeyPress = onKeyPressed
    Columns = <
      item
        Expanded = False
        FieldName = 'js_nama'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Jasa'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'js_unit'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Satuan'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'js_tarif'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Tarif'
        Width = 150
        Visible = True
      end>
  end
  inherited dsform: TDataSource
    Left = 432
    Top = 184
  end
end
