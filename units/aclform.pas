unit aclform;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,baseformsingle, Data.DB, Vcl.StdCtrls,
  Vcl.ExtCtrls, VirtualTrees, Vcl.ComCtrls, Vcl.ToolWin, Vcl.DBCtrls,dmun,
  ZAbstractRODataset, ZAbstractDataset, ZAbstractTable, ZDataset, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmACL = class(TfrmBaseSingle)
    Panel2: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    role: TZTable;
    DBGrid1: TDBGrid;
    dsuser: TDataSource;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    user: TZQuery;
  private
    { Private declarations }
  public
    { Public decl
    procedure FormCreate(Sender: TObject);arations }
  end;

var
  frmACL: TfrmACL;

implementation
uses helper;
{$R *.dfm}

end.
procedure TfrmACL.FormCreate(Sender: TObject);
begin
  inherited;

end;


