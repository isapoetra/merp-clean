unit dsun;

interface

uses
  SysUtils, Classes, DB;

type
  Tds = class(TDataModule)
    user: TDataSource;
    group: TDataSource;
    useradd: TDataSource;
    barang: TDataSource;
    kategori: TDataSource;
    supplier: TDataSource;
    customer: TDataSource;
    beli: TDataSource;
    supplierpic: TDataSource;
    belidetail: TDataSource;
    custpic: TDataSource;
    custpicview: TDataSource;
    polist: TDataSource;
    footnote: TDataSource;
    jual: TDataSource;
    jualdetail: TDataSource;
    gudang: TDataSource;
    inventory: TDataSource;
    invoice: TDataSource;
    orderdetail: TDataSource;
    delivery: TDataSource;
    deliverydetail: TDataSource;
    project: TDataSource;
    akun: TDataSource;
    penawaran: TDataSource;
    penawaran_detail: TDataSource;
    footnote_global: TDataSource;
    general_ledger: TDataSource;
    jobdes: TDataSource;
    karyawan: TDataSource;
    payadjustment: TDataSource;
    karyawan_detail: TDataSource;
    ptkp: TDataSource;
    bank: TDataSource;
    salary_level: TDataSource;
    dept: TDataSource;
    pph: TDataSource;
    fakturpajak: TDataSource;
    fakturpajakdetail: TDataSource;
    fakturpajakrpt: TDataSource;
    fakturpajakdetailrpt: TDataSource;
    salary: TDataSource;
    salaryleveldetail: TDataSource;
    salary_level_detail_t: TDataSource;
    salary_level_detail_k: TDataSource;
    salary_level_tambah: TDataSource;
    penguranggaji: TDataSource;
    karyawanlookup: TDataSource;
    jurnalUmumDetail: TDataSource;
    akunview: TDataSource;
    jurnalumum: TDataSource;
    deliveryview: TDataSource;
    tagihanview: TDataSource;
    fakturpajakview: TDataSource;
    jasa: TDataSource;
    wpview: TDataSource;
    pajakinsert: TDataSource;
    fakturpajaklist: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ds: Tds;

implementation

{$R *.dfm}

end.
