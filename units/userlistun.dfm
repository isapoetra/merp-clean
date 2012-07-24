inherited userlistfrm: Tuserlistfrm
  Left = 442
  Top = 150
  BorderStyle = bsSingle
  Caption = 'mERP 1.0'
  ClientHeight = 461
  ClientWidth = 623
  OldCreateOrder = True
  Position = poScreenCenter
  ExplicitWidth = 629
  ExplicitHeight = 493
  PixelsPerInch = 96
  TextHeight = 13
  inherited JvNetscapeSplitter1: TJvNetscapeSplitter
    Left = 363
    Height = 375
    ExplicitLeft = 361
    ExplicitHeight = 373
  end
  inherited Panel4: TPanel
    Width = 623
    ExplicitWidth = 621
  end
  inherited Panel5: TPanel
    Width = 623
    TabOrder = 5
    ExplicitWidth = 621
  end
  inherited Panel1: TPanel
    Width = 623
    TabOrder = 4
    ExplicitWidth = 621
  end
  inherited JvScrollMax1: TJvScrollMax
    Left = 373
    Height = 375
    ExplicitLeft = 371
    ExplicitHeight = 373
    inherited navdbcontainer: TJvScrollMaxBand
      inherited dbnav: TJvDBNavigator
        Hints.Strings = ()
      end
    end
  end
  object Panel2: TPanel [5]
    Left = 0
    Top = 45
    Width = 363
    Height = 375
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 361
    ExplicitHeight = 373
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 359
      Height = 371
      Align = alClient
      DataSource = ds.user
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'us_firstname'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'us_lastname'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'us_username'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'group'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = 'Group'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 150
          Visible = True
        end>
    end
  end
  object Panel3: TPanel [6]
    Left = 0
    Top = 420
    Width = 623
    Height = 41
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 418
    ExplicitWidth = 621
    object SpeedButton3: TSpeedButton
      Left = 353
      Top = 0
      Width = 89
      Height = 40
      Cursor = crHandPoint
      Caption = '&Hapus'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clOlive
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      Transparent = False
      OnClick = SpeedButton3Click
    end
  end
end
