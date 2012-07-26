unit dmun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, DBCtrls, Buttons, ComCtrls, ZConnection,
  DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, Vcl.ImgList, ZAbstractTable;

type
  Tdm = class(TDataModule)
    conerp: TZConnection;
    group: TZQuery;
    useradd: TZQuery;
    StringField1: TWideStringField;
    StringField2: TWideStringField;
    StringField3: TWideStringField;
    StringField4: TWideStringField;
    StringField5: TWideStringField;
    StringField6: TWideStringField;
    barang: TZQuery;
    kategori: TZQuery;
    vendor: TZQuery;
    supplier: TZQuery;
    customer: TZQuery;
    beli: TZQuery;
    supplierpic: TZQuery;
    belidetail: TZQuery;
    custpic: TZQuery;
    custpicview: TZReadOnlyQuery;
    polistn: TZReadOnlyQuery;
    footnote: TZQuery;
    polistnbe_id: TIntegerField;
    polistnbe_kode: TWideStringField;
    polistnbe_tgl: TDateField;
    polistnbe_due: TDateField;
    polistnSupplier: TWideStringField;
    polistnbe_supplier_id: TIntegerField;
    polistnbe_pic: TIntegerField;
    jual: TZQuery;
    jualdetail: TZQuery;
    gudang: TZQuery;
    inventory: TZQuery;
    polistnbe_post: TSmallintField;
    polist: TZQuery;
    jualdetailjd_kode: TWideStringField;
    jualdetailjd_tgl: TDateField;
    jualdetailjd_kd_barang: TIntegerField;
    jualdetailjd_nama_barang: TWideStringField;
    jualdetailjd_qty: TIntegerField;
    jualdetailjd_harga_pokok: TFloatField;
    jualdetailjd_harga_jual: TFloatField;
    jualdetailjd_disc_persen: TSmallintField;
    jualdetailjd_total: TFloatField;
    jualdetailjd_discrp: TFloatField;
    jualju_kode: TWideStringField;
    jualju_tgl: TDateField;
    jualju_cust_id: TIntegerField;
    jualju_cust_pic: TIntegerField;
    jualju_due: TDateField;
    jualju_bayar: TWideStringField;
    jualju_po: TWideStringField;
    jualdetailjd_margin: TFloatField;
    invoice: TZQuery;
    invoiceju_kode: TWideStringField;
    invoiceju_tgl: TDateField;
    invoiceju_cust_id: TIntegerField;
    invoiceju_cust_pic: TIntegerField;
    invoiceju_due: TDateField;
    invoiceju_bayar: TWideStringField;
    invoiceju_po: TWideStringField;
    invoiceCustomer: TWideStringField;
    invoicePIC: TWideStringField;
    orderdetail: TZQuery;
    StringField7: TWideStringField;
    StringField8: TWideStringField;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField9: TWideStringField;
    DateField1: TDateField;
    StringField10: TWideStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    delivery: TZQuery;
    deliverydetail: TZQuery;
    barangdeliver: TZReadOnlyQuery;
    jualdetailjd_satuan: TWideStringField;
    project: TZQuery;
    jualju_project: TIntegerField;
    akun: TZQuery;
    akunak_no: TWideStringField;
    akunak_desc: TWideStringField;
    akunak_subclass: TSmallintField;
    akunak_class_id: TSmallintField;
    akun_klas: TZQuery;
    akun_subklas: TZQuery;
    akunklas: TWideStringField;
    akunsubklas: TWideStringField;
    neraca: TZQuery;
    deliveryrpt: TZQuery;
    barangrpt: TZQuery;
    jualju_total: TFloatField;
    jualju_tax: TFloatField;
    jualju_akun: TWideStringField;
    invoiceju_lunas: TSmallintField;
    invoiceju_project: TIntegerField;
    invoiceju_total: TFloatField;
    invoiceju_tax: TFloatField;
    invoiceju_akun: TWideStringField;
    invoicedetail: TZQuery;
    StringField11: TWideStringField;
    DateField2: TDateField;
    IntegerField5: TIntegerField;
    StringField12: TWideStringField;
    IntegerField6: TIntegerField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    SmallintField1: TSmallintField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    StringField13: TWideStringField;
    kasneraca: TZQuery;
    penawaran: TZQuery;
    inventory_post: TZQuery;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    SmallintField2: TSmallintField;
    IntegerField9: TIntegerField;
    FloatField8: TFloatField;
    StringField14: TWideStringField;
    StringField15: TWideStringField;
    StringField16: TWideStringField;
    StringField17: TWideStringField;
    penawaranqt_kode: TWideStringField;
    penawaranqt_date: TDateField;
    penawaranqt_up_id: TIntegerField;
    penawaranqt_pic: TWideStringField;
    penawaranqt_project_id: TIntegerField;
    penawaranqt_cust_id: TIntegerField;
    penawaran_detail: TZQuery;
    penawaran_detailqd_kode: TWideStringField;
    penawaran_detailqd_kd_barang: TIntegerField;
    penawaran_detailqd_nama_barang: TWideStringField;
    penawaran_detailqd_type: TWideStringField;
    penawaran_detailqd_unit: TWideStringField;
    penawaran_detailqd_qty: TSmallintField;
    penawaran_detailqd_harga: TFloatField;
    penawaran_detailqd_total: TFloatField;
    penawaran_detailqd_tgl: TDateField;
    footnote_global: TZQuery;
    sedianeraca: TZQuery;
    hutangneraca: TZQuery;
    general_ledger: TZQuery;
    glkas: TZQuery;
    bd_inventory: TZQuery;
    StringField24: TWideStringField;
    StringField25: TWideStringField;
    IntegerField10: TIntegerField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    StringField26: TWideStringField;
    DateField5: TDateField;
    StringField27: TWideStringField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    glpiutang: TZQuery;
    IntegerField14: TIntegerField;
    StringField28: TWideStringField;
    FloatField17: TFloatField;
    DateField6: TDateField;
    IntegerField15: TIntegerField;
    StringField29: TWideStringField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    StringField30: TWideStringField;
    glpersediaan: TZQuery;
    glhutangusaha: TZQuery;
    glhutangpp: TZQuery;
    IntegerField20: TIntegerField;
    StringField37: TWideStringField;
    FloatField26: TFloatField;
    DateField9: TDateField;
    IntegerField21: TIntegerField;
    StringField38: TWideStringField;
    FloatField27: TFloatField;
    FloatField28: TFloatField;
    StringField39: TWideStringField;
    gljualproduk: TZQuery;
    IntegerField22: TIntegerField;
    StringField40: TWideStringField;
    FloatField29: TFloatField;
    DateField10: TDateField;
    IntegerField23: TIntegerField;
    StringField41: TWideStringField;
    FloatField30: TFloatField;
    FloatField31: TFloatField;
    StringField42: TWideStringField;
    glbiaya: TZQuery;
    IntegerField24: TIntegerField;
    StringField43: TWideStringField;
    FloatField32: TFloatField;
    DateField11: TDateField;
    IntegerField25: TIntegerField;
    StringField44: TWideStringField;
    FloatField33: TFloatField;
    FloatField34: TFloatField;
    StringField45: TWideStringField;
    kasneracagl_id: TIntegerField;
    kasneracagl_akun: TWideStringField;
    kasneracagl_amount: TFloatField;
    kasneracagl_tgl: TDateField;
    kasneracagl_tran_id: TIntegerField;
    kasneracagl_desc: TWideStringField;
    kasneracagl_debet: TFloatField;
    kasneracagl_kredit: TFloatField;
    kasneracagl_ref: TWideStringField;
    sedianeracagl_id: TIntegerField;
    sedianeracagl_akun: TWideStringField;
    sedianeracagl_amount: TFloatField;
    sedianeracagl_tgl: TDateField;
    sedianeracagl_tran_id: TIntegerField;
    sedianeracagl_desc: TWideStringField;
    sedianeracagl_debet: TFloatField;
    sedianeracagl_kredit: TFloatField;
    sedianeracagl_ref: TWideStringField;
    piutangneraca: TZQuery;
    IntegerField26: TIntegerField;
    StringField18: TWideStringField;
    FloatField9: TFloatField;
    DateField3: TDateField;
    IntegerField27: TIntegerField;
    StringField19: TWideStringField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    StringField20: TWideStringField;
    hartatotalneraca: TZQuery;
    IntegerField28: TIntegerField;
    StringField21: TWideStringField;
    FloatField12: TFloatField;
    DateField4: TDateField;
    IntegerField29: TIntegerField;
    StringField22: TWideStringField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    StringField23: TWideStringField;
    hutangpajakjual: TZQuery;
    IntegerField30: TIntegerField;
    StringField46: TWideStringField;
    FloatField35: TFloatField;
    DateField12: TDateField;
    IntegerField31: TIntegerField;
    StringField47: TWideStringField;
    FloatField36: TFloatField;
    FloatField37: TFloatField;
    StringField48: TWideStringField;
    chartofaccount: TZQuery;
    hutangneracagl_akun: TWideStringField;
    hutangneracatotalhutang: TFloatField;
    labaneraca: TZQuery;
    labaneracagl_akun: TWideStringField;
    labaneracadebet: TFloatField;
    labaneracakredit: TFloatField;
    modalneraca: TZQuery;
    modalneracagl_akun: TWideStringField;
    modalneracatotalmodal: TFloatField;
    gl: TZQuery;
    pendapatanlr: TZQuery;
    biayalr: TZQuery;
    biayaoprlr: TZQuery;
    pendapatanlainlr: TZQuery;
    pengeluaranlainlr: TZQuery;
    coalr: TZQuery;
    pendapatanlrgl_akun: TWideStringField;
    pendapatanlrpndptntotal: TFloatField;
    biayaoprlrgl_akun: TWideStringField;
    biayaoprlrgl_amount: TFloatField;
    biayalrgl_akun: TWideStringField;
    biayalrgl_amount: TFloatField;
    pendapatanlainlrgl_akun: TWideStringField;
    pendapatanlainlrgl_amount: TFloatField;
    pengeluaranlainlrgl_akun: TWideStringField;
    pengeluaranlainlrgl_amount: TFloatField;
    jobdes: TZQuery;
    karyawan: TZQuery;
    karyawankr_id: TIntegerField;
    karyawankr_no_induk: TWideStringField;
    karyawankr_firstname: TWideStringField;
    karyawankr_lastname: TWideStringField;
    karyawankr_jd_id: TIntegerField;
    karyawankr_basic: TFloatField;
    karyawankr_dateofbirth: TDateField;
    karyawankr_maritalstatus: TWideStringField;
    karyawankr_phone: TWideStringField;
    karyawankr_email: TWideStringField;
    karyawankr_address: TWideStringField;
    karyawankr_city: TWideStringField;
    karyawankr_placeofbirth: TWideStringField;
    karyawankr_jk: TWideStringField;
    karyawankr_workingstart: TDateField;
    payadjustment: TZQuery;
    payadjustmentpa_amount: TFloatField;
    payadjustmentpa_comment: TWideStringField;
    payadjustmentpa_add_or_deduct: TWideStringField;
    payadjustmentpa_item: TWideStringField;
    payadjustmentpa_percentage: TSmallintField;
    karyawan_detail: TZQuery;
    ptkp: TZQuery;
    karyawan_detailkd_kr_id: TIntegerField;
    karyawan_detailkd_tgl_mulaikerja: TDateField;
    karyawan_detailkd_tgl_berhentikerja: TDateField;
    karyawan_detailkd_dp_id: TIntegerField;
    karyawan_detailkd_jb_id: TIntegerField;
    karyawan_detailkd_cash_transfer: TWideStringField;
    karyawan_detailkd_ba_id: TIntegerField;
    karyawan_detailkd_norek: TWideStringField;
    karyawan_detailkd_limit_pinjaman: TFloatField;
    karyawan_detailkd_aktif: TSmallintField;
    karyawan_detailkd_pt_id: TSmallintField;
    karyawan_detailkd_npwp: TWideStringField;
    karyawan_detailkd_tgl_npwp: TDateField;
    dept: TZQuery;
    salary_level: TZQuery;
    karyawan_detailkd_sl_id: TIntegerField;
    jobdesjd_id: TIntegerField;
    jobdesjd_nama: TWideStringField;
    jobdesjd_description: TWideStringField;
    bank: TZQuery;
    salary_levelsl_name: TWideStringField;
    salary_levelsl_amount: TFloatField;
    salary_levelsl_id: TIntegerField;
    karyawan_detailkd_no_induk: TWideStringField;
    ptkppt_id: TIntegerField;
    ptkppt_kode: TWideStringField;
    ptkppt_nama: TWideStringField;
    ptkppt_nilaipertahun: TFloatField;
    pph: TZQuery;
    pphph_id: TIntegerField;
    pphph_level: TWideStringField;
    pphpp_penghasilan: TFloatField;
    pphpp_tarif: TSmallintField;
    salary_levelsl_kode: TWideStringField;
    gl_hapus: TZQuery;
    IntegerField32: TIntegerField;
    StringField49: TWideStringField;
    FloatField38: TFloatField;
    DateField13: TDateField;
    IntegerField33: TIntegerField;
    StringField50: TWideStringField;
    FloatField39: TFloatField;
    FloatField40: TFloatField;
    StringField51: TWideStringField;
    jualdetailhapus: TZQuery;
    StringField52: TWideStringField;
    DateField14: TDateField;
    IntegerField34: TIntegerField;
    StringField53: TWideStringField;
    IntegerField35: TIntegerField;
    FloatField41: TFloatField;
    FloatField42: TFloatField;
    SmallintField3: TSmallintField;
    FloatField43: TFloatField;
    FloatField44: TFloatField;
    FloatField45: TFloatField;
    StringField54: TWideStringField;
    belidetailhapus: TZQuery;
    StringField55: TWideStringField;
    StringField56: TWideStringField;
    IntegerField36: TIntegerField;
    FloatField46: TFloatField;
    FloatField47: TFloatField;
    StringField57: TWideStringField;
    DateField15: TDateField;
    StringField58: TWideStringField;
    IntegerField37: TIntegerField;
    IntegerField38: TIntegerField;
    IntegerField39: TIntegerField;
    fakturpajak: TZQuery;
    fakturpajakdetail: TZQuery;
    fakturpajakrpt: TZQuery;
    fakturpajakdetailrpt: TZQuery;
    wp: TZQuery;
    barangpajakrpt: TZQuery;
    fakturpajakdetailrptfd_id: TIntegerField;
    fakturpajakdetailrptfd_kode: TWideStringField;
    fakturpajakdetailrptfd_kd_barang: TIntegerField;
    fakturpajakdetailrptfd_nama_barang: TWideStringField;
    fakturpajakdetailrptfd_qty: TIntegerField;
    fakturpajakdetailrptfd_row_total: TFloatField;
    fakturpajakdetailrptfd_harga: TFloatField;
    salary: TZQuery;
    salarykr_id: TIntegerField;
    salarykr_no_induk: TWideStringField;
    salarykr_firstname: TWideStringField;
    salarykr_lastname: TWideStringField;
    salarykr_jd_id: TIntegerField;
    salarykr_basic: TFloatField;
    salarykr_dateofbirth: TDateField;
    salarykr_maritalstatus: TWideStringField;
    salarykr_phone: TWideStringField;
    salarykr_email: TWideStringField;
    salarykr_address: TWideStringField;
    salarykr_city: TWideStringField;
    salarykr_placeofbirth: TWideStringField;
    salarykr_jk: TWideStringField;
    salarykr_workingstart: TDateField;
    salarykr_cek: TWideStringField;
    inputsalary: TZQuery;
    inputsalarysa_id: TIntegerField;
    inputsalarysa_kr_id: TIntegerField;
    inputsalarysa_gross_pay: TFloatField;
    inputsalarysa_net_pay: TFloatField;
    inputsalarysa_date: TDateField;
    inputsalarysa_period: TWideStringField;
    inputsalarysa_checked: TSmallintField;
    inputsalarysa_cek: TWideStringField;
    inputsalarysa_potongan_pajak: TFloatField;
    inputsalarysa_ptkp: TFloatField;
    karyawan_detailkd_basic_salary: TFloatField;
    inputsalarysa_pengurangan: TFloatField;
    inputsalarysa_objek_pajak: TFloatField;
    inputsalarysa_no_induk: TWideStringField;
    inputsalarysa_take_home_pay: TFloatField;
    salary_level_tambah: TZQuery;
    salary_level_detail_t: TZQuery;
    salary_level_detail_tsd_kode: TWideStringField;
    salary_level_detail_tsd_kode_item: TWideStringField;
    salary_level_detail_tsd_nama: TWideStringField;
    salary_level_detail_tsd_amount: TFloatField;
    salary_level_detail_tsd_jenis: TWideStringField;
    salary_level_detail_k: TZQuery;
    StringField59: TWideStringField;
    StringField60: TWideStringField;
    StringField61: TWideStringField;
    FloatField48: TFloatField;
    StringField62: TWideStringField;
    salary_level_tambahst_kode: TWideStringField;
    salary_level_tambahst_kode_item: TWideStringField;
    salary_level_tambahst_amount: TFloatField;
    salary_level_tambahst_jenis: TWideStringField;
    salary_level_tambahst_nama: TWideStringField;
    penguranggaji: TZQuery;
    penguranggajisk_id: TIntegerField;
    penguranggajisk_kode: TWideStringField;
    penguranggajisk_amount: TFloatField;
    penguranggajisk_nama: TWideStringField;
    salary_level_detail: TZQuery;
    StringField63: TWideStringField;
    StringField64: TWideStringField;
    StringField65: TWideStringField;
    FloatField49: TFloatField;
    StringField66: TWideStringField;
    karyawan_detailkd_sl_kode: TWideStringField;
    salarytambahcount: TZQuery;
    salarykurangcount: TZQuery;
    karyawanlookup: TZQuery;
    salaryrpt: TZQuery;
    salaryrptsa_id: TIntegerField;
    salaryrptsa_kr_id: TIntegerField;
    salaryrptsa_gross_pay: TFloatField;
    salaryrptsa_net_pay: TFloatField;
    salaryrptsa_date: TDateField;
    salaryrptsa_period: TWideStringField;
    salaryrptsa_checked: TSmallintField;
    salaryrptsa_cek: TWideStringField;
    salaryrptsa_potongan_pajak: TFloatField;
    salaryrptsa_ptkp: TFloatField;
    salaryrptsa_pengurangan: TFloatField;
    salaryrptsa_objek_pajak: TFloatField;
    salaryrptsa_no_induk: TWideStringField;
    salaryrptsa_take_home_pay: TFloatField;
    karyawandetailrpt: TZQuery;
    IntegerField40: TIntegerField;
    DateField16: TDateField;
    DateField17: TDateField;
    IntegerField41: TIntegerField;
    IntegerField42: TIntegerField;
    StringField67: TWideStringField;
    IntegerField43: TIntegerField;
    StringField68: TWideStringField;
    FloatField50: TFloatField;
    SmallintField4: TSmallintField;
    SmallintField5: TSmallintField;
    StringField69: TWideStringField;
    DateField18: TDateField;
    IntegerField44: TIntegerField;
    StringField70: TWideStringField;
    FloatField51: TFloatField;
    StringField71: TWideStringField;
    karyawandetailrptjabtan: TWideStringField;
    karyawandetailrptDepartemen: TWideStringField;
    inputsalarysa_pengurang_pajak: TFloatField;
    inputsalarysa_penambahan: TFloatField;
    salaryrptsa_pengurang_pajak: TFloatField;
    salaryrptsa_penambahan: TFloatField;
    salaryrptsa_kode_level: TWideStringField;
    inputsalarysa_kode_level: TWideStringField;
    inputsalarysa_ref: TWideStringField;
    salaryrptsa_ref: TWideStringField;
    salaryref: TZQuery;
    jurnal_umum_detail: TZQuery;
    jurnal_umum_detailjl_id: TIntegerField;
    jurnal_umum_detailjl_kode: TWideStringField;
    jurnal_umum_detailjl_akun: TWideStringField;
    jurnal_umum_detailjl_desc: TWideStringField;
    jurnal_umum_detailjl_amount: TFloatField;
    jurnal_umum_detailjl_kredit: TFloatField;
    jurnal_umum_detailjl_debet: TFloatField;
    akunview: TZQuery;
    StringField72: TWideStringField;
    StringField73: TWideStringField;
    SmallintField6: TSmallintField;
    SmallintField7: TSmallintField;
    StringField74: TWideStringField;
    StringField75: TWideStringField;
    jurnalumum: TZQuery;
    jurnalumumju_id: TIntegerField;
    jurnalumumju_kode: TWideStringField;
    jurnalumumju_amount: TFloatField;
    jurnalumumju_date: TDateField;
    jurnalumumju_pic: TWideStringField;
    jurnalumumju_note: TWideStringField;
    juref: TZQuery;
    IntegerField45: TIntegerField;
    StringField76: TWideStringField;
    FloatField52: TFloatField;
    DateField19: TDateField;
    StringField77: TWideStringField;
    StringField78: TWideStringField;
    jualju_ppn: TWideStringField;
    jualref: TZQuery;
    inventoryref: TZQuery;
    IntegerField49: TIntegerField;
    IntegerField50: TIntegerField;
    SmallintField8: TSmallintField;
    IntegerField51: TIntegerField;
    FloatField55: TFloatField;
    StringField84: TWideStringField;
    StringField85: TWideStringField;
    StringField86: TWideStringField;
    StringField87: TWideStringField;
    invoiceju_invoice_sent: TSmallintField;
    invoiceju_ppn: TWideStringField;
    deliveryview: TZQuery;
    customeradd: TZQuery;
    jualflag: TZQuery;
    jualju_cust_kode: TWideStringField;
    invoiceju_barang_sent: TSmallintField;
    invoicegen: TZQuery;
    tagihan: TZQuery;
    invoiceju_cust_kode: TWideStringField;
    tagihanref: TZQuery;
    tagihanrpt: TZQuery;
    tagihanview: TZQuery;
    tagihanviewin_kode: TWideStringField;
    tagihanviewin_cust_kode: TWideStringField;
    tagihanviewin_order_kode: TWideStringField;
    tagihanviewin_amount: TFloatField;
    tagihanviewin_tax: TFloatField;
    tagihanviewin_date: TDateField;
    tagihanviewin_kode_jual: TWideStringField;
    tagihanviewin_delete: TSmallintField;
    tagihanviewin_pic_id: TSmallintField;
    tagihanviewin_paid: TSmallintField;
    tagihanviewCustomer: TWideStringField;
    dorpt: TZQuery;
    tagihanrptin_kode: TWideStringField;
    tagihanrptin_cust_kode: TWideStringField;
    tagihanrptin_order_kode: TWideStringField;
    tagihanrptin_amount: TFloatField;
    tagihanrptin_tax: TFloatField;
    tagihanrptin_date: TDateField;
    tagihanrptin_kode_jual: TWideStringField;
    tagihanrptin_delete: TSmallintField;
    tagihanrptin_pic_id: TSmallintField;
    tagihanrptin_paid: TSmallintField;
    tagihanrptin_due: TDateField;
    tagihanrptin_payment_method: TWideStringField;
    tagihanrptin_po: TWideStringField;
    jurnaldetail: TZQuery;
    IntegerField54: TIntegerField;
    StringField91: TWideStringField;
    StringField92: TWideStringField;
    StringField93: TWideStringField;
    FloatField56: TFloatField;
    FloatField57: TFloatField;
    FloatField58: TFloatField;
    deliveryviewCustomer: TWideStringField;
    barangdeliverrpt: TZQuery;
    deliverydetailrpt: TZQuery;
    supplierdelrpt: TZQuery;
    jualrpt: TZQuery;
    customerrpt: TZQuery;
    jualrptju_kode: TWideStringField;
    jualrptju_cust_kode: TWideStringField;
    jualrptju_tgl: TDateField;
    jualrptju_cust_id: TIntegerField;
    jualrptju_cust_pic: TIntegerField;
    jualrptju_due: TDateField;
    jualrptju_bayar: TWideStringField;
    jualrptju_po: TWideStringField;
    jualrptju_lunas: TSmallintField;
    jualrptju_project: TIntegerField;
    jualrptju_total: TFloatField;
    jualrptju_tax: TFloatField;
    jualrptju_akun: TWideStringField;
    jualrptju_ppn: TWideStringField;
    jualrptju_invoice_sent: TSmallintField;
    jualrptju_barang_sent: TSmallintField;
    jualdetailrpt: TZQuery;
    jualdetailrptjd_kode: TWideStringField;
    jualdetailrptjd_tgl: TDateField;
    jualdetailrptjd_kd_barang: TIntegerField;
    jualdetailrptjd_nama_barang: TWideStringField;
    jualdetailrptjd_qty: TIntegerField;
    jualdetailrptjd_harga_pokok: TFloatField;
    jualdetailrptjd_harga_jual: TFloatField;
    jualdetailrptjd_discrp: TFloatField;
    jualdetailrptjd_disc_persen: TSmallintField;
    jualdetailrptjd_total: TFloatField;
    jualdetailrptjd_margin: TFloatField;
    jualdetailrptjd_satuan: TWideStringField;
    fakturpajakview: TZQuery;
    fakturpajakviewfp_kode: TWideStringField;
    fakturpajakviewfp_cust_id: TIntegerField;
    fakturpajakviewfp_ref: TWideStringField;
    fakturpajakviewfp_date: TDateField;
    fakturpajakviewfp_cust_kode: TWideStringField;
    fakturpajakviewCustomer: TWideStringField;
    jasa: TZQuery;
    invoicecustnpwp: TWideStringField;
    wpview: TZQuery;
    IntegerField53: TIntegerField;
    StringField100: TWideStringField;
    StringField101: TWideStringField;
    StringField102: TWideStringField;
    StringField103: TWideStringField;
    StringField104: TWideStringField;
    StringField105: TWideStringField;
    StringField106: TWideStringField;
    pajakinsert: TZQuery;
    pajakinsertfp_id: TIntegerField;
    pajakinsertfp_kode: TWideStringField;
    pajakinsertfp_cust_id: TIntegerField;
    pajakinsertfp_ref: TWideStringField;
    pajakinsertfp_date: TDateField;
    pajakinsertfp_cust_kode: TWideStringField;
    pajakinsertfp_nama_cust: TWideStringField;
    pajakinsertfp_npwp: TWideStringField;
    pajakinsertfp_dpp: TFloatField;
    pajakinsertfp_ppn: TFloatField;
    pajakinsertfp_ppnbm: TFloatField;
    fakturpajaklist: TZQuery;
    fakturpajaklistfp_id: TIntegerField;
    fakturpajaklistfp_kode: TWideStringField;
    fakturpajaklistfp_cust_id: TIntegerField;
    fakturpajaklistfp_ref: TWideStringField;
    fakturpajaklistfp_date: TDateField;
    fakturpajaklistfp_cust_kode: TWideStringField;
    fakturpajaklistfp_nama_cust: TWideStringField;
    fakturpajaklistfp_npwp: TWideStringField;
    fakturpajaklistfp_dpp: TFloatField;
    fakturpajaklistfp_ppn: TFloatField;
    fakturpajaklistfp_ppnbm: TFloatField;
    fakturpajakcari: TZQuery;
    tagihanviewcustnpwp: TWideStringField;
    jualju_downpayment: TFloatField;
    barangdeliverjd_id: TIntegerField;
    barangdeliverjd_kode: TWideStringField;
    barangdeliverjd_tgl: TDateField;
    barangdeliverjd_kd_barang: TIntegerField;
    barangdeliverjd_nama_barang: TWideStringField;
    barangdeliverjd_qty: TIntegerField;
    barangdeliverjd_harga_pokok: TFloatField;
    barangdeliverjd_harga_jual: TFloatField;
    barangdeliverjd_discrp: TFloatField;
    barangdeliverjd_disc_persen: TSmallintField;
    barangdeliverjd_total: TFloatField;
    barangdeliverjd_margin: TFloatField;
    barangdeliverjd_satuan: TWideStringField;
    jualdetailjd_type: TWideStringField;
    barangdeliverjd_type: TWideStringField;
    invoicedetailjd_type: TWideStringField;
    customerview: TZQuery;
    IntegerField57: TIntegerField;
    StringField112: TWideStringField;
    StringField113: TWideStringField;
    StringField114: TWideStringField;
    StringField115: TWideStringField;
    StringField116: TWideStringField;
    StringField117: TWideStringField;
    StringField118: TWideStringField;
    jualju_lunas: TSmallintField;
    jualju_invoice_sent: TSmallintField;
    jualju_barang_sent: TSmallintField;
    jualju_downpayment_tax: TFloatField;
    jualju_balance: TFloatField;
    invoiceju_downpayment: TFloatField;
    invoiceju_balance: TFloatField;
    invoicepajakrpt: TZQuery;
    tagihanviewin_tagihan: TFloatField;
    tagihanviewin_tagihan_tax: TFloatField;
    tagihanviewin_tagihan_total: TFloatField;
    tagihanviewin_balance: TFloatField;
    pajakinsertfp_total_transaksi: TFloatField;
    pajakinsertfp_balance: TFloatField;
    tagihanrptin_tagihan: TFloatField;
    tagihanrptin_tagihan_tax: TFloatField;
    tagihanrptin_tagihan_total: TFloatField;
    tagihanrptin_balance: TFloatField;
    jualju_isdp: TSmallintField;
    invoiceju_downpayment_tax: TFloatField;
    invoiceju_isdp: TSmallintField;
    invoicehapus: TZQuery;
    tagihanviewin_fakturpajak: TSmallintField;
    fakturpajakrptfp_id: TIntegerField;
    fakturpajakrptfp_kode: TWideStringField;
    fakturpajakrptfp_cust_id: TIntegerField;
    fakturpajakrptfp_ref: TWideStringField;
    fakturpajakrptfp_date: TDateField;
    fakturpajakrptfp_cust_kode: TWideStringField;
    fakturpajakrptfp_nama_cust: TWideStringField;
    fakturpajakrptfp_npwp: TWideStringField;
    fakturpajakrptfp_dpp: TFloatField;
    fakturpajakrptfp_ppn: TFloatField;
    fakturpajakrptfp_ppnbm: TFloatField;
    fakturpajakrptfp_total_transaksi: TFloatField;
    fakturpajakrptfp_balance: TFloatField;
    jualcari: TZQuery;
    StringField119: TWideStringField;
    DateField23: TDateField;
    IntegerField58: TIntegerField;
    IntegerField59: TIntegerField;
    DateField24: TDateField;
    StringField120: TWideStringField;
    StringField121: TWideStringField;
    IntegerField60: TIntegerField;
    FloatField62: TFloatField;
    FloatField63: TFloatField;
    StringField122: TWideStringField;
    StringField123: TWideStringField;
    StringField124: TWideStringField;
    FloatField64: TFloatField;
    SmallintField10: TSmallintField;
    SmallintField11: TSmallintField;
    SmallintField12: TSmallintField;
    FloatField65: TFloatField;
    FloatField66: TFloatField;
    SmallintField13: TSmallintField;
    jualdetailpajak: TZQuery;
    StringField125: TWideStringField;
    DateField25: TDateField;
    IntegerField61: TIntegerField;
    StringField126: TWideStringField;
    IntegerField62: TIntegerField;
    FloatField67: TFloatField;
    FloatField68: TFloatField;
    SmallintField14: TSmallintField;
    FloatField69: TFloatField;
    FloatField70: TFloatField;
    FloatField71: TFloatField;
    StringField127: TWideStringField;
    StringField128: TWideStringField;
    deliveryviewdo_id: TIntegerField;
    deliveryviewdo_tgl: TDateField;
    deliveryviewdo_pic: TWideStringField;
    deliveryviewdo_ju_trans: TWideStringField;
    deliveryviewdo_kode: TWideStringField;
    deliveryviewdo_cust_id: TIntegerField;
    deliveryviewdo_cust_pic: TIntegerField;
    deliveryviewdo_cust_kode: TWideStringField;
    projectpj_id: TIntegerField;
    projectpj_name: TWideStringField;
    projectpj_custid: TIntegerField;
    projectpj_location: TWideStringField;
    imgcommon: TImageList;
    user: TZTable;
    procedure belidetailBeforePost(DataSet: TDataSet);
    procedure footnoteBeforePost(DataSet: TDataSet);
    procedure jualdetailNewRecord(DataSet: TDataSet);
    procedure jualdetailBeforePost(DataSet: TDataSet);
    procedure penawaran_detailBeforePost(DataSet: TDataSet);
    procedure jobdesBeforeOpen(DataSet: TDataSet);
    procedure jobdesAfterOpen(DataSet: TDataSet);
    procedure jurnal_umum_detailAfterPost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

uses belisupun, progressun, strutils, helper;

{$R *.dfm}

procedure Tdm.belidetailBeforePost(DataSet: TDataSet);
begin

  belidetail.FieldByName('bd_tgl').Value := date();
  belidetail.FieldByName('bd_total').Value := belidetail.FieldByName('bd_harga')
    .Value * belidetail.FieldByName('bd_qty').Value;
end;

procedure Tdm.footnoteBeforePost(DataSet: TDataSet);
begin
  footnote.FieldByName('fn_supplier_id').Value :=
    supplier.FieldByName('sp_id').AsString;
end;

procedure Tdm.jualdetailNewRecord(DataSet: TDataSet);
begin
  jualdetail.FieldByName('jd_disc_persen').Value := 0;
  jualdetail.FieldByName('jd_discrp').Value := 0;
  jualdetail.FieldByName('jd_qty').Value := 0;
end;

procedure Tdm.jualdetailBeforePost(DataSet: TDataSet);
var
  jd: TZQuery;
begin

  // if jd.FieldByName('jd_disc')

  jd := jualdetail;
  jd.FieldByName('jd_tgl').Value := date;
  jd.FieldByName('jd_margin').Value :=
    (jd.FieldByName('jd_harga_jual').Value - jd.FieldByName('jd_discrp').Value -
    jd.FieldByName('jd_harga_pokok').Value) * (jd.FieldByName('jd_qty').Value);
  jd.FieldByName('jd_total').Value :=
    (jd.FieldByName('jd_harga_jual').Value -
    ((jd.FieldByName('jd_harga_jual').Value) * (jd.FieldByName('jd_disc_persen')
    .Value / 100)) - jd.FieldByName('jd_discrp').Value) *
    jd.FieldByName('jd_qty').Value;

end;

procedure Tdm.penawaran_detailBeforePost(DataSet: TDataSet);
begin
  penawaran_detail.FieldByName('qd_total').Value :=
    penawaran_detail.FieldByName('qd_harga').Value *
    penawaran_detail.FieldByName('qd_qty').Value;
end;

procedure Tdm.jobdesBeforeOpen(DataSet: TDataSet);
begin
  progressfrm.Show;
end;

procedure Tdm.jobdesAfterOpen(DataSet: TDataSet);
begin
  progressfrm.Close;
  // progressfrm.Destroy;
end;

procedure Tdm.jurnal_umum_detailAfterPost(DataSet: TDataSet);
begin

  with jurnal_umum_detail do
  begin
    if (FieldByName('jl_debet').AsFloat > 0) and
      (FieldByName('jl_kredit').AsFloat > 0) then
    begin
      messagedlg('Posting Error! Tidak boleh di dua sisi debet dan kredit',
        mtError, [mbOk], 0);
      abort;
    end;

    // mendeteksi posting untuk klasifikasi harta
    if (LeftStr(FieldByName('jl_akun').Value, 1)) = '1' then
    begin
      if FieldByName('jl_debet').AsFloat > 0 then
      begin
        edit;
        FieldByName('jl_amount').Value := FieldByName('jl_debet').Value;
      end;

      if FieldByName('jl_kredit').AsFloat > 0 then
      begin
        edit;
        FieldByName('jl_amount').Value := FieldByName('jl_kredit').Value * -1;
      end;

    end; // enf if leftstr

    // mendeteksi posting untuk klasifikasi hutang
    if (LeftStr(FieldByName('jl_akun').Value, 1)) = '2' then
    begin
      if FieldByName('jl_debet').AsFloat > 0 then
      begin
        edit;
        FieldByName('jl_amount').Value := FieldByName('jl_debet').Value * -1;
      end;

      if FieldByName('jl_kredit').AsFloat > 0 then
      begin
        edit;
        FieldByName('jl_amount').Value := FieldByName('jl_kredit').Value;
      end;

    end; // enf if leftstr

    // mendeteksi posting untuk klasifikasi modal
    if (LeftStr(FieldByName('jl_akun').Value, 1)) = '3' then
    begin
      if FieldByName('jl_debet').AsFloat > 0 then
      begin
        edit;
        FieldByName('jl_amount').Value := FieldByName('jl_debet').Value * -1;
      end;

      if FieldByName('jl_kredit').AsFloat > 0 then
      begin
        edit;
        FieldByName('jl_amount').Value := FieldByName('jl_kredit').Value;
      end;

    end; // enf if leftstr

    // mendeteksi posting untuk klasifikasi pendapatan
    if (LeftStr(FieldByName('jl_akun').Value, 1)) = '4' then
    begin
      if FieldByName('jl_debet').AsFloat > 0 then
      begin
        edit;
        FieldByName('jl_amount').Value := FieldByName('jl_debet').Value * -1;
      end;

      if FieldByName('jl_kredit').AsFloat > 0 then
      begin
        edit;
        FieldByName('jl_amount').Value := FieldByName('jl_kredit').Value;
      end;

    end; // enf if leftstr

    // mendeteksi posting untuk klasifikasi modal
    if (LeftStr(FieldByName('jl_akun').Value, 1)) = '5' then
    begin
      if FieldByName('jl_debet').AsFloat > 0 then
      begin
        edit;
        FieldByName('jl_amount').Value := FieldByName('jl_debet').Value;
      end;

      if FieldByName('jl_kredit').AsFloat > 0 then
      begin
        edit;
        FieldByName('jl_amount').Value := FieldByName('jl_kredit').Value * -1;
      end;

    end; // enf if leftstr

    if (LeftStr(FieldByName('jl_akun').Value, 1)) = '6' then
    begin
      if FieldByName('jl_debet').AsFloat > 0 then
      begin
        edit;
        FieldByName('jl_amount').Value := FieldByName('jl_debet').Value;
      end;

      if FieldByName('jl_kredit').AsFloat > 0 then
      begin
        edit;
        FieldByName('jl_amount').Value := FieldByName('jl_kredit').Value * -1;
      end;

    end; // enf if leftstr

  end; // end of with jurnalumum detail
end;

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
  with (conerp) do
  begin
    Disconnect;
    Protocol := helper.getConfig('db.protocol');
    HostName := helper.getConfig('db.host');
    Password := helper.getConfig('db.password');
    user := helper.getConfig('db.user');
    Catalog := helper.getConfig('db.database');
    Connect;
  end;
end;

end.
