unit baseForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ZAbstractDataset, ImgList, ComCtrls, ToolWin,
  JvExExtCtrls, JvExtComponent, JvScrollMax, JvNetscapeSplitter,
  JvExControls;

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
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtSearchChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    fDataset: TZAbstractDataset;
    FDatasetChanged: TNotifyEvent;
    { Private declarations }
  protected
    procedure setDataset(const Value: TZAbstractDataset);
    procedure doSearch(const text: string); virtual;
  public
    property Dataset: TZAbstractDataset read fDataset write setDataset;
    property OnDatasetChanged: TNotifyEvent read FDatasetChanged write
      FDatasetChanged;
  end;

var
  frmBase: TfrmBase;

implementation
uses helper,acl;
{$R *.dfm}

procedure TfrmBase.FormCreate(Sender: TObject);
begin
  if not acl.isAllow(self.ClassName,aclRead) then
  begin
    MessageDlg(accessdenied,mtError,[mbOK],-1);
    self.Close;
  end;
  lblCaption.Caption := self.Caption;
end;

procedure TfrmBase.setDataset(const Value: TZAbstractDataset);
begin
  fDataset := Value;
  if (assigned(fDataset) and  fDataset.Active = false) then  fDataset.Active := true;
  if Assigned(FDatasetChanged)  then
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

end.

