unit useraddun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Mask, DBCtrls, DCPcrypt2, DCPmd5;

type
  Tuseraddfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    namadepan: TDBEdit;
    Label2: TLabel;
    namabelakang: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    username: TDBEdit;
    Label5: TLabel;
    groupakses: TDBLookupComboBox;
    Label6: TLabel;
    pwd: TDBEdit;
    Label7: TLabel;
    repeatpwd: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure ValidasiUser;
  public
    { Public declarations }
  end;

var
  useraddfrm: Tuseraddfrm;

implementation

uses dmun,db;

{$R *.dfm}

procedure Tuseraddfrm.ValidasiUser;
begin

  if ((namadepan.Text='') or (namabelakang.Text='')) then
   begin
      messagedlg('Nama Depan atau Nama Belakang tidak boleh kosong',mtError,[mbOk],0);
      namadepan.SetFocus;
      abort;
   end;
   
  //cek apakah user exist atau tidak, klo eksis ditolak

 if dm.useradd.State in [dsInsert] then //cek existing user klo dalam modus edit
 begin
   if dm.user.Locate('us_username',username.Text,[loCaseInsensitive])= true then
   begin
      messagedlg('username sudah ada, pilih username yang lain',mtError,[mbOk],0);
      username.SetFocus;
      abort;
   end else if (username.Text) = '' then
   begin
      messagedlg('username kosong, isi username',mtError,[mbOk],0);
      username.SetFocus;
      abort;
   end;
  end;

   if groupakses.Text = '' then
   begin
       messagedlg('Group Akses harus diisi',mtError,[mbOk],0);
       abort;
   end;

  if dm.useradd.State in [dsInsert] then //cek validasi password
 begin
   if (pwd.Text) <> (repeatpwd.Text) then
   begin
       messagedlg('Password tidak sama!',mtError,[mbOk],0);
       abort;
   end;
 end;
end;

procedure Tuseraddfrm.FormActivate(Sender: TObject);
begin
 if dm.group.Active = false then dm.group.Active := true;

 if dm.useradd.State in [dsEdit] then
 begin
   pwd.Enabled := false;
   repeatpwd.Enabled := false;
   username.Enabled   := false;
 end else
 begin
    pwd.Enabled      := true;
   repeatpwd.Enabled := true;
      username.Enabled   := true;
 end;


end;

procedure Tuseraddfrm.SpeedButton1Click(Sender: TObject);
begin

 validasiUser;

 if messagedlg('Simpan Record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
 begin
    
    dm.useradd.Post;
    dm.useradd.ApplyUpdates;
    useraddfrm.Close;
    dm.user.Refresh;
 end;

end;

procedure Tuseraddfrm.FormCreate(Sender: TObject);
begin
 if dm.useradd.Active = false then dm.useradd.Active := true;
end;

procedure Tuseraddfrm.SpeedButton2Click(Sender: TObject);
begin
 if messagedlg('Batalkan Record?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
 begin
    dm.useradd.CancelUpdates;
    useraddfrm.Close;
 end;
end;

end.
