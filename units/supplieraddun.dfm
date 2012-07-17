inherited supplieraddfrm: Tsupplieraddfrm
  Left = 463
  Top = 218
  ClientHeight = 234
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Top = 10
      Width = 123
      Caption = 'Add/Edit Supplier'
    end
  end
  inherited Panel2: TPanel
    Width = 508
    Height = 141
    Align = alClient
    object Label2: TLabel
      Left = 21
      Top = 26
      Width = 51
      Height = 16
      Caption = 'Supplier:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 21
      Top = 50
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
      Top = 74
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
      Top = 98
      Width = 53
      Height = 16
      Caption = 'Telp/Fax:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object namadepan: TDBEdit
      Left = 141
      Top = 24
      Width = 345
      Height = 22
      Ctl3D = False
      DataField = 'sp_name'
      DataSource = ds.supplier
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 141
      Top = 48
      Width = 345
      Height = 22
      Ctl3D = False
      DataField = 'sp_address'
      DataSource = ds.supplier
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 141
      Top = 72
      Width = 345
      Height = 22
      Ctl3D = False
      DataField = 'sp_kota'
      DataSource = ds.supplier
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 141
      Top = 96
      Width = 345
      Height = 22
      Ctl3D = False
      DataField = 'sp_telp'
      DataSource = ds.supplier
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
  end
  inherited Panel3: TPanel
    Top = 194
    inherited SpeedButton3: TSpeedButton
      OnClick = SpeedButton3Click
    end
    inherited SpeedButton4: TSpeedButton
      OnClick = SpeedButton4Click
    end
  end
end
