unit baseformsingle;

interface

{$I merp.inc}

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  ZAbstractDataset,
  Data.DB;

type
  TfrmBaseSingle = class(TForm)
    Panel1: TPanel;
    lblCaption: TLabel;
    pnlbg1: TPanel;
    pnlbg2: TPanel;
    dsform: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure setDataset(const Value: TZAbstractDataset); virtual;
  private
    fDataset: TZAbstractDataset;
    FDatasetChanged: TNotifyEvent;
    { Private declarations }

  public
    { Public declarations }
    property Dataset: TZAbstractDataset read fDataset write setDataset;
    property OnDatasetChanged: TNotifyEvent read FDatasetChanged
      write FDatasetChanged;
  end;

var
  frmBaseSingle: TfrmBaseSingle;

implementation

uses acl;
{$R *.dfm}

procedure TfrmBaseSingle.FormCreate(Sender: TObject);
begin
  if not acl.isAllow(self.ClassName, aclRead) then
  begin
    MessageDlg(accessdenied, mtError, [mbOK], -1);
    self.Close;
  end;
{$IFDEF DEV_MODE}
  self.Caption := self.Caption + ' [' + self.ClassName + ']';
{$ENDIF}
  lblCaption.Caption := self.Caption;

end;

procedure TfrmBaseSingle.setDataset(const Value: TZAbstractDataset);
begin
  fDataset := Value;
  try
    if (assigned(fDataset) and fDataset.Active = false) then
      fDataset.Active := true;
  finally
  end;
  dsform.Dataset := Value;

  if assigned(FDatasetChanged) then
    FDatasetChanged(self);
end;

end.
