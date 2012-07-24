inherited kategorifrm: Tkategorifrm
  Left = 500
  Top = 134
  Caption = 'List Kategori'
  OldCreateOrder = True
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited JvScrollMax1: TJvScrollMax
    inherited navdbcontainer: TJvScrollMaxBand
      inherited dbnav: TJvDBNavigator
        Hints.Strings = ()
      end
      inherited btnAdd: TJvXPButton
        OnClick = btnAddClick
      end
    end
  end
  inherited DBGrid1: TDBGrid
    DataSource = ds.kategori
    Columns = <
      item
        Expanded = False
        FieldName = 'kg_nama'
        Title.Caption = 'Kategori'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kg_id'
        Title.Caption = 'ID'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
end
