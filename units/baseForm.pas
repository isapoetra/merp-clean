unit baseForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ZAbstractDataset, ImgList, ComCtrls, ToolWin,
  JvExExtCtrls, JvExtComponent, JvScrollMax, JvNetscapeSplitter,
  JvExControls, DBCtrls, JvDBControls, DB, JvExStdCtrls, JvButton, JvCtrls,
  JvXPCore, JvXPButtons;

type
  TfrmBase = class(TForm)
    Panel4: TPanel;
    Panel5: TPanel;
    Panel1: TPanel;
    lblCaption: TLabel;
    ImageList1: TImageList;
    JvScrollMax1: TJvScrollMax;
    JvNetscapeSplitter1: TJvNetscapeSplitter;
    JvScrollMaxBand2: TJvScrollMaxBand;
    txtSearch: TEdit;
    Button1: TButton;
    navdbcontainer: TJvScrollMaxBand;
    dbnav: TJvDBNavigator;
    dsform: TDataSource;
    btnAdd: TJvXPButton;
    btnEdit: TJvXPButton;
    btnDelete: TJvXPButton;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtSearchChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure onKeyPressed(Sender: TObject; var Key: Char); virtual;
  private
    { Private declarations }
    fDataset: TZAbstractDataset;
    FDatasetChanged: TNotifyEvent;
  protected
    procedure setDataset(const Value: TZAbstractDataset);
    procedure doSearch(const text: string); virtual;
    procedure doDataAction(); virtual; abstract;

  public
    property Dataset: TZAbstractDataset read fDataset write setDataset;
    property OnDatasetChanged: TNotifyEvent read FDatasetChanged write
      FDatasetChanged;
  end;

var
  frmBase: TfrmBase;

implementation
uses helper, acl, mainform;
{$R *.dfm}

procedure TfrmBase.FormCreate(Sender: TObject);
begin
  if not acl.isAllow(self.ClassName, aclRead) then
  begin
    MessageDlg(accessdenied, mtError, [mbOK], -1);
    self.Close;
  end;
  lblCaption.Caption := self.Caption;
  frmMain.MDIChildCreated(self.Handle)
end;

procedure TfrmBase.setDataset(const Value: TZAbstractDataset);
begin
  fDataset := Value;
  if (assigned(fDataset) and fDataset.Active = false) then
    fDataset.Active := true;
  dsform.DataSet := value;
  btnadd.Enabled := Assigned(value) and acl.isAllow(self.ClassName, aclAdd);
  btnEdit.Enabled := Assigned(value) and acl.isAllow(self.ClassName, aclEdit);
  btndelete.Enabled := Assigned(value) and acl.isAllow(self.ClassName,
    aclDelete);
  if Assigned(FDatasetChanged) then
    FDatasetChanged(self);
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
  doSearch(txtSearch.Text);
end;

procedure TfrmBase.doSearch(const text: string);
begin

end;

procedure TfrmBase.Button1Click(Sender: TObject);
begin
  txtSearch.Text := '';
end;

procedure TfrmBase.FormDestroy(Sender: TObject);
begin
  frmMain.MDIChildDestroyed(self.Handle);
end;

procedure TfrmBase.onKeyPressed(Sender: TObject; var Key: Char);
begin
  if (key in ['0'..'9']) or (key in ['a'..'z', 'A'..'Z']) then
  begin
    txtSearch.SetFocus;
    txtSearch.Clear;
    txtSearch.text := txtSearch.text + key;
    txtSearch.SelStart := 1;
  end;
end;

end.

