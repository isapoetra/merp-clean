object frmOptions: TfrmOptions
  Left = 0
  Top = 0
  Caption = 'Options'
  ClientHeight = 391
  ClientWidth = 599
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 350
    Width = 599
    Height = 41
    Align = alBottom
    TabOrder = 0
    object Button2: TButton
      Left = 520
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Apply'
      TabOrder = 0
    end
    object Button3: TButton
      Left = 16
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Revert'
      TabOrder = 1
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 599
    Height = 350
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 1
    object Database: TTabSheet
      Caption = 'Database'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object TabSheet4: TTabSheet
      Caption = 'User Interface'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cbStyle: TComboBox
        Left = 3
        Top = 3
        Width = 206
        Height = 21
        TabOrder = 0
        OnChange = cbStyleChange
      end
    end
  end
  object btnLoad: TButton
    Left = 219
    Top = 25
    Width = 94
    Height = 25
    Caption = 'Load From File'
    TabOrder = 2
    OnClick = btnLoadClick
  end
end
