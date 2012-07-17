object tanggalubahfrm: Ttanggalubahfrm
  Left = 333
  Top = 257
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'mERP'
  ClientHeight = 175
  ClientWidth = 258
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
    Width = 258
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 153
      Height = 18
      Caption = 'Ubah Tanggal Invoice'
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
    Width = 258
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    Color = 33023
    TabOrder = 1
  end
  object Panel5: TPanel
    Left = 0
    Top = 49
    Width = 258
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
    Top = 114
    Width = 258
    Height = 61
    Align = alBottom
    TabOrder = 3
    object BitBtn1: TBitBtn
      Left = 136
      Top = 8
      Width = 97
      Height = 41
      Caption = '&Ubah'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 53
    Width = 258
    Height = 61
    Align = alClient
    TabOrder = 4
    object tgl: TDateTimePicker
      Left = 16
      Top = 16
      Width = 217
      Height = 21
      Date = 41043.600724687500000000
      Time = 41043.600724687500000000
      TabOrder = 0
    end
  end
end
