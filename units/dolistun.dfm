object dolistfrm: Tdolistfrm
  Left = 240
  Top = 178
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'mERP 1.0'
  ClientHeight = 442
  ClientWidth = 864
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 864
    Height = 33
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 135
      Height = 18
      Caption = 'List Delivery Order'
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
    Width = 864
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    Color = 33023
    TabOrder = 1
  end
  object Panel5: TPanel
    Left = 0
    Top = 41
    Width = 864
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
    Width = 864
    Height = 41
    Align = alTop
    TabOrder = 3
    object Label2: TLabel
      Left = 7
      Top = 10
      Width = 134
      Height = 15
      Caption = 'Cari #Delivery/#Transaki:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 836
      Top = 8
      Width = 23
      Height = 22
      Caption = '__'
      OnClick = SpeedButton1Click
    end
    object cari: TEdit
      Left = 144
      Top = 8
      Width = 313
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
      OnChange = cariChange
    end
    object cbcust: TCheckBox
      Left = 472
      Top = 10
      Width = 113
      Height = 17
      Caption = 'Filter Customer'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object lookcust: TDBLookupComboBox
      Left = 584
      Top = 8
      Width = 249
      Height = 22
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'cu_kode'
      ListField = 'cu_nama'
      ListSource = ds.customer
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnClick = lookcustClick
    end
  end
  object griddo: TDBGrid
    Left = 0
    Top = 86
    Width = 864
    Height = 356
    Align = alClient
    Ctl3D = False
    DataSource = ds.deliveryview
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    PopupMenu = popdo
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'do_kode'
        Title.Caption = '#Delivery Order'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'do_ju_trans'
        Title.Caption = 'No Transaksi'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'do_tgl'
        Title.Caption = 'Tgl Kirim'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Customer'
        Width = 350
        Visible = True
      end>
  end
  object popdo: TPopupMenu
    Left = 176
    Top = 224
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
    object N2: TMenuItem
      Caption = '-'
    end
    object CetakDeliveryOrder1: TMenuItem
      Bitmap.Data = {
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
      Caption = 'Cetak Delivery Order'
      OnClick = CetakDeliveryOrder1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object HapusDeliveryOrder1: TMenuItem
      Caption = 'Hapus Transaksi ini'
      OnClick = HapusDeliveryOrder1Click
    end
  end
  object rpDeliver: TRvProject
    Engine = rsdeliver
    Left = 616
    Top = 149
  end
  object rsdeliver: TRvSystem
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
    Left = 616
    Top = 181
  end
  object rdcustdeliver: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.customer
    Left = 656
    Top = 181
  end
  object rdcustpicdeliver: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.custpic
    Left = 688
    Top = 181
  end
  object rddeliverydetail: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.deliverydetailrpt
    Left = 688
    Top = 149
  end
  object rddeliver: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.deliveryrpt
    Left = 656
    Top = 149
  end
  object rdbarangdelrpt: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.barangdeliverrpt
    Left = 720
    Top = 149
  end
end
