inherited custpicfrm: Tcustpicfrm
  Left = 467
  Top = 147
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    inherited SpeedButton3: TSpeedButton
      OnClick = SpeedButton3Click
    end
    inherited SpeedButton4: TSpeedButton
      OnClick = SpeedButton4Click
    end
  end
  inherited Panel2: TPanel
    inherited DBGrid1: TDBGrid
      DataSource = ds.custpic
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      Columns = <
        item
          Expanded = False
          FieldName = 'cp_nama'
          Title.Caption = 'Nama'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cp_hp'
          Title.Caption = 'Handphone'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cp_email'
          Title.Caption = 'email'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cp_alamat'
          Title.Caption = 'alamat'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cp_custid'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'cp_id'
          Visible = False
        end>
    end
  end
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Width = 110
      Caption = 'Contact Person'
    end
    object DBText1: TDBText
      Left = 123
      Top = 9
      Width = 278
      Height = 17
      DataField = 'cu_nama'
      DataSource = ds.customer
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
