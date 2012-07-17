object detailorderfrm: Tdetailorderfrm
  Left = 525
  Top = 128
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'mERP 1.0'
  ClientHeight = 484
  ClientWidth = 519
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 519
    Height = 33
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 87
      Height = 18
      Caption = 'Order Detail'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 33
    Width = 519
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    Color = 33023
    TabOrder = 1
  end
  object Panel5: TPanel
    Left = 0
    Top = 41
    Width = 519
    Height = 4
    Align = alTop
    BevelOuter = bvNone
    Color = 805596
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
  end
  object Panel3: TPanel
    Left = 0
    Top = 444
    Width = 519
    Height = 40
    Align = alBottom
    TabOrder = 3
    object btntambah: TSpeedButton
      Left = 392
      Top = 1
      Width = 126
      Height = 38
      Cursor = crHandPoint
      Caption = '&Simpan ke Gudang'
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
        E2E3E3E4E4E5E6E6E7E7E8E8E8E9E9EAEAEBEBEBECECECEDECECEDECECEDEBEB
        ECEAEAEBE8E9E9E7E8E8E6E6E7E4E4E5E2E3E3B2B3B4DDDDDD00D8D8D9B4B5B6
        E3E4E4E6E6E7E5E7E81DC7F591DCF010C5F72ECCF72ECCF72ECCF72ECCF72ECC
        F735CCF54ACFF444CDF3A8DDECE6E6E7E3E4E4B4B5B5D9D9D900D8D8D9B5B6B6
        E5E5E6E7E8E84BCFF308C3F718C7F60EC6F78CE4FBCFF3FDCFF3FDCFF3FD8CE4
        FB0CC6F800C3F800C3F84BCFF3E7E8E8E5E5E6B5B6B6D8D8D900D8D8D9B6B6B7
        E6E7E7E8E9E94BD0F400C3F800C3F80CC6F8B4EDFCFFFFFFFFFFFFFFFFFFB3ED
        FC0CC6F800C3F800C3F84BD0F4E8E9E9E6E7E7B6B6B7D8D8D900D8D8D9B6B7B8
        E7E8E8EAEAEB4BD0F400C3F800C3F808C5F835CFF938D0F938D0F938D0F935CF
        F908C5F800C3F800C3F84BD0F4EAEAEBE7E8E8B6B7B8D8D8D900D8D8D9B7B7B8
        E8E9E9EBEBEC4BD0F400C3F800C3F800C3F800C3F800C3F800C3F800C3F800C3
        F800C3F800C3F800C3F84BD0F4EBEBECE8E9E9B7B7B8D8D8D900D8D8D9B7B7B8
        E8E9E9ECECED4BD0F500C3F800C3F800C3F800C3F800C3F800C3F800C3F800C3
        F800C3F800C3F800C3F84BD0F5ECECEDE8E9E9B7B7B8D8D8D900D8D8D9B7B7B8
        E8E9E9ECECED4BD0F500C3F800C3F800C3F800C3F800C3F800C3F800C3F800C3
        F800C3F800C3F800C3F84BD0F5ECECEDE8E9E9B7B7B8D8D8D900D8D8D9B7B7B8
        E8E9E9ECECED4BD0F500C3F85ED9FA87E2FB87E2FB87E2FB87E2FB87E2FB87E2
        FB87E2FB5ED9FA00C3F84BD0F5ECECEDE8E9E9B7B7B8D8D8D900D8D8D9B7B7B8
        E8E9E9EBEBEC4BD0F400C3F8D2F4FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFD2F4FD00C3F84BD0F4EBEBECE8E9E9B7B7B8D8D8D900D8D8D9B6B7B8
        E7E8E8EAEAEB4BD0F400C3F8D2F4FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFD2F4FD00C3F84CD0F4EAEAEBE7E8E8B6B7B8D8D8D900D8D8D9B6B6B7
        E6E7E7E8E9E94BD0F400C3F8B0ECFCEBFAFEEBFAFEEBFAFEEBFAFEEBFAFEEBFA
        FEEBFAFEB0ECFC00C3F763D3F3E8E9E9E6E7E7B6B6B7D8D8D900D8D8D9B5B6B6
        E5E5E6E7E8E84BCFF300C3F800C3F800C3F800C3F800C3F800C3F800C3F800C3
        F800C3F800C3F817C6F6E9E9EAE7E8E8E5E5E6B5B6B6D8D8D900D8D8D9B4B5B6
        E3E4E4E6E6E7A7DDEC4ACEF34ACFF44BD0F54BD0F54BD0F54BD0F54BD0F54BD0
        F54BD0F553D1F3CBE4EBE7E8E8E6E6E7E3E4E4B4B5B5D9D9D900DCDCDDB3B3B4
        E2E3E3E4E4E5E6E6E7E7E8E8E8E9E9EAEAEBEBEBECECECEDECECEDECECEDEBEB
        ECEAEAEBE8E9E9E7E8E8E6E6E7E4E4E5E2E3E3ADADAEE3E4E400FFFFFF9D9E9E
        DDDDDEE2E3E3E3E4E4E5E5E6E6E7E7E7E8E8E8E9E9E8E9E9E8E9E9E8E9E9E8E9
        E9E7E8E8E6E7E7E5E5E6E3E4E4E2E3E3D1D2D3AAABACFFFFFF00FFFFFFFFFFFF
        9B9C9CB5B6B7B4B5B6B5B6B6B6B6B7B6B7B8B7B7B8B7B7B8B7B7B8B7B7B8B7B7
        B8B6B7B8B6B6B7B5B6B6B4B5B6B5B6B79E9F9FFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFD8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8
        D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9FAFAFAFFFFFFFFFFFF00}
      ParentFont = False
      Transparent = False
      OnClick = btntambahClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 129
    Width = 519
    Height = 315
    Align = alClient
    Ctl3D = False
    DataSource = ds.orderdetail
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'bd_kd_barang'
        Title.Caption = 'Kd Barang'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bd_nama_barang'
        Title.Caption = 'Nama Barang'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 350
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bd_qty'
        Title.Alignment = taCenter
        Title.Caption = 'Qty'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 45
    Width = 519
    Height = 84
    Align = alTop
    TabOrder = 5
    object DBText1: TDBText
      Left = 88
      Top = 16
      Width = 321
      Height = 17
      DataField = 'be_kode'
      DataSource = ds.polist
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 16
      Width = 44
      Height = 16
      Caption = 'No.PO:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 40
      Width = 58
      Height = 16
      Caption = 'Supplier:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 88
      Top = 40
      Width = 321
      Height = 17
      DataField = 'supplier'
      DataSource = ds.polist
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
