object karyawanaddfrm: Tkaryawanaddfrm
  Left = 476
  Top = 109
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'mERP 1.0'
  ClientHeight = 494
  ClientWidth = 530
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
    Width = 530
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 131
      Height = 18
      Caption = 'Add/Edit Karyawan'
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
    Top = 41
    Width = 530
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    Color = 33023
    TabOrder = 1
  end
  object Panel5: TPanel
    Left = 0
    Top = 49
    Width = 530
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
    Top = 454
    Width = 530
    Height = 40
    Align = alBottom
    TabOrder = 3
    object btntambah: TSpeedButton
      Left = 444
      Top = 0
      Width = 85
      Height = 38
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
      OnClick = btntambahClick
    end
    object btnbatal: TSpeedButton
      Left = 355
      Top = 0
      Width = 89
      Height = 38
      Cursor = crHandPoint
      Caption = '&Batal'
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
        E2E3E3E4E4E5E6E6E7E7E8E8E8E9E9EAEAEBEBEBECECECEDECECEDECECEDEBEB
        ECEAEAEBE8E9E9E7E8E8E6E6E7E4E4E5E2E3E3B2B3B4DDDDDD00D8D8D9B4B5B6
        E3E4E4E6E6E7E7E8E8E9E9EAECECEDEEEEEFE1EBEFA1E0F292DDF3B0E3F2D2E8
        F0EEEEEFECECEDE9E9EAE7E8E8E6E6E7E3E4E4B4B5B5D9D9D900D8D8D9B5B6B6
        E5E5E6E7E8E8E9E9EAECECEDEEEEEF85DCF442D1F888E1FA99E6FB79DEF953D4
        F864D6F5EEEEEFECECEDE9E9EAE7E8E8E5E5E6B5B6B6D8D8D900D8D8D9B6B6B7
        E6E7E7E8E9E9ECECEDEEEEEF70D9F6A8E9FBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFCAF1FC71D9F6EEEEEFECECEDE8E9E9E6E7E7B6B6B7D8D8D900D8D8D9B6B7B8
        E7E8E8EAEAEBEEEEEF64D6F5CAF1FCF4FCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF3FCFEA6E9FB87DCF4EEEEEFEAEAEBE7E8E8B6B7B8D8D8D900D8D8D9B7B7B8
        E8E9E9EBEBECD2E8F053D4F8FFFFFFFFFFFFF7FDFEF2FBFEF2FBFEF2FBFEF7FD
        FEFFFFFFFFFFFF40D0F8E3ECEFEBEBECE8E9E9B7B7B8D8D8D900D8D8D9B7B7B8
        E8E9E9ECECEDB0E3F279DEF9FFFFFF78DFFB05C4F800C3F800C3F800C3F805C4
        F878DFFBFFFFFF86E1FAA3E1F2ECECEDE8E9E9B7B7B8D8D8D900D8D8D9B7B7B8
        E8E9E9ECECED92DDF399E6FBFBFEFE0AC5F800C3F800C3F800C3F800C3F800C3
        F80AC5F8FBFEFE98E6FB93DEF3ECECEDE8E9E9B7B7B8D8D8D900D8D8D9B7B7B8
        E8E9E9ECECEDA2E0F287E1FAFFFFFF79DFFB07C4F800C3F800C3F800C3F807C4
        F87ADFFBFFFFFF77DDF9B2E3F2ECECEDE8E9E9B7B7B8D8D8D900D8D8D9B7B7B8
        E8E9E9EBEBECE2EBEF41D1F8FFFFFFFFFFFFF9FDFEF6FCFEF6FCFEF6FCFEF9FD
        FEFFFFFFFFFFFF52D4F8D3E9F0EBEBECE8E9E9B7B7B8D8D8D900D8D8D9B6B7B8
        E7E8E8EAEAEBEEEEEF86DCF4A7E9FBF3FCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF3FCFEC9F1FB65D6F5EEEEEFEAEAEBE7E8E8B6B7B8D8D8D900D8D8D9B6B6B7
        E6E7E7E8E9E9ECECEDEEEEEF71D9F6C9F1FBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFA6E9FB72D9F6EEEEEFECECEDE8E9E9E6E7E7B6B6B7D8D8D900D8D8D9B5B6B6
        E5E5E6E7E8E8E9E9EAECECEDEEEEEF65D6F552D4F878DEF998E6FB87E1FA41D1
        F887DCF4EEEEEFECECEDE9E9EAE7E8E8E5E5E6B5B6B6D8D8D900D8D8D9B4B5B6
        E3E4E4E6E6E7E7E8E8E9E9EAECECEDEEEEEFD3E9F0B1E3F293DEF3A2E0F2E2EB
        EFEEEEEFECECEDE9E9EAE7E8E8E6E6E7E3E4E4B4B5B5D9D9D900DCDCDDB3B3B4
        E2E3E3E4E4E5E6E6E7E7E8E8E8E9E9EAEAEBEBEBECECECEDECECEDECECEDEBEB
        ECEAEAEBE8E9E9E7E8E8E6E6E7E4E4E5E2E3E3A6A6A7D2D3D300FFFFFF9D9E9E
        DDDDDEE2E3E3E3E4E4E5E5E6E6E7E7E7E8E8E8E9E9E8E9E9E8E9E9E8E9E9E8E9
        E9E7E8E8E6E7E7E5E5E6E3E4E4E2E3E3D1D2D3AAABACFFFFFF00FFFFFFFFFFFF
        9B9C9CB5B6B7B4B5B6B5B6B6B6B6B7B6B7B8B7B7B8B7B7B8B7B7B8B7B7B8B7B7
        B8B6B7B8B6B6B7B5B6B6B4B5B6B5B6B79E9F9FFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFD8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8
        D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9FAFAFAFFFFFFFFFFFF00}
      ParentFont = False
      Transparent = False
      OnClick = btnbatalClick
    end
    object btnsimpan: TSpeedButton
      Left = 444
      Top = 0
      Width = 89
      Height = 38
      Cursor = crHandPoint
      Caption = '&Simpan'
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
      OnClick = btnsimpanClick
    end
  end
  object pagebio: TPageControl
    Left = 0
    Top = 53
    Width = 530
    Height = 401
    ActivePage = tab2
    Align = alClient
    TabOrder = 4
    object tab1: TTabSheet
      Caption = 'Biodata'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label12: TLabel
        Left = 26
        Top = 294
        Width = 35
        Height = 16
        Caption = 'email:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 26
        Top = 270
        Width = 50
        Height = 16
        Caption = 'HP/Telp:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 26
        Top = 246
        Width = 31
        Height = 16
        Caption = 'Kota:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 26
        Top = 206
        Width = 45
        Height = 16
        Caption = 'Alamat:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 26
        Top = 182
        Width = 79
        Height = 16
        Caption = 'Nikah/Lajang:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 26
        Top = 158
        Width = 53
        Height = 16
        Caption = 'Tgl Lahir:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 26
        Top = 131
        Width = 79
        Height = 16
        Caption = 'Tempat Lahir:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 26
        Top = 107
        Width = 85
        Height = 16
        Caption = 'Jenis Kelamin:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 26
        Top = 83
        Width = 96
        Height = 16
        Caption = 'Nama Belakang:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 26
        Top = 59
        Width = 79
        Height = 16
        Caption = 'Nama Depan:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 26
        Top = 35
        Width = 55
        Height = 16
        Caption = 'No Induk:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object noninduk: TDBEdit
        Left = 146
        Top = 33
        Width = 341
        Height = 22
        Ctl3D = False
        DataField = 'kr_no_induk'
        DataSource = ds.karyawan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object namadepan: TDBEdit
        Left = 146
        Top = 57
        Width = 341
        Height = 22
        Ctl3D = False
        DataField = 'kr_firstname'
        DataSource = ds.karyawan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object namabelakang: TDBEdit
        Left = 146
        Top = 81
        Width = 341
        Height = 22
        Ctl3D = False
        DataField = 'kr_lastname'
        DataSource = ds.karyawan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object jk: TDBComboBox
        Left = 146
        Top = 105
        Width = 341
        Height = 23
        Ctl3D = False
        DataField = 'kr_jk'
        DataSource = ds.karyawan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Items.Strings = (
          'Laki-laki'
          'Perempuan')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object tempatlahir: TDBEdit
        Left = 146
        Top = 129
        Width = 339
        Height = 22
        Ctl3D = False
        DataField = 'kr_placeofbirth'
        DataSource = ds.karyawan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
      end
      object tgllahir: TDBEdit
        Left = 146
        Top = 153
        Width = 341
        Height = 22
        Ctl3D = False
        DataField = 'kr_dateofbirth'
        DataSource = ds.karyawan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
      end
      object status: TDBComboBox
        Left = 146
        Top = 177
        Width = 341
        Height = 23
        Ctl3D = False
        DataField = 'kr_maritalstatus'
        DataSource = ds.karyawan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Items.Strings = (
          'Menikah'
          'Lajang')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
      end
      object alamat: TDBMemo
        Left = 146
        Top = 202
        Width = 340
        Height = 37
        Ctl3D = False
        DataField = 'kr_address'
        DataSource = ds.karyawan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
      end
      object kota: TDBEdit
        Left = 146
        Top = 241
        Width = 341
        Height = 22
        Ctl3D = False
        DataField = 'kr_city'
        DataSource = ds.karyawan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
      end
      object hp: TDBEdit
        Left = 146
        Top = 265
        Width = 341
        Height = 22
        Ctl3D = False
        DataField = 'kr_phone'
        DataSource = ds.karyawan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
      end
      object email: TDBEdit
        Left = 146
        Top = 289
        Width = 341
        Height = 22
        Ctl3D = False
        DataField = 'kr_email'
        DataSource = ds.karyawan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
      end
    end
    object tab2: TTabSheet
      Caption = 'Pekerjaan, Pembayaran && Pajak'
      ImageIndex = 1
      OnEnter = tab2Enter
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label14: TLabel
        Left = 5
        Top = 26
        Width = 86
        Height = 16
        Caption = 'Tgl Mulai Kerja'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 5
        Top = 50
        Width = 103
        Height = 16
        Caption = 'Tgl Berhenti Kerja'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 8
        Top = 75
        Width = 86
        Height = 16
        Caption = 'Limit Pinjaman'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 8
        Top = 126
        Width = 74
        Height = 16
        Caption = 'Departemen:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 8
        Top = 152
        Width = 60
        Height = 16
        Caption = 'Level Gaji:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 8
        Top = 179
        Width = 85
        Height = 16
        Caption = 'Metoda Bayar:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 8
        Top = 206
        Width = 72
        Height = 16
        Caption = 'Nama Bank:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 8
        Top = 230
        Width = 78
        Height = 16
        Caption = 'No Rekening:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 480
        Top = 124
        Width = 23
        Height = 22
        Caption = '...'
        Flat = True
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 480
        Top = 148
        Width = 23
        Height = 22
        Caption = '...'
        Flat = True
        OnClick = SpeedButton2Click
      end
      object SpeedButton4: TSpeedButton
        Left = 480
        Top = 200
        Width = 23
        Height = 22
        Caption = '...'
        Flat = True
        OnClick = SpeedButton4Click
      end
      object Bevel1: TBevel
        Left = 8
        Top = 265
        Width = 497
        Height = 96
      end
      object Label13: TLabel
        Left = 17
        Top = 280
        Width = 72
        Height = 16
        Caption = 'Tarif PTKP:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 18
        Top = 309
        Width = 44
        Height = 16
        Caption = 'NPWP:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 20
        Top = 331
        Width = 68
        Height = 16
        Caption = 'Tgl NPWP:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton5: TSpeedButton
        Left = 476
        Top = 279
        Width = 23
        Height = 22
        Caption = '...'
        Flat = True
        OnClick = SpeedButton5Click
      end
      object Label24: TLabel
        Left = 7
        Top = 100
        Width = 49
        Height = 16
        Caption = 'Jabatan:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton6: TSpeedButton
        Left = 480
        Top = 100
        Width = 23
        Height = 22
        Caption = '...'
        Flat = True
        OnClick = SpeedButton6Click
      end
      object mulaikerja: TDBEdit
        Left = 125
        Top = 24
        Width = 380
        Height = 19
        Ctl3D = False
        DataField = 'kd_tgl_mulaikerja'
        DataSource = ds.karyawan_detail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object brhntikerja: TDBEdit
        Left = 125
        Top = 48
        Width = 380
        Height = 19
        Ctl3D = False
        DataField = 'kd_tgl_berhentikerja'
        DataSource = ds.karyawan_detail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object limit: TDBEdit
        Left = 125
        Top = 73
        Width = 380
        Height = 19
        Ctl3D = False
        DataField = 'kd_limit_pinjaman'
        DataSource = ds.karyawan_detail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object dpt: TDBLookupComboBox
        Left = 124
        Top = 124
        Width = 350
        Height = 22
        Ctl3D = False
        DataField = 'kd_dp_id'
        DataSource = ds.karyawan_detail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        KeyField = 'dp_id'
        ListField = 'dp_nama'
        ListSource = ds.dept
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
      end
      object levelgaji: TDBLookupComboBox
        Left = 124
        Top = 148
        Width = 350
        Height = 22
        Ctl3D = False
        DataField = 'kd_sl_kode'
        DataSource = ds.karyawan_detail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        KeyField = 'sl_kode'
        ListField = 'sl_name'
        ListSource = ds.salary_level
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
      end
      object metodabayar: TDBComboBox
        Left = 124
        Top = 175
        Width = 350
        Height = 24
        Ctl3D = False
        DataField = 'kd_cash_transfer'
        DataSource = ds.karyawan_detail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Items.Strings = (
          'Transfer'
          'Cash')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
      end
      object namabank: TDBLookupComboBox
        Left = 124
        Top = 201
        Width = 350
        Height = 22
        Ctl3D = False
        DataField = 'kd_ba_id'
        DataSource = ds.karyawan_detail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        KeyField = 'bk_id'
        ListField = 'bk_nama'
        ListSource = ds.bank
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
      end
      object norek: TDBEdit
        Left = 125
        Top = 225
        Width = 380
        Height = 19
        Ctl3D = False
        DataField = 'kd_norek'
        DataSource = ds.karyawan_detail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
      end
      object ptkp: TDBLookupComboBox
        Left = 124
        Top = 280
        Width = 349
        Height = 22
        Ctl3D = False
        DataField = 'kd_pt_id'
        DataSource = ds.karyawan_detail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        KeyField = 'pt_id'
        ListField = 'pt_nama'
        ListSource = ds.ptkp
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
      end
      object npwp: TDBEdit
        Left = 125
        Top = 304
        Width = 348
        Height = 19
        Ctl3D = False
        DataField = 'kd_tgl_mulaikerja'
        DataSource = ds.karyawan_detail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
      end
      object tglnpwp: TDBEdit
        Left = 125
        Top = 328
        Width = 346
        Height = 19
        Ctl3D = False
        DataField = 'kd_tgl_npwp'
        DataSource = ds.karyawan_detail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
      end
      object jtbn: TDBLookupComboBox
        Left = 124
        Top = 99
        Width = 349
        Height = 22
        Ctl3D = False
        DataField = 'kd_jb_id'
        DataSource = ds.karyawan_detail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        KeyField = 'jd_id'
        ListField = 'jd_nama'
        ListSource = ds.jobdes
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
    end
  end
end
