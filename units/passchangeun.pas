unit passchangeun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DCPcrypt2, DCPmd5;

type
  Tpasschangefrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label7: TLabel;
    oldpwd: TEdit;
    Label2: TLabel;
    newpwd: TEdit;
    repeatpwd: TEdit;
    Label3: TLabel;
    procedure oldpwdChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure validasiPassword;
  public
    { Public declarations }
  end;

var
  passchangefrm: Tpasschangefrm;

implementation

uses dmun,db;

{$R *.dfm}

procedure Tpasschangefrm.validasiPassword;
begin
  if newpwd.Text ='' then
  begin
    messagedlg('password tidak boleh kosong',mtError,[mbok],0);
    newpwd.SetFocus;
    abort;
  end;

  if newpwd.Text <> repeatpwd.Text then
  begin
    messagedlg('password tidak cocok',mtError,[mbOk],0);
    repeatpwd.SetFocus;
    abort;
  end;
end;

procedure Tpasschangefrm.oldpwdChange(Sender: TObject);
begin
  if dm.user.Active = false then dm.user.Active := true;
  if dm.user.Locate('us_password',oldpwd.Text,[loCaseInsensitive])= true then
  begin
    newpwd.Visible := true;
    repeatpwd.Visible := true;
  end else
  begin
    newpwd.Visible    := false;
    repeatpwd.Visible := false;
  end;
end;

procedure Tpasschangefrm.SpeedButton1Click(Sender: TObject);
begin
 validasiPassword;
 if messagedlg('Simpan perubahan password?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
 begin
    
    dm.user.Post;
    dm.user.ApplyUpdates;
    messagedlg('Password telah berubah, password baru aktif setelah '+#13+
    'Anda keluar dari mERP.',mtWarning,[mbok],0);
 end;
end;

end.
