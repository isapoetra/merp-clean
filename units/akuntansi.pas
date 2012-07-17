unit akuntansi;

interface
uses zdataset,dialogs,controls,qforms,forms,classes,Toolwin,windows,dmun;

procedure posting(Amount:double;DebetKredit:smallint;Akun:string;Tgl:TDate;Ref:string;desc:string;PlusMinus:smallint);

implementation

procedure posting(Amount:double;DebetKredit:smallint;Akun:string;Tgl:TDate;Ref:string;desc:string;PlusMinus:smallint);
begin
 with dm.general_ledger do
 begin
   open;
   append;
   fieldbyname('gl_amount').Value := amount*plusminus;  // posting utk piutang
   if debetkredit=1 then // hasil di debet
   begin
   fieldbyname('gl_debet').Value := amount;  // piutang bertambah di debet
   end else
   begin
    fieldbyname('gl_kredit').Value := amount;  // piutang bertambah di debet
   end;
   fieldbyname('gl_akun').Value  := akun;
   fieldbyname('gl_tgl').Value   := tgl;
   fieldbyname('gl_ref').Value   := ref;
   fieldbyname('gl_desc').Value := desc;
   post;
 end;
end;

end.
