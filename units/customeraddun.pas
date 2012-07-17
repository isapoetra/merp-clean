unit customeraddun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rep_add_frm, Buttons, StdCtrls, ExtCtrls, Mask, DBCtrls;

type
  Tcustomeraddfrm = class(Tadd_rep_frm)
    Label2: TLabel;
    namadepan: TDBEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    kdcust: TDBEdit;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  customeraddfrm: Tcustomeraddfrm;

implementation

uses dmun,fungsi_merp,db;

{$R *.dfm}

procedure Tcustomeraddfrm.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  if speedbutton4.Caption = '&Simpan' then
  begin
     speedbutton3.Visible := false;
     speedbutton4.Caption := '&Tambah';
     simpan(dm.customer);
  end else
  begin
    speedbutton3.Visible := true;
    speedbutton4.Caption := '&Simpan';
    dm.customer.Append;
  end;
end;

procedure Tcustomeraddfrm.SpeedButton3Click(Sender: TObject);
begin
  //inherited;
  batal(dm.customer);
  close;
end;

procedure Tcustomeraddfrm.FormActivate(Sender: TObject);
begin
  inherited;
  if dm.customer.State in [dsInsert] then
  begin
     speedbutton4.Caption := '&Simpan';
     speedbutton3.Visible := true;
  end;
end;

end.
