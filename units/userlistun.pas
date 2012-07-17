unit userlistun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons;

type
  Tuserlistfrm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    btnedit: TSpeedButton;
    btnadd: TSpeedButton;
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

uses dmun, useraddun,db;

{$R *.dfm}

procedure Tuserlistfrm.FormCreate(Sender: TObject);
begin
 if dm.user.Active = false then dm.user.Active := true;
 if dm.useradd.Active = false then dm.useradd.Active := true;
end;

procedure Tuserlistfrm.btnaddClick(Sender: TObject);
begin
  dm.useradd.Append;
 if useraddfrm= nil then
 begin
   application.CreateForm(TUseraddfrm,UserAddfrm);
   userAddfrm.Showmodal;
 end else
 begin
   userAddfrm.Showmodal;
 end;
end;



procedure Tuserlistfrm.SpeedButton3Click(Sender: TObject);
begin
 if messagedlg('Anda Yakin menghapus user '+dm.user.fieldbyname('us_username').Value+'?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
 begin
   dm.user.Delete;
   dm.user.ApplyUpdates;
 end;
end;

procedure Tuserlistfrm.btneditClick(Sender: TObject);
begin
  if dm.useradd.Locate('us_username',dm.user.fieldbyname('us_username').Value,[loCaseInsensitive])=true then
  begin
     dm.useradd.Edit;
     if useraddfrm = nil then
     begin
        application.CreateForm(TUserAddfrm,UserAddfrm);
        useraddfrm.ShowModal;
     end else
     begin
        useraddfrm.ShowModal;
     end;
  end;
end;

end.
