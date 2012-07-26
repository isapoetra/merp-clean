inherited supplierfrm: Tsupplierfrm
  Left = 378
  Top = 111
  Caption = 'Suplier'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    ExplicitTop = 2
  end
  inherited JvScrollMax1: TJvScrollMax
    inherited navdbcontainer: TJvScrollMaxBand
      inherited dbnav: TJvDBNavigator
        Hints.Strings = ()
      end
    end
  end
  object DBGrid1: TDBGrid [5]
    Left = 0
    Top = 45
    Width = 660
    Height = 401
    Align = alClient
    DataSource = ds.supplier
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'sp_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sp_name'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sp_address'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sp_kota'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sp_telp'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sp_refer'
        Visible = True
      end>
  end
end
