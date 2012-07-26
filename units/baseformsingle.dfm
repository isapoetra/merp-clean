object frmBaseSingle: TfrmBaseSingle
  Left = 0
  Top = 0
  Caption = 'frmBaseSingle'
  ClientHeight = 478
  ClientWidth = 664
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 664
    Height = 33
    Align = alTop
    Caption = '`'
    Color = clWhite
    TabOrder = 0
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
  object pnlbg1: TPanel
    Left = 0
    Top = 33
    Width = 664
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    Color = 33023
    ParentBackground = False
    TabOrder = 1
  end
  object pnlbg2: TPanel
    Left = 0
    Top = 41
    Width = 664
    Height = 4
    Align = alTop
    BevelOuter = bvNone
    Color = 805596
    Ctl3D = False
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 2
  end
  object dsform: TDataSource
    Left = 560
    Top = 48
  end
end
