inherited projectfrm: Tprojectfrm
  Left = 303
  Top = 109
  Caption = 'Project List'
  ClientHeight = 427
  ClientWidth = 727
  ExplicitWidth = 735
  ExplicitHeight = 461
  PixelsPerInch = 96
  TextHeight = 13
  inherited JvNetscapeSplitter1: TJvNetscapeSplitter
    Left = 467
    Height = 342
    ExplicitLeft = 467
    ExplicitHeight = 342
  end
  inherited Panel1: TPanel
    Width = 727
    TabOrder = 5
    ExplicitWidth = 727
  end
  inherited pnlbg1: TPanel
    Width = 727
    TabOrder = 3
    ExplicitWidth = 727
  end
  inherited pnlbg2: TPanel
    Width = 727
    TabOrder = 4
    ExplicitWidth = 727
  end
  inherited JvScrollMax1: TJvScrollMax
    Left = 477
    Height = 342
    TabOrder = 2
    ExplicitLeft = 477
    ExplicitHeight = 342
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
      inherited btnDelete: TJvXPButton
        OnClick = btnDeleteClick
      end
    end
  end
  object Panel3: TPanel [5]
    Left = 0
    Top = 387
    Width = 727
    Height = 40
    Align = alBottom
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
  end
  object DBGrid1: TDBGrid [6]
    Left = 0
    Top = 45
    Width = 467
    Height = 342
    Align = alClient
    Ctl3D = False
    DataSource = ds.project
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'pj_id'
        Title.Caption = 'Project ID'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pj_name'
        Title.Caption = 'Nama Project'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pj_location'
        Title.Caption = 'Lokasi'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cust'
        Visible = True
      end>
  end
  inherited dsform: TDataSource
    Left = 496
    Top = 104
  end
end
