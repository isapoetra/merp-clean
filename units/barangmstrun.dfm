inherited barangmstrfrm: Tbarangmstrfrm
  Left = 174
  Top = 18
  Caption = 'Data Barang'
  ClientHeight = 609
  ClientWidth = 1019
  Position = poScreenCenter
  ExplicitWidth = 1027
  ExplicitHeight = 643
  PixelsPerInch = 96
  TextHeight = 13
  inherited JvNetscapeSplitter1: TJvNetscapeSplitter
    Left = 759
    Height = 564
    MinSize = 1
    ExplicitLeft = 759
    ExplicitHeight = 564
  end
  inherited Panel1: TPanel
    Width = 1019
    TabOrder = 2
    ExplicitWidth = 1019
  end
  inherited pnlbg1: TPanel
    Width = 1019
    TabOrder = 3
    ExplicitWidth = 1019
  end
  inherited pnlbg2: TPanel
    Width = 1019
    TabOrder = 1
    ExplicitWidth = 1019
  end
  object DBGrid1: TDBGrid [4]
    Left = 0
    Top = 45
    Width = 759
    Height = 564
    Align = alClient
    Ctl3D = False
    DataSource = ds.barang
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'br_id'
        Title.Caption = 'Kode Barang'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'br_nama'
        Title.Caption = 'Nama Barang'
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
        FieldName = 'br_unit'
        Title.Caption = 'Unit'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'br_type'
        Title.Caption = 'Type'
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
        FieldName = 'br_barcode'
        Title.Caption = 'Barcode'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end>
  end
  inherited JvScrollMax1: TJvScrollMax
    Left = 769
    Height = 564
    TabOrder = 4
    ExplicitLeft = 769
    ExplicitHeight = 564
    inherited navdbcontainer: TJvScrollMaxBand
      inherited dbnav: TJvDBNavigator
        Hints.Strings = ()
      end
    end
    object JvScrollMaxBand1: TJvScrollMaxBand
      Width = 232
      Height = 70
      Caption = 'Data Manipulation'
      ExpandedHeight = 70
      ButtonFont.Charset = DEFAULT_CHARSET
      ButtonFont.Color = clWindowText
      ButtonFont.Height = -11
      ButtonFont.Name = 'MS Sans Serif'
      ButtonFont.Style = []
      ParentButtonFont = False
      object SpeedButton1: TSpeedButton
        Left = 7
        Top = 24
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
        Glyph.Data = {
          76050000424D7605000000000000360000002800000015000000150000000100
          18000000000040050000C30E0000C30E00000000000000000000FFFFFFFFFFFF
          F9F9F9D8D8D8D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8
          D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D8FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          9E9FA0B6B6B7B4B5B6B5B6B6B6B6B7B6B7B8B7B7B8B7B7B8B7B7B8B7B7B8B7B7
          B8B6B7B8B6B6B7B5B6B6B4B5B6B6B6B79B9C9CFFFFFFFFFFFF00FFFFFFAAABAC
          D2D2D3E2E3E3E3E4E4E5E5E6E6E7E7E7E8E8E8E9E9E8E9E9E8E9E9E8E9E9E8E9
          E9E7E8E8E6E7E7E5E5E6E3E4E4E2E3E3DDDDDE9D9E9EFFFFFF00E3E3E3ADAEAF
          E2E3E3E4E4E55FD1F161D3F361D4F362D4F462D5F462D5F462D5F462D5F462D4
          F4EAEAEBE8E9E9E7E8E8E6E6E7E4E4E5E2E3E3B2B3B4DDDDDD00D8D8D9B4B5B6
          E3E4E4B8DFEAAEEBFBCDF3FDCDF3FDCDF3FDCDF3FDCDF3FDCDF3FDCDF3FDCDF3
          FD53D4F8D0E7EEE9E9EAE7E8E8E6E6E7E3E4E4B4B5B5D9D9D900D8D8D9B5B6B6
          E5E5E67BD7F0AFECFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF53D5F8D2E8F0ECECEDE9E9EAE7E8E8E5E5E6B5B6B6D8D8D900D8D8D9B6B6B7
          E6E7E77BD7F0AFECFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF54D5F9D4EBF1EEEEEFECECEDE8E9E9E6E7E7B6B6B7D8D8D900D8D8D9B6B7B8
          E7E8E87CD8F1AFECFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF54D6F9D5ECF2F0F0F0EEEEEFEAEAEBE7E8E8B6B7B8D8D8D900D8D8D9B7B7B8
          E8E9E97DD8F2AFECFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFADFE6E9D0E7
          EF53D5F8D6EEF4F1F1F1EEEEEFEBEBECE8E9E9B7B7B8D8D8D900D8D8D9B7B7B8
          E8E9E97DD9F2AFECFCFFFFFFFFFFFFFFFFFFFFFFFFFEFEFECBD2D512BFEE01C2
          F731C2E9D7EFF5F2F2F2EFEFF0ECECEDE8E9E9B7B7B8D8D8D900D8D8D9B7B7B8
          E8E9E97DD9F2AFECFCFFFFFFFFFFFFFFFFFFFFFFFFF9F9F98ABBCA00C3F800C3
          F817BDEAD7EFF5F2F2F2EFEFF0ECECEDE8E9E9B7B7B8D8D8D900D8D8D9B7B7B8
          E8E9E97DD9F2AFECFCFFFFFFFFFFFFF9F9F9C0D9E165C8E335B9DE00C3F800C3
          F808BDEE4DC4E495D3E4EEEEEFECECEDE8E9E9B7B7B8D8D8D900D8D8D9B7B7B8
          E8E9E97DD8F2AFECFCFFFFFFFFFFFFD8D9DA25B9E200C3F800C3F800C3F800C3
          F800C3F800C3F800C3F8B0D7E3EBEBECE8E9E9B7B7B8D8D8D900D8D8D9B6B7B8
          E7E8E87CD8F1AFECFCFFFFFFFFFFFFCFD0D12EB4D900C3F800C3F800C3F800C3
          F800C3F800C3F802C2F6BCD5DCEAEAEBE7E8E8B6B7B8D8D8D900D8D8D9B6B6B7
          E6E7E77AD7F099E5F99CE7FC9CE7FC93DAEE77B5C74CAECA2EABCE00C3F800C3
          F812BAE760B4CBA9C4CCE7E7E8E8E9E9E6E7E7B6B6B7D8D8D900D8D8D9B5B6B6
          E5E5E6E7E8E88DDAEF8EDBF190DDF291DEF38FDBF08BD5E952A7BF00C3F800C3
          F843C2E5E8E8E9EBEBECE9E9EAE7E8E8E5E5E6B5B6B6D8D8D900D8D8D9B4B5B6
          E3E4E4E6E6E7E7E8E8E9E9EAECECEDEEEEEFEEEEEFEDEDEEB7BBBD26B3DA0DBE
          EF9ACCDAECECEDE9E9EAE7E8E8E6E6E7E3E4E4B4B5B5D9D9D900DCDCDDB3B3B4
          E2E3E3E4E4E5E6E6E7E7E8E8E8E9E9EAEAEBEBEBECECECEDDFDFE0C1C1C3C6C8
          CBE5E5E6E8E9E9E7E8E8E6E6E7E4E4E5E2E3E3A6A6A7D2D3D300FFFFFF9D9E9E
          DDDDDEE2E3E3E3E4E4E5E5E6E6E7E7E7E8E8E8E9E9E8E9E9E8E9E9E8E9E9E8E9
          E9E7E8E8E6E7E7E5E5E6E3E4E4E2E3E3D1D2D3AAABACFFFFFF00FFFFFFFFFFFF
          9B9C9CB5B6B7B4B5B6B5B6B6B6B6B7B6B7B8B7B7B8B7B7B8B7B7B8B7B7B8B7B7
          B8B6B7B8B6B6B7B5B6B6B4B5B6B5B6B79E9F9FFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFD8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8
          D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9FAFAFAFFFFFFFFFFFF00}
        ParentFont = False
        Transparent = False
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 127
        Top = 24
        Width = 89
        Height = 40
        Cursor = crHandPoint
        Caption = '&Edit'
        Enabled = False
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clOlive
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Glyph.Data = {
          76050000424D7605000000000000360000002800000015000000150000000100
          18000000000040050000C30E0000C30E00000000000000000000FFFFFFFFFFFF
          F9F9F9D8D8D8D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8
          D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D8FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          9E9FA0B6B6B7B4B5B6B5B6B6B6B6B7B6B7B8B7B7B8B7B7B8B7B7B8B7B7B8B7B7
          B8B6B7B8B6B6B7B5B6B6B4B5B6B6B6B79B9C9CFFFFFFFFFFFF00FFFFFFAAABAC
          D2D2D3E2E3E3E3E4E4E5E5E6E6E7E7E7E8E8E8E9E9E8E9E9E8E9E9E8E9E9E8E9
          E9E7E8E8E6E7E7E5E5E6E3E4E4E2E3E3DDDDDE9D9E9EFFFFFF00D2D2D2A6A7A8
          E2E3E3E4E4E5E6E6E7C4E2EAC5E3EBC7E4ECC8E5EDC8E5EEC8E5EEC8E5EEC8E5
          EDC7E4ECE8E9E9E7E8E8E6E6E7E4E4E5E2E3E3B2B3B4DDDDDD00D8D8D9B4B5B6
          E3E4E4E6E6E7B3E2EE5BD6F85BD7F85BD7F95BD7F95CD7F95CD7F95CD7F95BD7
          F95BD6F8EDEDEEE9E9EAE7E8E8E6E6E7E3E4E4B4B5B5D9D9D900D8D8D9B5B6B6
          E5E5E6E6E7E836CDF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFF0FBFE43D0F6ECECEDE9E9EAE7E8E8E5E5E6B5B6B6D8D8D900D8D8D9B6B6B7
          E6E7E7E8E9E935CDF7FFFFFFFFFFFFFFFFFFFFFFFFF2FBFECDF3FDFFFFFFFFFF
          FFF1FBFE43D0F7EEEEEFECECEDE8E9E9E6E7E7B6B6B7D8D8D900D8D8D9B6B7B8
          E7E8E8EAEAEB35CEF7FFFFFF32CEF90BC5F80BC5F805C4F800C3F899E7FCFFFF
          FFF1FBFE43D0F7F0F0F0EEEEEFEAEAEBE7E8E8B6B7B8D8D8D900D8D8D9B7B7B8
          E8E9E9EBEBEC35CEF7FFFFFF5AD8FA3BD1F93BD1F92ACDF80DC6F867DBFA90E4
          FBF1FBFE43D1F8F1F1F1EEEEEFEBEBECE8E9E9B7B7B8D8D8D900D8D8D9B7B7B8
          E8E9E9ECECED36CEF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4BD4F987E2FBA6EA
          FC7DDFFB2FCCF8F2F2F2EFEFF0ECECEDE8E9E9B7B7B8D8D8D900D8D8D9B7B7B8
          E8E9E9ECECED36CEF7FFFFFFFFFFFFFFFFFFFFFFFFE7F9FE4FD5FAFFFFFFFFFF
          FFC9F1FC2CCCF8F2F2F2EFEFF0ECECEDE8E9E9B7B7B8D8D8D900D8D8D9B7B7B8
          E8E9E9ECECED36CEF7FFFFFF6EDDFB53D6FA53D6FA53D6FA2ECDF9EEFBFEFFFF
          FFFFFFFF51D5F9C9EAF3EFEFF0ECECEDE8E9E9B7B7B8D8D8D900D8D8D9B7B7B8
          E8E9E9EBEBEC35CEF7FFFFFF28CCF900C3F800C3F800C3F80AC5F890E4FBFFFF
          FFFFFFFFEBFAFE48D1F7EEEEEFEBEBECE8E9E9B7B7B8D8D8D900D8D8D9B6B7B8
          E7E8E8EAEAEB35CEF7FFFFFFD6F5FDCEF3FDCEF3FDCEF3FDCEF3FD37D0F9F8FD
          FEFFFFFFFFFFFF86E1FAA3E0F1EAEAEBE7E8E8B6B7B8D8D8D900D8D8D9B6B6B7
          E6E7E7E7E8E936CEF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1F0FD75DE
          FBFFFFFFFFFFFFFFFFFF35CDF7E8E9E9E6E7E7B6B6B7D8D8D900D8D8D9B5B6B6
          E5E5E6E7E8E8EBEBEC3DCFF73DD0F83ED0F83ED0F83ED0F83ED0F83ED0F828CB
          F8DCF6FEFFFFFF87E2FBEEEEEFE7E8E8E5E5E6B5B6B6D8D8D900D8D8D9B4B5B6
          E3E4E4E6E6E7E7E8E8E1E7EAE4EAEDE6ECEFE6ECEFE7EDF0E7EDF0E7EDF0C2E5
          F034CDF73FD0F8A2DFF0E7E8E8E6E6E7E3E4E4B4B5B5D9D9D900DCDCDDB3B3B4
          E2E3E3E4E4E5E6E6E7E7E8E8E8E9E9EAEAEBEBEBECECECEDECECEDECECEDEBEB
          ECEAEAEBDEE7E9E7E8E8E6E6E7E4E4E5E2E3E3ADADAEE3E4E400FFFFFF9D9E9E
          DDDDDEE2E3E3E3E4E4E5E5E6E6E7E7E7E8E8E8E9E9E8E9E9E8E9E9E8E9E9E8E9
          E9E7E8E8E6E7E7E5E5E6E3E4E4E2E3E3D1D2D3AAABACFFFFFF00FFFFFFFFFFFF
          9B9C9CB5B6B7B4B5B6B5B6B6B6B6B7B6B7B8B7B7B8B7B7B8B7B7B8B7B7B8B7B7
          B8B6B7B8B6B6B7B5B6B6B4B5B6B5B6B79E9F9FFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFD8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8
          D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9FAFAFAFFFFFFFFFFFF00}
        ParentFont = False
        Transparent = False
        OnClick = SpeedButton2Click
      end
    end
    object JvScrollMaxBand3: TJvScrollMaxBand
      Width = 232
      Height = 50
      Caption = 'Data Reference'
      ExpandedHeight = 50
      ButtonFont.Charset = DEFAULT_CHARSET
      ButtonFont.Color = clWindowText
      ButtonFont.Height = -11
      ButtonFont.Name = 'MS Sans Serif'
      ButtonFont.Style = []
      ParentButtonFont = False
    end
  end
end
