inherited customeraddfrm: Tcustomeraddfrm
  ClientHeight = 305
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Width = 132
      Caption = 'Add/Edit Customer'
    end
  end
  inherited Panel2: TPanel
    Width = 508
    Height = 212
    Align = alClient
    object Label2: TLabel
      Left = 21
      Top = 36
      Width = 98
      Height = 16
      Caption = 'Nama Customer:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 21
      Top = 60
      Width = 45
      Height = 16
      Caption = 'Alamat:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 21
      Top = 84
      Width = 31
      Height = 16
      Caption = 'Kota:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 21
      Top = 108
      Width = 27
      Height = 16
      Caption = 'Telp:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 21
      Top = 132
      Width = 44
      Height = 16
      Caption = 'NPWP:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 21
      Top = 12
      Width = 65
      Height = 16
      Caption = 'Kode Cust:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 21
      Top = 156
      Width = 86
      Height = 32
      Caption = 'Alamat Faktur Pajak:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object namadepan: TDBEdit
      Left = 141
      Top = 34
      Width = 345
      Height = 22
      Ctl3D = False
      DataField = 'cu_nama'
      DataSource = ds.customer
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 141
      Top = 58
      Width = 345
      Height = 22
      Ctl3D = False
      DataField = 'cu_alamat'
      DataSource = ds.customer
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 141
      Top = 82
      Width = 345
      Height = 22
      Ctl3D = False
      DataField = 'cu_kota'
      DataSource = ds.customer
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 141
      Top = 106
      Width = 345
      Height = 22
      Ctl3D = False
      DataField = 'cu_telp'
      DataSource = ds.customer
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 141
      Top = 130
      Width = 343
      Height = 22
      Ctl3D = False
      DataField = 'cu_npwp'
      DataSource = ds.customer
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 20
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
    end
    object kdcust: TDBEdit
      Left = 141
      Top = 10
      Width = 345
      Height = 22
      Ctl3D = False
      DataField = 'cu_kode'
      DataSource = ds.customer
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit5: TDBEdit
      Left = 141
      Top = 165
      Width = 345
      Height = 22
      Ctl3D = False
      DataField = 'cu_alamatfp'
      DataSource = ds.customer
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
    end
  end
  inherited Panel3: TPanel
    Top = 265
    inherited SpeedButton1: TSpeedButton
      Height = 38
    end
    inherited SpeedButton3: TSpeedButton
      Height = 38
      OnClick = SpeedButton3Click
    end
    inherited SpeedButton4: TSpeedButton
      Height = 38
      OnClick = SpeedButton4Click
    end
  end
end
