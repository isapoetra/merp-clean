object frmLogin: TfrmLogin
  Left = 330
  Top = 180
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Login'
  ClientHeight = 322
  ClientWidth = 550
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 248
    Top = 16
    Width = 53
    Height = 13
    Caption = 'User Name'
  end
  object Label2: TLabel
    Left = 248
    Top = 56
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Image1: TImage
    Left = 8
    Top = 8
    Width = 209
    Height = 305
  end
  object lblStatus: TLabel
    Left = 232
    Top = 96
    Width = 3
    Height = 13
  end
  object Button1: TButton
    Left = 472
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 392
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object txtName: TEdit
    Left = 232
    Top = 32
    Width = 313
    Height = 21
    TabOrder = 2
  end
  object txtPass: TEdit
    Left = 232
    Top = 72
    Width = 313
    Height = 21
    PasswordChar = '*'
    TabOrder = 3
  end
end
