unit belisupun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids, Mask, DBCtrls,
  RpCon, RpConDS, RpBase, RpSystem, RpDefine, RpRave, ComCtrls;

type
  Tbelisupfrm = class(TForm)
    Panel1: TPanel;
    title: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel3: TPanel;
    btntambah: TSpeedButton;
    btnsimpan: TSpeedButton;
    btnbatal: TSpeedButton;
    pnheader: TPanel;
    Panel6: TPanel;
    po: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    looksupp: TDBLookupComboBox;
    SpeedButton6: TSpeedButton;
    Label4: TLabel;
    lookpic: TDBLookupComboBox;
    SpeedButton3: TSpeedButton;
    rpPO: TRvProject;
    RvSystem1: TRvSystem;
    rdbeli: TRvDataSetConnection;
    rdbelidetail: TRvDataSetConnection;
    rdsupplierpic: TRvDataSetConnection;
    rdsupplier: TRvDataSetConnection;
    dbtgl: TDBEdit;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    griditem: TDBGrid;
    Label6: TLabel;
    dbdue: TDBEdit;
    SpeedButton2: TSpeedButton;
    rdfootnote: TRvDataSetConnection;
    rdCustomer: TRvDataSetConnection;
    rdcustpic: TRvDataSetConnection;
    Label7: TLabel;
    lookbayar: TDBComboBox;
    dbisbelilsg: TDBEdit;
    Label8: TLabel;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    SpeedButton4: TSpeedButton;
    rdbarangbelimstr: TRvDataSetConnection;
    procedure btntambahClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure looksuppClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure gridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridEnter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure griditemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
    procedure generatePO;
    procedure getFootnote;
    procedure prosesAkunting;
  public
    { Public declarations }
  end;

var
  belisupfrm: Tbelisupfrm;

implementation

uses dmun,fungsi_merp,strutils, supplierun, barangviewun, custandcpun,
     calendarun, projectun;
{$R *.dfm}

procedure Tbelisupfrm.prosesAkunting;
var total : double;
    tax : double;
begin
 total :=0;
 // jumlahkan total transaksi
 with dm.belidetail do
 begin
   first;
   while not eof do
   begin
     total := total+fieldbyname('bd_total').Value;
     next;
   end;
 end;
    

  aktifkandata(dm.general_ledger);
  // input ke neraca
  with dm.general_ledger do
  begin

   IF lookbayar.ItemIndex = 0 THEN  // pembelian hutang
   BEGIN
     //tambahkan ke akun hutang lancar
    append;
    fieldbyname('gl_akun').Value   := '210-20';  // akun hutang usaha
    fieldbyname('gl_amount').Value := total;
    fieldbyname('gl_kredit').Value := total;   // hutang bertambah di kredit
    fieldbyname('gl_ref').Value    := po.Text;
    fieldbyname('gl_tgl').Value    := StrToDate(dbtgl.Text);
    fieldbyname('gl_desc').Value   := 'Pembelian,'+looksupp.Text;
    post;
   END ELSE
   BEGIN
    // jika pembelian cash
    append;
    fieldbyname('gl_akun').Value   := '110-20'; // akun kas
    fieldbyname('gl_amount').Value := total*-1;
    fieldbyname('gl_kredit').Value := total;   // kas berkurang di kredit
    fieldbyname('gl_ref').Value    := po.Text;
    fieldbyname('gl_tgl').Value    := StrToDate(dbtgl.Text);
    fieldbyname('gl_desc').Value   := 'Pembelian,'+looksupp.Text;
    post;
   END;

     // tambahkan ke akun persediaan
    append;
    fieldbyname('gl_akun').Value   := '140-10';   // akun persediaan
    fieldbyname('gl_amount').Value := total;
    fieldbyname('gl_debet').Value  := total;  // persediaan bertambah di debet
    fieldbyname('gl_ref').Value    := po.Text;
    fieldbyname('gl_tgl').Value    := StrToDate(dbtgl.Text);
    fieldbyname('gl_desc').Value   := 'Pembelian,'+looksupp.Text;
    post;          
    
    applyupdates;
  end;
end;

procedure Tbelisupfrm.getFootnote;
begin
   with dm.footnote do
   begin
     sql.Text := 'select * from foot_note where fn_supplier_id = (:spid) ';
     params.ParamByName('spid').AsString := dm.beli.fieldbyname('be_supplier_id').AsString;
     open; 
   end;
end;

procedure Tbelisupfrm.generatePO;
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
   with dm.beli do
   begin
      if isBeliLangsung=0 then
      begin
        sql.Text := 'SELECT * FROM beli where be_islangsung=0 ORDER BY be_id DESC LIMIT 1';
        open;
      end else if isBeliLangsung=1 then
      begin
         sql.Text := 'SELECT * FROM beli where be_islangsung=1 ORDER BY be_id DESC LIMIT 1';
         open;
      end;

      dbpo       := fieldbyname('be_kode').Value;
      getMonthdb := StrToInt(AnsiMidStr(fieldbyname('be_kode').Value,11,2));  //ambil digit bulan dari database untuk ditampilkan
      getyeardb  := rightStr(dbpo,4);
      getNo      := StrToInt(LeftStr(dbpo,3))+1;
   end;

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

  IF isBeliLangsung=0 THEN
  BEGIN
    if (getyear <> getyeardb) then
    begin
      noPO := '001/SV/PO/01/'+getYear;
    end else
    if (getmonth <> getmonthdb)  then   // bandingkan apakah bulan database tidak sama dgn bulan di tanggal system
    begin
       //showmessage('bulan di db tdk sama dgn sistem');


       noPO := '001'+'/'+'SV/PO/'+finalmonth+'/'+getYear;     // jika tdk sama maka sistem menganggap bulan baru
    end else if (getmonth = getmonthdb) then
    begin
      noPO := zerofill+intToStr(getNo)+'/'+'SV/PO/'+finalMonth+'/'+getYear;  // jika sama maka
    end;
  END;

  IF isBeliLangsung=1 THEN
  BEGIN
    if (getyear <> getyeardb) then
    begin
      noPO := '001/SV/CA/01/'+getYear;
    end else
    if (getmonth <> getmonthdb)  then   // bandingkan apakah bulan database tidak sama dgn bulan di tanggal system
    begin
       //showmessage('bulan di db tdk sama dgn sistem');


       noPO := '001'+'/'+'SV/CA/'+finalmonth+'/'+getYear;     // jika tdk sama maka sistem menganggap bulan baru
    end else if (getmonth = getmonthdb) then
    begin
      noPO := zerofill+intToStr(getNo)+'/'+'SV/CA/'+finalMonth+'/'+getYear;  // jika sama maka
    end;

  END;

    dm.beli.Append;
    dm.belidetail.Append;

    if isBeliLangsung=1 then
    begin
    dbisbelilsg.Text := '1';
    end else
    begin
     dbisbelilsg.Text := '0';
    end;

    dbtgl.Text := dateToStr(date);
    po.Text := noPO;
    dm.beli.Post;
end;

procedure Tbelisupfrm.btntambahClick(Sender: TObject);
begin
   pnheader.Enabled := true;
  griditem.Enabled := true;
  btnsimpan.Visible := true;
  btnbatal.Visible  := true;
  dbtgl.Enabled := false;
  generatePO;
end;

procedure Tbelisupfrm.btnsimpanClick(Sender: TObject);
begin
if messagedlg('Simpan Record?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
begin
  if lookbayar.ItemIndex = -1 then
  begin
    messagedlg('tipe Pembayaran harap diisi!',mtWarning,[mbOk],0);
    lookbayar.SetFocus;
    abort;
  end;

  prosesakunting;
  getFootnote;
  dm.beli.ApplyUpdates;
 // dm.belidetail.Post;
  dm.belidetail.ApplyUpdates;
  btnsimpan.Visible := false;
  btnbatal.Visible  := false;
  pnheader.Enabled := false;
  griditem.Enabled := false;
  rpPo.ProjectFile := 'po.rav';
  rpPo.SelectReport('po.rav',true);
  rpPo.Execute;
end;  
end;

procedure Tbelisupfrm.FormCreate(Sender: TObject);
begin
 aktifkandata(dm.beli);
 aktifkandata(dm.belidetail);
 aktifkandata(dm.supplier);
 aktifkandata(dm.supplierpic);
 aktifkandata(dm.project);
end;

procedure Tbelisupfrm.SpeedButton6Click(Sender: TObject);
begin
  aktifkanform(supplierfrm,TSupplierfrm);
end;

procedure Tbelisupfrm.looksuppClick(Sender: TObject);
begin
  with dm.supplierpic do
  begin
    sql.Text := 'SELECT * FROM supplier_pic WHERE sp_supplier = '+intToStr(looksupp.KeyValue);
    open;
  end;
end;

procedure Tbelisupfrm.btnbatalClick(Sender: TObject);
begin
  batal(dm.beli);
  dm.belidetail.CancelUpdates;
  btnbatal.Visible := false;
  btnsimpan.Visible := false;
   pnheader.Enabled := false;
  griditem.Enabled := false;
end;

procedure Tbelisupfrm.gridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if key=vk_delete then hapus(dm.belidetail);

  if (key=vk_return)   and (griditem.SelectedField.FieldName='bd_sendto_nama'  ) then
  begin
    aktifkanform(custncpfrm,TCustncpfrm);
   // aktifkanform(barangviewfrm,TBarangViewFrm);
  end else

  if (key=vk_return) and  (griditem.SelectedField.FieldName<>'bd_sendto_nama' ) then
  begin
     aktifkanform(barangviewfrm,TBarangViewfrm);
  end;
  exit;
end;

procedure Tbelisupfrm.gridEnter(Sender: TObject);
begin
// dm.beli.Post;
end;

procedure Tbelisupfrm.SpeedButton1Click(Sender: TObject);
begin
 dbtgl.Enabled := true;
end;

procedure Tbelisupfrm.griditemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_delete then hapus(dm.belidetail);

  if (key=vk_return)   and (griditem.SelectedField.FieldName='bd_sendto_nama'  ) then
  begin
    aktifkanform(custncpfrm,TCustncpfrm);
   // aktifkanform(barangviewfrm,TBarangViewFrm);
  end else

  if (key=vk_return) and  (griditem.SelectedField.FieldName<>'bd_sendto_nama' ) then
  begin
     aktifkanform(barangviewfrm,TBarangViewfrm);
  end;
  exit;
end;

procedure Tbelisupfrm.SpeedButton2Click(Sender: TObject);
begin
  aktifkanform(calendarfrm,TCAlendarfrm);
end;

procedure Tbelisupfrm.FormActivate(Sender: TObject);
begin
  if isBeliLangsung=0 then
  begin
    title.Caption :=' Pembelian via Supplier ';
  end else
  begin
   title.Caption :=' Pembelian Langsung ';
  end;
end;

procedure Tbelisupfrm.SpeedButton4Click(Sender: TObject);
begin
  aktifkanform(projectfrm,tprojectfrm);
end;

end.
