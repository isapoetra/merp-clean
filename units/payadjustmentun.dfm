object payadjustmentfrm: Tpayadjustmentfrm
  Left = 286
  Top = 188
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'mERP 1.0'
  ClientHeight = 469
  ClientWidth = 576
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 576
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 14
      Width = 214
      Height = 18
      Caption = 'Item Penyesuaian Pembayaran'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 41
    Width = 576
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    Color = 33023
    TabOrder = 1
  end
  object Panel5: TPanel
    Left = 0
    Top = 49
    Width = 576
    Height = 4
    Align = alTop
    BevelOuter = bvNone
    Color = 805596
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
  end
  object Panel3: TPanel
    Left = 0
    Top = 428
    Width = 576
    Height = 41
    Align = alBottom
    TabOrder = 3
    object SpeedButton1: TSpeedButton
      Left = 480
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
      ParentFont = False
      Transparent = False
    end
    object SpeedButton2: TSpeedButton
      Left = 391
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
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 53
    Width = 576
    Height = 375
    Align = alClient
    DataSource = ds.payadjustment
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'pa_item'
        Title.Caption = 'Item Penyesuaian'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pa_percentage'
        Title.Caption = 'Persentase'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pa_amount'
        Title.Caption = 'Jml (Rp)'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pa_add_or_deduct'
        Title.Caption = 'Tambah/Potong'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pa_comment'
        Title.Caption = 'Keterangan'
        Width = 250
        Visible = True
      end>
  end
end
