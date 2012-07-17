unit kategoriaddun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rep_add_frm, DBCtrls, StdCtrls, Mask, Buttons, ExtCtrls;

type
  Tkategoriaddfrm = class(Tadd_rep_frm)
    Label2: TLabel;
    namadepan: TDBEdit;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  kategoriaddfrm: Tkategoriaddfrm;

implementation
uses fungsi_merp, dmun,db;
{$R *.dfm}


procedure Tkategoriaddfrm.SpeedButton4Click(Sender: TObject);
begin
 if speedbutton4.Caption = '&Simpan' then
 begin
  simpan(dm.kategori);
  speedbutton4.Caption := '&Tambah';
 end else
 begin
   dm.kategori.Append;
   speedbutton4.Caption := '&Simpan';
 end;

end;

procedure Tkategoriaddfrm.SpeedButton3Click(Sender: TObject);
begin
   batal(dm.kategori);
   close;
end;

procedure Tkategoriaddfrm.FormActivate(Sender: TObject);
begin
  inherited;
  if dm.kategori.State in [dsInsert] then
  begin
    
  end;

end;

end.
