inherited customerfrm: Tcustomerfrm
  Left = 269
  Top = 66
  ClientHeight = 616
  ClientWidth = 885
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    Top = 576
    Width = 885
    inherited SpeedButton2: TSpeedButton
      Left = 65
      Visible = False
    end
    inherited SpeedButton1: TSpeedButton
      Left = 34
      Visible = False
    end
    inherited btncari: TSpeedButton
      Left = 16
      Visible = False
    end
    inherited SpeedButton3: TSpeedButton
      Left = 700
      OnClick = SpeedButton3Click
    end
    inherited SpeedButton4: TSpeedButton
      Left = 789
      OnClick = SpeedButton4Click
    end
    inherited SpeedButton5: TSpeedButton
      Left = 615
    end
    inherited SpeedButton6: TSpeedButton
      Left = 526
      Visible = False
    end
    object SpeedButton9: TSpeedButton
      Left = 450
      Top = -1
      Width = 76
      Height = 40
      Cursor = crHandPoint
      Caption = 'PIC'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clOlive
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        62030000424D6203000000000000420000002800000014000000140000000100
        10000300000020030000120B0000120B00000000000000000000007C0000E003
        00001F000000FF7FFF7FFF7FFF7FF562EA49A645A549C549E64D09522E4E5963
        DE7BFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7A6F504EA64540458049A051A055
        C059804D00394A116925B15EDE7BFF7FFF7FFF7FFF7FFF7FFF7FB45A514E2A52
        6049804DA055C059C05960494045AE0D0519804DE84DDE7BFF7FFF7FFF7FFF7F
        FF7FF662504E2A526049A051C059E05DE05DA0558145D1058639A055C059905A
        FF7FFF7FFF7FFF7FFF7F7A734F4E6E5A804DA055C059E061006A006A8A623616
        285AC05DC05D2A56FF7FFF7FFF7FFF7FFF7FDE7B9156B25EA051C055E05D0066
        206A4172F552141247620066E05D6D5AFF7FFF7FFF7FFF7FFF7FFF7F7B732E4E
        2A5AA055E05DE05DC05DAB6EF84E762E065A0066C1557A73FF7FFF7FFF7FFF7F
        FF7FFF7FFF7FB15A905AE359C05D804DA1510C56C9512E56A34DC05DD262FF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF5624C56A05100358549884587456641
        A349366BFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FDD7B6F52032D
        88456639673D6639CA45DE7BFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7F9356673D884188418841A8417056FF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7F39678841CA49C949EB510B52EB51BC77FF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0F46CA4D0B522C5A4D5E
        4D5E4D5E5873FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FB556883D
        0B562D5A6E628F668F6A906A156FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7F8C314831AA416E62906AD16E137335735777FF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FAD358510282D8F6AD26E3577567756777877FF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F1042C61808256F6213773477
        35773577BB7BFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FB5562925
        4A29AC35ED45EE45EE410F4EBD7BFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7F7B6FAD35AD358C31AD35CF393146D656BD77FF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7F7B6F734E10423146D65A9C73FF7FFF7FFF7F
        FF7FFF7FFF7F}
      ParentFont = False
      OnClick = SpeedButton9Click
    end
  end
  inherited Panel2: TPanel
    Width = 885
    Height = 471
    inherited DBGrid1: TDBGrid
      Width = 883
      Height = 469
      DataSource = ds.customer
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'cu_nama'
          Title.Caption = 'Customer'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cu_alamat'
          Title.Caption = 'Alamat'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cu_kota'
          Title.Caption = 'Kota'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cu_telp'
          Title.Caption = 'Telp/Fax'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cu_id'
          Visible = False
        end>
    end
  end
  inherited caripn: TPanel
    Width = 885
    Visible = True
    inherited SpeedButton7: TSpeedButton
      Visible = False
    end
    object Label2: TLabel
      Left = 8
      Top = 16
      Width = 91
      Height = 18
      Caption = 'Cari Customer:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cari: TEdit
      Left = 104
      Top = 14
      Width = 753
      Height = 24
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnChange = cariChange
    end
  end
  inherited Panel1: TPanel
    Width = 885
    inherited Label1: TLabel
      Top = 11
      Width = 99
      Caption = 'Customer List'
    end
  end
  inherited Panel4: TPanel
    Width = 885
  end
  inherited Panel5: TPanel
    Width = 885
  end
end
