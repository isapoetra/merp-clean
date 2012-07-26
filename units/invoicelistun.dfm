object invoicelistfrm: Tinvoicelistfrm
  Left = 121
  Top = 119
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'mERP 1.0'
  ClientHeight = 543
  ClientWidth = 1196
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1196
    Height = 33
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 100
      Height = 18
      Caption = 'List Penjualan'
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
    Width = 1196
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    Color = 33023
    TabOrder = 1
  end
  object Panel5: TPanel
    Left = 0
    Top = 41
    Width = 1196
    Height = 4
    Align = alTop
    BevelOuter = bvNone
    Color = 805596
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 0
    Top = 45
    Width = 1196
    Height = 41
    Align = alTop
    Color = 14869218
    TabOrder = 3
    object Label2: TLabel
      Left = 5
      Top = 12
      Width = 117
      Height = 16
      Caption = 'Cari  PO/No Trans:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 509
      Top = 12
      Width = 101
      Height = 16
      Caption = 'Filter Customer:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 808
      Top = 8
      Width = 23
      Height = 22
      Caption = '__'
      OnClick = SpeedButton1Click
    end
    object cari: TEdit
      Left = 128
      Top = 8
      Width = 369
      Height = 19
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnChange = cariChange
      OnKeyDown = cariKeyDown
    end
    object lookcust: TDBLookupComboBox
      Left = 616
      Top = 8
      Width = 190
      Height = 22
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      KeyField = 'cu_kode'
      ListField = 'cu_nama'
      ListSource = ds.customer
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnClick = lookcustClick
    end
  end
  object gridinv: TDBGrid
    Left = 0
    Top = 86
    Width = 1196
    Height = 457
    Align = alClient
    DataSource = ds.invoice
    FixedColor = clSkyBlue
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = popinv
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = gridinvDrawColumnCell
    OnDblClick = gridinvDblClick
    OnKeyDown = gridinvKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'ju_kode'
        Title.Caption = 'No Transaksi'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = [fsBold]
        Width = 175
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ju_po'
        Title.Caption = 'No PO'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Customer'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = [fsBold]
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'custnpwp'
        Title.Caption = 'NPWP'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PIC'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ju_tgl'
        Title.Caption = 'Tgl Transaksi'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ju_due'
        Title.Caption = 'Jth Tempo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = [fsBold]
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ju_bayar'
        Title.Caption = 'Pembayaran'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = [fsBold]
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ju_total'
        Title.Alignment = taRightJustify
        Title.Caption = 'Nilai Transaksi'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ju_downpayment'
        Title.Alignment = taRightJustify
        Title.Caption = 'Down Payment'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ju_balance'
        Title.Alignment = taRightJustify
        Title.Caption = 'Balance'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ju_barang_sent'
        Title.Caption = 'Down Payment'
        Visible = False
      end>
  end
  object popinv: TPopupMenu
    OnPopup = popinvPopup
    Left = 256
    Top = 280
    object RefreshData1: TMenuItem
      Bitmap.Data = {
        62030000424D6203000000000000420000002800000014000000140000000100
        10000300000020030000120B0000120B00000000000000000000007C0000E003
        00001F000000FF7FFF7FFF7FFF7FFF7F9C731042492546196511451126154921
        EF3D7B6FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FDE7B10424419031A841EA51A
        86168612660E260AA5050409EF3DDE7BFF7FFF7FFF7FFF7FFF7FBD776A290222
        E42EC522A612860A860687068706660A660A47068501281D9C73FF7FFF7FFF7F
        FF7F4925832E2437C51EA60E8506860A870E860AA60EA60EA60E660A4706E601
        0719BD77FF7FFF7FEF3D422A433FC522A612A40ECC2A785FBC6FEC2AA512A616
        A616C61686124706A501AD31FF7F9C73421D62470433C51AA4160E3BFF7FFF7F
        DC770B33C416C51AC416C51AC51E66124706040539673146C13A6247E426C31A
        E626DD77FF7F4F47E522C422C422C4220D3BE726C41EC522460EC5058C316929
        614B4243E62E09374D47FF7F945F0833E62EE326E326745BFF7FB96BE52AE326
        8516460A27194421A153413B7257FF7FDC77FF7FDA6FFF7F735BE22A945FFF7F
        FF7FFF7FB96B0537A41E660E4511221DC15B41432943FD7BFF7FFF7FFF7FFD7B
        273F4C4FFF7FFF7FFF7FFF7FFF7FB463A31E66126511231DC15B824F01374947
        FD7BFF7FDD77494701334847925F9363FF7FB667925F6C53A322861645110519
        A157A15B2243013B494BB567494B213B223F203B4243D873FF7F6B530037223B
        A422851A25114A252247E063614F223F213F213F213F22434347AE63FB7BFF7F
        B76F224322430337A422651A271D524AE319E063C05F624B2243424742472143
        6853FF7FFF7FB66B444B4147223FC42AC426C411AD35BD77A408033FE067C15B
        614F424742474247424B69576753414741472243E332E42EA522E3085A6BFF7F
        524A2309624BE067C05F8157614F424B424B4047414742472243033B0337E42A
        840DEF3DFF7FFF7FFF7F8C31840D4343C05FC05FA15B8153814F624B624B4247
        4243233FE432C4154925DE7BFF7FFF7FFF7FFF7FAD35430DC3328153A15BA15B
        A157814F824F624B4343C33283154A29BD77FF7FFF7FFF7FFF7FFF7FFF7F9452
        0519E221E23E614FC05FE05F81530243022A2419524AFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FDE7BB556AC354625432142214625AB319452BD77FF7FFF7F
        FF7FFF7FFF7F}
      Caption = 'Refresh Data'
      OnClick = RefreshData1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object LihatDetail1: TMenuItem
      Caption = 'Lihat Detail'
      OnClick = LihatDetail1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object cetakinv: TMenuItem
      Bitmap.Data = {
        62030000424D6203000000000000420000002800000014000000140000000100
        10000300000020030000120B0000120B00000000000000000000007C0000E003
        00001F000000FF7FFF7FBE775B6B3A673A673A673A673A673A673A673A673A67
        3A673A673A675A6BBD77FF7FFF7FFF7F9C73F45ED15EF15EF262F25EF262F262
        F25EF25EF25EF2621363F36213631363F55E7B6FFF7FDE7B556BB1779177B27B
        D37BD37BD47BD47BD47BD57BD57BD57BD57BD57BD57BD57BD47B366BBD779C73
        9277B27B72779277B37BB47BB47BB47BB57BB57BB57BB57BB57BB57BD57BD57B
        D57BB5779B73BB77B277B27B9277B377D47BD47BD57BD57BD57BD57BD67BD67B
        D67BD67BD57BD57BD67BD57B9A73BB77B277B37772779377B477B47BB577B577
        B67BB677B67BB67BB67BB67BB67BB67BB67BB57B9A73BB77B277B37B9377B377
        D57BD57BD57BD67BD67BD67BD67BD67BD67BD67BD67BD67BD67BD67B9A73BB77
        9277B3779377B477D57BB57BB67BB67BB67BD67BD67BD67BD67BD67BD67BD67B
        D67BB67B9A73BB77B37BD37B9377B47BD57BD57BD67BD67BD67BD67BD67BD67B
        D67BD67BD67BD67BD67BD67B9A73BB779373B37773739473B577B577B677B677
        B677B677B677B677B677B677B677B677B677B5779A73BB77B377B47B9377B477
        D57BD67BD67BD67BD67BD67BD67BD67BD67BD67BD67BD67BD67BB67B9A73BB77
        B377B47773779477B577B677B677B677B677B677B677B67BB677B677B67BB67B
        B67BB6779A73BB77D47BD47BB47BB57BD67FD67FD67FD77FD77FD77FD77FD77F
        D77FD77FD67FD67FD77FD67F9A739B733067516B1167326B526B526B736F536B
        536B536B536B536F536F736F736F736F746F736F7A6F5A6B0625E524E524E524
        E524E524E524E524E524E524E524E524E524E524E524E524E524E52417635A6F
        E628C524C524C524C524C524C524C528C524C524C524C524C524C524C524C524
        C524C524F7627A6F2731062D0731073107310731062D06310731073107310731
        072D0731073107310731062D1867BD7B6A3D2735283528352835283528352835
        28352835283528352835283528352835273549399C73FF7FD56248392839483D
        483D483948394839483948394839483948394839483928392739935EFF7FFF7F
        FF7F386F50560F522F522F522F522F522F522F522F522F522F522F520F523056
        176BFF7FFF7F}
      Caption = 'Generate Invoice'
      OnClick = cetakinvClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object HapusInvoice1: TMenuItem
      Caption = 'Hapus Transaksi Ini'
      OnClick = HapusInvoice1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object InputData1: TMenuItem
      Caption = 'Insert to DO'
      OnClick = InputData1Click
    end
  end
  object ImageList1: TImageList
    Left = 128
    Top = 248
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFFEFEFEFFF3F3F3FFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFF0F0F0FFFAFAFAFF000000FF000000FF000000FFF9F9F9FFE7E7E7FFE5E5
      E5FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE5E5E5FFECECECFF000000FF000000FF0000000000000000DED6D600D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6D6D6000000000000000000000000FF000000FFFEFEFEFFE3E3
      E3FF86837EFF383767FF1A1B87FFC9C9C9FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFBFBFBFFADAEAFFF84B9C3FF96D5
      D9FF96D4D7FF9AD4D9FF9BD4D8FF9CD4D7FF9CD4D7FF9DD4D7FF9FD4D7FF9FD3
      D7FFA1D3D7FF8FA1A3FFE2E2E2FF000000FFE5E5E5FF221D20FF291A08FF7F56
      11FF895F15FF93691AFF9C731EFFA67C23FFA57B22FF9B711DFF916719FF865D
      14FF7C5310FF68420CFF7E7E7EFF000000FF00000000E7E7E7008CB5BD008CBD
      BD0094BDC60094BDBD0094BDC60094BDBD0094BDBD0094BDBD009CC6C6009CBD
      C6009CC6C6009CC6C600DEDEDE0000000000686564FF2B2D73FF2733BAFF6D6F
      B6FF434AC4FF1E29BAFF090FACFF0C0C8FFF454061FFF4F4F4FF000000FF0000
      00FF000000FF000000FF000000FF000000FFCACACBFF90F0F4FF8FE0EFFF9BF2
      F7FF9FF2F7FFA3F3F8FFA4F3F7FFA8F3F8FFAAF4F9FFAAF4F9FFABF4F9FFADF5
      FAFFADF4FAFFADF4FAFFA3D6D9FFFBFBFBFF717171FF4E3A10FF3E392FFF4C47
      3DFF59544AFF645F54FF6B665CFF6C675CFF716C61FF797469FF7E796FFF817C
      71FF807B70FF756749FF735015FFECECECFFE7E7E70094E7EF0094DEEF0094E7
      EF009CEFF700A5EFF700A5EFF700ADEFF700ADEFF700ADEFF700ADEFF700ADEF
      F700ADF7F700ADF7F700ADEFEF00DEE7E700222BBDFF363DB2FF434696FF6767
      95FF4147C2FF3039C4FF0D15B1FF3433B3FF3131B3FF1819B1FF888684FF0000
      00FF000000FF000000FF000000FF000000FF98C4C5FF94E2E4FF8CD0DAFF9AE2
      E3FF9EE3E4FFA2E3E5FFA5E4E6FFA7E5E6FFAAE5E6FFABE6E6FFAAE6E7FFABE6
      E7FFABE8E9FFABE7E8FFACE8E9FFF1F1F1FF535355FF2B251CFF4A4A4AFF6464
      64FF7F7F7FFF999999FFB0B0B0FFBBBBBBFFBCBCBCFFB8B8B8FFB1B1B1FFA7A7
      A7FF999999FF8A8A8AFF503C15FFE5E5E5FFDEEFEF0094EFEF0094E7EF009CEF
      EF00A5F7F700A5F7F700ADF7F700ADF7F700ADF7F700B5F7F700B5F7F700B5F7
      F700ADF7F700ADF7F700ADF7F700D6E7E700131FB4FF4C51BFFF494C99FF6769
      94FF292F91FF232DBEFF1219B5FF3737B5FF3737C2FF2F30B4FF16179BFF332F
      87FFD6D6D6FF000000FF000000FF000000FF9ED9DDFF9AF2F7FF93E0EEFFA1F2
      F7FFA6F3F8FFAAF3F8FFAEF4F8FFB0F4F8FFB2F4F8FFB3F5F9FFB4F5F9FFB3F5
      FAFFB2F5F9FFB3F5FBFFB2F5FBFFF0F1F1FF505052FF42310AFF4E380AFFBB84
      17FFC48D1BFFCC951FFFD59E23FFDEA727FFDCA526FFD39D22FFCA941EFFC18B
      1AFFB88216FFA8720FFF4C3813FFE4E4E4FFDEEFEF0094EFEF0094DEEF009CE7
      EF00A5EFEF00A5EFF700ADEFEF00B5EFF700B5EFEF00B5EFF700B5EFF700B5EF
      F700B5EFF700B5EFF700ADEFF700D6E7E700131FB6FF3F46B8FF414695FF6C6C
      99FF232EB2FF1925B8FF181EB8FF3C3CB9FF3D3CC5FF3233B7FF191AA3FF292A
      A3FF2728AAFF56515BFFF8F8F8FF000000FF9ED8DCFF9BF2F7FF95E0EEFFA4F2
      F7FFAAF4F9FFACF3F7FFB2F4F8FFB6F5F9FFB7F5FAFFB7F5F9FFB7F5FAFFB7F6
      FAFFB4F5FAFFB2F4F9FFB3F5FAFFF0F1F1FF505052FF251B05FF3C2C09FFD09E
      25FFCA9521FFCA9521FFCA9521FFCA9521FFCA9521FFCA9521FFCA9521FFCA95
      21FFC89421FFBA881DFF815B17FFE4E4E4FFDEEFEF0094EFEF009CE7EF009CEF
      EF00ADF7F700ADF7F700B5F7F700B5F7F700B5F7F700B5F7F700B5F7F700B5F7
      F700B5F7F700B5F7F700B5F7F700D6E7E7001824B7FF464AA8FF3B3F92FF7573
      9DFF565AB9FF3A41CAFF1F26BEFF4040BEFF4140CAFF3637BAFF1C1EA7FF2F30
      ABFF5959C9FF4748CCFF3334BFFFD4D4D4FF9CCDCEFF9AE4E5FF95D5DEFFA3E6
      E7FFA7E6E7FFADE7E8FFB0E7E8FFB1E6E7FFB5E9EAFFB4E9EAFFB4EAEAFFB2E9
      EAFFB3EAEBFFB1EAECFFB0EAEBFFF0F1F1FF505052FF251A05FF3C2B08FFCE9A
      21FFC8911DFFC8911DFFC8911DFFC8911DFFC8911DFFC8911DFFC8911DFFC891
      1DFFC8911DFFC58F1CFF755115FFE4E4E4FFDEEFEF009CEFF7009CE7EF00A5EF
      F700ADF7F700ADF7F70094C6F700B5EFF700B5F7F700B5F7F700B5F7F700B5F7
      F700B5F7F700B5F7F700B5F7F700D6E7E7002630C0FF5154C1FF52549EFF7776
      9EFF3B41BEFF363ECAFF272FC3FF4345C2FF4645CDFF3A3CBFFF1F24ABFF3133
      AEFF5B5BCBFF4A4BD6FF282AB2FFE7E7F8FFA1D8DCFFA0F3F8FF9AE2EFFFA7F3
      F7FFADF4F7FFB3F4F9FFB8F6FAFFBAF6FAFFBAF5F9FFB8F5F9FFB9F6FAFFB7F5
      FAFFB7F6FAFFB6F5FAFFB7F6FBFFF0F0F1FF505052FF231804FF382707FFC28E
      1BFFBB8417FFBB8417FFBB8417FFBB8417FFBB8417FFBB8417FFBB8417FFBB84
      17FFBB8417FFBA8317FF6F4B12FFE4E4E4FFDEEFEF009CE7E7009CDEE700A5E7
      E700ADEFEF00ADEFEF003921F7003921F700524AF7006B73EF00A5D6EF00B5EF
      EF00B5EFEF00B5EFEF00ADEFEF00D6E7E7002B34C2FF454ABAFF4C4E9BFF7B79
      A1FF2931ACFF2E36C4FF3035C9FF4849C5FF4A4AD1FF3E3FC3FF2427AEFF3335
      B1FF5B5BCBFF4A4BD6FF282AB2FFE7E7F9FFA1D7DBFFA1F3F8FF9DE3F1FFAAF3
      F9FFAFF4F9FFB2F4F8FFB5F5F9FFB7F5F9FFB9F5FAFFBBF6FBFFB9F6FAFFB8F6
      FAFFB7F5F9FFB7F5FAFFB6F5FAFFF0F1F1FF505052FF201603FF342405FFB783
      16FFAF7811FFAF7811FFAF7811FFAF7811FFAF7811FFAF7811FFAF7811FFAF78
      11FFAF7811FFAE7811FF68450FFFE4E4E4FFDEEFEF009CEFEF009CE7EF00A5EF
      EF00ADF7F700B5F7F7003921F7003921F7003921F7003921F7003921F7004231
      F700636BF7009CC6F700B5EFF700D6E7E7003037C5FF343CB3FF4C4E97FF9592
      B1FF4248C1FF363EC9FF3136CCFF4C4DCAFF4D4FD6FF4042C6FF2527AFFF3335
      B1FF5B5BCBFF4A4BD6FF282AB2FFE7E7F9FFA0D1D3FF9FE8EBFF9ADAE4FFA8EB
      EDFFABEBEEFFB1ECEEFFB2ECEEFFB4EDEEFFB6EDEFFFB6EDEFFFB4ECEEFFB5ED
      EFFFB5EEEFFFB4EDF0FFB5EEF0FFF0F1F1FF505052FF1F1402FF312103FFAE7A
      11FFA46E0DFFA46E0DFFA46E0DFFA46E0DFFA46E0DFFA46E0DFFA46E0DFFA46E
      0DFFA46E0DFFA36D0DFF623F0DFFE4E4E4FFDEEFEF009CEFEF009CDEEF00A5E7
      EF00ADEFEF00B5EFEF003921F7003921F7003921F7004A42F70084A5EF009CCE
      EF00B5EFF700B5EFF700B5EFEF00D6E7E7004F56D2FF7072D6FF7376D9FF7779
      E7FF8183EBFF8182EAFF8082EAFF4B4ED8FF3134CFFF4042C6FF2628AFFF2324
      75FF5B5BCCFF4A4BD6FF282AB2FFE7E7F9FFA4D9DCFFA5F3F8FF9FE4F1FFACF4
      F9FFAFF4F9FFB3F5F9FFB5F5FAFFB6F5F9FFB9F6FBFFB7F5F9FFB8F5FAFFB7F5
      F9FFB6F5FAFFB8F6FAFFB7F5FAFFF0F0F1FF505052FF1D1201FF2E1E02FFA672
      0DFF9B6508FF9B6508FF9B6508FF9B6508FF9B6508FF9B6508FF9B6508FF9B65
      08FF9B6508FF9B6408FF5C3A0AFFE4E4E4FFDEE7E70084CECE008CC6CE0094CE
      D60094D6D60094D6D6009CD6D6009CD6D6009CD6D6009CD6D6009CD6DE009CDE
      DE009CDEDE009CDEDE009CDEDE00D6DEDE00000000FFBABBF2FF8485EDFF8687
      EEFF8585EBFF8586EBFF8485EDFF8383EDFF8284EDFF5255DBFF292EC4FF3335
      AFFF5858BEFF373993FF282AB3FFE7E7F9FF7C9193FF638E90FF668C91FF6991
      93FF688F90FF638A8CFF688D8EFF6B8F90FF6C8E8FFF668B8CFF668B8CFF668B
      8CFF678C8DFF6A9395FF6B9495FFF0F0F0FF505052FF1C1101FF2C1C01FFA06B
      0AFF945E05FF945E05FF945E05FF945E05FF945E05FF945E05FF945E05FF945E
      05FF945E05FF935D05FF583609FFE4E4E4FFD6D6D60031424A0029394A002939
      4A0029394A0029394A0029394A0029394A0029394A0029394A0029394A002939
      4A0029394A0029394A0029394A00BDC6C600000000FF000000FF000000FFD7D8
      F7FF8384EBFF8889EFFF8889EDFF8788EEFF8586EEFF8487EEFF8586EDFF5D5F
      DEFF3C3ED1FF4B4CD6FF2628AAFFE7E7F9FF6D727FFF2A354DFF2B354EFF2B36
      4EFF2C364FFF2B354EFF2C374FFF2B354EFF2B364EFF2B354EFF2C364FFF2B36
      4EFF2A354EFF2B364EFF2B354EFFEFEFEFFF515153FF1A1000FF2B1A01FF9B66
      08FF8E5803FF8E5803FF8E5803FF8E5803FF8E5803FF8E5803FF8E5803FF8E58
      03FF8E5803FF8E5803FF553207FFE5E5E5FFD6D6DE003139520029314A002931
      4A0029314A0029314A002931520029314A0029314A0029314A0029314A002931
      4A0029314A0029314A0029314A00BDBDC600000000FF000000FF000000FF0000
      00FF000000FFF3F3FCFF8889EBFF8B8DF0FF898BF0FF8889EEFF898AEFFF8889
      EFFF8788EEFF6667E2FF2B2FCCFFE7E7F9FF707786FF36435FFF35425EFF3542
      5FFF35425EFF35425EFF35425EFF36435FFF36435FFF36435FFF35435EFF3643
      5FFF36435FFF36435FFF36435EFFF4F5F5FF5B5B5CFF190F00FF291900FF9762
      06FF8A5401FF8A5401FF8A5401FF8A5401FF8A5401FF8A5401FF8A5401FF8A54
      01FF8A5401FF875201FF502F06FFE7E7E7FFD6DEDE00394A6300394263003942
      630039426300394263003142630039426300394263003942630039425A003942
      6300394263003942630031425A00C6C6CE00000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFABACF0FF8B8DF0FF8A8BF0FF8586
      EDFF8C8FECFFAEAFF1FFD3D4F7FFFEFEFEFFBABEC6FF404F71FF425072FF4150
      71FF425172FF415072FF425172FF415071FF415072FF414F71FF415072FF4150
      71FF415071FF415071FF404F71FFFEFEFEFFAEAEAEFF150C00FF241500FF8A59
      05FF7C4A00FF7C4A00FF7C4A00FF7C4A00FF7C4A00FF7C4A00FF7C4A00FF7C4A
      00FF7B4900FF714300FF2D2320FFF9F9F9FF00000000ADB5C600424A73004252
      7B0042527B004252730042527300425273004252730042527300425273004252
      730042527300424A73009CA5BD0000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF78849EFF4B5B81FF4C5C
      82FF4B5B81FF4B5B81FF4B5B82FF4B5C81FF4B5B81FF4B5B81FF4C5C82FF4B5B
      81FF4B5A81FF4A5A80FFF0F1F3FF000000FF000000FFAEAEAEFF5B5B5CFF5151
      53FF505052FF505052FF505052FF505052FF505052FF505052FF505052FF5050
      52FF535355FF717171FFE5E5E5FF000000FF00000000000000008494AD007B84
      A5007B8CA5007B8CA5007B8CA5007B8CA5007B8CA5007B8CA5007B8CA5007B8C
      A5007B84A500848CAD000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF80038003C003C0FF000100018001
      003F000000000000001F00000000000000070000000000000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000008000000000000000E000000000000000F800000000000000
      FF00000000008001FFFF80018001C00300000000000000000000000000000000
      000000000000}
  end
end
