unit splashfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TfrmSplash = class(TForm)
    ProgressBar1: TProgressBar;
    lblStatus: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure setStatus(msg: string);
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.dfm}

procedure TfrmSplash.setStatus(msg: string);
begin
  lblStatus.Caption := msg;
  lblStatus.Update;
end;

end.

