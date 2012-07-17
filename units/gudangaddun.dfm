inherited gudangaddfrm: Tgudangaddfrm
  Left = 358
  Top = 168
  ClientHeight = 202
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Width = 147
      Caption = 'Tambah/Edit Gudang'
    end
  end
  inherited Panel2: TPanel
    Width = 508
    Height = 109
    Align = alClient
    object Label2: TLabel
      Left = 21
      Top = 26
      Width = 87
      Height = 16
      Caption = 'Nama Gudang:'
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
      Width = 42
      Height = 16
      Caption = 'Lokasi:'
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
      DataField = 'gd_nama'
      DataSource = ds.gudang
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
      DataField = 'gd_lokasi'
      DataSource = ds.gudang
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
  inherited Panel3: TPanel
    Top = 162
    inherited SpeedButton3: TSpeedButton
      OnClick = SpeedButton3Click
    end
    inherited SpeedButton4: TSpeedButton
      OnClick = SpeedButton4Click
    end
  end
end
