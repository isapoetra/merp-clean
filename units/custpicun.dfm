inherited custpicfrm: Tcustpicfrm
  Left = 467
  Top = 147
  OldCreateOrder = True
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    object DBText1: TDBText
      Left = 123
      Top = 9
      Width = 278
      Height = 17
      DataField = 'cu_nama'
      DataSource = ds.customer
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
