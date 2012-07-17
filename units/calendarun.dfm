object calendarfrm: Tcalendarfrm
  Left = 516
  Top = 180
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'mERP 1.0'
  ClientHeight = 233
  ClientWidth = 295
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
  object Label2: TLabel
    Left = 16
    Top = 208
    Width = 227
    Height = 15
    Caption = 'double click pada tanggal untuk mengisi'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object kalender: TMonthCalendar
    Left = 0
    Top = 0
    Width = 295
    Height = 201
    Date = 40904.862857152780000000
    TabOrder = 0
    OnDblClick = kalenderDblClick
  end
end
