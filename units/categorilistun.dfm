inherited kategorifrm: Tkategorifrm
  Left = 500
  Top = 134
  ClientWidth = 470
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    Width = 470
    inherited SpeedButton3: TSpeedButton
      Left = 291
      OnClick = SpeedButton3Click
    end
    inherited SpeedButton4: TSpeedButton
      Left = 380
      OnClick = SpeedButton4Click
    end
    inherited SpeedButton5: TSpeedButton
      Left = 206
    end
    inherited SpeedButton6: TSpeedButton
      Left = 117
      Visible = False
    end
  end
  inherited Panel2: TPanel
    Width = 470
    inherited DBGrid1: TDBGrid
      Width = 468
      DataSource = ds.kategori
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      Columns = <
        item
          Expanded = False
          FieldName = 'kg_nama'
          Title.Caption = 'Kategori'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kg_id'
          Title.Caption = 'ID'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  inherited caripn: TPanel
    Width = 470
    inherited SpeedButton7: TSpeedButton
      Left = 445
      Width = 22
    end
    object Label2: TLabel
      Left = 10
      Top = 19
      Width = 27
      Height = 16
      Caption = 'Cari:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object cari: TEdit
      Left = 48
      Top = 16
      Width = 344
      Height = 22
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnChange = cariChange
    end
  end
  inherited Panel1: TPanel
    Width = 470
    inherited Label1: TLabel
      Width = 91
      Caption = 'List Kategori'
    end
  end
  inherited Panel4: TPanel
    Width = 470
  end
  inherited Panel5: TPanel
    Width = 470
  end
end
