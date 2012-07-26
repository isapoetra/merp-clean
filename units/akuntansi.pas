unit akuntansi;

interface

uses zdataset, dialogs, controls, forms, classes, Toolwin, windows, dmun;

procedure posting(Amount: double; DebetKredit: smallint; Akun: string;
  Tgl: TDate; Ref: string; desc: string; PlusMinus: smallint);

implementation

procedure posting(Amount: double; DebetKredit: smallint; Akun: string;
  Tgl: TDate; Ref: string; desc: string; PlusMinus: smallint);
begin
  with dm.general_ledger do
  begin
    open;
    append;
    fieldbyname('gl_amount').Value := Amount * PlusMinus; // posting utk piutang
    if DebetKredit = 1 then // hasil di debet
    begin
      fieldbyname('gl_debet').Value := Amount; // piutang bertambah di debet
    end
    else
    begin
      fieldbyname('gl_kredit').Value := Amount; // piutang bertambah di debet
    end;
    fieldbyname('gl_akun').Value := Akun;
    fieldbyname('gl_tgl').Value := Tgl;
    fieldbyname('gl_ref').Value := Ref;
    fieldbyname('gl_desc').Value := desc;
    post;
  end;
end;

end.
