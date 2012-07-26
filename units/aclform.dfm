inherited frmACL: TfrmACL
  Caption = 'frmACL'
  ClientHeight = 367
  ClientWidth = 704
  ExplicitWidth = 712
  ExplicitHeight = 401
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 704
    ExplicitWidth = 704
  end
  inherited pnlbg1: TPanel
    Width = 704
    ExplicitWidth = 704
  end
  inherited pnlbg2: TPanel
    Width = 704
    ExplicitWidth = 704
  end
  object Panel2: TPanel [3]
    Left = 0
    Top = 45
    Width = 185
    Height = 322
    Align = alLeft
    Caption = 'Panel2'
    TabOrder = 3
    ExplicitLeft = 232
    ExplicitTop = 104
    ExplicitHeight = 145
    object ToolBar1: TToolBar
      Left = 1
      Top = 1
      Width = 183
      Height = 22
      AutoSize = True
      TabOrder = 0
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Caption = 'ToolButton1'
        ImageIndex = 0
      end
      object ToolButton2: TToolButton
        Left = 23
        Top = 0
        Caption = 'ToolButton2'
        ImageIndex = 1
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 23
      Width = 183
      Height = 298
      Align = alClient
      DataSource = dsform
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'role_id'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'role_name'
          Visible = True
        end>
    end
  end
  object Panel3: TPanel [4]
    Left = 185
    Top = 45
    Width = 519
    Height = 322
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 4
    ExplicitLeft = 190
    ExplicitTop = 47
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 517
      Height = 202
      Align = alTop
      DataSource = dsuser
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 223
      Width = 517
      Height = 98
      Align = alBottom
      Caption = 'Access'
      TabOrder = 1
      ExplicitLeft = 191
      ExplicitTop = 224
      ExplicitWidth = 258
      object CheckBox1: TCheckBox
        Left = 16
        Top = 21
        Width = 97
        Height = 17
        Caption = 'View'
        TabOrder = 0
      end
      object CheckBox2: TCheckBox
        Left = 16
        Top = 44
        Width = 97
        Height = 17
        Caption = 'Add'
        TabOrder = 1
      end
      object CheckBox3: TCheckBox
        Left = 16
        Top = 67
        Width = 97
        Height = 17
        Caption = 'Edit'
        TabOrder = 2
      end
      object CheckBox4: TCheckBox
        Left = 135
        Top = 44
        Width = 97
        Height = 17
        Caption = 'Manage'
        TabOrder = 3
      end
      object CheckBox5: TCheckBox
        Left = 136
        Top = 21
        Width = 97
        Height = 17
        Caption = 'Delete'
        TabOrder = 4
      end
    end
  end
  inherited dsform: TDataSource
    DataSet = role
    Left = 592
    Top = 8
  end
  object role: TZTable
    Connection = dm.conerp
    Active = True
    TableName = 'roles'
    Left = 544
    Top = 8
  end
  object dsuser: TDataSource
    Left = 264
    Top = 8
  end
  object user: TZQuery
    Params = <>
    Left = 304
    Top = 8
  end
end
