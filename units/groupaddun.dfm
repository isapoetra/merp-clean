object groupaddfrm: Tgroupaddfrm
  Left = 502
  Top = 160
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'mERP Ver 1.0'
  ClientHeight = 196
  ClientWidth = 406
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 406
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 108
      Height = 18
      Caption = 'Add/Edit Group'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 53
    Width = 406
    Height = 102
    Align = alClient
    TabOrder = 1
    object Label2: TLabel
      Left = 24
      Top = 26
      Width = 77
      Height = 16
      Caption = 'Nama Group:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 48
      Width = 361
      Height = 19
      Ctl3D = False
      DataField = 'ga_name'
      DataSource = ds.group
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 155
    Width = 406
    Height = 41
    Align = alBottom
    TabOrder = 2
    object SpeedButton2: TSpeedButton
      Left = 225
      Top = 0
      Width = 89
      Height = 40
      Cursor = crHandPoint
      Caption = '&Batal'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clOlive
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      Transparent = False
    end
    object SpeedButton1: TSpeedButton
      Left = 314
      Top = 0
      Width = 89
      Height = 40
      Cursor = crHandPoint
      Caption = '&Simpan'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clOlive
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      Transparent = False
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 41
    Width = 406
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    Color = 33023
    TabOrder = 3
  end
  object Panel5: TPanel
    Left = 0
    Top = 49
    Width = 406
    Height = 4
    Align = alTop
    BevelOuter = bvNone
    Color = 805596
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
  end
end
