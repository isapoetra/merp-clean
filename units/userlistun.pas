unit userlistun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  baseForm,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons,
  DB, ImgList, JvXPCore, JvXPButtons, DBCtrls, JvDBControls,
  JvExControls, JvScrollMax, JvExExtCtrls, JvExtComponent,
  JvNetscapeSplitter;

type
  Tuserlistfrm = class(TfrmBase)
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    SpeedButton3: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btnaddClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btneditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  userlistfrm: Tuserlistfrm;

implementation

uses dmun, useraddun, helper;

{$R *.dfm}

procedure Tuserlistfrm.FormCreate(Sender: TObject);
begin
  inherited;
  setDataset(dm.user);
end;

procedure Tuserlistfrm.btnaddClick(Sender: TObject);
begin
  dm.user.Append;
  if showFormModal(TUseraddfrm) = mrOk then
    dm.user.Refresh;
end;

procedure Tuserlistfrm.SpeedButton3Click(Sender: TObject);
begin
  if messagedlg('Anda Yakin menghapus user ' + dm.user.fieldbyname
    ('us_username').Value + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dm.user.Delete;
    dm.user.ApplyUpdates;
  end;
end;

procedure Tuserlistfrm.btneditClick(Sender: TObject);
begin
  dm.user.Edit;
  if showFormModal(TUseraddfrm) = mrOk then
    dm.user.Refresh;

end;

end.
