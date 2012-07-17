object footnote_globalfrm: Tfootnote_globalfrm
  Left = 378
  Top = 367
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'mERP'
  ClientHeight = 357
  ClientWidth = 909
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
    Width = 909
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 138
      Height = 18
      Caption = 'Quotation Footnote'
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
    Width = 909
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    Color = 33023
    TabOrder = 1
  end
  object Panel5: TPanel
    Left = 0
    Top = 49
    Width = 909
    Height = 4
    Align = alTop
    BevelOuter = bvNone
    Color = 805596
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 53
    Width = 909
    Height = 304
    Align = alClient
    DataSource = ds.footnote_global
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'fg_blok1'
        Title.Caption = 'Kolom 1'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fg_blok2'
        Title.Caption = 'Kolom 2'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fg_blok3'
        Title.Caption = 'Kolom 3'
        Width = 700
        Visible = True
      end>
  end
end
