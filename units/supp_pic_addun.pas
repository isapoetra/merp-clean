unit supp_pic_addun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rep_add_frm, Buttons, StdCtrls, ExtCtrls, Mask, DBCtrls;

type
  Tsupp_pic_addfrm = class(Tadd_rep_frm)
    Label2: TLabel;
    namadepan: TDBEdit;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  supp_pic_addfrm: Tsupp_pic_addfrm;

implementation

uses dmun,fungsi_merp;

{$R *.dfm}

procedure Tsupp_pic_addfrm.SpeedButton4Click(Sender: TObject);
begin
 // inherited;
 if speedbutton4.Caption = '&Simpan' then
 begin
    speedbutton4.Caption := '&Tambah';
    speedbutton3.Visible := false;
  with dm.supplierpic do
  begin
    fieldbyname('sp_supplier').Value := dm.supplier.fieldbyname('sp_id').AsString;
  end;
  simpan(dm.supplierpic);
 end else
 begin
   speedbutton4.Caption := '&Simpan';
   speedbutton3.Visible := true;
   dm.supplierpic.Append;
 end;
end;

procedure Tsupp_pic_addfrm.SpeedButton3Click(Sender: TObject);
begin
 // inherited;
  batal(dm.supplierpic);
  close;
end;

end.
