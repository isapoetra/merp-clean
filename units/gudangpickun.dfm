object gudangpickfrm: Tgudangpickfrm
  Left = 503
  Top = 271
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'mERP 1.0'
  ClientHeight = 165
  ClientWidth = 255
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
    Top = 124
    Width = 255
    Height = 41
    Align = alBottom
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 166
      Top = 1
      Width = 89
      Height = 39
      Cursor = crHandPoint
      Caption = '&Ok'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clOlive
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      Transparent = False
      OnClick = SpeedButton1Click
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 41
    Width = 255
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    Color = 33023
    TabOrder = 1
  end
  object Panel5: TPanel
    Left = 0
    Top = 49
    Width = 255
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
    Top = 0
    Width = 255
    Height = 41
    Align = alTop
    TabOrder = 3
    object Label2: TLabel
      Left = 8
      Top = 11
      Width = 91
      Height = 18
      Caption = 'Pilih Gudang'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object lookgudang: TDBLookupComboBox
    Left = 8
    Top = 72
    Width = 241
    Height = 23
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    KeyField = 'gd_id'
    ListField = 'gd_nama'
    ListSource = ds.gudang
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
  end
end
