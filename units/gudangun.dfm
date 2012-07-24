inherited gudangfrm: Tgudangfrm
  Left = 388
  Top = 133
  Caption = 'Data Gudang'
  ClientHeight = 442
  ClientWidth = 699
  Position = poScreenCenter
  ExplicitWidth = 707
  ExplicitHeight = 476
  PixelsPerInch = 96
  TextHeight = 13
  inherited JvNetscapeSplitter1: TJvNetscapeSplitter
    Left = 439
    Height = 356
    ExplicitLeft = 439
    ExplicitHeight = 356
  end
  inherited Panel4: TPanel
    Width = 699
    TabOrder = 4
    ExplicitWidth = 699
  end
  inherited Panel5: TPanel
    Width = 699
    TabOrder = 5
    ExplicitWidth = 699
  end
  inherited Panel1: TPanel
    Width = 699
    ExplicitWidth = 699
  end
  inherited JvScrollMax1: TJvScrollMax
    Left = 449
    Height = 356
    ExplicitLeft = 449
    ExplicitHeight = 356
    inherited navdbcontainer: TJvScrollMaxBand
      inherited dbnav: TJvDBNavigator
        Hints.Strings = ()
      end
    end
  end
  object Panel3: TPanel [5]
    Left = 0
    Top = 401
    Width = 699
    Height = 41
    Align = alBottom
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 351
      Top = 0
      Width = 89
      Height = 40
      Cursor = crHandPoint
      Caption = '&Tambah'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clOlive
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      Transparent = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 260
      Top = 0
      Width = 89
      Height = 40
      Cursor = crHandPoint
      Caption = '&Edit'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clOlive
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      Transparent = False
      OnClick = SpeedButton2Click
    end
  end
  object DBGrid1: TDBGrid [6]
    Left = 0
    Top = 45
    Width = 439
    Height = 356
    Align = alClient
    DataSource = ds.gudang
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'gd_nama'
        Title.Caption = 'Nama Gudang'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gd_lokasi'
        Title.Caption = 'Lokasi'
        Width = 250
        Visible = True
      end>
  end
end
