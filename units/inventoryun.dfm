object inventoryfrm: Tinventoryfrm
  Left = 241
  Top = 113
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'mERP 1.0'
  ClientHeight = 568
  ClientWidth = 918
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
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 918
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 122
      Height = 18
      Caption = 'Inventory Barang'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 918
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    Color = 33023
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 918
    Height = 4
    Align = alTop
    BevelOuter = bvNone
    Color = 871389
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
  end
  object caripn: TPanel
    Left = 0
    Top = 53
    Width = 918
    Height = 52
    Align = alTop
    Color = 14869218
    TabOrder = 3
    object Label2: TLabel
      Left = 8
      Top = 19
      Width = 110
      Height = 16
      Caption = 'Cari barang/type:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cari: TEdit
      Left = 128
      Top = 16
      Width = 593
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
    object lookgudang: TDBLookupComboBox
      Left = 732
      Top = 16
      Width = 150
      Height = 22
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      KeyField = 'gd_id'
      ListField = 'gd_nama'
      ListSource = ds.gudang
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnClick = lookgudangClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 105
    Width = 918
    Height = 463
    Align = alClient
    DataSource = ds.inventory
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = popinvent
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'in_kd_barang'
        Title.Caption = 'Kd Barang'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'barang'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Type'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gudang'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'in_stock'
        Title.Caption = 'Stock'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'in_harga'
        Title.Caption = 'Harga'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'in_kd_barang'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'in_kd_gudang'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'unit'
        Title.Caption = 'Unit'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object popinvent: TPopupMenu
    Left = 344
    Top = 360
    object RefreshData1: TMenuItem
      Bitmap.Data = {
        42080000424D4208000000000000420000002800000020000000200000000100
        10000300000000080000120B0000120B00000000000000000000007C0000E003
        00001F000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5A6B524A6B2D
        C6188410830883088410C6186B2D734E7B6FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FD65A29256108020DA311
        E41125122512250E050AC5096405C20062044A29F75EFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5A6B4A298108A315841EC522A51E
        851A851A651665126612460E460A460A0606440161004A297B6FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FB556620C8215C426E426C426A422851A
        8612860E860A660A660A660A460A460A260A470606020301630CB556FF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7F524A60044326042FE42EC426A51A860E8706
        8706870687068706870687068706870A660A260A2606470285014100524AFF7F
        FF7FFF7FFF7FFF7FFF7FFF7F94526008832E2437E332C426A612870AA60AA60A
        860A65068506A60AA60AA60AA60AA60AA60A860A460A26062702C60141009452
        FF7FFF7FFF7FFF7FFF7F39676108822E433B0337C426A612A60EA612A50E650A
        8916CF2EAD2A860EA612A612A612A612A612A612A612460A26062702A5014204
        3967FF7FFF7FFF7FDE7BC6180126633F233BE42EA616A612A616A412881A354F
        DE77FF7FFF7F0E37A412A616A616A616A616A616A616A616460E260647024401
        E71CDE7BFF7FFF7F734EE1106243423F0337C51AC51AC51AA416C926BB6FFF7F
        FF7FFF7FFF7F5043A412C51AC51AC51AC51AC51AC51AC51AA51A460A26062702
        8200734EFF7FDE7BA514823662474243E42AC51AC51EC41EC622BB6FFF7FFF7F
        FF7FB967514BC622C51EC51EC51EC51EC41AC41EC51EC51EC51E851626064706
        8501A514DE7BF75EA010624B6247233FC522C522C522C31E524FFF7FFF7FFE7B
        2D43C41EC31EC422C522C522C422C41EEA32C726C41EE522C522C522460E260A
        26066100F75ECE39C125A24F624B2337C422C322C222E526DB73FF7FFF7F4E47
        A01AC322E426E426E426E426C422745BFF7FBB73E932C322E426E426851A260A
        470A2305CE390821813AA24F624B0333E52E51532E470937FF7FFF7FDB730837
        51532C43E326E42AE326E326755FFF7FFF7FFF7FDC770837E226E42AC422460E
        460AA4050821A4140147A153624B022F7257FF7FFF7FB86BFF7FFF7FDA6FBA6F
        FF7FFF7F083BE22AE32E955FFF7FFF7FFF7FFF7FFF7FDC77083BE22AE42A4612
        460EE50984108310414FA153614F02337157FF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFE7F273BE22E9463FF7FFF7FFF7FFF7FFF7FFF7FFF7FDC77273FE32A6512
        460E250E83088210614FA157815323370333B567FF7FFF7FFF7FFF7FFF7FFF7F
        FF7F4C4F012F4943FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F9463E22A6516
        6612250E830C820C414FC15BA157233F02370337B567FF7FFF7FFF7FFF7FFF7F
        6C4F01330237253FDA73FF7F935FD96FFF7FFF7F925FDC77FE7F6D53E22E6516
        65162512830C63082147C15FA1576247033B223B223BB667FF7FFF7FFF7F6C53
        0137233B233B223B253F47434543FD7BFF7FFE7B254325434747223BC42E6516
        85162512630C8410A236E063A15B8153233F233F223B233FB363D9736C53013B
        223F223F233F223B213B203FB46BFF7FFF7FD86F223B223B223B223FA426851A
        851AE50D84100821C31DE063C05BA15B4247223F223F223F213F223F213F223F
        223F223F223F62478653D46FFF7FFF7FFF7F6B53213F223F22430337A422851E
        A51E84090821CE39E3048153E063C05B81532243224322432243224322432243
        2243213F664FF877FF7FFF7FFF7FFF7FB467213F224322432243C42AA422A422
        851AE300CE39F75E4200842AE067C05FC05B814F224322434247424742474247
        42472043905FFF7FFF7FFF7FFF7FB36722432243424742470337C426A426C426
        25124100F75EDE7BA5144405824FE067C05FC05B614F42474247424742474247
        424741476753DB77FD7BB66F6A572143414742474247033BC42AC42AC42AA522
        6405A514DE7BFF7F734E6200251AC05FE063C05FC05B8153424B424742474247
        424742474147434B444B414740474247424B4247033BE332E42EE42EC42A0512
        8200734EFF7FFF7FDE7BC6180401A426C063E063C05FC05BA157614F424B4247
        424B424B424B41474147424B424B424B2243233B03370337E332E32E651A2305
        C618DE7BFF7FFF7FFF7F396741048405A42AC05FE063C05FC05BA15BA157814F
        614F424B424B424B424B424B42474243223F233B033B0337E332841E840D4104
        3967FF7FFF7FFF7FFF7FFF7F94524100A40D84268153E063C05FC15BA15BA157
        A1578153814F624F624B6247424742434243223F233FE3368422C41141009452
        FF7FFF7FFF7FFF7FFF7FFF7FFF7F524A4104A4118422023FA15BC05FC05FA15B
        A15781538153814F624F624B624762474243223FE3328426A3154104524AFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FB556630C42116422E33222478153A15B
        A15BA15781538153814F624F624B4247023FE33684264211630CB556FF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7B6F4A296108A21DA332223F624B
        8153A15BC05FC05FA15B8153624B2243A236A21D81084A295A6BFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF75E2925610C2119012A
        A13E214F805B805B204FC13E012E2119610C2925D65AFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7B6F734E6B2D
        C618A310A210A210A310C6186B2D524A5A6BFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7F}
      Caption = 'Refresh Data'
      OnClick = RefreshData1Click
    end
  end
end
