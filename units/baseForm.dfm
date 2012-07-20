object frmBase: TfrmBase
  Left = 133
  Top = 126
  Width = 928
  Height = 480
  Caption = 'frmBase'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object JvNetscapeSplitter1: TJvNetscapeSplitter
    Left = 660
    Top = 45
    Height = 401
    Align = alRight
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object Panel4: TPanel
    Left = 0
    Top = 33
    Width = 920
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    Color = 33023
    TabOrder = 0
  end
  object Panel5: TPanel
    Left = 0
    Top = 41
    Width = 920
    Height = 4
    Align = alTop
    BevelOuter = bvNone
    Color = 805596
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 920
    Height = 33
    Align = alTop
    Caption = '`'
    Color = clWhite
    TabOrder = 2
    object lblCaption: TLabel
      Left = 8
      Top = 8
      Width = 4
      Height = 18
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object JvScrollMax1: TJvScrollMax
    Left = 670
    Top = 45
    Width = 250
    Height = 401
    ButtonFont.Charset = DEFAULT_CHARSET
    ButtonFont.Color = clWindowText
    ButtonFont.Height = -9
    ButtonFont.Name = 'Small Fonts'
    ButtonFont.Style = []
    AutoHeight = False
    Align = alRight
    ParentColor = True
    TabOrder = 3
    object JvScrollMaxBand2: TJvScrollMaxBand
      Width = 232
      Height = 50
      Caption = 'Search'
      ExpandedHeight = 50
      object txtSearch: TEdit
        Left = 8
        Top = 24
        Width = 193
        Height = 21
        TabOrder = 0
        OnChange = txtSearchChange
      end
      object Button1: TButton
        Left = 200
        Top = 24
        Width = 25
        Height = 25
        Caption = 'All'
        TabOrder = 1
        OnClick = Button1Click
      end
    end
  end
  object ImageList1: TImageList
    Left = 560
    Top = 8
  end
end
