unit useraddun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Mask, DBCtrls, DCPcrypt2, DCPmd5,
  baseformsingle,
  Data.DB,dmun;

type
  Tuseraddfrm = class(TfrmBaseSingle)
    Panel2: TPanel;
    Panel3: TPanel;
    namadepan: TDBEdit;
    Label2: TLabel;
    namabelakang: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    username: TDBEdit;
    Label6: TLabel;
    pwd: TDBEdit;
    Label7: TLabel;
    repeatpwd: TEdit;
    DBListBox1: TDBListBox;
    btnSave: TButton;
    Button1: TButton;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ValidasiUser;
  public
    { Public declarations }
  end;

var
  useraddfrm: Tuseraddfrm;

implementation
{$R *.dfm}

procedure Tuseraddfrm.ValidasiUser;
begin
  if ((namadepan.Text = '') or (namabelakang.Text = '')) then
  begin
    messagedlg('Nama Depan atau Nama Belakang tidak boleh kosong', mtError,
      [mbOk], 0);
    namadepan.SetFocus;
    abort;
  end;
  if (username.Text) = '' then
  begin
    messagedlg('username kosong, isi username', mtError, [mbOk], 0);
    username.SetFocus;
    abort;
  end;
  if dm.user.State in [dsInsert] then // cek validasi password
  begin
    if (pwd.Text) <> (repeatpwd.Text) then
    begin
      messagedlg('Password tidak sama!', mtError, [mbOk], 0);
      abort;
    end;
  end;
end;

procedure Tuseraddfrm.btnSaveClick(Sender: TObject);
begin
  inherited;
  ValidasiUser;
  if messagedlg('Simpan Record?', mtconfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dm.user.Post;
    dm.user.ApplyUpdates;
    ModalResult := mrOk;
  end;
end;

procedure Tuseraddfrm.Button1Click(Sender: TObject);
begin
  inherited;
  if messagedlg('Batalkan Record?', mtconfirmation, [mbYes, mbNo], 0) = mrYes
  then
  begin
    dm.user.CancelUpdates;
    ModalResult := mrCancel;
  end;
end;

procedure Tuseraddfrm.FormActivate(Sender: TObject);
begin
  if dm.group.Active = false then
    dm.group.Active := true;

  if dm.user.State in [dsEdit] then
  begin
    pwd.Enabled := false;
    repeatpwd.Enabled := false;
    username.Enabled := false;
  end
  else
  begin
    pwd.Enabled := true;
    repeatpwd.Enabled := true;
    username.Enabled := true;
  end;
end;

procedure Tuseraddfrm.FormCreate(Sender: TObject);
begin
  inherited;
  setDataset(dm.user);
end;

end.
