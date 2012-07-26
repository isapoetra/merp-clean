inherited listrepfrm: Tlistrepfrm
  Left = 462
  Top = 172
  Caption = 'mERP 1.0'
  ClientHeight = 442
  ClientWidth = 527
  Position = poScreenCenter
  ExplicitWidth = 535
  ExplicitHeight = 476
  PixelsPerInch = 96
  TextHeight = 13
  inherited JvNetscapeSplitter1: TJvNetscapeSplitter
    Left = 267
    Height = 397
    ExplicitLeft = 267
    ExplicitHeight = 397
  end
  inherited Panel1: TPanel
    Width = 527
    TabOrder = 0
    ExplicitWidth = 527
  end
  inherited pnlbg1: TPanel
    Width = 527
    TabOrder = 2
    ExplicitWidth = 527
  end
  inherited pnlbg2: TPanel
    Width = 527
    TabOrder = 3
    ExplicitWidth = 527
  end
  inherited JvScrollMax1: TJvScrollMax
    Left = 277
    Height = 397
    TabOrder = 1
    ExplicitLeft = 277
    ExplicitHeight = 397
    inherited navdbcontainer: TJvScrollMaxBand
      inherited dbnav: TJvDBNavigator
        Hints.Strings = ()
      end
      inherited btnDelete: TJvXPButton
        OnClick = btnDeleteClick
      end
    end
  end
  object DBGrid1: TDBGrid [5]
    Left = 0
    Top = 45
    Width = 267
    Height = 397
    Align = alClient
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
  end
end
