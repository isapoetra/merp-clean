object frmMain: TfrmMain
  Left = 266
  Top = 132
  Caption = 'frmMain'
  ClientHeight = 464
  ClientWidth = 741
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object splside: TJvNetscapeSplitter
    Left = 177
    Top = 72
    Height = 373
    Align = alLeft
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
    ExplicitTop = 73
    ExplicitHeight = 354
  end
  object mainmenu: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 741
    Height = 23
    UseSystemFont = False
    ActionManager = ActionManager1
    Caption = 'mainmenu'
    ColorMap.HighlightColor = 15660791
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 15660791
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Spacing = 0
  end
  object ActionToolBar1: TActionToolBar
    Left = 0
    Top = 23
    Width = 741
    Height = 26
    ActionManager = ActionManager1
    Caption = 'ActionToolBar1'
    ColorMap.HighlightColor = 15660791
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 15660791
    Spacing = 0
  end
  object sidebar: TJvNavigationPane
    Left = 0
    Top = 72
    Width = 177
    Height = 373
    ActivePage = tbmaster
    Align = alLeft
    Background.Stretch = False
    Background.Proportional = False
    Background.Center = False
    Background.Tile = False
    Background.Transparent = False
    Caption = 'sidebar'
    MaximizedCount = 3
    object tbmaster: TJvNavPanelPage
      Left = 0
      Top = 0
      Width = 175
      Height = 252
      Background.Stretch = False
      Background.Proportional = False
      Background.Center = False
      Background.Tile = False
      Background.Transparent = False
      Caption = 'Master'
      object JvScrollBox1: TJvScrollBox
        Left = 0
        Top = 0
        Width = 175
        Height = 252
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        TabOrder = 0
        object SpeedButton1: TSpeedButton
          Left = 8
          Top = 8
          Width = 72
          Height = 49
          Action = actBarang
        end
        object SpeedButton2: TSpeedButton
          Left = 8
          Top = 56
          Width = 72
          Height = 49
          Action = actMasterGudang
        end
        object SpeedButton3: TSpeedButton
          Left = 96
          Top = 8
          Width = 72
          Height = 49
          Action = actMasterJasa
        end
        object SpeedButton4: TSpeedButton
          Left = 8
          Top = 104
          Width = 72
          Height = 49
          Action = actMasterCustomer
        end
        object SpeedButton6: TSpeedButton
          Left = 8
          Top = 152
          Width = 72
          Height = 49
          Action = actMasterProj
        end
        object Button1: TButton
          Left = 96
          Top = 56
          Width = 72
          Height = 49
          Action = actMasterSuplier
          TabOrder = 0
        end
        object Button2: TButton
          Left = 96
          Top = 104
          Width = 72
          Height = 49
          Action = actMasterCat
          TabOrder = 1
        end
      end
    end
    object JvNavPanelPage2: TJvNavPanelPage
      Left = 0
      Top = 0
      Width = 175
      Height = 252
      Background.Stretch = False
      Background.Proportional = False
      Background.Center = False
      Background.Tile = False
      Background.Transparent = False
      Caption = 'Inventory'
    end
    object JvNavPanelPage3: TJvNavPanelPage
      Left = 0
      Top = 0
      Width = 175
      Height = 252
      Background.Stretch = False
      Background.Proportional = False
      Background.Center = False
      Background.Tile = False
      Background.Transparent = False
      Caption = 'Pembelian'
    end
  end
  object JvStatusBar1: TJvStatusBar
    Left = 0
    Top = 445
    Width = 741
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object mdiTab: TJvTabBar
    Left = 0
    Top = 49
    Width = 741
    HotTracking = True
    AllowTabMoving = True
    Tabs = <>
    OnTabCloseQuery = mdiTabTabCloseQuery
    OnTabClosed = mdiTabTabClosed
    OnTabSelected = mdiTabTabSelected
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
      end
      item
        Items.CaptionOptions = coNone
        Items = <
          item
            Items = <
              item
                Action = actUserSettings
                Caption = '&User Settings'
              end
              item
                Action = actSecutiry
                Caption = '&Secutiry'
              end
              item
                Caption = '-'
              end
              item
                Action = actLogin
                Caption = '&Logout'
              end
              item
                Caption = '-'
              end
              item
                Action = FileExit1
                ImageIndex = 11
              end>
            Caption = '&File'
          end
          item
            Items = <
              item
                Action = EditCut1
                ImageIndex = 0
                ShortCut = 16472
              end
              item
                Action = EditCopy1
                ImageIndex = 1
                ShortCut = 16451
              end
              item
                Action = EditPaste1
                ImageIndex = 2
                ShortCut = 16470
              end
              item
                Action = EditSelectAll1
                ShortCut = 16449
              end
              item
                Action = EditUndo1
                ImageIndex = 3
                ShortCut = 16474
              end
              item
                Action = EditDelete1
                ImageIndex = 4
                ShortCut = 46
              end>
            Caption = '&Edit'
          end
          item
            Items = <
              item
                Action = actBarang
                Caption = '&Barang'
              end
              item
                Action = actMasterJasa
                Caption = '&Jasa'
              end
              item
                Action = actMasterGudang
                Caption = '&Gudang'
              end
              item
                Action = actMasterSuplier
                Caption = '&Suplier'
              end
              item
                Action = actMasterCustomer
                Caption = '&Customer'
              end
              item
                Action = actMasterCat
                Caption = 'C&ategory'
              end
              item
                Action = actMasterProj
                Caption = '&Projects'
              end>
            Caption = 'M&aster'
          end
          item
            Items = <
              item
                Action = Action3
                Caption = '&Stock Barang'
              end
              item
                Action = actInventIn
                Caption = '&Barang Masuk'
              end
              item
                Action = Action10
                Caption = '&Delivery Order'
              end>
            Caption = 'I&nventory'
          end
          item
            Items = <
              item
                Action = Action4
                Caption = '&Suplier/vendor'
              end
              item
                Action = Action11
                Caption = '&Purchase Order'
              end
              item
                Action = Action12
                Caption = 'P&embelian Langsung'
              end>
            Caption = 'Pe&mbelian'
          end
          item
            Items = <
              item
                Action = Action13
                Caption = '&Ritel/Project'
              end
              item
                Action = Quotation
                Caption = '&Quotation'
              end
              item
                Action = Action2
                Caption = '&Footnote Quotation'
              end
              item
                Caption = '-'
              end
              item
                Action = Action5
                Caption = 'F&aktur Pajak'
              end
              item
                Action = actInvoice
                Caption = '&Daftar Invoice'
              end>
            Caption = 'Pen&jualan'
          end
          item
            Items = <
              item
                Action = Action15
                Caption = '&Employee'
              end
              item
                Action = Action6
                Caption = '&Job Desc'
              end
              item
                Action = Action7
                Caption = '&Salary'
              end
              item
                Action = Action8
                Caption = '&Additional Salary'
              end
              item
                Action = Action9
                Caption = '&Dec Salary'
              end
              item
                Action = Action14
                Caption = '&PPH 21'
              end
              item
                Action = PTKP
                Caption = 'P&TKP'
              end
              item
                Action = Action17
                Caption = 'Depa&rtment'
              end
              item
                Action = Action18
                Caption = '&Bank'
              end
              item
                Caption = '-'
              end
              item
                Action = Action19
                Caption = '&Input Penggajian'
              end
              item
                Action = Action20
                Caption = '&Laporan Penggajian'
              end>
            Caption = '&Payroll'
          end
          item
            Items = <
              item
                Action = Action16
                Caption = '&Penjualan'
              end
              item
                Action = Project
                Caption = 'P&roject'
              end>
            Caption = 'Rep&orting'
          end
          item
            Items = <
              item
                Action = actOptions
                Caption = '&Options'
              end>
            Caption = '&Tools'
          end
          item
            Items = <
              item
                Action = WindowClose1
              end
              item
                Action = WindowCascade1
                ImageIndex = 8
              end
              item
                Action = WindowTileHorizontal1
                ImageIndex = 9
              end
              item
                Action = WindowTileVertical1
                ImageIndex = 10
              end
              item
                Action = WindowMinimizeAll1
              end
              item
                Action = WindowArrange1
              end>
            Caption = '&Window'
          end>
        ActionBar = mainmenu
      end
      item
        Items.CaptionOptions = coNone
        Items = <
          item
            Action = actShowHideSide
            Caption = '&Show/Hide Sidebar'
            ImageIndex = 25
          end
          item
            Caption = '-'
          end
          item
            Action = actShowHideDashboard
            Caption = '&Dashboard'
          end>
        ActionBar = ActionToolBar1
      end>
    Images = ImageList1
    Left = 320
    Top = 208
    StyleName = 'XP Style'
    object EditCut1: TEditCut
      Category = 'Edit'
      Caption = 'Cu&t'
      Hint = 'Cut|Cuts the selection and puts it on the Clipboard'
      ImageIndex = 0
      ShortCut = 16472
    end
    object EditCopy1: TEditCopy
      Category = 'Edit'
      Caption = '&Copy'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16451
    end
    object EditPaste1: TEditPaste
      Category = 'Edit'
      Caption = '&Paste'
      Hint = 'Paste|Inserts Clipboard contents'
      ImageIndex = 2
      ShortCut = 16470
    end
    object EditSelectAll1: TEditSelectAll
      Category = 'Edit'
      Caption = 'Select &All'
      Hint = 'Select All|Selects the entire document'
      ShortCut = 16449
    end
    object EditUndo1: TEditUndo
      Category = 'Edit'
      Caption = '&Undo'
      Hint = 'Undo|Reverts the last action'
      ImageIndex = 3
      ShortCut = 16474
    end
    object EditDelete1: TEditDelete
      Category = 'Edit'
      Caption = '&Delete'
      Hint = 'Delete|Erases the selection'
      ImageIndex = 4
      ShortCut = 46
    end
    object HelpContents1: THelpContents
      Category = 'Help'
      Caption = '&Contents'
      Enabled = False
      Hint = 'Help Contents'
      ImageIndex = 5
    end
    object HelpTopicSearch1: THelpTopicSearch
      Category = 'Help'
      Caption = '&Topic Search'
      Enabled = False
      Hint = 'Topic Search'
      ImageIndex = 6
    end
    object HelpOnHelp1: THelpOnHelp
      Category = 'Help'
      Caption = '&Help on Help'
      Enabled = False
      Hint = 'Help on help'
    end
    object HelpContextAction1: THelpContextAction
      Category = 'Help'
      Caption = 'HelpContextAction1'
      Enabled = False
      ImageIndex = 7
    end
    object WindowClose1: TWindowClose
      Category = 'Window'
      Caption = 'C&lose'
      Enabled = False
      Hint = 'Close'
    end
    object WindowCascade1: TWindowCascade
      Category = 'Window'
      Caption = '&Cascade'
      Enabled = False
      Hint = 'Cascade'
      ImageIndex = 8
    end
    object WindowTileHorizontal1: TWindowTileHorizontal
      Category = 'Window'
      Caption = 'Tile &Horizontally'
      Enabled = False
      Hint = 'Tile Horizontal'
      ImageIndex = 9
    end
    object WindowTileVertical1: TWindowTileVertical
      Category = 'Window'
      Caption = '&Tile Vertically'
      Enabled = False
      Hint = 'Tile Vertical'
      ImageIndex = 10
    end
    object WindowMinimizeAll1: TWindowMinimizeAll
      Category = 'Window'
      Caption = '&Minimize All'
      Enabled = False
      Hint = 'Minimize All'
    end
    object WindowArrange1: TWindowArrange
      Category = 'Window'
      Caption = '&Arrange'
      Enabled = False
    end
    object actLogin: TAction
      Category = 'File'
      Caption = 'Logout'
      OnExecute = actLoginExecute
      OnUpdate = actLoginUpdate
    end
    object actUserSettings: TAction
      Category = 'File'
      Caption = 'User Settings'
      OnExecute = actUserSettingsExecute
      OnUpdate = checkAuth
    end
    object actSecutiry: TAction
      Category = 'File'
      Caption = 'Secutiry'
      OnExecute = actSecutiryExecute
    end
    object FileExit1: TFileExit
      Category = 'File'
      Caption = 'E&xit'
      Hint = 'Exit|Quits the application'
      ImageIndex = 11
    end
    object DataSetFirst1: TDataSetFirst
      Category = 'Dataset'
      Caption = 'DataSetFirst1'
      ImageIndex = 15
      DataSource = dsMain
    end
    object DataSetPrior1: TDataSetPrior
      Category = 'Dataset'
      Caption = 'DataSetPrior1'
      ImageIndex = 16
      DataSource = dsMain
    end
    object DataSetNext1: TDataSetNext
      Category = 'Dataset'
      Caption = 'DataSetNext1'
      ImageIndex = 17
      DataSource = dsMain
    end
    object DataSetLast1: TDataSetLast
      Category = 'Dataset'
      Caption = 'DataSetLast1'
      ImageIndex = 18
      DataSource = dsMain
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert1'
      ImageIndex = 19
      DataSource = dsMain
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      ImageIndex = 20
      DataSource = dsMain
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = 'DataSetEdit1'
      ImageIndex = 21
      DataSource = dsMain
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      ImageIndex = 23
      DataSource = dsMain
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      ImageIndex = 22
      DataSource = dsMain
    end
    object DataSetRefresh1: TDataSetRefresh
      Category = 'Dataset'
      Caption = 'DataSetRefresh1'
      ImageIndex = 24
      DataSource = dsMain
    end
    object ClientDataSetApply1: TClientDataSetApply
      Category = 'Dataset'
      Caption = 'Apply Updates'
      ImageIndex = 12
      DataSource = dsMain
      DisplayErrorDlg = False
    end
    object ClientDataSetRevert1: TClientDataSetRevert
      Category = 'Dataset'
      Caption = 'Revert'
      ImageIndex = 13
      DataSource = dsMain
    end
    object ClientDataSetUndo1: TClientDataSetUndo
      Category = 'Dataset'
      Caption = 'Undo'
      ImageIndex = 14
      DataSource = dsMain
      FollowChange = False
    end
    object actBarang: TAction
      Category = 'Master'
      Caption = 'Barang'
      OnExecute = actBarangExecute
    end
    object Action3: TAction
      Category = 'Inventory'
      Caption = 'Stock Barang'
      OnExecute = Action3Execute
    end
    object Action4: TAction
      Category = 'Pembelian'
      Caption = 'Suplier/vendor'
      OnExecute = Action4Execute
    end
    object actShowHideSide: TAction
      Category = 'File'
      AutoCheck = True
      Caption = 'Show/Hide Sidebar'
      Checked = True
      ImageIndex = 25
      OnExecute = actShowHideSideExecute
    end
    object actMasterJasa: TAction
      Category = 'Master'
      Caption = 'Jasa'
      OnExecute = actMasterJasaExecute
    end
    object actMasterGudang: TAction
      Category = 'Master'
      Caption = 'Gudang'
      OnExecute = actMasterGudangExecute
    end
    object actMasterSuplier: TAction
      Category = 'Master'
      Caption = 'Suplier'
      OnExecute = actMasterSuplierExecute
    end
    object actMasterCustomer: TAction
      Category = 'Master'
      Caption = 'Customer'
      OnExecute = actMasterCustomerExecute
    end
    object actInventIn: TAction
      Category = 'Inventory'
      Caption = 'Barang Masuk'
      OnExecute = actInventInExecute
    end
    object Action10: TAction
      Category = 'Inventory'
      Caption = 'Delivery Order'
      OnExecute = Action10Execute
    end
    object Action11: TAction
      Category = 'Pembelian'
      Caption = 'Purchase Order'
      OnExecute = Action11Execute
    end
    object Action12: TAction
      Category = 'Pembelian'
      Caption = 'Pembelian Langsung'
      OnExecute = Action12Execute
    end
    object Action13: TAction
      Category = 'Penjualan'
      Caption = 'Ritel/Project'
      OnExecute = Action13Execute
    end
    object Action15: TAction
      Category = 'Payroll'
      Caption = 'Employee'
      OnExecute = Action15Execute
    end
    object Action16: TAction
      Category = 'Reporting'
      Caption = 'Penjualan'
      OnExecute = Action16Execute
    end
    object actMasterCat: TAction
      Category = 'Master'
      Caption = 'Category'
      OnExecute = actMasterCatExecute
    end
    object actMasterProj: TAction
      Category = 'Master'
      Caption = 'Projects'
      OnExecute = actMasterProjExecute
    end
    object actShowHideDashboard: TAction
      Category = 'File'
      AutoCheck = True
      Caption = 'Dashboard'
      Checked = True
      OnExecute = actShowHideDashboardExecute
    end
    object actOptions: TAction
      Category = 'Tools'
      Caption = 'Options'
      OnExecute = actOptionsExecute
    end
    object Quotation: TAction
      Category = 'Penjualan'
      Caption = 'Quotation'
      OnExecute = QuotationExecute
    end
    object Action2: TAction
      Category = 'Penjualan'
      Caption = 'Footnote Quotation'
      OnExecute = Action2Execute
    end
    object Action5: TAction
      Category = 'Penjualan'
      Caption = 'Faktur Pajak'
      OnExecute = Action5Execute
    end
    object actInvoice: TAction
      Category = 'Penjualan'
      Caption = 'Daftar Invoice'
      OnExecute = actInvoiceExecute
    end
    object Action6: TAction
      Category = 'Payroll'
      Caption = 'Job Desc'
      OnExecute = Action6Execute
    end
    object Action7: TAction
      Category = 'Payroll'
      Caption = 'Salary'
      OnExecute = Action7Execute
    end
    object Action8: TAction
      Category = 'Payroll'
      Caption = 'Additional Salary'
      OnExecute = Action8Execute
    end
    object Action9: TAction
      Category = 'Payroll'
      Caption = 'Dec Salary'
      OnExecute = Action9Execute
    end
    object Action14: TAction
      Category = 'Payroll'
      Caption = 'PPH 21'
      OnExecute = Action14Execute
    end
    object PTKP: TAction
      Category = 'Payroll'
      Caption = 'PTKP'
      OnExecute = PTKPExecute
    end
    object Action17: TAction
      Category = 'Payroll'
      Caption = 'Department'
      OnExecute = Action17Execute
    end
    object Action18: TAction
      Category = 'Payroll'
      Caption = 'Bank'
      OnExecute = Action18Execute
    end
    object Action19: TAction
      Category = 'Payroll'
      Caption = 'Input Penggajian'
      OnExecute = Action19Execute
    end
    object Action20: TAction
      Category = 'Payroll'
      Caption = 'Laporan Penggajian'
      OnExecute = Action20Execute
    end
    object Project: TAction
      Category = 'Reporting'
      Caption = 'Project'
      OnExecute = ProjectExecute
    end
  end
  object ImageList1: TImageList
    Left = 400
    Top = 208
    Bitmap = {
      494C01011A001D00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000007000000001002000000000000070
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0520025B35301A8CC6914F2CD6B13FAB85406C7AD45006B0000
      00000000000000000000000000000000000000000000FE9A0047FF9900FFFF99
      00FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF99
      00FFFF9900FFFF9900FFFE9A0047000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D0600042D0741CF3FEAE4FFFFEAD48FFFEA73DFFFE972AFFEB7F19FEBD4F
      00900000000000000000000000000000000000000000FF9900FF7DE3FFFFA7E8
      FFFFA2E3FFFF9DDFFFFFFF9900FFD9BFBFFFFFDEDEFFFFDBDBFFFFD7D7FFFFD4
      D4FFFFCFCFFFFFCCCCFFFF9900FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D77515CEE07C12B2C763
      0029CD721DF5FEB763FFFEB259FFD6771DF8BE56008BBB490053B44A007CB64B
      01E8B84C005A00000000000000000000000000000000FF9900FF6AC1D9FF337F
      FFFF1959FFFFA2E3FFFFFF9900FFD9C3C3FFFFE1E1FFFFDEDEFFFFDBDBFFFFD6
      D6FFFFD2D2FFFFCFCFFFFF9900FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D48534F6FDC285FFC16A
      03EEFEC98EFFFEBE74FFD87E23F8CF63003B000000000000000000000000C848
      001CBE4B007A00000000000000000000000000000000FF9900FF6CC3D9FF66CC
      FFFF337FFFFFA7E8FFFFFF9900FFD9C5C5FFFFE5E5FFFFE1E1FFFFDEDEFFFFD9
      D9FFFFD6D6FFFFD1D1FFFF9900FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CD7C26D5FEE0BDFFFECF
      9EFFFECC96FFECA660FFCA610070000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF9900FF6FC5D9FF7FE5
      FFFF7DE3FFFFABEDFFFFFF9900FFD9CBCBFFFFE8E8FFFFE5E5FFFFE0E0FFFFDC
      DCFFFFD7D7FFFFD2D2FFFF9900FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6700BB3FEE9D1FFFED2
      A4FFFECF9FFFD0832AFDC15D0075D47100120000000000000000000000000000
      0000FE00000191240007000000000000000000000000FF9900FF73CAD9FF337F
      FFFF1959FFFFAFF0FFFFFF9900FFD9CCCCFFFFECECFFFFE6E6FFFFE3E3FFFFDE
      DEFFFFD9D9FFFFD4D4FFFF9900FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C1640091FEF3E5FFFEE2
      C5FFFEDCB7FFFED4A1FFFEC37EFFC6690091C04E0031C85D069ECA671DC7CF76
      30E0C68344F8C5773BF7AB4100520000000000000000FF9900FF76CDD9FF66CC
      FFFF337FFFFFB2F4FFFFFF9900FFD9CFCFFFFFEEEEFFFFEAEAFFFFE5E5FFFFE0
      E0FFFFDBDBFFFFD6D6FFFF9900FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6660055E09E45F8E0A0
      4DF9E89631E3E3851DCAD67304B0D5720031B6540094FED9A0FFFEE5BCFFFEE4
      C0FFFEE2BCFFFEE4BAFF9B33008F0000000000000000FF9900FF7BD1D9FF8DF3
      FFFF8DF3FFFFB6F7FFFFFF9900FFD9D0D0FFFFF0F0FFFFEAEAFFFFE5E5FFFFE0
      E0FFFFDBDBFFFFD6D6FFFF9900FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FE8D0009FE7F
      000200000000000000000000000000000000D8590014A942007ACC7E39FEFED3
      A0FFFED1A2FFFEE0B1FFA74505B10000000000000000FF9900FF7ED5D9FF337F
      FFFF1959FFFFB9FAFFFFFF9900FFD9D0D0FFFFF0F0FFFFEAEAFFFFE5E5FFFFE0
      E0FFFFDBDBFFFFD6D6FFFF9900FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BB520072F8B776FFFECC
      94FFFECF98FFFEDFB0FFB65D1BD30000000000000000FF9900FF82D9D9FF66CC
      FFFF337FFFFFBCFDFFFFFF9900FFD9D0D0FFFFF0F0FFFFEAEAFFFFE5E5FFFFE0
      E0FFFFDBDBFFFFD6D6FFFF9900FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CF68
      0090FE8E0019000000000000000000000000D86C003BE0862CF6FEBE75FFFECA
      88FFAB4C00EFFECC9BFFC6702DF30000000000000000FF9900FF82D9D9FF82D9
      D9FF82D9D9FF99FFFFFFFF9900FFD6CECEFFD6CBCBFFD6C7C7FFD6C3C3FFD6BF
      BFFFD6BABAFFD6B6B6FFFF9900FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D36F
      005ED87B02E7DC7C0077D874004FD26D0089E48624F6FEB057FFFEC179FFCD72
      1FF3BA440029CF6513B7D06214C50000000000000000FF9900FFFF9900FFEB85
      00FFEB8500FFEB8500FFEB8500FFEB8500FFEB8500FFEB8500FFEB8500FFEB85
      00FFEB8500FFF79100FFFF9900FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E37C0195F78F1BFEFC952AFFFEA13AFFFEA743FFFEBF75FFD3751DF4BD55
      00620000000000000000000000000000000000000000FF9900FFFFCC99FFFFCC
      99FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC
      99FFFFCC99FFFFAD3DFFFF9900FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C769006FD88014CBD57E20FDD07B23F7BB6005B9B751004B0000
      00000000000000000000000000000000000000000000FE9A0047FF9900FFFF99
      00FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF99
      00FFFF9900FFFF9900FFFE9A0047000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000A5140206AFCB030A
      AEE10000A57B00009107000000000000000000000000000000000000A6850000
      9A8B0000A92A0000000000000000000000000000000098656546A97777F3B284
      83D3A068659C9F6A67659767672FAA5555030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000A88D1844F6FF194D
      F8FF1031D2FF0102AAD00000B82400000000000000010000B0930928D7FF092E
      D7FF0313B3FF0000AB8F0000000000000000000000009A67675ED1AAA8FEFEFE
      FEFF98A9FEFFF0D8D4FFD3B1B3FFBB9697F3B07B7BC0A36A6A89B476763A0000
      0000000000000000000000000000000000000000000000000000656565786F6F
      6FF6585858BB5959596300000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000102B2D02451F9FF1F52
      FEFF1D4FFEFF1744E8FF040AB0EC0000AF3A0000AC970D2EDDFF1142F9FF0D3D
      F5FF0B3BF0FF041ABCFF0000A45D00000000000000009866666DD8B2AEFEFEF7
      E0FF99A3E8FFFEF1D8FFF9E1CEFFFEECDDFFFEF5F1FFFAE6E7FFA56C6CA20000
      0000000000000000000000000000000000000000000000000000747474C5D4D4
      D4FFB0B0B0FF848484FF666666DE5555559A5A5A5A1000000000000000000000
      000000000000464646293636360C000000000000000000000000000000000000
      00000091000E008100B5038805E8008A005A0000000000000000000000000000
      000000000000000000000000000000000000000000000000AD421832DBFF285B
      FEFF2456FEFF2253FEFF1B4BF1FF050DB0FB0F30DDFF164AFEFF1344F9FF1041
      F6FF0E3EF6FF0A3CF0FF00009EBF00000000000000009B67677BDFBBB3FEFEF6
      DDFF9DA5E8FFF8E3D0FFD6C9C6FFFEF7F3FFFEEBDDFFFEE0CDFFA86F6F8B0000
      0000000000000000000000000000000000000000000064646402787878F2C7C7
      C7FFB1B1B1FFB3B3B3FFB4B4B4FF8B8B8BFF646464F65858589F000000000000
      0000000000004343436A4141417A00000000000000000000000000000000009C
      000D008E00C513AC27FF15B32BFF06940EFB0092005900000000000000000000
      000000000000000000000000000000000000000000000000BC511F37DDFF3A6F
      FEFF2C5EFEFF295AFEFF2657FEFF2052FCFF1C4FFEFF194AFDFF1646FAFF1445
      FAFF0F3DF2FF0209B0E70000A74300000000000000009E686889E7C7C5FEFEFE
      F4FFA0B1FDFFF0E7E2FF424B53FF78716AFFB6B28DFFFED9CAFFAF7274740000
      000000000000000000000000000000000000000000005555556D858585FFC3C3
      C3FFAEAEAEFFB8B8B8FFB7B7B7FFAEAEAEFFB4B4B4FF6C6C6CFD5E5E5E0E0000
      000000000000414141673C3C3CB800000000000000000000000000AA000C0094
      00C216AE2EFF17B231FF14AD2AFF13B129FF06920BFB00940056000000000000
      00000000000000000000000000000000000000000000000000010000C866121C
      C7F03D6AFBFF3567FEFF2C5DFEFF2859FEFF2253FEFF1D4EFEFF1A4DFEFF123D
      EDFF0002ACCB0000BA1A000000000000000000000000A06A6A97F0D3D1FEFEFA
      E9FFA3ACEBFFFEF4DDFF669EA8FF24A942FF139A2BFF367D32FFBA787E5D0000
      000000000000000000000000000000000000000000005151517EB7B7B7FFB1B1
      B1FFABABABFFBBBBBBFF6B6B6BFF484848BC515151B056565660000000000000
      0000000000003F3F3F703F3F3FE0000000000000000000B2000A009A00C019B2
      33FF1CB63AFF18B334FF34BC4DFF17B030FF13B02AFF06900BFA009500520000
      0000000000000000000000000000000000000000000000000000000000000000
      C81C0000B6BA2E4EE7FF3668FEFF2E5EFEFF2859FEFF2254FEFF163DEAFF0000
      A7BE0000A20B00000000000000000000000000000000A26D6DA5F6D9D0FEFEF6
      E0FFA4AEEAFFFEF4E0FF4EBB72FF62FE96FF52E17BFF1E9C33FF007704A20000
      00010000000000000000000000000000000000000000545454ADCACACAFFAAAA
      AAFFAAAAAAFFA9A9A9FFA2A2A2FF505050A60000000000000000000000000000
      000000000000414141A0505050FC00000000000000000BA315B21FB73EFF20BA
      42FF1FB840FF11A824FF018E01E962C771FF19B232FF13B12BFF06910BF90096
      004E000000000000000000000000000000000000000000000000000000000000
      00000000C04D253FDFFF3B6DFEFF3464FEFF2E5EFEFF2759FEFF1B46EAFF0001
      ACCF00009F0800000000000000000000000000000000A97373B3FAE4DEFEFEFD
      EFFFA8B7F5FFFEFBF5FF99D9A4FF3BDC6CFF64FE96FF4DDA74FF1E962FFF037E
      098B0000000000000000000000000000000000000000656565DCCBCBCBFF6E6E
      6EF56B6B6BF3C8C8C8FFA6A6A6FF737373FB5252525700000000000000000000
      0000000000004B4B4BCA515151FE000000000000000028B337E942C865FF1FBB
      46FF15B32CFF00A300990099000F009300C761C871FF19B131FF13B22CFF068F
      0BF80094004A0000000000000000000000000000000000000000000000000000
      00000202C7C14B7CFEFF4170FEFF3B6BFEFF396CFEFF2D5EFEFF2558FEFF1336
      D7FF0000B69300000000000000000000000000000000B07B7BC2FCEBE8FEFEFE
      F4FFAABAF5FFFEF8E9FFFEF4EEFF64CF86FF4AE779FF63FB95FF49D36CFF168F
      25FE007F047600000000000000000000000000000000717171FBB5B5B5FF4949
      497B45454581BBBBBBFFA6A6A6FF9F9F9FFF545454E25151514D000000000000
      000044444471666666FE484848EC00000000000000000FB8236542C456FC36BC
      4EFF00AE089C000000010000000000AF0010009200CC63CA72FF17B131FF14B1
      2CFF069009F7009B004800000000000000000000000000000000000000000000
      D62C263CDAFE5080FEFF4575FEFF3662FAFF0D14C2FE3C6DFEFF2A5BFEFF2053
      FDFF0B1DC3FD0000BE47000000000000000000000000B78384D0FEEBDEFEFEFA
      E2FFB0BBEEFFFEF8DFFFFEF2E0FFFEEFDFFF4BCD71FF55F386FF5DFE90FF5BA1
      69FF6E6E67FE79776E6F0000000000000000000000005757577E5F5F5FAF4545
      450643434309545454D6D0D0D0FF999999FF969696FF5D5D5DF8444444B34242
      42BD5A5A5AFC858585FF333333B100000000000000000000000010D2212E0DBD
      204E007F000200000000000000000000000000A90012009301D063CA72FF17B1
      31FF14B32DFF069009F6008E0044000000000000000000000000000000000000
      CB8B527CFAFF5081FEFF4B7DFEFF0A12C8EA0000B9420E14C7E9386AFEFF2456
      FEFF1A4AF2FF0206B2E30000BB0F0000000000000000C28A8ADEE3DCDEFDE2E4
      E3FFA8B3D6FFB3B4B3FFA1A2A3FFA6A2A4FFACAEADFF25C056FF8ABF99FFDFD4
      D2FF6A77C1FF1624B5FC0307A945000000000000000000000000000000000000
      0000000000004C4C4C2C5E5E5EF0CDCDCDFF949494FF8E8E8EFF8C8C8CFF8585
      85FF818181FF5C5C5CFE3F3F3F66000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000A90015009300D464CB
      75FF15B131FF16B330FF028904E800000000000000000000000000000000131C
      DCE06A9CFEFF5788FEFF2B46E7FF0000CD5C000000000000CB320E1BCBF23065
      FEFF1F51FEFF1439DDFF0000B09C0000000000000000C79090ECC3B9B8FD817E
      81FF69656CFF6D6261FF908080FF897878FE877071EF455F4AE4D5CBC6FA7992
      F3FF3862F2FF1F36C7FF000098E1000000000000000000000000000000000000
      0000000000000000000048484838545454E8B8B8B8FFBBBBBBFFA7A7A7FF8D8D
      8DFF616161FF3838389400000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000A600170197
      03D866CD78FF2ABC46FF008902D3000000000000000000000000000000000000
      DD913A52E3FE5782FBFF0101CFC20000000000000000000000000000CC471425
      D6FA265AFEFF0F2EE3FF0102B7CF0000000000000000927070A7957474B85952
      52C2525050DF565353E1555252C8545555CB595959CD5454516D94A0DD6C2B50
      E5FE436CF4FF1625B8FF000098B5000000000000000000000000000000000000
      0000000000000000000000000000393939163434348F464646DF4A4A4AF13737
      37C63E3E3E780000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000097
      001B009401CB039206D10082002F000000000000000000000000000000000000
      00000000D03C0000BFA40000CF30000000000000000000000000000000000000
      C3630001B8BC0000B54900007F0200000000000000007F7F7F285B5E5EB25E5E
      5E9461616171616161545F5F5F3B5C5C5C246262620D00000000000000001521
      C0820C15A9F2000098B300009914000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C2540058BA5300D8D05D
      0026000000000000000000000000000000000000000000000000000000000000
      0000D55E002BB95300D9C7510058000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CF5A0065BB54
      00A67F0000020000000000000000FE000001B45F009BC753008A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000028307CE0E8E18FF0B8A15FF0A8814FF098512FF007702C70000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CD510061D36800FBFEA200FFCF69
      00E9E16B0034000000000000000000000000000000000000000000000000D969
      0044CE7317EFFBC87EFFCF7523FCCA4E00620000000000000000000000000000
      00000000000000000000000000000000000000000000D9640059DD8A38FCE7A4
      52FFC04E008B0000000000000000D06A0090E6A95CFFDC8C3BFECB4A00670000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000038508CE51DA7BFF3ACF69FF39CD67FF32C25BFF017903C70000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C149006CCA6000FDF89200FFFC9600FFFA94
      00FFC45E00BD000000000000000000000000000000000000000000000000C75C
      00C9EDB36CFFF5B86CFFF9B85AFFCC6D19FDC243006D00000000000000000000
      00000000000000000000000000000000000000000000C66304E2F6C37FFFF9BA
      63FFD57C24FEB23F0068EA650019D47417F5F8C37DFFFABB5FFFC96816FBBF43
      0048000000000000000000000000000000000000000000000000000000000000
      000000000000048609CE5CE084FF3ED46EFF3DD36DFF34C55FFF027C05C70000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BC420076C35B00FEE98300FFEB8500FFE78100FFC55D
      00C8D2690011000000000000000000000000000000000000000000000000C96B
      0013C65A00CBE69D4BFFEFA648FFF6A737FFCC6B0FFEB83D0078000000000000
      00000000000000000000000000000000000000000000D9630036CF711CF5F2AE
      53FFF7AA3BFFBD5D0DFB942E0048C75D0052D07A28FDF1AB4FFFF7A837FFB951
      05F1BC3C002E0000000000000000000000000000000000000000000000000000
      00000000000006890CCE64E48AFF41D771FF3FD56FFF37C861FF027D06C70000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B7390081BD5500FED97300FFDB7500FFD77100FFBB5500C0EB62
      000D000000000000000000000000000000000000000000000000000000000000
      0000DD66000FBD5400C3DF8D30FFED9728FFF59716FFCC6602FEAF3600830000
      0000000000000000000000000000000000000000000000000000DD620053CE70
      1BFDEF9B2EFFF59716FFAC4500F18720002FBF550074D27D24FEEE9829FFF292
      10FFA83E00E2BA3A001A00000000000000000000000008920FD4089110D40790
      0FD4078D0ED4088E0FF056E282FF44DA74FF41D872FF39CB64FF038108EC027E
      07CE027B06CE027A04CE017803CE000000000000000000000000000000000000
      0000AF36008DB54C00FECC6600FFCD6700FFC96200FFB54C00B7FE7100090000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E745000BB44D00BCD97C17FFE98609FFF18B00FFCE6700FEAE30
      008F00000001000000000000000000000000000000000000000000000000D154
      0076D27214FEEC8808FFF18A00FF9C3800E28D25001BB34E0099D67915FFEB87
      05FFEA8400FF9B3100CDAA2A000C000000000000000021A72DFF60E487FF4BDD
      79FF4ADC78FF49DC77FF4AE07AFF46DD77FF44DB75FF40D670FF3BCD67FF39CB
      65FF36C862FF33C45EFF0A8413FF00000000000000000000000000000000A835
      0094BB601FFFC15F0BFFBC5500FFBA5400FFAB4300AEAA550006000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009F3F0008A84200B4CF6A02FFE68000FFF28C00FFD66E
      00FFA63500980000000000000000000000000000000000000000000000000000
      0000B947009ACF6A01FFEA8400FFEC8600FF993300CE9C3A000DA94300B9D770
      00FFEC8600FFE37E00FF983000B1000000000000000022A92FFF76F099FF5EEA
      8AFF5AE888FF56E684FF53E481FF4EE17DFF47DE78FF44DB75FF41D872FF3FD5
      6FFF3DD36DFF39CD67FF0B8715FF00000000000000000000000000000000A832
      0088BA6631FEC3743AFFB8590FFFB44C00FFAD4500BCB945000B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009F3F0008A94100B3CA6501FFE07900FFEB8500FFD36A
      00FFA63300950000000000000000000000000000000000000000000000000000
      0000BC490091C86301FFE37D00FFE68000FF9A3400D1A53C0011AA4300C2D36D
      00FFE57F00FFD87300FF933000A4000000000000000024AB30FF7EF39FFF68EE
      91FF64ED8EFF60EA8BFF59E886FF54E482FF4EE17DFF46DD77FF44DA74FF41D7
      71FF3ED46EFF3ACF69FF0C8916FF000000000000000000000000000000000000
      0000AF330080B35C2CFEC07440FFB95C15FFBA5400FFB84E00C3DA5B000E0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BF6A000CB74B00BDCB6F15FFD87407FFDD7700FFC35B00FEAC33
      008B00000000000000000000000000000000000000000000000000000000D759
      006FC5640EFED87506FFDD7700FF9A3600E5902A001EB54E00A6CB6E15FFD973
      04FFD67000FF993100C291240007000000000000000025AD32FF91F7ABFF8DF6
      A8FF8BF5A6FF89F4A5FF7AF09BFF59E886FF53E481FF4ADF7AFF5BE486FF67E5
      8CFF5EE186FF53DB7CFF0F8D1AFF000000000000000000000000000000000000
      000000000000B7380075B45D29FEC77D47FFC2681CFFC35D00FFBE5700C9E263
      0012000000000000000000000000000000000000000000000000000000000000
      0000DF5F0010BF5300C6CC782EFFD27A26FFD67714FFBC5501FEB23A007F0000
      0000000000000000000000000000000000000000000000000000DE64004FC565
      17FCD37E2BFFD67711FFA84200F38E280032BF580085C77026FFD37C25FFD172
      0CFFA43B00D9AE280013000000000000000000000000089D13CE099A13CE0899
      12CE089712CE0A9615EF89F4A5FF60EA8BFF56E684FF45D872FF068C0FEC0689
      0DCE06850CCE04840BCE038108CE000000000000000000000000000000000000
      00000000000000000000BE40006BBB6026FDD28A4EFFCF7521FFD06903FFC65C
      00CFE66D0015000000000000000000000000000000000000000000000000DC68
      0016C55D00CFCE854BFFCF8544FFD28135FFB9580DFEC0430072000000000000
      00000000000000000000000000000000000000000000D3600035C86816F4D08A
      4FFFD28237FFB2530CFB962B004CC85F0063C7742EFED0884BFFD07F33FFAF49
      03EAB83F00240000000000000000000000000000000000000000000000000000
      000000000000089712CE8BF5A6FF64ED8EFF5AE888FF45D771FF068A0CC70000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C8460062C16721FCDD9954FFDC872AFFDE7B
      0AFFC86000C9000000000000000000000000000000000000000000000000C65F
      00C2D0966DFFD0946AFFD08E57FFBC5B15FDC64A006700000000000000000000
      00000000000000000000000000000000000000000000C96503DBD39E7BFFD08F
      5EFFC36923FEB542006BE2710012D07318F8D29E7BFFD18F5BFFB95A10F6C649
      003B000000000000000000000000000000000000000000000000000000000000
      000000000000099913CE8DF6A8FF68EE91FF5EEA8AFF46D872FF068E0EC70000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE4D0059C46B1DFAE8A659FFCD67
      06EBDD6A003C000000000000000000000000000000000000000000000000D96A
      0030C96A13E6D39C79FFBF621BFACF50005C0000000000000000000000000000
      00000000000000000000000000000000000000000000DB660050D07D3AFBCB85
      51FFC352008E0000000000000000EA6B0070D28950FEC56F31FDD05200570000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B9915CE91F7ABFF7FF39FFF76F099FF58DF7FFF068F0FC70000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C5520050BA5400D0D05D
      0026000000000000000000000000000000000000000000000000000000000000
      0000D25A0022BB5400D0C9510051000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D15A0065BD5A
      00AA7F000002000000000000000000000000D25C0084C6540076000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000099B16CE26AD33FF25AB32FF23A930FF21A62EFF06900FC70000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400848484000000000084848400848484000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C3520078BC5100ACAA5500030000000000000000B648
      0007B64F00B7CF5C005000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000848484000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000848484000000000084848400FFFFFF00FFFF
      FF00000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CB52005AD56B00FDF48D00FFC063009FFE000001FE000001A74C
      00A7F18B00FFD56E00F7D7650041000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000848484000000000000000000000000000000000000000000848484000000
      0000FFFFFF00000000000000000084848400000000008484840000000000FFFF
      FF00848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C3470040BF5800F8F99300FFFE9D00FFD37000FBC873002A9740008AD372
      00FFFC9600FFFE9B00FFC55F00CD000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000084848400000000000000000000000000000000008484840000000000FFFF
      FF00000000008484840084848400000000000000000000000000848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD3B
      002BB04800EEE88200FFED8700FFD77100FEC560006A9730006AC05B00FEEC86
      00FFEF8900FFCB6300EED564002B000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000848484000000000000000000000000008484840084848400FFFFFF000000
      0000848484008484840084848400000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B73D0019A53B
      00E0D67000FFDB7500FFD26C00FFBA5700898C2A004EAE4A00FBDB7500FFE07A
      00FFC75E00F8DF5F004000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000848484000000000000000000000000000000000000000000FFFFFF008484
      8400848484008484840000000000000000000000000000000000848484008484
      8400000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C27000D9A3200CEC45E
      00FFCB6500FFC86200FFB34D00A58F290037A13900F4CB6500FFD06A00FFC158
      00FDD45800590000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00000000000000
      0000848484000000000000000000000000000000000084848400848484000000
      0000848484000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009B3302B6BF651FFFBC57
      00FFBC5500FFAD4600BF973000259E3F09E9C26311FFBD5600FFB75100FFBC4B
      0076000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00000000008484
      8400848484000000000000000000000000008484840084848400000000000000
      0000000000008484840000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000993200A3C0713EFFBC64
      24FFB54F00FFAD4600D29B31002EA14211E9C57941FFB85911FFB24A00FFC14C
      007C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000008484
      84008484840000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F2A00069D3500BFBD73
      45FFBB6322FFB85400FFB85100BB9026003CA44818F4C17543FFB95B10FFB750
      00FEDA5B005C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000FFFFFF008484
      8400000000008484840000000000000000000000000000000000848484000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BF2F0010A33E
      07D4C57E4CFFC46B23FFC15C01FFC25900A09126004FAE5724FCC77B43FFC463
      11FFC15700F8DF65004100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484000000000000000000FFFF
      FF0084848400000000008484840000000000000000000000000000000000FFFF
      FF00848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B441
      001FAE4B0DE6D18C52FFCF7822FFCA6500FFC95F0080972C006CBA6A34FED085
      41FFCF7011FFC75E00EED461002A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484008484840000000000FFFF
      FF00FFFFFF008484840000000000000000008484840000000000FFFFFF008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C64C0032BA5A19F2DE9B56FFE08926FFD26C02FEE1700034AA40008BCD82
      43FFDD9142FFDE8115FFC66200D5000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484000000
      000000000000FFFFFF00000000000000000000000000FFFFFF00848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE500049C96F27FBDD9240FFDD6A0099000000017F000002B64E
      00A9DE9A56FFD27317FAD8690050000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000000000000000000000000000000000000000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9540064BF5B009C7F00000200000000000000009F3F
      0008B95100BBD05C005800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848400008484840084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400FFFFFF00C6C6
      C60084848400C6C6C600FFFFFF00C6C6C6000000000000000000000000000000
      0000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000008484840084848400848484008484
      840084848400848484008484840084848400848484008484840084848400FFFF
      FF0084848400FFFFFF0084848400848484000000000000000000000000000000
      0000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000008400000084000000840000008400
      00000000000000000000848484008484840084848400FFFFFF00FFFFFF00FFFF
      FF00840000008400000084000000840000000000000000000000000000000000
      0000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000008400
      0000FF00000084000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00840000000000000000000000000000000000000000000000000000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000008400
      000084000000FF0000008400000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000000000000000000000000000000000000000000000000000008400
      0000FFFFFF00FFFFFF0084000000840000008400000084000000840000008400
      00008400000084000000FFFFFF00840000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000008400
      0000FF00000084000000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000000000000000000000000000000000000000000000000000008400
      0000FFFFFF00FFFFFF0084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000FFFFFF008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000008400
      000084000000FF0000008400000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      0000840000000000000000000000000000000000000000000000000000008400
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000008400
      0000FF00000084000000FF00000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF00840000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000008400
      000084000000FF0000008400000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      0000840000000000000000000000000000000000000084000000FFFFFF008400
      000084000000840000008400000084000000840000008400000084000000FFFF
      FF00840000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000008400
      0000FF00000084000000FF00000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF00840000000000000000000000000000000000000084000000FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00840000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000FFFFFF008400000000000000000000000000000084000000840000008400
      00008400000084000000FFFFFF00840000008400000084000000840000008400
      0000FFFFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      00008400000084000000840000008400000084000000FFFFFF00840000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000840000008400000084000000840000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840084008400840084848400000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400840084008400FFFFFF00FFFFFF00C6C6C600848484000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      840084008400FFFFFF00FFFFFF000000000000000000C6C6C600C6C6C6008484
      84000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000008484840000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484008400840084008400FFFF
      FF00FFFFFF000000000000000000840084008400840000000000C6C6C600C6C6
      C6008484840000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000848484000000000000000000FFFF00008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084008400FFFFFF000000
      000000000000840084008400840084008400840084008400840000000000C6C6
      C600C6C6C60084848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000008400
      840084008400840084000084840000FFFF008400840084008400840084000000
      0000C6C6C600C6C6C600848484000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFF000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084008400840084008400
      8400840084008400840084008400008484008400840084008400840084008400
      840000000000C6C6C600000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000084848400FFFF0000FFFF0000000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084008400FFFFFF008400
      84008400840084008400840084008400840000FFFF0000FFFF00840084008400
      84008400840000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000008484840000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084008400FFFF
      FF0084008400840084008400840084008400840084000084840000FFFF0000FF
      FF008400840084008400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000000000000000
      0000000000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      8400FFFFFF00840084008400840084008400008484008400840000FFFF0000FF
      FF008400840084008400840084000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000000000000000
      0000000000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084008400FFFFFF00840084008400840000FFFF0000FFFF0000FFFF008400
      84008400840084008400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000000000000000
      0000000000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084008400FFFFFF00840084008400840084008400840084008400
      84000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084008400FFFFFF008400840084008400000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840084008400840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000840000000000000000000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000840000000000000084000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000084848400008484008484
      8400008484008484840084000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000840000000000000084000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00840000000000000000848400848484000084
      8400848484000084840084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000000000000084000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000084848400008484008484
      8400008484008484840084000000FFFFFF00000000000000000000000000FFFF
      FF00840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00840000000000000000848400848484000084
      8400848484000084840084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000FFFFFF0084000000000000000000000000000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000084848400008484008484
      8400008484008484840084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000008400000000000000000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF000000000000000000FFFF
      FF00840000008400000084000000840000000000000000848400848484000084
      8400848484000084840084000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000FFFFFF0084000000000000000000000084848400008484008484
      8400008484008484840000848400848484000084840084848400008484008484
      8400008484000000000000000000000000000000000000000000840000008400
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000008400000000000000000000000000000000848400848484000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484000000000000000000000000000000000000000000840000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF0000000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000084848400848484000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000848400848484000084
      84000000000000FFFF00000000000000000000FFFF0000000000848484000084
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000700000000100010000000000800300000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000F81F800100000000
      F00F800100000000800780010000000080E780010000000081FF800100000000
      80F380010000000080018001000000008001800100000000CF01800100000000
      FF81800100000000E701800100000000E001800100000000F00F800100000000
      F81F800100000000FFFFFFFF00000000FFFFFFFFFFFFFFFF83C780FFFFFFFFFF
      8103801F8001FFFF8001801F8001F0FF8001801F8001E07F8001801F8001C03F
      8003801F8001801FE007800F8001800FF007800F80018007F007800780018203
      E00380038001C701E00180018001FF81E08180018001FFC1E1C180018001FFE1
      F1E18061FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FF1FFC63FF81F
      FF07E0FF861FF81FFE07E07F800FF81FFC07E03F8007F81FF80FF01FC0038001
      F01FF807E0018001E03FFC07F0018001E03FFC07F0018001F01FF80FE0018001
      F80FF01FC0038001FC07E03F8007F81FFE07E07F800FF81FFF07E0FF861FF81F
      FF8FF1FFC73FF81FFFFFFFFFFFFFFFFFFC07F9C7FFFFFFFFF807E093FFFFFC63
      F807CE8BFFFFF801F80794A3FFFFF001F807A9C7FFFFE001F80711E7FFF7C003
      F80743C3C1F78007F80F2791C3FB800FFF7F2738C7FB800FFE3F261CCBFB8007
      FC1F4393DCF7C003FFFF6123FF0FE001FEFF2043FFFFF001FFFF9B87FFFFF801
      FDFFCFCFFFFFFC636FFFE01FFFFFFFFFFC00FFFFFFFF0000FC00800380030000
      FC00800380030000FC0080038003E007E00080038003E007E00080038003E007
      E00080038003E007E00780038003E007800780038003E007800780038003E007
      800780038003E007801F80038003FFFF801F80038003F81F801F80038003F81F
      801FFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F000CF9FF
      EFFDF81F0008F9FFC7FFE00F0001F3C7C3FB8007006373C7E3F7000300C327FF
      F1E7000101EB07C7F8CF0000016B00C7FC1F0001002301E3FE3F8001006703F1
      FC1FC001000F0638F8CFE000000F0E38E1E7F000000F1E38C3F3F803005F3F01
      C7FDFC0F003F7F83FFFFFE3F007FFFFFFFFFFFFFFFFFFFFFF9FFFFFFFC00FFFF
      F6CFFE008000FFFFF6B7FE000000FFFFF6B7FE000000FFFFF8B780000000FFF7
      FE8F80000001C1F7FE3F80000003C3FBFF7F80000003C7FBFE3F80010003CBFB
      FEBF80030003DCF7FC9F80070FC3FF0FFDDF807F0003FFFFFDDF80FF8007FFFF
      FDDF81FFF87FFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object CustomizeDlg1: TCustomizeDlg
    ActionManager = ActionManager1
    StayOnTop = True
    Left = 288
    Top = 208
  end
  object dsMain: TDataSource
    Left = 296
    Top = 152
  end
  object JvNavPaneStyleManager1: TJvNavPaneStyleManager
    Theme = nptStandard
    Left = 96
    Top = 272
  end
end
