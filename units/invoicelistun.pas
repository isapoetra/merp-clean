unit invoicelistun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Menus, RpCon,
  RpConDS, RpBase, RpSystem, RpDefine, RpRave, DBCtrls, ImgList;

type
  Tinvoicelistfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    cari: TEdit;
    gridinv: TDBGrid;
    popinv: TPopupMenu;
    RefreshData1: TMenuItem;
    N1: TMenuItem;
    cetakinv: TMenuItem;
    N2: TMenuItem;
    InputData1: TMenuItem;
    HapusInvoice1: TMenuItem;
    N3: TMenuItem;
    Label2: TLabel;
    Label3: TLabel;
    lookcust: TDBLookupComboBox;
    ImageList1: TImageList;
    SpeedButton1: TSpeedButton;
    N5: TMenuItem;
    LihatDetail1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure RefreshData1Click(Sender: TObject);
    procedure popinvPopup(Sender: TObject);
    procedure cetakinvClick(Sender: TObject);
    procedure InputData1Click(Sender: TObject);
    procedure HapusInvoice1Click(Sender: TObject);
    procedure cariChange(Sender: TObject);
    procedure cariKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridinvKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridinvDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure lookcustClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure LihatDetail1Click(Sender: TObject);
    procedure gridinvDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure insertToDelivery;
    procedure cetakInvoice;
    procedure invoicedp;

  public
    { Public declarations }
  end;

var
  invoicelistfrm: Tinvoicelistfrm;
  pNofaktur : string;

implementation

uses dmun,fungsi_merp,db,strUtils, fakturdaninvoiceun, pajakaddun, jualun,
  invoiceamountun;

{$R *.dfm}


Procedure Tinvoicelistfrm.invoicedp;
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
     fieldbyname('in_date').Value           := date;
     fieldbyname('in_cust_kode').Value      := dm.invoice.fieldbyname('ju_cust_kode').Value;
     fieldbyname('in_amount').Value         := dm.invoice.fieldbyname('ju_total').Value;
     fieldbyname('in_pic_id').Value         := dm.invoice.fieldbyname('ju_cust_pic').Value;
     fieldbyname('in_due').Value            := dm.invoice.fieldbyname('ju_due').Value;
     fieldbyname('in_payment_method').Value := dm.invoice.fieldbyname('ju_bayar').Value;
     fieldbyname('in_po').Value             := dm.invoice.fieldbyname('ju_po').Value;
     fieldbyname('in_tagihan').Value        := dm.invoice.fieldbyname('ju_downpayment').Value;
     fieldbyname('in_balance').Value        := dm.invoice.fieldbyname('ju_balance').Value;


     // cek apakah disertakan dengan ppn atau tidak
     if (dm.invoice.FieldByName('ju_ppn').Value = 'Ya') then
     begin
       fieldbyname('in_tax').Value         := (dm.invoice.fieldbyname('ju_total').Value)*10/100;
       fieldbyname('in_tagihan_tax').Value := dm.invoice.fieldbyname('ju_downpayment').Value*10/100;
     end else
     begin
       fieldbyname('in_tax').Value := 0;
       fieldbyname('in_tagihan_tax').Value := 0;
     end;
     post;
   end; // end of with   dm.tagihan


   dm.invoice.Edit;
  { if dm.invoice.FieldByName('ju_barang_sent').Value = 3 then
   begin
    dm.invoice.FieldByName('ju_balance').Value     := dm.invoice.fieldbyname('ju_total').Value-dm.invoice.fieldbyname('ju_downpayment').Value
   end;}          
   dm.invoice.FieldByName('ju_barang_sent').Value := 3; // invoice sudah terkirim
   dm.invoice.FieldByName('ju_isdp').Value        := 0; //invoice utk dp terkirim ditandai dgn 0
   dm.invoice.Post;
   dm.invoice.ApplyUpdates;
   showmessage('Invoice sudah digenerate...');
   
end;


procedure Tinvoicelistfrm.cetakInvoice;
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

   //input ke database invoice
    if locate('in_kode_jual',dm.invoice.fieldbyname('ju_kode').Value,[loCaseInsensitive])=true then
    begin
       messagedlg('Invoice sudah pernah dicetak/dikirimkan! Lihat pada daftar Invoice terkirim.'+#13+
       'Hapus invoice bersangkutan jika ingin membuat invoice baru! ',mtWarning,[mbOK],0);
       abort;
    end;

     append;           
     fieldbyname('in_kode').Value           := noPO;
     fieldbyname('in_kode_jual').Value      := dm.invoice.fieldbyname('ju_kode').Value;
     fieldbyname('in_date').Value           := date;
     fieldbyname('in_cust_kode').Value      := dm.invoice.fieldbyname('ju_cust_kode').Value;
     fieldbyname('in_amount').Value         := dm.invoice.fieldbyname('ju_total').Value;
     fieldbyname('in_pic_id').Value         := dm.invoice.fieldbyname('ju_cust_pic').Value;
     fieldbyname('in_due').Value            := dm.invoice.fieldbyname('ju_due').Value;
     fieldbyname('in_payment_method').Value := dm.invoice.fieldbyname('ju_bayar').Value;
     fieldbyname('in_po').Value             := dm.invoice.fieldbyname('ju_po').Value;
    // fieldbyname('in_tagihan').Value        := 
     // cek apakah disertakan dengan ppn atau tidak
     if (dm.invoice.FieldByName('ju_ppn').Value = 'Ya') then
     begin
       fieldbyname('in_tax').Value := dm.invoice.fieldbyname('ju_tax').Value;
     end else
     begin
       fieldbyname('in_tax').Value := 0;
     end;
     post;
   end; // end of with   dm.tagihan


   dm.invoice.Edit;
   dm.invoice.FieldByName('ju_barang_sent').Value := 2; // invoice sudah terkirim
   dm.invoice.Post;
   dm.invoice.ApplyUpdates;
   showmessage('Invoice sudah digenerate...');

   // aktifkanform(invoicprintfrm,TInvoicprintfrm);

 {  with dm.deliveryrpt do
  begin
    sql.Text := 'select * from do where do_invoice = (:inv) '+
    'order by do_id desc limit 1 ';
    params.ParamByName('inv').Value := dm.invoice.fieldbyname('ju_kode').Value;
    open;
  end;

  rpinvoice.ProjectFile := 'invoice.rav';
  rpInvoice.SelectReport('inovice.rav',true);
  rpInvoice.Execute;   }
   
end;





procedure Tinvoicelistfrm.FormCreate(Sender: TObject);
begin
 aktifkandata(dm.invoice);
 aktifkandata(dm.customer);
// aktifkandata(dm.barang);
end;

procedure Tinvoicelistfrm.insertToDelivery;
begin
 // input ke delivery data customer
   if (dm.invoice.FieldByName('ju_barang_sent').Value = 1) or (dm.invoice.FieldByName('ju_barang_sent').Value = 2) then
   begin
      messagedlg('Barang Sudah Dikirim! Mohon cek ulang Daftar Pengiriman Barang',mtError,[mbOk],0);
      abort;
   end;

   dm.delivery.Edit;
   dm.delivery.FieldByName('do_ju_trans').Value   :=  dm.invoice.fieldbyname('ju_kode').Value;
   dm.delivery.FieldByName('do_cust_kode').Value  :=  dm.invoice.fieldbyname('ju_cust_kode').Value;
   dm.delivery.FieldByName('do_cust_pic').Value   :=  dm.invoice.fieldbyname('ju_cust_pic').Value;

  // input ke deliverydetail data barang-barang
   with dm.barangdeliver do
   begin
     sql.Text := 'select * from jualdetail where jd_kode = (:jdkd) '+
     'order by jd_id desc ';
     params.ParamByName('jdkd').Value :=  dm.invoice.fieldbyname('ju_kode').Value;
     open;

     first;
     while not eof do
     begin

      dm.deliverydetail.Append;
      dm.deliverydetail.FieldByName('dd_kode_barang').Value   := fieldbyname('jd_kd_barang').Value;
      dm.deliverydetail.FieldByName('dd_nama_barang').Value   := fieldbyname('jd_nama_barang').Value;
      dm.deliverydetail.FieldByName('dd_qty').Value           := fieldbyname('jd_qty').Value;
      dm.deliverydetail.FieldByName('dd_satuan').Value        := fieldbyname('jd_satuan').Value;
      dm.deliverydetail.FieldByName('dd_type').Value          := fieldbyname('jd_type').Value;
      dm.deliverydetail.Post;
      next;
     end;
   end;

   close;

end;

procedure Tinvoicelistfrm.RefreshData1Click(Sender: TObject);
begin
 dm.invoice.Refresh;
end;

procedure Tinvoicelistfrm.popinvPopup(Sender: TObject);
begin
 if isDelivery =1 then
 begin
   inputData1.Visible := true;
 end else
 begin
   inputData1.Visible := false;
 end;
end;

procedure Tinvoicelistfrm.cetakinvClick(Sender: TObject);
begin
if dm.invoice.FieldByName('ju_bayar').Value = 'HUTANG' then
begin
 // jika penjualan dengan dp (yg pertama kali) untuk mengenerate pembayaran down payment tdk usah masuk form pembayaran
 // ditandai dengan isdp bernilai 1
  if dm.invoice.FieldByName('ju_isdp').Value = 1 then
  begin
     invoicedp;
  end else
  begin
   aktifkanform(invoiceamountfrm,TInvoiceAmountfrm);
  end;
end else
begin
 cetakinvoice;
end;


end;

procedure Tinvoicelistfrm.InputData1Click(Sender: TObject);
begin
  insertToDelivery;
end;

procedure Tinvoicelistfrm.HapusInvoice1Click(Sender: TObject);
begin
 //semangaaaaaaaatttttt......

  if dm.invoice.FieldByName('ju_kode').Value = 'JL0000000000' then
  begin
    messagedlg('Record system, tidak bisa dihapus!',mtWarning,[mbOk],0);
    abort;
  end;

 if messagedlg('Anda Yakin akan menghapus data ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
 begin
       // hapus data di general ledger
       with dm.gl_hapus do
       begin
         sql.Text := 'select * from general_ledger where gl_ref = (:ref) ';
         params.ParamByName('ref').Value := dm.invoice.fieldbyname('ju_kode').Value;
         open;
         last;
         while not bof do
         begin
          delete;
          previous;
         end; // end of while bof
       end; // end with dm gl}

       //hapus data di tabel invoice
       with dm.invoicehapus do
       begin
         sql.Text := 'select * from invoice where in_kode_jual = (:ref) ';
         params.ParamByName('ref').Value := dm.invoice.fieldbyname('ju_kode').Value;
         open;
         last;
         while not bof do
         begin
          delete;
          previous;
         end; // end of while bof
       end;//end of dm.invoice

     // showmessage('gl hapus done!');
        with dm.jualdetailhapus do
        begin
          //close;
          sql.Text := 'select * from jualdetail where jd_kode = (:kd) ';
          params.ParamByName('kd').Value := dm.invoice.fieldbyname('ju_kode').Value;
          open;

          last;
          //showmessage('tabel jualdetail opened');
          while not bof do
          begin
           //showmessage('tabel jualdetail: '+intToStr(fieldbyname('jd_kd_barang').Value)+' dihapus ');
           aktifkandata(dm.inventoryref);
           if dm.inventoryref.Locate('in_kd_barang',fieldbyname('jd_kd_barang').Value,[loCaseInsensitive])= true then
           begin
             //showmessage('tabel INVOICE: '+intToStr(dm.inventory.fieldbyname('in_kd_barang').Value)+' dikembalikan stock');
             dm.inventoryref.Edit;
             dm.inventoryref.FieldByName('in_stock').Value := dm.inventoryref.FieldByName('in_stock').Value+fieldbyname('jd_qty').Value;
             dm.inventoryref.Post;
           end; // end if
           delete;
           previous;
          end; // end of while not eof
        refresh;  
        end; // end of jualdetail hapus

        //showmessage('judaldetail hapus done!');
         dm.invoice.Delete;
       // showmessage('invoice hapus done!');
    end;
end;

procedure Tinvoicelistfrm.cariChange(Sender: TObject);
begin
  with dm.invoice do
  begin
    sql.Text := 'select * from jual where ju_kode like (:kd) '+
    'or ju_po like (:kd) ';
    params.ParamByName('kd').Value := '%'+cari.Text+'%';
    open;
  end;
end;

procedure Tinvoicelistfrm.cariKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then insertToDelivery;
end;

procedure Tinvoicelistfrm.gridinvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=vk_return then insertToDelivery;
end;

procedure Tinvoicelistfrm.gridinvDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
  var
   grid : TDBGrid;
   row : integer;
    bitmap : TBitmap;
  FixRect : TRect;
  bmpWidth : integer;   
  imgIndex : integer;
 begin
 // membuat row zig zag
   fixRect := Rect;
   grid := sender as TDBGrid;
 
   row := grid.DataSource.DataSet.RecNo;

   if Odd(row) then
     grid.Canvas.Brush.Color := $00FEF5F1
     
   else
     grid.Canvas.Brush.Color := $00FEE2D8;

  // membuat setting selected row

    if  grid.Focused then
    begin
      if (gdSelected in State) then
      begin
        with grid.Canvas do
        begin
          Brush.Color := clHighlight;
          Font.Style := Font.Style + [fsBold];
          Font.Color := clHighlightText;
        end;
      end;
    end;
            
  // sisipkan image untuk notifikasi biar lebih jelaaas
  if (column.Field=dm.invoice.FieldByName('ju_kode')) then
  begin
    if dm.invoice.FieldByName('ju_barang_sent').Value = 1 then
    begin
      imgIndex := 0
    end else if dm.invoice.FieldByName('ju_barang_sent').Value = 2 then
    begin
     imgIndex :=1;
     end else if dm.invoice.FieldByName('ju_barang_sent').Value = 3 then
     begin
       imgIndex :=3;
    end else  imgIndex :=2;

    bitmap := TBitmap.Create;
    try
      //grab the image from the ImageList 
      //(using the "Salary" field's value)
      ImageList1.GetBitmap(imgIndex,bitmap);
      //Fix the bitmap dimensions
      bmpWidth := (Rect.Bottom - Rect.Top);
      FixRect.Right := Rect.Left + bmpWidth;
      //draw the bitmap
      grid.Canvas.StretchDraw(FixRect,bitmap);
    finally
      bitmap.Free;
    end;  // end of try

    // reset the output rectangle, 
    // add space for the graphics
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;
  end;   // end of columnfield
 
   grid.DefaultDrawColumnCell(FixRect, DataCol, Column, State) ;

 end;


procedure Tinvoicelistfrm.lookcustClick(Sender: TObject);
begin
 
 
 with dm.invoice do
 begin
   sql.Text := 'select * from jual where ju_cust_kode = (:kd) order by ju_id desc ';
   params.ParamByName('kd').Value := lookcust.KeyValue;
   open;
 end;
end;

procedure Tinvoicelistfrm.SpeedButton1Click(Sender: TObject);
begin
  with dm.invoice do
  begin
    sql.Text := 'select * from jual order by ju_id desc';
    open;
  end;
end;

procedure Tinvoicelistfrm.LihatDetail1Click(Sender: TObject);
begin
  with dm.jual do
  begin
    sql.Text := 'select * from jual where ju_kode = (:kd) ';
    params.ParamByName('kd').Value := dm.invoice.fieldbyname('ju_kode').Value;
    open;
  end;

  with dm.jualdetail do
  begin
   sql.Text := 'select * from jualdetail where jd_kode = (:jdkd) ';
   params.ParamByName('jdkd').Value := dm.invoice.fieldbyname('ju_kode').Value;
   open;
  end;

  aktifkanform(jualfrm,TJualfrm);
end;

procedure Tinvoicelistfrm.gridinvDblClick(Sender: TObject);
begin
 insertToDelivery;
end;

end.
