object frmBase: TfrmBase
  Left = 131
  Top = 232
  Caption = 'frmBase'
  ClientHeight = 446
  ClientWidth = 920
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object JvNetscapeSplitter1: TJvNetscapeSplitter
    Left = 660
    Top = 45
    Height = 401
    Align = alRight
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object Panel4: TPanel
    Left = 0
    Top = 33
    Width = 920
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    Color = 33023
    TabOrder = 0
  end
  object Panel5: TPanel
    Left = 0
    Top = 41
    Width = 920
    Height = 4
    Align = alTop
    BevelOuter = bvNone
    Color = 805596
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 920
    Height = 33
    Align = alTop
    Caption = '`'
    Color = clWhite
    TabOrder = 2
    object lblCaption: TLabel
      Left = 8
      Top = 8
      Width = 4
      Height = 18
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object JvScrollMax1: TJvScrollMax
    Left = 670
    Top = 45
    Width = 250
    Height = 401
    ButtonFont.Charset = DEFAULT_CHARSET
    ButtonFont.Color = clWindowText
    ButtonFont.Height = -9
    ButtonFont.Name = 'Small Fonts'
    ButtonFont.Style = []
    AutoHeight = False
    Align = alRight
    ParentColor = True
    TabOrder = 3
    object JvScrollMaxBand2: TJvScrollMaxBand
      Width = 232
      Height = 50
      Caption = 'Search'
      ExpandedHeight = 50
      ButtonFont.Charset = DEFAULT_CHARSET
      ButtonFont.Color = clWindowText
      ButtonFont.Height = -11
      ButtonFont.Name = 'MS Sans Serif'
      ButtonFont.Style = []
      ParentButtonFont = False
      object txtSearch: TEdit
        Left = 8
        Top = 24
        Width = 193
        Height = 21
        TabOrder = 0
        OnChange = txtSearchChange
      end
      object Button1: TButton
        Left = 200
        Top = 24
        Width = 25
        Height = 25
        Caption = 'All'
        TabOrder = 1
        OnClick = Button1Click
      end
    end
    object navdbcontainer: TJvScrollMaxBand
      Width = 232
      Height = 100
      Caption = 'Navigation'
      ExpandedHeight = 100
      ButtonFont.Charset = DEFAULT_CHARSET
      ButtonFont.Color = clWindowText
      ButtonFont.Height = -11
      ButtonFont.Name = 'MS Sans Serif'
      ButtonFont.Style = []
      ParentButtonFont = False
      object dbnav: TJvDBNavigator
        Left = 3
        Top = 22
        Width = 226
        Height = 25
        DataSource = dsform
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
        Align = alTop
        Flat = True
        Kind = dbnHorizontal
        TabOrder = 0
      end
      object btnAdd: TJvXPButton
        Left = 24
        Top = 48
        Width = 57
        Height = 41
        Caption = 'Add'
        Enabled = False
        TabOrder = 1
        Layout = blGlyphTop
      end
      object btnEdit: TJvXPButton
        Left = 88
        Top = 48
        Width = 57
        Height = 41
        Caption = 'Edit'
        Enabled = False
        TabOrder = 2
        Layout = blGlyphTop
      end
      object btnDelete: TJvXPButton
        Left = 152
        Top = 48
        Width = 57
        Height = 41
        Caption = 'Delete'
        Enabled = False
        TabOrder = 3
        Layout = blGlyphTop
      end
    end
  end
  object ImageList1: TImageList
    Left = 560
    Top = 8
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000028307CE0E8E18FF0B8A15FF0A8814FF098512FF007702C70000
      0000000000000000000000000000000000000000000098656546A97777F3B284
      83D3A068659C9F6A67659767672FAA5555030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000038508CE51DA7BFF3ACF69FF39CD67FF32C25BFF017903C70000
      000000000000000000000000000000000000000000009A67675ED1AAA8FEFEFE
      FEFF98A9FEFFF0D8D4FFD3B1B3FFBB9697F3B07B7BC0A36A6A89B476763A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000048609CE5CE084FF3ED46EFF3DD36DFF34C55FFF027C05C70000
      000000000000000000000000000000000000000000009866666DD8B2AEFEFEF7
      E0FF99A3E8FFFEF1D8FFF9E1CEFFFEECDDFFFEF5F1FFFAE6E7FFA56C6CA20000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000006890CCE64E48AFF41D771FF3FD56FFF37C861FF027D06C70000
      000000000000000000000000000000000000000000009B67677BDFBBB3FEFEF6
      DDFF9DA5E8FFF8E3D0FFD6C9C6FFFEF7F3FFFEEBDDFFFEE0CDFFA86F6F8B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000008920FD4089110D40790
      0FD4078D0ED4088E0FF056E282FF44DA74FF41D872FF39CB64FF038108EC027E
      07CE027B06CE027A04CE017803CE00000000000000009E686889E7C7C5FEFEFE
      F4FFA0B1FDFFF0E7E2FF424B53FF78716AFFB6B28DFFFED9CAFFAF7274740000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021A72DFF60E487FF4BDD
      79FF4ADC78FF49DC77FF4AE07AFF46DD77FF44DB75FF40D670FF3BCD67FF39CB
      65FF36C862FF33C45EFF0A8413FF0000000000000000A06A6A97F0D3D1FEFEFA
      E9FFA3ACEBFFFEF4DDFF669EA8FF24A942FF139A2BFF367D32FFBA787E5D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000022A92FFF76F099FF5EEA
      8AFF5AE888FF56E684FF53E481FF4EE17DFF47DE78FF44DB75FF41D872FF3FD5
      6FFF3DD36DFF39CD67FF0B8715FF0000000000000000A26D6DA5F6D9D0FEFEF6
      E0FFA4AEEAFFFEF4E0FF4EBB72FF62FE96FF52E17BFF1E9C33FF007704A20000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000024AB30FF7EF39FFF68EE
      91FF64ED8EFF60EA8BFF59E886FF54E482FF4EE17DFF46DD77FF44DA74FF41D7
      71FF3ED46EFF3ACF69FF0C8916FF0000000000000000A97373B3FAE4DEFEFEFD
      EFFFA8B7F5FFFEFBF5FF99D9A4FF3BDC6CFF64FE96FF4DDA74FF1E962FFF037E
      098B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025AD32FF91F7ABFF8DF6
      A8FF8BF5A6FF89F4A5FF7AF09BFF59E886FF53E481FF4ADF7AFF5BE486FF67E5
      8CFF5EE186FF53DB7CFF0F8D1AFF0000000000000000B07B7BC2FCEBE8FEFEFE
      F4FFAABAF5FFFEF8E9FFFEF4EEFF64CF86FF4AE779FF63FB95FF49D36CFF168F
      25FE007F04760000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000089D13CE099A13CE0899
      12CE089712CE0A9615EF89F4A5FF60EA8BFF56E684FF45D872FF068C0FEC0689
      0DCE06850CCE04840BCE038108CE0000000000000000B78384D0FEEBDEFEFEFA
      E2FFB0BBEEFFFEF8DFFFFEF2E0FFFEEFDFFF4BCD71FF55F386FF5DFE90FF5BA1
      69FF6E6E67FE79776E6F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000089712CE8BF5A6FF64ED8EFF5AE888FF45D771FF068A0CC70000
      00000000000000000000000000000000000000000000C28A8ADEE3DCDEFDE2E4
      E3FFA8B3D6FFB3B4B3FFA1A2A3FFA6A2A4FFACAEADFF25C056FF8ABF99FFDFD4
      D2FF6A77C1FF1624B5FC0307A945000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000099913CE8DF6A8FF68EE91FF5EEA8AFF46D872FF068E0EC70000
      00000000000000000000000000000000000000000000C79090ECC3B9B8FD817E
      81FF69656CFF6D6261FF908080FF897878FE877071EF455F4AE4D5CBC6FA7992
      F3FF3862F2FF1F36C7FF000098E1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B9915CE91F7ABFF7FF39FFF76F099FF58DF7FFF068F0FC70000
      00000000000000000000000000000000000000000000927070A7957474B85952
      52C2525050DF565353E1555252C8545555CB595959CD5454516D94A0DD6C2B50
      E5FE436CF4FF1625B8FF000098B5000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000099B16CE26AD33FF25AB32FF23A930FF21A62EFF06900FC70000
      000000000000000000000000000000000000000000007F7F7F285B5E5EB25E5E
      5E9461616171616161545F5F5F3B5C5C5C246262620D00000000000000001521
      C0820C15A9F2000098B300009914000000000000000000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000F81F80FF00000000
      F81F801F00000000F81F801F00000000F81F801F000000008001801F00000000
      8001801F000000008001800F000000008001800F000000008001800700000000
      8001800300000000F81F800100000000F81F800100000000F81F800100000000
      F81F806100000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object dsform: TDataSource
    Left = 560
    Top = 48
  end
end
