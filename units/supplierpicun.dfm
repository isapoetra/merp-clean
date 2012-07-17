inherited supplierpicfrm: Tsupplierpicfrm
  Left = 494
  Top = 143
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    inherited SpeedButton3: TSpeedButton
      OnClick = SpeedButton3Click
    end
    inherited SpeedButton4: TSpeedButton
      OnClick = SpeedButton4Click
    end
    inherited SpeedButton6: TSpeedButton
      Visible = False
    end
  end
  inherited Panel2: TPanel
    inherited DBGrid1: TDBGrid
      DataSource = ds.supplierpic
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      Columns = <
        item
          Expanded = False
          FieldName = 'sp_nama'
          Title.Caption = 'Nama'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sp_handphone'
          Title.Caption = 'No Handphone'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sp_email'
          Title.Caption = 'Email'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sp_alamat'
          Title.Caption = 'Alamat'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sp_supplier'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'sp_id'
          Visible = False
        end>
    end
  end
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Left = 16
      Width = 144
      Caption = 'Contact Person List '
    end
    object DBText1: TDBText
      Left = 161
      Top = 8
      Width = 321
      Height = 17
      DataField = 'sp_name'
      DataSource = ds.supplier
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
