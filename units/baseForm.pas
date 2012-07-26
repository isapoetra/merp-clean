unit baseForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ZAbstractDataset, ImgList, ComCtrls, ToolWin,
  JvExExtCtrls, JvExtComponent, JvScrollMax, JvNetscapeSplitter,
  JvExControls, DBCtrls, JvDBControls, DB, JvExStdCtrls, JvButton, JvCtrls,
  JvXPCore, JvXPButtons, baseformsingle;

type
  TfrmBase = class(TFrmBaseSingle)
    ImageList1: TImageList;
    JvScrollMax1: TJvScrollMax;
    JvNetscapeSplitter1: TJvNetscapeSplitter;
    navdbcontainer: TJvScrollMaxBand;
    dbnav: TJvDBNavigator;
    btnAdd: TJvXPButton;
    btnEdit: TJvXPButton;
    btnDelete: TJvXPButton;
    searchContainer: TJvScrollMaxBand;
    txtSearch: TEdit;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtSearchChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure onKeyPressed(Sender: TObject; var Key: Char); virtual;

  private
    { Private declarations }
    FShowSearch: Boolean;
    FDataReadOnly: Boolean;
    procedure SetDataReadOnly(const Value: Boolean);
    procedure setDataset(const Value: TZAbstractDataset); override;
  protected
    procedure doSearch(const text: string); virtual;
    procedure doDataAction(); virtual; abstract;
    procedure setShowSearch(Value: Boolean);
  public
    property ShowSearch: Boolean read FShowSearch write setShowSearch;
    property DataReadOnly: Boolean read FDataReadOnly write SetDataReadOnly;
  end;

var
  frmBase: TfrmBase;

implementation

uses helper, acl, mainform;
{$R *.dfm}

procedure TfrmBase.setDataset(const Value: TZAbstractDataset);
begin
  inherited;
  btnAdd.Enabled := assigned(Value) and acl.isAllow(self.ClassName, aclAdd);
  btnEdit.Enabled := assigned(Value) and acl.isAllow(self.ClassName, aclEdit);
  btnDelete.Enabled := assigned(Value) and acl.isAllow(self.ClassName,
    aclDelete);
end;

procedure TfrmBase.setShowSearch(Value: Boolean);
begin
  FShowSearch := Value;
  searchContainer.Visible := Value;
  if not searchContainer.Visible then
    navdbcontainer.Top := 0
  else
    navdbcontainer.Top := 50;
end;

procedure TfrmBase.FormCreate(Sender: TObject);
begin
  inherited;
  frmMain.MDIChildCreated(self.Handle)
end;

procedure TfrmBase.FormActivate(Sender: TObject);
begin
  setActiveForm(self);
end;

procedure TfrmBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmBase.txtSearchChange(Sender: TObject);
begin
  doSearch(txtSearch.text);
end;

procedure TfrmBase.doSearch(const text: string);
begin

end;

procedure TfrmBase.Button1Click(Sender: TObject);
begin
  txtSearch.text := '';
end;

procedure TfrmBase.FormDestroy(Sender: TObject);
begin
  frmMain.MDIChildDestroyed(self.Handle);
end;

procedure TfrmBase.onKeyPressed(Sender: TObject; var Key: Char);
begin
  if (Key in ['0' .. '9']) or (Key in ['a' .. 'z', 'A' .. 'Z']) then
  begin
    txtSearch.SetFocus;
    txtSearch.Clear;
    txtSearch.text := txtSearch.text + Key;
    txtSearch.SelStart := 1;
  end;
end;

procedure TfrmBase.SetDataReadOnly(const Value: Boolean);
begin
  FDataReadOnly := Value;
  btnAdd.Visible := Value = false;
  btnEdit.Visible := Value = false;
  btnDelete.Visible := Value = false;
  if Value = true then
    navdbcontainer.ExpandedHeight := 50;
end;

end.
