unit gudangaddun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rep_add_frm, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls;

type
  Tgudangaddfrm = class(Tadd_rep_frm)
    Label2: TLabel;
    namadepan: TDBEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  gudangaddfrm: Tgudangaddfrm;

implementation

uses dmun,fungsi_merp;
{$R *.dfm}

procedure Tgudangaddfrm.SpeedButton4Click(Sender: TObject);
begin
 // inherited;
 if speedbutton4.Caption = '&Simpan' then
 begin
    speedbutton4.Caption := '&Tambah';
    speedbutton3.Visible := false;
    simpan(dm.gudang);
 end else
 begin
    speedbutton4.Caption := '&Simpan';
    speedbutton3.Visible := true;
    dm.gudang.Append;
 end;
end;

procedure Tgudangaddfrm.SpeedButton3Click(Sender: TObject);
begin
 // inherited;
 batal(dm.gudang);
 close;
end;

end.
