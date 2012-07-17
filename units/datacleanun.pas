unit datacleanun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  Tdatacleanfrm = class(TForm)
    cbjual: TCheckBox;
    cbbeli: TCheckBox;
    cbinvoice: TCheckBox;
    cbtax: TCheckBox;
    cbacct: TCheckBox;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  datacleanfrm: Tdatacleanfrm;

implementation
uses dmun,fungsi_merp;
{$R *.dfm}

procedure Tdatacleanfrm.BitBtn1Click(Sender: TObject);
begin
 if cbjual.Checked = true then
 begin
   with dm.jual do
   begin
     sql.Text := 'delete from jual where ju_kode <> (:kd) ';
     params.ParamByName('kd').Value := 'JL0000000000';
     execSQL;
   end;

   with dm.jualdetail do
   begin
      sql.Text := 'delete from jualdetail ';
      execSql;
   end;

 end;

 if cbbeli.Checked = true then
 begin
    with dm.beli do
   begin
    sql.Text := 'select * from beli where be_kode <> (:kb) ';
    params.ParamByName('kb').Value := '0000000000000000';
    execSql;
   end;

   with dm.belidetail do
   begin
     sql.Text := 'delete from belidetail';
     execsql;
   end;
 end; // end of cbbeli

 if cbinvoice.Checked = true then
 begin

    with dm.tagihan do
    begin
      sql.Text := 'delete from invoice where in_kode <> (:ki) ';
      params.ParamByName('ki').Value := '000/SV/IN/00/2012';
      execSQL;
    end;
 end; // end of cbinvoice

 if cbtax.Checked = true then
 begin
   with dm.fakturpajak do
   begin
     sql.Text := 'delete from fakturpajak where fp_kode <> (:kf) ';
     params.ParamByName('kf').Value := '010.000-12.00000000';
     execSQL;
   end;
 end; // end of cbtax

 if cbacct.Checked = true then
 begin
   with dm.general_ledger do
   begin
     sql.Text:= 'delete from general_ledger ';
     execSQl;
   end;
 end; // end of cbacct

 showmessage('Cleanup selesai.... Software mERP akan di shutdown untuk normalize');
 application.Terminate;
end;

end.
