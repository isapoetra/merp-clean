inherited kategoriaddfrm: Tkategoriaddfrm
  Left = 508
  Top = 154
  ClientHeight = 189
  ClientWidth = 455
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 455
    inherited Label1: TLabel
      Width = 124
      Caption = 'Add/Edit Kategori'
    end
  end
  inherited Panel4: TPanel
    Width = 455
  end
  inherited Panel5: TPanel
    Width = 455
  end
  inherited Panel2: TPanel
    Width = 455
    Height = 96
    Align = alClient
    object Label2: TLabel
      Left = 16
      Top = 29
      Width = 52
      Height = 16
      Caption = 'Kategori:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object namadepan: TDBEdit
      Left = 80
      Top = 27
      Width = 361
      Height = 22
      Ctl3D = False
      DataField = 'kg_nama'
      DataSource = ds.kategori
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
  inherited Panel3: TPanel
    Top = 149
    Width = 455
    inherited SpeedButton3: TSpeedButton
      Left = 277
      Top = -1
      OnClick = SpeedButton3Click
    end
    inherited SpeedButton4: TSpeedButton
      Left = 366
      Top = -1
      OnClick = SpeedButton4Click
    end
  end
end
