inherited customerfrm: Tcustomerfrm
  Left = 154
  Top = 375
  Caption = 'Customer'
  ClientHeight = 616
  ClientWidth = 885
  OldCreateOrder = True
  ExplicitWidth = 893
  ExplicitHeight = 650
  PixelsPerInch = 96
  TextHeight = 13
  inherited JvNetscapeSplitter1: TJvNetscapeSplitter
    Left = 625
    Height = 571
    ExplicitLeft = 625
    ExplicitHeight = 571
  end
  inherited Panel1: TPanel
    Width = 885
    ExplicitWidth = 885
  end
  inherited pnlbg1: TPanel
    Width = 885
    ExplicitWidth = 885
  end
  inherited pnlbg2: TPanel
    Width = 885
    ExplicitWidth = 885
  end
  inherited JvScrollMax1: TJvScrollMax
    Left = 635
    Height = 571
    ExplicitLeft = 635
    ExplicitHeight = 571
    inherited navdbcontainer: TJvScrollMaxBand
      Height = 150
      ExpandedHeight = 150
      ExplicitHeight = 150
      inherited dbnav: TJvDBNavigator
        Hints.Strings = ()
      end
    end
    inherited searchContainer: TJvScrollMaxBand
      ExplicitTop = 150
    end
    object JvScrollMaxBand3: TJvScrollMaxBand
      Width = 232
      Height = 50
      Caption = 'JvScrollMaxBand3'
      ExpandedHeight = 50
      ButtonFont.Charset = DEFAULT_CHARSET
      ButtonFont.Color = clWindowText
      ButtonFont.Height = -11
      ButtonFont.Name = 'MS Sans Serif'
      ButtonFont.Style = []
      ParentButtonFont = False
    end
  end
  object DBGrid1: TDBGrid [5]
    Left = 0
    Top = 45
    Width = 625
    Height = 571
    Align = alClient
    DataSource = ds.customer
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'cu_nama'
        Title.Caption = 'Customer'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cu_alamat'
        Title.Caption = 'Alamat'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cu_kota'
        Title.Caption = 'Kota'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cu_telp'
        Title.Caption = 'Telp/Fax'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cu_id'
        Visible = False
      end>
  end
  inherited dsform: TDataSource
    Left = 584
    Top = 72
  end
end
