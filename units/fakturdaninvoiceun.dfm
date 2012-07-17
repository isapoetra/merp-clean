object invoicprintfrm: Tinvoicprintfrm
  Left = 595
  Top = 250
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'mERP 1.0'
  ClientHeight = 217
  ClientWidth = 394
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 394
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 103
      Height = 19
      Caption = 'Cetak Invoice'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 57
    Width = 394
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    Color = 33023
    TabOrder = 1
  end
  object Panel5: TPanel
    Left = 0
    Top = 65
    Width = 394
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
    Top = 177
    Width = 394
    Height = 40
    Align = alBottom
    TabOrder = 3
    object btntambah: TSpeedButton
      Left = 304
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
        62030000424D6203000000000000420000002800000014000000140000000100
        10000300000020030000120B0000120B00000000000000000000007C0000E003
        00001F000000FF7FFF7FFF7FFF7FFF7F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F
        7B6F7B6FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FDE7BF75EFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7F19639C73FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7B6F
        734EFF7FFF7FDE7BDE7BDE7BDE7BDE7BFF7FD65AD65AFF7FFF7FFF7FFF7FFF7F
        FF7F9C739C731863534AFF7FDE7BDE7BDE7BDE7BDE7BDE7BFF7FD65A94529C73
        9C73FF7FFF7FDE7BF75EF75EB5566B2D734EFF7FDE7BDE7BDE7BDE7BDE7BDE7B
        FF7FD65A4A29734E1863D65ABD7739671863BD77B556E71C31469C737B6F7B6F
        7B6F7B6F7B6F7B6F9C739452E71C3146BD775A6B1863F75E7B6F9C733967EF41
        1042314631463146314631463146314631461042EF3DF75E9C739C7318631863
        7B6F9C739C73DD7BBD779C77BC77BC77BC77BC77BC77BC779C77BD77DD7BBD77
        9C739C73186318639C73BD77BD7B3A6334323432343234323432343234323432
        34323432D852BD7BBD77BD77186318639C73DE7BDE7B553A3526772E762E762E
        762E762E762E762E762E562A132A9C73DE7BBD7718631863BD77DE7BDE7B763A
        1A433B473B473B473B473B473B473B473B473B4755329C73DE7BDE7B18631863
        BD77FF7FDE7B963E3B435C4B5C4B5C4B5C4B5C4B5C4B5C4B5C4B7C4B76369D73
        FF7FDE7B18631863BD77FF7FDE7B963E1B435C4B3B473B473B473B473B473B47
        3B475C4B7636BD73FF7FFF7F18637B6F1863FF7FFF7F553A772E973277327732
        773277327732773277329832342ABD77FF7F5A6B5A6BFF7F7B6FF75E17637546
        F22954363436343634363436343634363436132E543EF75EF75E5A6BFF7FFF7F
        FF7FFF7FFF7FFF7FF85EFE7FDE7BDE7BDE7BDE7BDE7BDE7BFF7F3967DE7BFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FDE7B1863FF7FDE7BDE7BDE7BDE7BDE7BDE7B
        FF7F5A6BDE7BFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FDE7B1863FF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7F5A6BDE7BFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FDE7B
        1863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5A6BDE7BFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7F1863F75EF75EF75EF75EF75EF75EF75EF75E1863FF7FFF7F
        FF7FFF7FFF7F}
      ParentFont = False
      Transparent = False
      OnClick = btntambahClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 69
    Width = 394
    Height = 108
    Align = alClient
    TabOrder = 4
    object Label2: TLabel
      Left = 24
      Top = 5
      Width = 80
      Height = 18
      Caption = 'No Invoice:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 53
      Width = 96
      Height = 18
      Caption = 'No Transaksi:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object numinvoice: TEdit
      Left = 24
      Top = 24
      Width = 353
      Height = 22
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object numtransaksi: TEdit
      Left = 24
      Top = 72
      Width = 353
      Height = 22
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
  end
  object rpInvoice: TRvProject
    Engine = RvSystem1
    Left = 152
    Top = 8
  end
  object RvSystem1: TRvSystem
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
    Left = 184
    Top = 8
  end
  object rdincust: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.customerview
    Left = 264
    Top = 8
  end
  object rdinvoice: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.tagihanrpt
    Left = 224
    Top = 8
  end
  object rdinvoicedetail: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.invoicedetail
    Left = 296
    Top = 8
  end
  object rdbarangrpt: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.barangrpt
    Left = 360
    Top = 8
  end
  object rddeliveryrpt: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.deliveryrpt
    Left = 328
    Top = 8
  end
end
