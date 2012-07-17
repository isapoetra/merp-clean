object useraddfrm: Tuseraddfrm
  Left = 629
  Top = 130
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'mERP 1.0'
  ClientHeight = 267
  ClientWidth = 379
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 379
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 97
      Height = 18
      Caption = 'Add/Edit User'
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
    Top = 226
    Width = 379
    Height = 41
    Align = alBottom
    Caption = ' '
    TabOrder = 1
    object SpeedButton2: TSpeedButton
      Left = 201
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
      OnClick = SpeedButton2Click
    end
    object SpeedButton1: TSpeedButton
      Left = 290
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
      OnClick = SpeedButton1Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 53
    Width = 379
    Height = 173
    Align = alClient
    TabOrder = 2
    object Label2: TLabel
      Left = 16
      Top = 16
      Width = 79
      Height = 16
      Caption = 'Nama Depan:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 40
      Width = 96
      Height = 16
      Caption = 'Nama Belakang:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 64
      Width = 63
      Height = 16
      Caption = 'Username:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 88
      Width = 79
      Height = 16
      Caption = 'Group Akses:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 112
      Width = 61
      Height = 16
      Caption = 'Password:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 16
      Top = 136
      Width = 101
      Height = 16
      Caption = 'Ulangi Password:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object namadepan: TDBEdit
      Left = 136
      Top = 14
      Width = 227
      Height = 22
      Ctl3D = False
      DataField = 'us_firstname'
      DataSource = ds.useradd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object namabelakang: TDBEdit
      Left = 136
      Top = 38
      Width = 227
      Height = 22
      Ctl3D = False
      DataField = 'us_lastname'
      DataSource = ds.useradd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object username: TDBEdit
      Left = 136
      Top = 62
      Width = 227
      Height = 22
      Ctl3D = False
      DataField = 'us_username'
      DataSource = ds.useradd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object groupakses: TDBLookupComboBox
      Left = 136
      Top = 86
      Width = 227
      Height = 22
      Ctl3D = False
      DataField = 'us_group'
      DataSource = ds.useradd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'ga_id'
      ListField = 'ga_name'
      ListSource = ds.group
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object pwd: TDBEdit
      Left = 136
      Top = 110
      Width = 227
      Height = 22
      Ctl3D = False
      DataField = 'us_password'
      DataSource = ds.useradd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 4
    end
    object repeatpwd: TEdit
      Left = 136
      Top = 134
      Width = 227
      Height = 22
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 5
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 41
    Width = 379
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    Color = 33023
    TabOrder = 3
  end
  object Panel5: TPanel
    Left = 0
    Top = 49
    Width = 379
    Height = 4
    Align = alTop
    BevelOuter = bvNone
    Color = 805596
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
  end
end
