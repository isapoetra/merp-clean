object frmInit: TfrmInit
  Left = 239
  Top = 104
  Width = 928
  Height = 480
  ActiveControl = JvWizardInteriorPage3
  Caption = 'Installation'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object JvWizard1: TJvWizard
    Left = 0
    Top = 0
    Width = 920
    Height = 446
    ActivePage = JvWizardInteriorPage3
    ButtonBarHeight = 42
    ButtonStart.Caption = 'To &Start Page'
    ButtonStart.NumGlyphs = 1
    ButtonStart.Width = 85
    ButtonLast.Caption = 'To &Last Page'
    ButtonLast.NumGlyphs = 1
    ButtonLast.Width = 85
    ButtonBack.Caption = '< &Back'
    ButtonBack.NumGlyphs = 1
    ButtonBack.Width = 75
    ButtonNext.Caption = '&Next >'
    ButtonNext.NumGlyphs = 1
    ButtonNext.Width = 75
    ButtonFinish.Caption = '&Finish'
    ButtonFinish.NumGlyphs = 1
    ButtonFinish.ModalResult = 1
    ButtonFinish.Width = 75
    ButtonCancel.Caption = 'Cancel'
    ButtonCancel.NumGlyphs = 1
    ButtonCancel.ModalResult = 2
    ButtonCancel.Width = 75
    ButtonHelp.Caption = '&Help'
    ButtonHelp.NumGlyphs = 1
    ButtonHelp.Width = 75
    ShowRouteMap = False
    DesignSize = (
      920
      446)
    object JvWizardWelcomePage1: TJvWizardWelcomePage
      Header.Title.Color = clNone
      Header.Title.Text = 'Welcome'
      Header.Title.Anchors = [akLeft, akTop, akRight]
      Header.Title.Font.Charset = DEFAULT_CHARSET
      Header.Title.Font.Color = clWindowText
      Header.Title.Font.Height = -16
      Header.Title.Font.Name = 'MS Sans Serif'
      Header.Title.Font.Style = [fsBold]
      Header.Subtitle.Color = clNone
      Header.Subtitle.Text = 'Subtitle'
      Header.Subtitle.Anchors = [akLeft, akTop, akRight, akBottom]
      Header.Subtitle.Font.Charset = DEFAULT_CHARSET
      Header.Subtitle.Font.Color = clWindowText
      Header.Subtitle.Font.Height = -11
      Header.Subtitle.Font.Name = 'MS Sans Serif'
      Header.Subtitle.Font.Style = []
      Caption = 'JvWizardWelcomePage1'
    end
    object JvWizardInteriorPage1: TJvWizardInteriorPage
      Header.Title.Color = clNone
      Header.Title.Text = 'Database'
      Header.Title.Anchors = [akLeft, akTop, akRight]
      Header.Title.Font.Charset = DEFAULT_CHARSET
      Header.Title.Font.Color = clWindowText
      Header.Title.Font.Height = -16
      Header.Title.Font.Name = 'MS Sans Serif'
      Header.Title.Font.Style = [fsBold]
      Header.Subtitle.Color = clNone
      Header.Subtitle.Text = 'Database location'
      Header.Subtitle.Anchors = [akLeft, akTop, akRight, akBottom]
      Header.Subtitle.Font.Charset = DEFAULT_CHARSET
      Header.Subtitle.Font.Color = clWindowText
      Header.Subtitle.Font.Height = -11
      Header.Subtitle.Font.Name = 'MS Sans Serif'
      Header.Subtitle.Font.Style = []
      OnEnterPage = JvWizardInteriorPage1EnterPage
      OnNextButtonClick = JvWizardInteriorPage1NextButtonClick
      object Label1: TLabel
        Left = 80
        Top = 88
        Width = 28
        Height = 13
        Caption = 'Driver'
      end
      object Label2: TLabel
        Left = 336
        Top = 88
        Width = 31
        Height = 13
        Caption = 'Server'
      end
      object Label3: TLabel
        Left = 80
        Top = 144
        Width = 65
        Height = 17
        Caption = 'Label3'
      end
      object Label5: TLabel
        Left = 80
        Top = 248
        Width = 46
        Height = 13
        Caption = 'Database'
      end
      object cbProtocol: TComboBox
        Left = 80
        Top = 104
        Width = 209
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        Text = 'mysqld-5'
        OnChange = updateDBInfo
      end
      object txtHost: TEdit
        Left = 336
        Top = 104
        Width = 209
        Height = 21
        TabOrder = 1
        Text = 'localhost'
        OnChange = updateDBInfo
      end
      object GroupBox1: TGroupBox
        Left = 80
        Top = 136
        Width = 297
        Height = 105
        Caption = 'Database Logon Info'
        TabOrder = 2
        object Label4: TLabel
          Left = 16
          Top = 16
          Width = 53
          Height = 13
          Caption = 'User Name'
        end
        object Password: TLabel
          Left = 16
          Top = 56
          Width = 46
          Height = 13
          Caption = 'Password'
        end
        object Label6: TLabel
          Left = 224
          Top = 80
          Width = 1
          Height = 41
          Caption = 'Label6'
        end
        object txtName: TEdit
          Left = 16
          Top = 32
          Width = 265
          Height = 21
          TabOrder = 0
          Text = 'root'
          OnChange = updateDBInfo
        end
        object txtPass: TEdit
          Left = 16
          Top = 72
          Width = 265
          Height = 21
          PasswordChar = '*'
          TabOrder = 1
          OnChange = updateDBInfo
        end
      end
      object cbCatalog: TComboBox
        Left = 80
        Top = 264
        Width = 297
        Height = 21
        ItemHeight = 13
        TabOrder = 3
        Text = 'merp'
        OnChange = updateDBInfo
      end
      object btnTest: TButton
        Left = 304
        Top = 296
        Width = 75
        Height = 25
        Caption = 'Test'
        TabOrder = 4
        OnClick = btnTestClick
      end
    end
    object JvWizardInteriorPage2: TJvWizardInteriorPage
      Header.Title.Color = clNone
      Header.Title.Text = 'Title'
      Header.Title.Anchors = [akLeft, akTop, akRight]
      Header.Title.Font.Charset = DEFAULT_CHARSET
      Header.Title.Font.Color = clWindowText
      Header.Title.Font.Height = -16
      Header.Title.Font.Name = 'MS Sans Serif'
      Header.Title.Font.Style = [fsBold]
      Header.Subtitle.Color = clNone
      Header.Subtitle.Text = 'Subtitle'
      Header.Subtitle.Anchors = [akLeft, akTop, akRight, akBottom]
      Header.Subtitle.Font.Charset = DEFAULT_CHARSET
      Header.Subtitle.Font.Color = clWindowText
      Header.Subtitle.Font.Height = -11
      Header.Subtitle.Font.Name = 'MS Sans Serif'
      Header.Subtitle.Font.Style = []
      Caption = 'JvWizardInteriorPage2'
    end
    object JvWizardInteriorPage3: TJvWizardInteriorPage
      Header.Title.Color = clNone
      Header.Title.Text = 'Title'
      Header.Title.Anchors = [akLeft, akTop, akRight]
      Header.Title.Font.Charset = DEFAULT_CHARSET
      Header.Title.Font.Color = clWindowText
      Header.Title.Font.Height = -16
      Header.Title.Font.Name = 'MS Sans Serif'
      Header.Title.Font.Style = [fsBold]
      Header.Subtitle.Color = clNone
      Header.Subtitle.Text = 'Subtitle'
      Header.Subtitle.Anchors = [akLeft, akTop, akRight, akBottom]
      Header.Subtitle.Font.Charset = DEFAULT_CHARSET
      Header.Subtitle.Font.Color = clWindowText
      Header.Subtitle.Font.Height = -11
      Header.Subtitle.Font.Name = 'MS Sans Serif'
      Header.Subtitle.Font.Style = []
      VisibleButtons = [bkFinish, bkCancel]
      Caption = 'JvWizardInteriorPage3'
    end
  end
  object dbtest: TZConnection
    Port = 0
    Protocol = 'mysqld-5'
    Left = 536
    Top = 168
  end
end
