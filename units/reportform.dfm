object frmReport: TfrmReport
  Left = 0
  Top = 0
  Caption = 'frmReport'
  ClientHeight = 521
  ClientWidth = 720
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 216
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
  end
  object preview: TRvRenderPreview
    ZoomFactor = 100.000000000000000000
    ShadowDepth = 0
    Left = 192
    Top = 32
  end
  object RvSystem1: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'Rave Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 112
    Top = 32
  end
  object RvProject1: TRvProject
    Engine = RvSystem1
    Left = 40
    Top = 32
  end
  object RvRenderHTML1: TRvRenderHTML
    DisplayName = 'Web Page (HTML)'
    FileExtension = '*.html;*.htm'
    ServerMode = False
    UseBreakingSpaces = False
    Left = 504
    Top = 56
  end
  object RvRenderRTF1: TRvRenderRTF
    DisplayName = 'Rich Text Format (RTF)'
    FileExtension = '*.rtf'
    Left = 560
    Top = 104
  end
  object RvRenderText1: TRvRenderText
    DisplayName = 'Plain Text (TXT)'
    FileExtension = '*.txt'
    CPI = 10.000000000000000000
    LPI = 6.000000000000000000
    Left = 552
    Top = 152
  end
  object RvRenderPDF1: TRvRenderPDF
    DisplayName = 'Adobe Acrobat (PDF)'
    FileExtension = '*.pdf'
    DocInfo.Creator = 'Rave Reports (http://www.nevrona.com/rave)'
    DocInfo.Producer = 'Nevrona Designs'
    Left = 504
    Top = 96
  end
  object RvRenderPrinter1: TRvRenderPrinter
    Left = 560
    Top = 56
  end
end
