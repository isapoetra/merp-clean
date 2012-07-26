inherited useraddfrm: Tuseraddfrm
  Left = 639
  Top = 133
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Add/Edit User'
  ClientHeight = 249
  ClientWidth = 683
  Font.Name = 'MS Sans Serif'
  FormStyle = fsStayOnTop
  Position = poScreenCenter
  OnActivate = FormActivate
  ExplicitWidth = 689
  ExplicitHeight = 281
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 683
    TabOrder = 3
    ExplicitTop = 2
    ExplicitWidth = 683
  end
  inherited pnlbg1: TPanel
    Width = 683
    TabOrder = 4
    ExplicitWidth = 379
  end
  inherited pnlbg2: TPanel
    Width = 683
    ExplicitWidth = 379
  end
  object Panel2: TPanel [3]
    Left = 0
    Top = 199
    Width = 683
    Height = 50
    Align = alBottom
    Caption = ' '
    TabOrder = 0
    ExplicitTop = 193
    object btnSave: TButton
      Left = 600
      Top = 6
      Width = 75
      Height = 35
      Caption = 'Save'
      ImageIndex = 1
      ImageMargins.Left = 4
      Images = dm.imgcommon
      TabOrder = 0
      OnClick = btnSaveClick
    end
    object Button1: TButton
      Left = 519
      Top = 6
      Width = 75
      Height = 35
      Caption = 'Cancel'
      ImageIndex = 2
      ImageMargins.Left = 4
      Images = dm.imgcommon
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object Panel3: TPanel [4]
    Left = 0
    Top = 45
    Width = 683
    Height = 154
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 112
    ExplicitTop = 61
    ExplicitHeight = 181
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
    object Label6: TLabel
      Left = 16
      Top = 94
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
      Top = 116
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
      Top = 10
      Width = 227
      Height = 22
      Ctl3D = False
      DataField = 'us_firstname'
      DataSource = dsform
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
      DataSource = dsform
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
      DataSource = dsform
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object pwd: TDBEdit
      Left = 136
      Top = 90
      Width = 227
      Height = 22
      Ctl3D = False
      DataField = 'us_password'
      DataSource = dsform
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 3
    end
    object repeatpwd: TEdit
      Left = 136
      Top = 114
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
      TabOrder = 4
    end
  end
  object DBListBox1: TDBListBox [5]
    Left = 369
    Top = 63
    Width = 306
    Height = 118
    DataSource = dsform
    ItemHeight = 13
    TabOrder = 5
  end
  inherited dsform: TDataSource
    Left = 0
    Top = 0
  end
end
