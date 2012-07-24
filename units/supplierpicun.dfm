inherited supplierpicfrm: Tsupplierpicfrm
  Left = 494
  Top = 143
  OldCreateOrder = True
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    object DBText1: TDBText
      Left = 161
      Top = 8
      Width = 321
      Height = 17
      DataField = 'sp_name'
      DataSource = ds.supplier
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  inherited JvScrollMax1: TJvScrollMax
    inherited navdbcontainer: TJvScrollMaxBand
      inherited dbnav: TJvDBNavigator
        Hints.Strings = ()
      end
    end
  end
end
