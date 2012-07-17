object userlistfrm: Tuserlistfrm
  Left = 489
  Top = 136
  BorderStyle = bsSingle
  Caption = 'mERP 1.0'
  ClientHeight = 453
  ClientWidth = 621
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
    Top = 0
    Width = 621
    Height = 41
    Align = alTop
    Caption = '`'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 81
      Height = 18
      Caption = 'Daftar User'
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
    Width = 621
    Height = 359
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 619
      Height = 357
      Align = alClient
      DataSource = ds.user
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'us_firstname'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'us_lastname'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'us_username'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'group'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = 'Group'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 150
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 412
    Width = 621
    Height = 41
    Align = alBottom
    TabOrder = 2
    object btnedit: TSpeedButton
      Left = 442
      Top = 0
      Width = 89
      Height = 40
      Cursor = crHandPoint
      Caption = '&Edit'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clOlive
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      Transparent = False
      OnClick = btneditClick
    end
    object btnadd: TSpeedButton
      Left = 531
      Top = 0
      Width = 89
      Height = 40
      Cursor = crHandPoint
      Caption = '&Tambah'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clOlive
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      Glyph.Data = {
        62030000424D6203000000000000420000002800000014000000140000000100
        10000300000020030000120B0000120B00000000000000000000007C0000E003
        00001F000000FF7FBD777B6F7B6F5A6B39673967396739673967396739673967
        396739675A6B7B6F7B6FBD77FF7FFF7F9C735A6B5A6B396718631963F65AAB3A
        A936A936AD42F85E18631863396739675A6B9C73FF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7F755FC532C632C632C532BA6FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7F5257C636C636C636C6369767FF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F725BC636C636C636C636976B
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F725BE53A
        E53AE53AE53AB76BFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7F725BE53AE53AE53AE53AB76BFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFE7BFE7BFE7BFE7BFF7F715B053F053F053F053FB66BFF7FFE7BFE7BFE7B
        FE7FFF7FFF7FDB774D53294B294B294B294B294B2743053F053F053F053F2847
        294B294B294B294B2847705BFE7B925F043F043F043F043F043F043F043F043F
        043F043F043F043F043F043F043F043F043F043FB567705B2443244324432443
        2443244324432443244324432443244324432443244324432443244393639263
        4647244324432443244324432443244324432443244324432443244324432443
        24434647B56BDB778E5B6B536B536B536B536C57684F24432447244724476A53
        6C576B536B536B536B53915FFE7BFF7FFF7FFE7BFE7BFE7BFE7BFF7F905F4447
        444744474447B66BFF7FFE7BFE7BFE7BFE7BFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7F91634447444744474447B76FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7F91634347434743474347D76FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F9163434B434B434B434BD76F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FB163434B
        434B434B434BD66FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FB367644B634B634B654FD973FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFC7BAF5F8C5B8C5BB163FE7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7F}
      ParentFont = False
      Transparent = False
      OnClick = btnaddClick
    end
    object SpeedButton3: TSpeedButton
      Left = 353
      Top = 0
      Width = 89
      Height = 40
      Cursor = crHandPoint
      Caption = '&Hapus'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clOlive
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      Transparent = False
      OnClick = SpeedButton3Click
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 41
    Width = 621
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    Color = 33023
    TabOrder = 3
  end
  object Panel5: TPanel
    Left = 0
    Top = 49
    Width = 621
    Height = 4
    Align = alTop
    BevelOuter = bvNone
    Color = 805596
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
  end
end
