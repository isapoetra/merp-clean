unit jatuhtempoun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls;

type
  Tjatuhtempofrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    tgl: TDateTimePicker;
    Panel3: TPanel;
    SpeedButton4: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  jatuhtempofrm: Tjatuhtempofrm;

implementation

uses dmun, fungsi_merp;
{$R *.dfm}

procedure Tjatuhtempofrm.FormCreate(Sender: TObject);
begin
  tgl.Date := date;
end;

procedure Tjatuhtempofrm.SpeedButton4Click(Sender: TObject);
begin
  dm.polist.Edit;
  dm.polist.FieldByName('be_due').Value := tgl.Date;
  close;
end;

procedure Tjatuhtempofrm.FormActivate(Sender: TObject);
begin
  if dm.polist.FieldByName('be_due').Value <> null then
  begin
    tgl.Date := dm.polist.fieldbyname('be_due').Value;
  end;
end;

end.
