object salaryrptfrm: Tsalaryrptfrm
  Left = 487
  Top = 263
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'mERP 1.0'
  ClientHeight = 264
  ClientWidth = 398
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 398
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 121
      Height = 18
      Caption = 'Laporan/Slip Gaji'
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
    Width = 398
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    Color = 33023
    TabOrder = 1
  end
  object Panel5: TPanel
    Left = 0
    Top = 49
    Width = 398
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
    Top = 224
    Width = 398
    Height = 40
    Align = alBottom
    TabOrder = 3
    object btntambah: TSpeedButton
      Left = 308
      Top = 0
      Width = 89
      Height = 38
      Cursor = crHandPoint
      Caption = '&Cetak'
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 53
    Width = 398
    Height = 171
    Align = alClient
    TabOrder = 4
    object Label2: TLabel
      Left = 16
      Top = 32
      Width = 61
      Height = 16
      Caption = 'Karyawan:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 17
      Top = 59
      Width = 48
      Height = 16
      Caption = 'Periode:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object cbkaryawan: TDBLookupComboBox
      Left = 96
      Top = 32
      Width = 281
      Height = 22
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'kr_id'
      ListField = 'nama'
      ListSource = ds.karyawanlookup
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object cbperiode: TComboBox
      Left = 96
      Top = 56
      Width = 282
      Height = 24
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 16
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Text = 'cbperiode'
    end
  end
  object rpGaji: TRvProject
    Engine = rsgaji
    Left = 24
    Top = 173
  end
  object rsgaji: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemSetups = [ssAllowCopies, ssAllowCollate, ssAllowDuplex, ssAllowDestPreview, ssAllowDestPrinter, ssAllowDestFile, ssAllowPrinterSetup, ssAllowPreviewSetup]
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 64
    Top = 173
  end
  object rdgaji: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.salaryrpt
    Left = 96
    Top = 173
  end
  object rdkaryawanrpt: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.karyawan
    Left = 128
    Top = 173
  end
  object rdkardetail: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.karyawandetailrpt
    Left = 160
    Top = 173
  end
  object rdpenambah: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.salary_level_detail_t
    Left = 192
    Top = 173
  end
  object rdpengurang: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.salary_level_detail_k
    Left = 224
    Top = 173
  end
end
