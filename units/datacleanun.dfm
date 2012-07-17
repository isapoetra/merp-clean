object datacleanfrm: Tdatacleanfrm
  Left = 580
  Top = 198
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'mERP 1.0'
  ClientHeight = 246
  ClientWidth = 328
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cbjual: TCheckBox
    Left = 16
    Top = 64
    Width = 97
    Height = 17
    Caption = 'Penjualan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object cbbeli: TCheckBox
    Left = 16
    Top = 88
    Width = 97
    Height = 17
    Caption = 'Pembelian'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object cbinvoice: TCheckBox
    Left = 16
    Top = 112
    Width = 97
    Height = 17
    Caption = 'Invoice'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object cbtax: TCheckBox
    Left = 16
    Top = 136
    Width = 97
    Height = 17
    Caption = 'Faktur Pajak'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object cbacct: TCheckBox
    Left = 16
    Top = 160
    Width = 97
    Height = 17
    Caption = 'Accounting'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 200
    Width = 297
    Height = 41
    Caption = 'Lakukan Cleanup'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 328
    Height = 41
    Align = alTop
    TabOrder = 6
    object Label1: TLabel
      Left = 16
      Top = 14
      Width = 95
      Height = 18
      Caption = 'Data Cleanup'
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
    Width = 328
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    Color = 33023
    TabOrder = 7
  end
  object Panel5: TPanel
    Left = 0
    Top = 49
    Width = 328
    Height = 4
    Align = alTop
    BevelOuter = bvNone
    Color = 805596
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 8
  end
end
