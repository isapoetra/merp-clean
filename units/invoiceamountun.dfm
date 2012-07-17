object invoiceamountfrm: Tinvoiceamountfrm
  Left = 349
  Top = 192
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'mERP'
  ClientHeight = 228
  ClientWidth = 374
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
  object Label2: TLabel
    Left = 16
    Top = 84
    Width = 80
    Height = 16
    Caption = 'Jumlah (Rp):'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 108
    Width = 78
    Height = 16
    Caption = 'Keterangan:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 60
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 374
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 123
      Height = 18
      Caption = 'Generate Invoice'
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
    Width = 374
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    Color = 33023
    TabOrder = 1
  end
  object Panel5: TPanel
    Left = 0
    Top = 49
    Width = 374
    Height = 4
    Align = alTop
    BevelOuter = bvNone
    Color = 805596
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 232
    Top = 186
    Width = 121
    Height = 33
    Caption = '&Generate Invoice'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object jml: TEdit
    Left = 104
    Top = 83
    Width = 249
    Height = 22
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 5
    Text = '0'
  end
  object note: TMemo
    Left = 104
    Top = 107
    Width = 249
    Height = 73
    Ctl3D = False
    Lines.Strings = (
      '')
    ParentCtl3D = False
    TabOrder = 6
  end
  object tgl: TDateTimePicker
    Left = 104
    Top = 59
    Width = 249
    Height = 21
    Date = 41043.576891354170000000
    Time = 41043.576891354170000000
    TabOrder = 4
  end
end
