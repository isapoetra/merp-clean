object lunaspiutangfrm: Tlunaspiutangfrm
  Left = 450
  Top = 221
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'mERP 1.0'
  ClientHeight = 228
  ClientWidth = 372
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
    Width = 372
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 14
      Width = 132
      Height = 18
      Caption = 'Pelunasan Piutang'
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
    Width = 372
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    Color = 33023
    TabOrder = 1
  end
  object Panel5: TPanel
    Left = 0
    Top = 49
    Width = 372
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
    Top = 187
    Width = 372
    Height = 41
    Align = alBottom
    TabOrder = 3
    object SpeedButton1: TSpeedButton
      Left = 242
      Top = 0
      Width = 129
      Height = 40
      Cursor = crHandPoint
      Caption = '&Proses Pelunasan'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clOlive
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      Glyph.Data = {
        62030000424D6203000000000000420000002800000014000000140000000100
        10000300000020030000120B0000120B00000000000000000000007C0000E003
        00001F000000FF7FFF7FFF7FFF7FFF7FFE7FFE7BFE7BFE7BFE7BFE7BFE7FFE7B
        FE7BFE7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FDD7BDC77DC77
        DC77DC77DC77DC77DD77FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFE7BDC77BA6FBA6FDC77FE7BFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FBA6FBA6FFE7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F535B5257FF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FBB73
        C632C632BA6FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FBA6F3053E93EC632C632E93A2E4F986BFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FB86BE63AE636E636E636E636E636E636E6369563FF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FB76B0947E53A063F725BE53AE53A96670743
        E53A073FB96FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FB66B2847053F9463DC77
        053F053FDC774B4B053F053F9363FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        DB77B76BFF7FDB77244324436C532443243F2747B66BFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FB76F6D572443244324432443474B9263FE7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFD7B6B574447444744474447684B8E5B
        B76BFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFD7B8E5F4347444B684F
        43474347D86FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FD973
        6A57434B654BD76F434B434BDB779063664FD66FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FDC778E5F644B634BB36B634B634B8C5B634B644B8F5FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FDA778953654F634B634B634B634B654F
        8953DC77FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FDB77B0638B57
        644B634B8C5BB263FC7BFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FDA77644B644BDA77FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FAE5F8E5FFE7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7F}
      ParentFont = False
      Transparent = False
      OnClick = SpeedButton1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 53
    Width = 372
    Height = 134
    Align = alClient
    TabOrder = 4
    object Label2: TLabel
      Left = 40
      Top = 32
      Width = 55
      Height = 16
      Caption = 'Tanggal:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 37
      Top = 61
      Width = 56
      Height = 16
      Caption = 'Jml (Rp):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object tgl: TMaskEdit
      Left = 104
      Top = 32
      Width = 240
      Height = 22
      Ctl3D = False
      EditMask = '!99/99/0000;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Text = '  /  /    '
    end
    object jmlbayar: TEdit
      Left = 104
      Top = 59
      Width = 241
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
end
