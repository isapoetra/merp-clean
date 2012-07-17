unit supplieraddun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rep_add_frm, Buttons, StdCtrls, ExtCtrls, Mask, DBCtrls;

type
  Tsupplieraddfrm = class(Tadd_rep_frm)
    Label2: TLabel;
    namadepan: TDBEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
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
  supplieraddfrm: Tsupplieraddfrm;

implementation

uses dmun,fungsi_merp;
{$R *.dfm}

procedure Tsupplieraddfrm.SpeedButton4Click(Sender: TObject);
begin
 // inherited;
 if speedbutton4.Caption = '&Simpan' then
 begin
  simpan(dm.supplier);
  speedbutton4.Caption := '&Tambah';
  speedbutton3.Visible := false;
 end else
 begin
   dm.supplier.Append;
   speedbutton4.Caption := '&Simpan';
   speedbutton3.Visible := true;
 end;
end;

procedure Tsupplieraddfrm.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  batal(dm.supplier);
  close;
end;

end.
