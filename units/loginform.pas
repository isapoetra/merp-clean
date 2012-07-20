unit loginform;
{$I merp.inc}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, acl;
resourcestring
  invalidpassword = 'Invalid Username/password';
type
  TfrmLogin = class(TForm)
    Button1: TButton;
    Button2: TButton;
    txtName: TEdit;
    txtPass: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    lblStatus: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation
uses helper;
{$R *.dfm}

procedure TfrmLogin.Button1Click(Sender: TObject);
begin
  if (acl.authenticate(txtName.text, helper.encryptPassword(txtPass.Text))) then
    ModalResult := mrOk
  else
  begin
{$IFNDEF DEV_MODE}
    txtPass.Text := '';
{$ENDIF}
    lblStatus.Caption := invalidpassword;
  end;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  txtName.Text := helper.getConfig('app.lastlogin', 'administrator');
{$IFDEF DEV_MODE}
  txtPass.Text := 'password';
{$ENDIF}
end;

end.

