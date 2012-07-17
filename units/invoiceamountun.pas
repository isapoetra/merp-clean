unit invoiceamountun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Mask, DBCtrls, ComCtrls;

type
  Tinvoiceamountfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    jml: TEdit;
    Label3: TLabel;
    note: TMemo;
    Label4: TLabel;
    tgl: TDateTimePicker;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure cetakInvoice;
  public
    { Public declarations }
  end;

var
  invoiceamountfrm: Tinvoiceamountfrm;

implementation

uses dmun,strutils,db;

Procedure TInvoiceamountfrm.cetakInvoice;
var getNo                 : integer;
    dbpo                  : string;
    getMonth              : integer;
    getMonthdb            : integer;
    noPO                  : string;
    zerofill,getYear      : string;
    getyeardb             : string;
    finalmonth            : string;
begin
   getMonth := strToInt(AnsiMidStr(dateToStr(date),4,2)); //ambil digit bulan dan jadikan integer utk membandingkan bulan saat ini dgn bln pd dbase
   getYear  :=RightStr(DateToStr(date),4);
   
   if dm.invoice.FieldByName('ju_barang_sent').Value = 2 then
   begin
      messagedlg('Invoice Sudah Pernah Dicetak/Digenerate.'+#13+
      'Untuk Mencetak Ulang Invoice, Silahkan Ke Menu Penjualan->Daftar Invoice',mtWarning,[mbOk],0);
      abort;
   end else if (dm.invoice.FieldByName('ju_barang_sent').Value = null) then
   begin
      messagedlg('Tidak Bisa Mencetak Invoice! Barang Belum Dikirim.'+#13+
      'Silahkan Hubungi Bagian Delivery Untuk Mengirimkan Barang Sebelum mencetak Invoice',mtWarning,[mbOk],0);
      abort;
   end;


   with dm.tagihan do
   begin
      sql.Text := 'SELECT * FROM invoice ORDER BY in_id DESC LIMIT 1';
      open;
      dbpo       := fieldbyname('in_kode').Value;
      getMonthdb := StrToInt(AnsiMidStr(fieldbyname('in_kode').Value,11,2));  //ambil digit bulan dari database untuk ditampilkan
      getyeardb  := rightStr(dbpo,4);
      getNo      := StrToInt(LeftStr(dbpo,3))+1;


    case Length(intToStr(getNo))of
    1 :  zerofill := '00';
    2 :  zerofill := '0';
    3 :  zerofill := '';
    end;

      if length(intToStr(getmonth))=1 then
       begin
          finalmonth := '0'+intToStr(getmonth);
       end else
       begin
          finalmonth := intToStr(getmonth);
       end;

    if (getyear <> getyeardb) then
    begin
      noPO := '001/SV/IN/01/'+getYear;
    end else
    if (getmonth <> getmonthdb)  then   // bandingkan apakah bulan database tidak sama dgn bulan di tanggal system
    begin
       //showmessage('bulan di db tdk sama dgn sistem');

       
       noPO := '001'+'/'+'SV/IN/'+finalmonth+'/'+getYear;     // jika tdk sama maka sistem menganggap bulan baru
    end else if (getmonth = getmonthdb) then
    begin
      noPO := zerofill+intToStr(getNo)+'/'+'SV/IN/'+finalMonth+'/'+getYear;  // jika sama maka
    end;


  { //input ke database invoice
    if locate('in_kode_jual',dm.invoice.fieldbyname('ju_kode').Value,[loCaseInsensitive])=true then
    begin
       messagedlg('Invoice sudah pernah dicetak/dikirimkan! Lihat pada daftar Invoice terkirim.'+#13+
       'Hapus invoice bersangkutan jika ingin membuat invoice baru! ',mtWarning,[mbOK],0);
       abort;
    end;}
    
     append;           
     fieldbyname('in_kode').Value           := noPO;
     fieldbyname('in_kode_jual').Value      := dm.invoice.fieldbyname('ju_kode').Value;
     fieldbyname('in_date').Value           := tgl.Date;
     fieldbyname('in_cust_kode').Value      := dm.invoice.fieldbyname('ju_cust_kode').Value;
     fieldbyname('in_amount').Value         := dm.invoice.fieldbyname('ju_total').Value;
     fieldbyname('in_pic_id').Value         := dm.invoice.fieldbyname('ju_cust_pic').Value;
     fieldbyname('in_due').Value            := dm.invoice.fieldbyname('ju_due').Value;
     fieldbyname('in_payment_method').Value := dm.invoice.fieldbyname('ju_bayar').Value;
     fieldbyname('in_po').Value             := dm.invoice.fieldbyname('ju_po').Value;
     fieldbyname('in_tagihan').Value        := StrToFloat(jml.Text);
     fieldbyname('in_balance').Value        := dm.invoice.fieldbyname('ju_balance').Value-(StrToFloat(jml.Text));


     // cek apakah disertakan dengan ppn atau tidak
     if (dm.invoice.FieldByName('ju_ppn').Value = 'Ya') then
     begin
       fieldbyname('in_tax').Value         := (dm.invoice.fieldbyname('ju_total').Value)*10/100;
       fieldbyname('in_tagihan_tax').Value := strToFloat(jml.Text)*10/100;
     end else
     begin
       fieldbyname('in_tax').Value := 0;
       fieldbyname('in_tagihan_tax').Value := 0;
     end;
     post;
   end; // end of with   dm.tagihan


   dm.invoice.Edit;
   if dm.invoice.FieldByName('ju_barang_sent').Value = 3 then
   begin
    dm.invoice.FieldByName('ju_balance').Value     := dm.invoice.fieldbyname('ju_balance').Value-strToFloat(jml.Text);
   end;          
   dm.invoice.FieldByName('ju_barang_sent').Value := 3; // invoice sudah terkirim
   dm.invoice.Post;
   dm.invoice.ApplyUpdates;
   showmessage('Invoice sudah digenerate...');
   close;

   
end;

{$R *.dfm}

procedure Tinvoiceamountfrm.BitBtn1Click(Sender: TObject);
begin
 if messagedlg('Generate Invoice?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
 begin
  cetakInvoice;
 end;
  
end;

procedure Tinvoiceamountfrm.FormActivate(Sender: TObject);
begin
 if dm.invoice.FieldByName('ju_barang_sent').Value <> 3 then
 begin
    jml.Text := floatToStr(dm.invoice.fieldbyname('ju_downpayment').Value);
 end;

 if dm.invoice.FieldByName('ju_downpayment').Value < 1 then
 begin
  jml.Text := floatToStr(dm.invoice.fieldbyname('ju_total').Value);
 end;

end;

procedure Tinvoiceamountfrm.FormCreate(Sender: TObject);
begin
 tgl.Date := date;
end;

end.
