object frmDashboard: TfrmDashboard
  Left = 176
  Top = 71
  Caption = 'Dashboard'
  ClientHeight = 539
  ClientWidth = 970
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 970
    Height = 41
    Align = alTop
    Color = clWhite
    TabOrder = 0
    DesignSize = (
      970
      41)
    object Label1: TLabel
      Left = 754
      Top = 17
      Width = 45
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Welcome'
      Layout = tlCenter
    end
    object lblUser: TLabel
      Left = 807
      Top = 13
      Width = 120
      Height = 20
      Anchors = [akTop, akRight]
      Caption = 'dsfsdfsdfdsfds'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 48
    Width = 241
    Height = 225
    Caption = 'Recent Activities'
    TabOrder = 1
  end
  object Chart2: TChart
    Left = 255
    Top = 47
    Width = 400
    Height = 250
    Title.Text.Strings = (
      'TChart')
    TabOrder = 2
    ColorPaletteIndex = 13
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    UseAppManager = True
    Left = 20
    Top = 5
  end
end
