unit utamaun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, ComCtrls, StdCtrls, Buttons;

type
  Tutamafrm = class(TForm)
    utamamn: TMainMenu;
    File1: TMenuItem;
    UserSettings1: TMenuItem;
    GantiPassword1: TMenuItem;
    Exit1: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    StatusBar1: TStatusBar;
    Master2: TMenuItem;
    Barang2: TMenuItem;
    Supplier2: TMenuItem;
    Kategori1: TMenuItem;
    Label1: TLabel;
    Customer1: TMenuItem;
    Pembelian1: TMenuItem;
    Vendor1: TMenuItem;
    N1: TMenuItem;
    Langsung1: TMenuItem;
    Penjualan1: TMenuItem;
    Ritel1: TMenuItem;
    N2: TMenuItem;
    Gudang1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Inventory1: TMenuItem;
    StockBarang1: TMenuItem;
    ListInvoice1: TMenuItem;
    N6: TMenuItem;
    PengirimanBarang1: TMenuItem;
    N7: TMenuItem;
    BarangMasuk1: TMenuItem;
    Keuangan1: TMenuItem;
    DaftarAkun1: TMenuItem;
    Neraca1: TMenuItem;
    N5: TMenuItem;
    Langsung2: TMenuItem;
    N8: TMenuItem;
    Penawaran1: TMenuItem;
    N9: TMenuItem;
    Project1: TMenuItem;
    N10: TMenuItem;
    FootnoteQuotation1: TMenuItem;
    LabaRugi1: TMenuItem;
    GeneralLedgerBukuBesar1: TMenuItem;
    Payroll1: TMenuItem;
    MasterKaryawan1: TMenuItem;
    MasterPekerjaan1: TMenuItem;
    N11: TMenuItem;
    InputPenggajian1: TMenuItem;
    MasterLevelGaji1: TMenuItem;
    MasterPTKP1: TMenuItem;
    MasterDepartemen1: TMenuItem;
    MasterBank1: TMenuItem;
    arifPph211: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    MasterPenambahGaji1: TMenuItem;
    MasterPengurangGaji1: TMenuItem;
    LaporanPenggajian1: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    EntryJurnalUmum1: TMenuItem;
    N17: TMenuItem;
    ListDeliveryOrder1: TMenuItem;
    N18: TMenuItem;
    ListDaftarInvoice1: TMenuItem;
    pnshortcut: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    btninvoice: TSpeedButton;
    SpeedButton10: TSpeedButton;
    Bevel1: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Bevel5: TBevel;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    Label6: TLabel;
    SpeedButton14: TSpeedButton;
    pnclosebtn: TSpeedButton;
    N19: TMenuItem;
    N20: TMenuItem;
    ampilkanShortcut1: TMenuItem;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    pnshow: TPanel;
    SpeedButton17: TSpeedButton;
    btnlistjual: TSpeedButton;
    btndo: TSpeedButton;
    btndolist: TSpeedButton;
    DataClean1: TMenuItem;
    N21: TMenuItem;
    Laporan1: TMenuItem;
    Penjualan2: TMenuItem;
    N22: TMenuItem;
    Project2: TMenuItem;
    DaftarFakturPajak1: TMenuItem;
    Jasa1: TMenuItem;
    btnfaktur: TSpeedButton;
    procedure Exit1Click(Sender: TObject);
    procedure GroupSettings1Click(Sender: TObject);
    procedure UserSettings1Click(Sender: TObject);
    procedure GantiPassword1Click(Sender: TObject);
    procedure Barang2Click(Sender: TObject);
    procedure Kategori1Click(Sender: TObject);
    procedure Supplier2Click(Sender: TObject);
    procedure Customer1Click(Sender: TObject);
    procedure Vendor1Click(Sender: TObject);
    procedure Langsung1Click(Sender: TObject);
    procedure Ritel1Click(Sender: TObject);
    procedure Gudang1Click(Sender: TObject);
    procedure StockBarang1Click(Sender: TObject);
    procedure ListInvoice1Click(Sender: TObject);
    procedure BarangMasuk1Click(Sender: TObject);
    procedure PengirimanBarang1Click(Sender: TObject);
    procedure DaftarAkun1Click(Sender: TObject);
    procedure Neraca1Click(Sender: TObject);
    procedure Langsung2Click(Sender: TObject);
    procedure Project1Click(Sender: TObject);
    procedure Penawaran1Click(Sender: TObject);
    procedure FootnoteQuotation1Click(Sender: TObject);
    procedure LabaRugi1Click(Sender: TObject);
    procedure GeneralLedgerBukuBesar1Click(Sender: TObject);
    procedure MasterKaryawan1Click(Sender: TObject);
    procedure MasterPekerjaan1Click(Sender: TObject);
    procedure MasterLevelGaji1Click(Sender: TObject);
    procedure MasterPTKP1Click(Sender: TObject);
    procedure MasterDepartemen1Click(Sender: TObject);
    procedure MasterBank1Click(Sender: TObject);
    procedure arifPph211Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure InputPenggajian1Click(Sender: TObject);
    procedure MasterPenambahGaji1Click(Sender: TObject);
    procedure MasterPengurangGaji1Click(Sender: TObject);
    procedure LaporanPenggajian1Click(Sender: TObject);
    procedure EntryJurnalUmum1Click(Sender: TObject);
    procedure ListDeliveryOrder1Click(Sender: TObject);
    procedure ListDaftarInvoice1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btninvoiceClick(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure pnclosebtnClick(Sender: TObject);
    procedure ampilkanShortcut1Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure btnlistjualClick(Sender: TObject);
    procedure btndoClick(Sender: TObject);
    procedure btndolistClick(Sender: TObject);
    procedure DataClean1Click(Sender: TObject);
    procedure Penjualan2Click(Sender: TObject);
    procedure Project2Click(Sender: TObject);
    procedure DaftarFakturPajak1Click(Sender: TObject);
    procedure Jasa1Click(Sender: TObject);
    procedure btnfakturClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  utamafrm: Tutamafrm;

implementation

uses grouplistun, userlistun, passchangeun, barangmstrun,fungsi_merp,
  categorilistun, supplierun, customerun, belisupun, polistun, jualun,
  gudangun, gudangaddun, inventoryun, invoicelistun, deliveryun, akunun,
  neracaun, projectun, penawaranun, foot_globalun, labarugiun, glun,
  karyawanun, jobdesun, salary_levelun, ptkpun, deptun, bankun, pphun,
  salaryinputun, salaryleveltambahun, penguranggajiun, salaryrptun,
  jurnalumumun, dolistun, tagihanun, datacleanun, jurnalumumlistun,
  penjualanrptun, projectlapun, fakturpajakviewun, jasaun, fakturpajakun;

{$R *.dfm}

procedure Tutamafrm.Exit1Click(Sender: TObject);
begin
  if messagedlg('Keluar dari mERP?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    Application.Terminate;
  end;
end;

procedure Tutamafrm.GroupSettings1Click(Sender: TObject);
begin
  if groupfrm = nil then
 begin
   application.CreateForm(Tgroupfrm,groupfrm);
   groupfrm.Show;
 end else
 begin
  groupfrm.show;
 end;

end;

procedure Tutamafrm.UserSettings1Click(Sender: TObject);
begin
 if userlistfrm = nil then
 begin
   application.createform(TUserlistFrm,UserListfrm);
   userlistfrm.Show;
 end else
 begin
      userlistfrm.Show;
 end;

end;

procedure Tutamafrm.GantiPassword1Click(Sender: TObject);
begin
  if passchangefrm=nil then
  begin
     application.CreateForm(TPasschangefrm,PassChangefrm);
     passchangefrm.ShowModal;
  end else
  begin
    passchangefrm.ShowModal;
  end;
end;

procedure Tutamafrm.Barang2Click(Sender: TObject);
begin
  if barangmstrfrm = nil then
  begin
     application.CreateForm(TBarangMstrFrm,BarangMstrFrm);
     barangmstrfrm.showmodal;
  end else
  begin
     barangmstrfrm.showmodal;
  end;

end;

procedure Tutamafrm.Kategori1Click(Sender: TObject);
begin
  aktifkanform(kategorifrm,TKategorifrm);
end;

procedure Tutamafrm.Supplier2Click(Sender: TObject);
begin
 aktifkanform(supplierfrm,TSupplierFrm);
end;

procedure Tutamafrm.Customer1Click(Sender: TObject);
begin
  aktifkanform(CustomerFrm,TCustomerFrm);
end;

procedure Tutamafrm.Vendor1Click(Sender: TObject);
begin
  isBeliLangsung :=0;
  aktifkanform(belisupfrm,TBeliSupFrm);
end;

procedure Tutamafrm.Langsung1Click(Sender: TObject);
begin
  aktifkanform(polistfrm,TPOListfrm);
end;

procedure Tutamafrm.Ritel1Click(Sender: TObject);
begin
   isJual := 1;
   aktifkanform(jualfrm,TJualfrm);
end;

procedure Tutamafrm.Gudang1Click(Sender: TObject);
begin
  aktifkanform(gudangfrm,TGudangfrm);
end;

procedure Tutamafrm.StockBarang1Click(Sender: TObject);
begin
  aktifkanform(inventoryfrm,TInventoryfrm);
end;

procedure Tutamafrm.ListInvoice1Click(Sender: TObject);
begin
 aktifkanform(invoicelistfrm,TInvoiceListfrm);
end;

procedure Tutamafrm.BarangMasuk1Click(Sender: TObject);
begin
  isInventory :=1;
  aktifkanform(polistfrm,TPolistfrm);

end;

procedure Tutamafrm.PengirimanBarang1Click(Sender: TObject);
begin
  aktifkanform(deliveryfrm,TDeliveryfrm);
end;

procedure Tutamafrm.DaftarAkun1Click(Sender: TObject);
begin
  aktifkanform(akunfrm,TAkunfrm);
end;

procedure Tutamafrm.Neraca1Click(Sender: TObject);
begin
 aktifkanform(neracafrm,TNeracafrm);
end;

procedure Tutamafrm.Langsung2Click(Sender: TObject);
begin
 isBeliLangsung := 1;
   aktifkanform(belisupfrm,TBeliSupFrm);
end;

procedure Tutamafrm.Project1Click(Sender: TObject);
begin
 aktifkanform(projectfrm,TProjectfrm);
end;

procedure Tutamafrm.Penawaran1Click(Sender: TObject);
begin
  isPenawaran :=1;
  aktifkanform(penawaranfrm,TPenawaranfrm);
end;

procedure Tutamafrm.FootnoteQuotation1Click(Sender: TObject);
begin
 aktifkanform(footnote_globalfrm,TFootnote_globalfrm);
end;

procedure Tutamafrm.LabaRugi1Click(Sender: TObject);
begin
  aktifkanform(labarugifrm,TLabaRugifrm);
end;

procedure Tutamafrm.GeneralLedgerBukuBesar1Click(Sender: TObject);
begin
  aktifkanform(glfrm,TGlfrm);
end;

procedure Tutamafrm.MasterKaryawan1Click(Sender: TObject);
begin
 aktifkanform(karyawanfrm,TKaryawanfrm);
end;

procedure Tutamafrm.MasterPekerjaan1Click(Sender: TObject);
begin
 aktifkanform(jobdesfrm,tjobdesfrm);
end;

procedure Tutamafrm.MasterLevelGaji1Click(Sender: TObject);
begin
  aktifkanform(salarylevelfrm,TSalaryLevelfrm);
end;

procedure Tutamafrm.MasterPTKP1Click(Sender: TObject);
begin
 aktifkanform(ptkpfrm,Tptkpfrm);
end;

procedure Tutamafrm.MasterDepartemen1Click(Sender: TObject);
begin
 aktifkanform(deptfrm,TDeptfrm);
end;

procedure Tutamafrm.MasterBank1Click(Sender: TObject);
begin
 aktifkanform(bankfrm,Tbankfrm);
end;

procedure Tutamafrm.arifPph211Click(Sender: TObject);
begin
 aktifkanform(pphfrm,Tpphfrm);
end;

procedure Tutamafrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if messagedlg('Yakin keluar dari mERP ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
 begin
 application.Terminate;
 end else
 begin
   abort;
 end;
end;

procedure Tutamafrm.InputPenggajian1Click(Sender: TObject);
begin
  aktifkanform(salaryinputfrm,TSalaryinputfrm);
end;

procedure Tutamafrm.MasterPenambahGaji1Click(Sender: TObject);
begin
 aktifkanform(salaryleveltambahfrm,TSalaryLevelTambahfrm);
end;

procedure Tutamafrm.MasterPengurangGaji1Click(Sender: TObject);
begin
  aktifkanform(pengurangGajifrm,TPengurangGajifrm);
end;

procedure Tutamafrm.LaporanPenggajian1Click(Sender: TObject);
begin
  aktifkanform(salaryrptfrm,TSalaryrptfrm);
end;

procedure Tutamafrm.EntryJurnalUmum1Click(Sender: TObject);
begin
 aktifkanform(jurnalUmumfrm,TJurnalUmumfrm);
end;

procedure Tutamafrm.ListDeliveryOrder1Click(Sender: TObject);
begin
  aktifkanform(dolistfrm,TDolistfrm);
end;

procedure Tutamafrm.ListDaftarInvoice1Click(Sender: TObject);
begin

 aktifkanform(tagihanfrm,TTagihanfrm);
end;

procedure Tutamafrm.SpeedButton3Click(Sender: TObject);
begin
 aktifkanform(supplierfrm,Tsupplierfrm);
end;

procedure Tutamafrm.SpeedButton4Click(Sender: TObject);
begin
  aktifkanform(CustomerFrm,TCustomerFrm);
end;

procedure Tutamafrm.SpeedButton2Click(Sender: TObject);
begin
 aktifkanform(barangmstrfrm,Tbarangmstrfrm);
end;

procedure Tutamafrm.SpeedButton5Click(Sender: TObject);
begin
  aktifkanform(inventoryfrm,TInventoryfrm);
end;

procedure Tutamafrm.SpeedButton6Click(Sender: TObject);
begin
  isInventory :=1;
  aktifkanform(polistfrm,TPolistfrm);
end;

procedure Tutamafrm.SpeedButton7Click(Sender: TObject);
begin
  isBeliLangsung :=0;
  aktifkanform(belisupfrm,TBeliSupFrm);
end;

procedure Tutamafrm.SpeedButton8Click(Sender: TObject);
begin
  aktifkanform(polistfrm,TPOListfrm);
end;

procedure Tutamafrm.SpeedButton1Click(Sender: TObject);
begin
 isJual := 1;
 aktifkanform(jualfrm,TJualfrm);
end;

procedure Tutamafrm.btninvoiceClick(Sender: TObject);
begin
  aktifkanform(tagihanfrm,TTagihanfrm);
end;

procedure Tutamafrm.SpeedButton13Click(Sender: TObject);
begin
  aktifkanform(jurnalUmumListfrm,TJurnalUmumListfrm);
end;

procedure Tutamafrm.SpeedButton11Click(Sender: TObject);
begin
   aktifkanform(akunfrm,TAkunfrm);
end;

procedure Tutamafrm.SpeedButton12Click(Sender: TObject);
begin
  aktifkanform(glfrm,TGlfrm);
end;

procedure Tutamafrm.pnclosebtnClick(Sender: TObject);
begin
  pnshow.Visible := true;
  pnshortcut.Visible := false;
end;

procedure Tutamafrm.ampilkanShortcut1Click(Sender: TObject);
begin
 pnshortcut.Visible := true;
end;

procedure Tutamafrm.SpeedButton17Click(Sender: TObject);
begin
 pnshortcut.Visible := true;
 pnshow.Visible := false;
end;

procedure Tutamafrm.btnlistjualClick(Sender: TObject);
begin
 aktifkanform(invoicelistfrm,TInvoiceListfrm);
end;

procedure Tutamafrm.btndoClick(Sender: TObject);
begin
 aktifkanform(deliveryfrm,TDeliveryfrm);
end;

procedure Tutamafrm.btndolistClick(Sender: TObject);
begin
   aktifkanform(dolistfrm,TDolistfrm);
end;

procedure Tutamafrm.DataClean1Click(Sender: TObject);
begin
  if messagedlg('Yakin Akan melakukan data Clean? Prosedure ini hanya untuk '+#13+
  'Super User yang akan mengakibatkan data transaksi penjualan/pembelian serta seluruh '+#13+
  'Data yang terkait akan dihapus!',mtWarning,[mbYes,mbNo],1) = mrYes then
  begin
    aktifkanform(dataCleanfrm,TDataCleanfrm);
  end;
end;

procedure Tutamafrm.Penjualan2Click(Sender: TObject);
begin
 aktifkanform(jualrptfrm,TJualRptfrm);
end;

procedure Tutamafrm.Project2Click(Sender: TObject);
begin
  aktifkanform(projectlapfrm,TProjectlapfrm);
end;

procedure Tutamafrm.DaftarFakturPajak1Click(Sender: TObject);
begin
 //aktifkanform(fakturpajakviewfrm,TFakturPajakViewfrm);
  aktifkanform(fakturpajakfrm,TFakturPajakfrm);
end;

procedure Tutamafrm.Jasa1Click(Sender: TObject);
begin
 aktifkanform(Jasafrm,TJasafrm);
end;

procedure Tutamafrm.btnfakturClick(Sender: TObject);
begin
  aktifkanform(fakturpajakfrm,TFakturPajakfrm);
end;

end.
